/******************************************************************************
* Implementation of the ZigBee Test Client.
* ZTC task public functions, and various internals.
*
* Copyright (c) 2008, Freescale, Inc.  All rights reserved.
*
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale Semiconductor.
*
******************************************************************************/

#include "EmbeddedTypes.h"
#if gBeeStackIncluded_d
#include "ZigBee.h"
#include "BeeStackFunctionality.h"
#include "BeeStackConfiguration.h"

#include "BeeStackInterface.h"
#include "BeeCommon.h"
#include "BeeStack_Globals.h"
#endif


#include "MsgSystem.h"
#include "FunctionLib.h"
#include "PublicConst.h"
#include "MacPhyInit.h"
#include "TS_Interface.h"
 
#include "NVM_Interface.h"

#include "NV_Data.h"

#if gBeeStackIncluded_d
#include "BeeStackUtil.h"
#include "ZDOStateMachineHandler.h"
#include "nwkcommon.h"
#include "AfZdoInterface.h"
#include "ZdoApsInterface.h"
#include "ApsMgmtInterface.h"
#include "AfApsInterface.h"
#endif

/*
#include "PWRLib.h"
*/
#include "PublicConst.h"
#if gBeeStackIncluded_d
#include "BeeAppInit.h"
#endif

#include "Uart_Interface.h"


#include "AspZtc.h"
#include "LlcZtc.h"
#include "ZtcInterface.h"
#include "ZtcPrivate.h"
#include "ZtcClientCommunication.h"
#include "ZtcMsgTypeInfo.h"
#include "ZtcSAPHandlerInfo.h"
#include "ZtcCopyData.h"

#if gMacStandAlone_d
#include "Mac_Globals.h"
#endif

#if (gZtcIncluded_d && gFragmentationCapability_d)
static void ZtcApsde_Handler(void);
#endif
/******************************************************************************
*******************************************************************************
* Private type definitions
*******************************************************************************
******************************************************************************/

/* Format of the messages echanged between Ztc and the SAP Handlers.
 *
 * *warning* All of the SAP Handlers receive a sapHandlerMsg_t, containing a
 * msgType.
 * The AFDE -> APP and APP -> AFDE SAP Handler send back only raw data,
 * without a msgType, to ZTC_TaskEventMonitor().
 * All other SAP Handlers send back a sapHandlerMsg_t *with* a msgType.
 */
typedef struct sapHandlerMsgHdr_tag {
  ztcMsgType_t msgType;
} sapHandlerMsgHdr_t;

#ifndef gMAC2006_d
 #define mSapHandlerMsgTotalLen_c    144
 #define mMaxPacketSize_c            144
#else
 #define mSapHandlerMsgTotalLen_c    155  // Security material added (securityLevel, keyIdMode, keySource, keyIndex)
 #define mMaxPacketSize_c            155
#endif //gMAC2006_d

typedef union sapHandlerMsg_tag {
  uint8_t raw[mSapHandlerMsgTotalLen_c];
  struct {
    sapHandlerMsgHdr_t header;
    uint8_t payload[mSapHandlerMsgTotalLen_c - sizeof(sapHandlerMsgHdr_t)];
  } structured;
} sapHandlerMsg_t;

/* The ICanHearYou table is a debugging tool used in BeeStack. */
#if gBeeStackIncluded_d
typedef struct ztcICanHearYouTable_tag {
  index_t count;                                /* Number of entries in table. */
  zbNwkAddr_t table[(sizeof(clientPacket_t) - sizeof(clientPacketHdr_t))
                    / sizeof(zbNwkAddr_t)];     /* First entry of variable-length table. */
} ztcICanHearYouTable_t;
#endif

#pragma pack(1)
/* a single fragment as seen by ZTC */
typedef struct apsdeFragment_tag {
  uint8_t iBlockNumber;
  uint8_t iMoreBlocks;
  uint8_t iLength;
  uint8_t aData[1];
} apsdeFragment_t;
#pragma pack()
/******************************************************************************
*******************************************************************************
* Private prototypes
*******************************************************************************
******************************************************************************/
#if gZtcIncluded_d
static void pktFromMsgAsync(uint8_t const *pMsgFromSAPHandler,
                            ztcSAPHandlerInfo_t const *pSrcSAPInfo,
                            ztcMsgTypeInfo_t const *pSrcMsgTypeInfo);

static void pktFromMsgSync(uint8_t const *pMsgFromSAPHandler,
                           ztcSAPHandlerInfo_t const *pSrcSAPInfo,
                           ztcMsgTypeInfo_t const *pSrcMsgTypeInfo,
                           uint8_t const srcStatus);

static void ZtcReq_Handler(void);

static void CheckUartBufferStatus(void); 
#endif


/******************************************************************************
*******************************************************************************
* Private memory declarations
*******************************************************************************
******************************************************************************/
/* fragmentation fields */
extern uint8_t giFragmentedPreAcked;

/* Used to recognize monitor copies of messages that Ztc sent to other code. */
#if gZtcIncluded_d
static bool_t mMsgOriginIsZtc;
extern uint8_t gRejoinMode;
#endif

#if gZtcErrorReporting_d
/* Set to TRUE when ZtcError() is called. */
static bool_t mZtcErrorReported;
#endif

#if gBeeStackIncluded_d
#if gZTC_RegEpCapability && gZtcIncluded_d
static zbSimpleDescriptorPackageStore_t maSimpleDescriptors[gNumberOfEndPoints_c];
static endPointDesc_t maEndPointDesc[NumberOfElements(maSimpleDescriptors)];

static zbClusterId_t maInputClusterIdLists [NumberOfElements(maSimpleDescriptors)][gNumberOfEndPoints_c];
static zbClusterId_t maOutputClusterIdLists[NumberOfElements(maSimpleDescriptors)]
                                           [NumberOfElements(maInputClusterIdLists[0])];
#endif                                  /* #if gZTC_RegEpCapability */
#endif /* gBeeStackIncluded_d */

/******************************************************************************
*******************************************************************************
* Public memory definitions
*******************************************************************************
******************************************************************************/

/* The rest of BeeStack can set this pointer to allow handling of messages
 * from the external client that have opcode groups not normally
 * recognized by Ztc.
 */
#if gZtcIncluded_d
gpfTestClientToApplication_t gpfTestClientToApplicationFuncPtr = NULL;
#endif

#if gZtcIncluded_d
tsTaskID_t gZTCTaskID;
#endif

/******************************************************************************
*******************************************************************************
* Public functions
*******************************************************************************
******************************************************************************/

/* Main routine for the ZTC task.
 *
 * Ztc only understands one event, which signals that the UART ISR has received
 * an octet from a local communication port (e.g. serial port or USB).
 *
 * Note that no messages are ever sent to the Ztc task.
 *
 * The event flags are cleared by the kernel.
 *
 * Note that the ISR declares an event for every octet, so this routine is
 * often called before there is enough of a packet received from the external
 * client to process.
 *
 * Once a complete and well formed packet has arrived, copy to a SAP Handler
 * message, with whatever changes are needed to the format of the data, and
 * forward it to the SAP Handler.
 *
 * The SAP Handler will eventually call ZTC_TaskEventMonitor() to record the
 * SAP Handler's receipt of a message.
 */
void Ztc_Task(event_t events) {
#if !gZtcIncluded_d
  (void) events;
#else
  sapHandlerMsg_t *pMsgToSAPHandler;
  ztcMsgTypeInfo_t const *pMsgTypeInfo;
  ztcOpcodeGroup_t opcodeGroup;
  ztcSAPHandlerInfo_t const *pSAPInfo;
  ztcFmtInfo_t const *pFmtInfo;
  index_t dstDataLen;
  pZtcMsgFromPkt_t pCopyFunc;
  uint8_t status;

  (void) events;

  /* Do we have a complete packet? */
  if (!ZtcReadPacketFromClient()) {
    CheckUartBufferStatus();
    return;
  }

#if gZtcErrorReporting_d
  mZtcErrorReported = FALSE;
#endif

  opcodeGroup = gZtcPacketFromClient.structured.header.opcodeGroup;

  /* *warning* ZtcReq_Handler() depends on it's input data being in the */
  /* global gZtcPacketFromClient, and it modifies gZtcPacketToClient. */
  if (opcodeGroup == gZtcReqOpcodeGroup_c) {
    ZtcReq_Handler();
    CheckUartBufferStatus();
    return;
  }

  /* special fragmented APSDE commands */
#if (gFragmentationCapability_d)
  if (opcodeGroup == gAfApsdeOpcodeGroup_c && 
      gZtcPacketFromClient.structured.header.msgType != gApsdeDataReqMsgType_d)
  {
    ZtcApsde_Handler();
    CheckUartBufferStatus();
    return;
  }
#endif

  pSAPInfo = pZtcSAPInfoFromOpcodeGroup(opcodeGroup);

  /* If this is a recognized opcode group, but one which has been disabled */
  /* by an option setting, let the user know. Otherwise, Test Tool users */
  /* may wonder why they are not getting any responses to valid requests. */
#if gZtcErrorReporting_d
  if (pSAPInfo == gZtcIsDisabledOpcodeGroup_c) {
    ZtcError(gZtcOpcodeGroupIsDisabled_c);
    CheckUartBufferStatus();
    return;
  }
#endif

  /* If the opcode group is not familiar, call a general purpose hook. */
  if (!pSAPInfo) {
    if (gpfTestClientToApplicationFuncPtr) {
      (*gpfTestClientToApplicationFuncPtr)((void *) gZtcPacketFromClient.raw);
    } else {
      ZtcError(gZtcUnknownOpcodeGroup_c);
    }
    CheckUartBufferStatus();
    return;
  }

  /* The client has sent a well formed packet, with a known opcode group. */
  pMsgTypeInfo = pZtcMsgTypeInfoFromMsgType(pSAPInfo->pMsgTypeTable,
                                            *(pSAPInfo->pMsgTypeTableLen),
                                            gZtcPacketFromClient.structured.header.msgType);
  if (!pMsgTypeInfo) {
    ZtcError(gZtcUnknownOpcode_c);
    CheckUartBufferStatus();
    return;
  }

  /* The size of the destination message isn't known yet, so allocate */
  /* a large message. */
  pMsgToSAPHandler = (sapHandlerMsg_t *) MSG_Alloc(sizeof(sapHandlerMsg_t));

  if (!pMsgToSAPHandler) {
    ZtcError(gZtcOutOfMessages_c);
    CheckUartBufferStatus();
    return;
  }

  /* Copy the content of the packet to the SAP Handler message, changing */
  /* formats as necessary. */
  pFmtInfo = &(maZtcFmtInfoTable[ZtcMsgGetFmt(pMsgTypeInfo->flagAndFormat)]);
  pCopyFunc = maMsgFromPktFunctionTable[ZtcGetMsgFromPktFuncIndex(pFmtInfo->copyFunctionIndexes)];

  dstDataLen = (*pCopyFunc)(pMsgToSAPHandler->structured.payload,
                            sizeof(pMsgToSAPHandler->structured.payload),
                            gZtcPacketFromClient.structured.payload,
                            gZtcPacketFromClient.structured.header.len,
                            pFmtInfo->msgFromPktParametersIndex);

  if (dstDataLen == gTooBig_c) {
    MSG_Free(pMsgToSAPHandler);
    ZtcError(gZtcTooBig_c);
    CheckUartBufferStatus();
    return;
  }

  /* mMsgOriginIsZtc lets ZTC_TaskEventMonitor() know that this message */
  /* originated with Ztc. */
  pMsgToSAPHandler->structured.header.msgType = gZtcPacketFromClient.structured.header.msgType;
  mMsgOriginIsZtc = TRUE;
  status = (pSAPInfo->pSAPHandler)(pMsgToSAPHandler);
  mMsgOriginIsZtc = FALSE;

  /* SAP Handlers don't free buffers that contain synchronous messages. */
  if (ZtcMsgGetFlg(pMsgTypeInfo->flagAndFormat) == gZtcMsgFlagSync_c) {
    #if gSAPMessagesEnableMlme_d
      /* For a MLME.Reset request synchronous message, the memory pool is re-initiated and
         all allocated messages are deallocated. Because of this, we don't need 
         to free the allocated message. */
      if ((opcodeGroup != gNwkMlmeOpcodeGroup_c)||(pMsgTypeInfo->msgType != gMlmeResetReq_c)) {
    #endif
        MSG_Free(pMsgToSAPHandler);
    #if gSAPMessagesEnableMlme_d
      }
    #endif
  } else if (status != gZbSuccess_c) {
    /* This is an async message, and the SAP Handler is unhappy. Synthesize */
    /* a confirmation message containing the status, and send it back to the */
    /* external client. This is the SAP Handler's issue, not a ZtcError(). */
    
    ZTCQueue_QueueToTestClient(&status, pSAPInfo->converseOpcodeGroup, pMsgTypeInfo->cnfType, sizeof(status));
  }
  CheckUartBufferStatus();
#endif                                  /* #if !gZtcIncluded_d #else */
}                                       /* Ztc_Task() */

/****************************************************************************/

/* Initialization routine for the ZTC task. Called once by the kernel at */
/* startup. */
#if gZtcIncluded_d
void ZtcUartRxCallBack(void) {
  SendEventToZTC();
}
#endif

void Ztc_TaskInit(void) {
#if gZtcIncluded_d
  gZTCTaskID = TS_CreateTask(gTsZTCTaskPriority_c, Ztc_Task);
  UartX_SetRxCallBack(ZtcUartRxCallBack);
#endif
}                                       /* Ztc_TaskInit() */

/****************************************************************************/

/* Send an arbitrary event from an application to the external client. The
 * data, opcode group and message type can be anything.
 */
void ZTCQueue_QueueToTestClient
  (
  uint8_t const *const pData,
  uint8_t const opcodeGroup,
  uint8_t const msgType,
  uint8_t const dataLen
  )
{
#if !gZtcIncluded_d
  (void) pData;
  (void) opcodeGroup;
  (void) msgType;
  (void) dataLen;
#else

#if gZtcErrorReporting_d
  mZtcErrorReported = FALSE;
#endif

  if (dataLen > sizeof(gZtcPacketToClient.structured.payload)) {
    ZtcError(gZtcAppMsgTooBig_c);
    return;
  }

  if (mZtcPacketToClientIsBusy) {
    return;
  }

  gZtcPacketToClient.structured.header.opcodeGroup = opcodeGroup;
  gZtcPacketToClient.structured.header.msgType = msgType;
  gZtcPacketToClient.structured.header.len = dataLen;

  FLib_MemCpy(gZtcPacketToClient.structured.payload, (void *) pData, dataLen);
  ZtcWritePacketToClient(sizeof(gZtcPacketToClient.structured.header) + dataLen);
#endif                                  /* #if !gZtcIncluded_d #else */
}                                       /* ZTCQueue_QueueToTestClient() */

/****************************************************************************/

/* Called by other functions in BeeStack, generally SAP Handlers.
 * A message is passing through the SAP Handler, and it is letting us know.
 * A SAP Handler can receive a message from a BeeStack layer, or from Ztc.
 * The SAP Handler doesn't know the origin, and calls this function
 * regardless.
 *
 * If the message is async and it was sent to the SAP Handler by Ztc,
 * ignore it.
 *
 * If the message is async and it was not sent to the SAP Handler by Ztc,
 * forward a copy to the external client.
 *
 * Sync messages are always responses to requests. The origin of the request
 * (Ztc or other BeeStack code) does not matter; this routine will only see
 * the response, not the request.
 * Alter the opcode group to make the message look like it is coming from
 * the converse of the SAP Handler that actually sent it here, and change
 * the message type to the type of the corresponding response. Forward the
 * edited message to the external client.
 *
 * Note that the message from the SAP Handler is sent to the external client
 * directly from here, eliminating the need for logic to queue more than
 * one packet.
 */
void ZTC_TaskEventMonitor
  (
  ztcIntSAPId_t const srcIntSAPId,
  uint8_t *pMsgFromSAPHandler,
  clientPacketStatus_t const srcStatus
  )
{
#if !gZtcIncluded_d
  (void) srcIntSAPId;
  (void) pMsgFromSAPHandler;
  (void) srcStatus;
#else
  ztcMsgTypeInfo_t const *pSrcMsgTypeInfo;
  ztcSAPHandlerInfo_t const *pSrcSAPInfo;

#if gZtcErrorReporting_d
  /* Sync messages might be originated by Ztc_Task(), which already set this */
  /* once. Setting it again here could lead to reporting two errors. Since */
  /* are likely to be errors in different contexts, this isn't generally a */
  /* problem. */
  mZtcErrorReported = FALSE;
#endif

  pSrcSAPInfo = pZtcSAPInfoFromIntSAPId(srcIntSAPId);
  if (!pSrcSAPInfo) {
    /* Calling ZtcError() here might just annoy the user, repeatedly */
    /* sending an error message about something they already know. */
    return;
  }

  ZtcPrint(FALSE, &srcStatus, sizeof(srcStatus));
  ZtcPrint(FALSE, &pMsgFromSAPHandler, sizeof(pMsgFromSAPHandler));
  ZtcPrint(FALSE, &pSrcSAPInfo->opcodeGroup, sizeof(pSrcSAPInfo->opcodeGroup));
  ZtcPrint(TRUE,  pMsgFromSAPHandler, 32);

  if (maZtcSAPModeTable[pSrcSAPInfo->modeIndex] == gZtcSAPModeDisable_c) {
    return;
  }

  pSrcMsgTypeInfo = pZtcMsgTypeInfoFromMsgType(pSrcSAPInfo->pMsgTypeTable,
                                               *pSrcSAPInfo->pMsgTypeTableLen,
                                               ((sapHandlerMsg_t *) pMsgFromSAPHandler)->structured.header.msgType);
  if (!pSrcMsgTypeInfo) {
    /* Calling ZtcError() here might just annoy the user, repeatedly */
    /* sending an error message about something they already know. */
    return;
  }

  if (mZtcPacketToClientIsBusy) {
    return;
  }

  if (ZtcMsgGetFlg(pSrcMsgTypeInfo->flagAndFormat) == gZtcMsgFlagAsync_c) {
    pktFromMsgAsync(pMsgFromSAPHandler, pSrcSAPInfo, pSrcMsgTypeInfo);
  } else {
    pktFromMsgSync(pMsgFromSAPHandler, pSrcSAPInfo, pSrcMsgTypeInfo, srcStatus);
  }
#endif  /* #if !gZtcIncluded_d #else */
}  /* ZTC_TaskEventMonitor() */

/****************************************************************************/

#if gZtcIncluded_d
void pktFromMsgAsync
(
  uint8_t const *pMsgFromSAPHandler,
  ztcSAPHandlerInfo_t const *pSrcSAPInfo,
  ztcMsgTypeInfo_t const *pSrcMsgTypeInfo
)
{
  index_t dstDataLen;
  pZtcPktFromMsg_t pCopyFunc;
  ztcFmtInfo_t const *pFmtInfo;
  nwkMessage_t *pMsg; /* MAC Confirm/Indication data type */

  /* If this message is originated in Ztc, ignore it. */
  if (mMsgOriginIsZtc)
    return;

   /* (void)pMsg; */ /* Set stub the pointer used for the Queue */
    pFmtInfo = &(maZtcFmtInfoTable[ZtcMsgGetFmt(pSrcMsgTypeInfo->flagAndFormat)]);
    pCopyFunc = maPktFromMsgFunctionTable[ZtcGetPktFromMsgFuncIndex(pFmtInfo->copyFunctionIndexes)];

    /* Copy the payload from the message to the client packet. */
    dstDataLen = (*pCopyFunc)(gZtcPacketToClient.structured.payload,
                              sizeof(gZtcPacketToClient.structured.payload),
                              ((sapHandlerMsg_t *) pMsgFromSAPHandler)->structured.payload,
                              pSrcMsgTypeInfo->len,
                              pFmtInfo->pktFromMsgParametersIndex);  

  /* If the SAP Handler that sent the message here is in hook mode, dequeue */
  /* the message and clear the event to prevent the message from reaching the */
  /* destination SAP Handler. */
  if (maZtcSAPModeTable[pSrcSAPInfo->modeIndex] == gZtcSAPModeHook_c)
  {
    if (pSrcSAPInfo->pMsgQueue)
    {
      /* If there is a Message in the Queue, then pint to it */
      pMsg = MSG_DeQueue(pSrcSAPInfo->pMsgQueue);
      #if gBeeStackIncluded_d
      if (pSrcSAPInfo->opcodeGroup == gNlmeZdoOpcodeGroup_c) /* If the message came from NWK layer */
      {
        if (pSrcMsgTypeInfo->msgType == gNlmeNetworkDiscoveryConfirm_c) /* If the messaage is a Discovery confirm */
        {
          if (((nlmeZdoMessage_t *) pMsg)->msgData.networkDiscoveryConf.networkCount != 0) /* If the internal list of the discovery has some data or point to some place */
            /*If the discovery confirmation is obtained the NetworkDescriptor is freed*/
                                           MSG_Free(((nlmeZdoMessage_t *) pMsg)->msgData.networkDiscoveryConf.pNetworkDescriptor );

        }        
        if (pSrcMsgTypeInfo->msgType == gNlmeEnergyScanConfirm_c) /* If the messaage is a Energy scan confirm */				{
					  /*If the discovery confirmation is obtained the NetworkDescriptor is freed*/
            MSG_Free(((nlmeZdoMessage_t *) pMsg)->msgData.EnergyScanConf.resList.pEnergyDetectList );
	}			  

      }
      #endif
      /* The MAC Layer has some exceptions in some message that need to free some internal memory */
      if (pSrcSAPInfo->opcodeGroup == gMlmeNwkOpcodeGroup_c) /* If the message came from MAC layer */
      {
        if (pSrcMsgTypeInfo->msgType == gNwkScanCnf_c) /* If the messaage is a ScanRequest */
        {
          if (pMsg->msgData.scanCnf.resList.pPanDescriptorBlocks->descriptorList) /* If the internal list of the scan has somem data or point to some place */
            /* Free the internal list comming in the the Scan from the MAC (second block) */
            if(pMsg->msgData.scanCnf.resList.pPanDescriptorBlocks->pNext)
              MSG_Free(pMsg->msgData.scanCnf.resList.pPanDescriptorBlocks->pNext);
            /* Free the internal list comming in the the Scan from the MAC (first block) */
            MSG_Free(pMsg->msgData.scanCnf.resList.pPanDescriptorBlocks);
        }
        if (pSrcMsgTypeInfo->msgType == gNwkBeaconNotifyInd_c) /* If The messge is a Beacon Notify Indiction it has  messge allocated inside the message already allocted */
        {
          if (pMsg->msgData.beaconNotifyInd.pBufferRoot)
            MSG_Free(pMsg->msgData.beaconNotifyInd.pBufferRoot);
        }
      }
      if (pMsg)
        MSG_Free(pMsg); /* Free the whole message comming from the Queue */
    }

    if (pSrcSAPInfo->pTaskID[0]) /* Take the message out of the Queue for no further processing */
    {
      TS_ClearEvent(pSrcSAPInfo->pTaskID[0], pSrcSAPInfo->msgEvent);
    }
  }

  if (dstDataLen == gTooBig_c)
  {
    ZtcError(gZtcTooBig_c);
    return;
  }

  gZtcPacketToClient.structured.header.opcodeGroup = pSrcSAPInfo->opcodeGroup;
  gZtcPacketToClient.structured.header.msgType = ((sapHandlerMsg_t *) pMsgFromSAPHandler)->structured.header.msgType;
  gZtcPacketToClient.structured.header.len = dstDataLen;

  ZtcWritePacketToClient(sizeof(gZtcPacketToClient.structured.header) + dstDataLen);
}  /* pktFromMsgAsync() */
#endif

/****************************************************************************/

/* Handle a synchronous message from a SAP Handler.
 * Sync messages are always requests. Translate this message into the
 * corresponding response.
 *
 * By convention, the request message type info contains the format
 * information.
 */
#if gZtcIncluded_d
void pktFromMsgSync
(
  uint8_t const *pMsgFromSAPHandler,
  ztcSAPHandlerInfo_t const *pSrcSAPInfo,
  ztcMsgTypeInfo_t const *pSrcMsgTypeInfo,
  uint8_t const srcStatus
)
{
  index_t dstDataLen;
  pZtcPktFromMsg_t pCopyFunc;
  ztcFmtInfo_t const *pFmtInfo;
  uint8_t *pSrcData;

  /* For sync messages, a status code was passed here as a parameter, */
  /* and must be stored in the first byte of the packet payload. */
  gZtcPacketToClient.structured.payload[0] = srcStatus;
  pSrcData = ((sapHandlerMsg_t *) pMsgFromSAPHandler)->structured.payload;

  pFmtInfo = &(maZtcFmtInfoTable[ZtcMsgGetFmt(pSrcMsgTypeInfo->flagAndFormat)]);
  pCopyFunc = maPktFromMsgFunctionTable[ZtcGetPktFromMsgFuncIndex(pFmtInfo->copyFunctionIndexes)];

  /* Copy the payload from the message to the client packet. */
  dstDataLen = (*pCopyFunc)(&gZtcPacketToClient.structured.payload[sizeof(clientPacketStatus_t)],
                            sizeof(gZtcPacketToClient.structured.payload) - sizeof(clientPacketStatus_t),
                            pSrcData,
                            pSrcMsgTypeInfo->len,
                            pFmtInfo->pktFromMsgParametersIndex);

  if (dstDataLen == gTooBig_c)
  {
    ZtcError(gZtcTooBig_c);
    return;
  }

  gZtcPacketToClient.structured.header.opcodeGroup = pSrcSAPInfo->converseOpcodeGroup;
  gZtcPacketToClient.structured.header.msgType = pSrcMsgTypeInfo->cnfType;
  gZtcPacketToClient.structured.header.len = dstDataLen + sizeof(clientPacketStatus_t);

  ZtcWritePacketToClient(dstDataLen
                        + sizeof(gZtcPacketToClient.structured.header)
                        + sizeof(clientPacketStatus_t));
}  /* pktFromMsgSync() */
#endif

/******************************************************************************
*******************************************************************************
* Private functions
*******************************************************************************
******************************************************************************/
/****************************************************************************
This function checks if there is any bytes in the uart buffer, and 
if there is any left, the ZTC task is signaled.
****************************************************************************/
#if gZtcIncluded_d
static void CheckUartBufferStatus(void) {
  if (UartX_RxBufferByteCount != 0) {
    SendEventToZTC();    
  }
}
#endif 

/* Send an error message back to the external client. */
#if gZtcErrorReporting_d
void ZtcError(uint8_t errorCode)
{
  uint8_t buf[MbrSizeof(clientPacket_t, headerAndStatus)];

  if (mZtcErrorReported)
    return;                             /* Don't cascade error messages. */


  ((clientPacket_t *) buf)->headerAndStatus.header.opcodeGroup = gZtcCnfOpcodeGroup_c;
  ((clientPacket_t *) buf)->headerAndStatus.header.msgType = mZtcMsgError_c;
  ((clientPacket_t *) buf)->headerAndStatus.header.len = sizeof(((clientPacket_t *) buf)->headerAndStatus.status);
  ((clientPacket_t *) buf)->headerAndStatus.status = errorCode;

  ZtcTransmitBufferBlock(buf, sizeof(buf));
  mZtcErrorReported = TRUE;
}
#endif                                  /* #if gZtcErrorReporting_d */

/****************************************************************************/

/* Ztc's version of printf() debugging.
 *
 * To save RAM, use a dynamically allocated message buffer to construct
 * the message. If no buffer is available, send an error buffer and give up.
 *
 * Write as much of the requested data as possible to the buffer, but there
 * is no guarantee there the buffer will be big enough.
 *
 * Concatenate the source data to the print buffer, then
 *  If readyToSend is false, do nothing.
 *  If readyToSend is true,  send the buffer to the external client.
 */
#if gZtcDebug_d
void ZtcPrint
  (
  bool_t readyToSend,
  void const *pSrc,
  index_t len
  )
{
  static index_t bufLen = 0;
  static index_t dataInBuf = 0;
  static uint8_t *pBuf = NULL;

  /* Search for a valid and available message buffer size, instead of */
  /* depending on knowing the possible buffer sizes. */
#define ztcPrintDecrement       8       /* Ensure decrementing to zero. */
#define ztcPrintNumberOfTries   8
  if (!bufLen) {
    for (pBuf = 0, bufLen = ztcPrintDecrement * ztcPrintNumberOfTries;
         !pBuf && bufLen;
         bufLen -= ztcPrintDecrement) {
      pBuf = MSG_Alloc(bufLen);
      dataInBuf = sizeof(clientPacketHdr_t);
    }

    if (!bufLen) {
      ZtcError(gZtcDebugPrintFailed_c);
      return;
    }
  }

  /* Concatenate the source data to the print buffer, if there's room. */
  if (dataInBuf + len < bufLen) {
    FLib_MemCpy(pBuf + dataInBuf, pSrc, len);
    dataInBuf += len;
  }

  if (readyToSend) {
    ((clientPacketHdr_t *) pBuf)->opcodeGroup = gZtcCnfOpcodeGroup_c;
    ((clientPacketHdr_t *) pBuf)->msgType = mZtcMsgDebugPrint_c;
    ((clientPacketHdr_t *) pBuf)->len = dataInBuf - sizeof(clientPacketHdr_t);
    ZtcTransmitBufferBlock(pBuf, dataInBuf);
    MSG_Free(pBuf);
    bufLen = 0;
  }
}
#endif                                  /* #if gZtcDebug_d */


/*
  Called from both AF_APSDE_SapHandler() and APSDE_AF_SapHandler(), this function will 
  display all fragmented blocks to ZTC if both fragmentation and ZTC are enabled. 
*/
void ZTC_FragEventMonitor
  (
  ztcIntSAPId_t const srcIntSAPId,
  uint8_t *pMsgFromSAPHandler
  )
{
#if (!gZtcIncluded_d)
  /* avoid compiler warning on unused parameters */
  (void)srcIntSAPId;
  (void)pMsgFromSAPHandler;

/* ZTC is included */
#else

 #if (gFragmentationCapability_d)
  zbTxFragmentedHdr_t *pFragHdr;
  apsdeFragment_t sZtcFragment;
  uint8_t *pData;
  uint8_t msgType;
  uint8_t dataSize;
  uint8_t opCodeGroup;
  uint8_t iBlockNumber;
 #endif

  /* first, send the main message to ZTC */
  ZTC_TaskEventMonitor(srcIntSAPId, (uint8_t *) pMsgFromSAPHandler, gZbSuccess_c);

 #if (gFragmentationCapability_d)

  /* find fragHdr for this message */
  /* the message will either come from the gAF_APSDE_SAPHandlerId_c or the gAPSDE_AF_SAPHandlerId_c */
  /* note: this code assumes both zbTxFragmentedHdr_t and zbRxFragmentedHdr_t begin with same 2 fields */
  msgType = *pMsgFromSAPHandler;
  if(srcIntSAPId == gAF_APSDE_SAPHandlerId_c)
  {
    /* make sure message is a data request */
    if(msgType != gApsdeDataReqMsgType_d)
      return;

    /* find first fragment header */
    pFragHdr = &(((afToApsdeMessage_t *)pMsgFromSAPHandler)->msgData.dataReq.fragmentHdr);
    opCodeGroup = 0x9c;
  }

  /* assumes srcIntSAPId == gAPSDE_AF_SAPHandlerId_c */
  else
  {
    /* make sure message is a data indication */
    if(msgType != gApsdeDataIndMsgType_d)
      return;

    /* find first fragment header */
    pFragHdr = (zbTxFragmentedHdr_t *)(&(((apsdeToAfMessage_t *)pMsgFromSAPHandler)->msgData.dataIndication.fragmentHdr));
    opCodeGroup = 0x9d;
  }

  /* skip first block (with dataReq or dataInd), as that's already been sent to ZTC */
  pFragHdr = pFragHdr->pNextDataBlock;

  /* send all subsequent blocks to ZTC */
  iBlockNumber = 1;
  while(pFragHdr)
  {
    /* copy data into ZTC Tx buffer */
    dataSize = pFragHdr->iDataSize;
    gZtcPacketToClient.structured.header.opcodeGroup = opCodeGroup;
    gZtcPacketToClient.structured.header.msgType = pFragHdr->iMsgType;
    gZtcPacketToClient.structured.header.len = (sizeof(apsdeFragment_t) - 1) + dataSize;
    sZtcFragment.iLength = dataSize;
    sZtcFragment.iBlockNumber = iBlockNumber++;
    sZtcFragment.iMoreBlocks = pFragHdr->pNextDataBlock ? TRUE : FALSE;
    gZtcPacketToClient.structured.payload[0] = dataSize;
    if(srcIntSAPId == gAF_APSDE_SAPHandlerId_c)
      pData = (uint8_t *)(pFragHdr + 1);    /* on Tx, data immediately follows TxFragHdr */
    else
      pData = ((zbRxFragmentedHdr_t *)pFragHdr)->pData; /* on Rx, it's pointed to by RxFragHdr */
    FLib_MemCpy(gZtcPacketToClient.structured.payload, &sZtcFragment, sizeof(apsdeFragment_t) - 1);
    FLib_MemCpy(&gZtcPacketToClient.structured.payload[sizeof(apsdeFragment_t) - 1], pData, dataSize);

    /* send through ZTC */
	  ZtcWritePacketToClient(sizeof(gZtcPacketToClient.structured.header) + 
	    (sizeof(apsdeFragment_t) - 1) + dataSize);

    /* go on to next block */
    pFragHdr = pFragHdr->pNextDataBlock;
  }
 #endif /* gFragmentationCapability_d */
#endif  /* gZtcIncluded_d */
}

#if (gZtcIncluded_d && gFragmentationCapability_d)

/* for loading fragments prior to a data request */
static zbTxFragmentedHdr_t *mpFragHead;  /* if NULL, then no fragments loaded */

/*
  For handling the "special" APSDE commands for fragmentation. These do not go to the SAP 
  handler.

  ResetFragments   Free any memory allocated by LoadFragment. Only required if aborting a
                   Data request, or if
  LoadFragment     Load a fragment into memory through the ZTC interface.
  SetFragAckMask   Used for passing ZCP tests. Pretend a packet has already been ACKed so
                   it's not sent first time.
    
  Normal sequence for initiating an APSDE-DATA.request over ZTC is:
  1. Call LoadFragment (for all fragments but the first one. These fragments may be any length, 
     but should be the max size that will fit in a message (128 bytes) 
  2. Call APSDE-DATA.request for the first fragment. AsduLen should be the length of the first
     fragment only. ZTC will add the total size of all fragments.

  Note: the above sequence is different than from an application. The AF_DataRequestFragmented()
  and AF_DataRequestFragmentedNoCopy() should be called instead.

  Note: ZtcApsde_Handler() receives data in the global gZtcPacketFromClient, and modifies 
  gZtcPacketToClient.
*/
static void ZtcApsde_Handler(void)
{

  /* these commands do not actually go through the SAP, but are valid only in ZTC */
  #define gZtcMsgTypeResetFragments_c       0x10
  #define gZtcMsgTypeLoadFragment_c         0x11
  #define gZtcMsgTypeSetFragAckMask_c       0x12
  #define gZtcMsgTypeSetMaxFragmentLength_c 0x13
  #define gZtcMsgTypeSetWindowSize_c        0x14
  #define gZtcMsgTypeSetInterframeDelay_c   0x15

  zbTxFragmentedHdr_t *pFragBlock;    /* allocated message */
  zbTxFragmentedHdr_t *pFragNext;     /* next fragmented buffer */
  uint8_t fragLen;
  ztcMsgType_t msgType;
  clientPacketStatus_t ztcError = gZtcSuccess_c;

  msgType = gZtcPacketFromClient.structured.header.msgType;
  switch(msgType)
  {
    /* ResetFragments command. Will free any memory allocated with LoadFragment command. */
    case gZtcMsgTypeResetFragments_c:

      /* free every buffer in the linked list */
      while(mpFragHead)
      {
        pFragNext = mpFragHead->pNextDataBlock;
        MSG_Free(mpFragHead);
        mpFragHead = pFragNext;
      }
      /* note: mpFragHead will end up NULL */
    break;

    /* LoadFragment command */
    case gZtcMsgTypeLoadFragment_c:

      /* allocate a message buffer for the fragment */
      fragLen = gZtcPacketFromClient.structured.header.len - 1;
      pFragBlock = MSG_Alloc(sizeof(zbTxFragmentedHdr_t) + fragLen);
      if(!pFragBlock)
      {
        ztcError = gZtcOutOfMessages_c;
        break;
      }

      /* find tail, and link in allocated buffer at end */
      if(!mpFragHead)
        mpFragHead = pFragBlock;
      else
      {
        /* find tail */
        pFragNext = mpFragHead;
        while(pFragNext->pNextDataBlock)
          pFragNext = pFragNext->pNextDataBlock;
        pFragNext->pNextDataBlock = pFragBlock;
      }

      /* set up allocated buffer */
      pFragBlock->iDataSize = fragLen;
      pFragBlock->iMsgType = gApsdeDataReqFragMsgType_d;
      pFragBlock->pNextDataBlock = NULL;

      /* copy actual octets (they immediately follow the header) */
      FLib_MemCpy((uint8_t *)pFragBlock + sizeof(zbTxFragmentedHdr_t), 
          &(gZtcPacketFromClient.structured.payload[1]), fragLen);
    break;

    /* set the fragmentation mask (for debugging and ZCP testing) */
    case gZtcMsgTypeSetFragAckMask_c:
      giFragmentedPreAcked = *gZtcPacketFromClient.structured.payload;
    break;

    /* set the maximum OTA fragment length */
    case gZtcMsgTypeSetMaxFragmentLength_c:
      ApsmeSetRequest(gApsMaxFragmentLength_c, *gZtcPacketFromClient.structured.payload);
    break;

    /* set the window size (1-8) */
    case gZtcMsgTypeSetWindowSize_c:
      ApsmeSetRequest(gApsMaxWindowSize_c, *gZtcPacketFromClient.structured.payload);
    break;

    /* set the interframe delay 1-255 milliseconds */
    case gZtcMsgTypeSetInterframeDelay_c:
      ApsmeSetRequest(gApsInterframeDelay_c, *gZtcPacketFromClient.structured.payload);
    break;

    /* unknown opcode (aka msgType) */
    default:
      ztcError = gZtcUnknownOpcode_c;
    break;
  }

  /* send response */
  gZtcPacketToClient.structured.header.opcodeGroup = gApsdeAfOpcodeGroup_c;
  gZtcPacketToClient.structured.header.msgType = msgType;
  gZtcPacketToClient.structured.header.len = sizeof(clientPacketStatus_t);
  gZtcPacketToClient.structured.payload[0] = ztcError;
  ZtcWritePacketToClient(sizeof(gZtcPacketToClient.structured.header)
                               + gZtcPacketToClient.structured.header.len);

}
#endif // #if (gZtcIncluded_d && gFragmentationCapability_d)


#if (gZtcIncluded_d && gBeeStackIncluded_d)
/*
  Called on inbound APSDE data requests

  This function both services APSDE-DATA.requests
*/
index_t ZtcMsgFromPktApsde
  (
  uint8_t *pMsg,                        /* Pointer to message payload (just after msgType byte) */
  index_t msgLen,                       /* Length  of message payload */
  uint8_t *pPkt,                        /* Pointer to packet  payload */
  index_t pktLen,                       /* Length  of packet  payload */
  index_t fmtParametersIndex
  )
{
  zbApsdeDataReq_t *pDataReq;
  uint8_t asduLen;

  /* unused parameters, mark so no compiler warnings */
  (void)msgLen;
  (void)fmtParametersIndex;

  /* copy in 1st part header (up to asdu) */
  pDataReq = (void *)pMsg;
  FLib_MemCpy(pDataReq, pPkt, MbrOfs(zbApsdeDataReq_t, pAsdu));

  /* asdu too large? we're done */
  asduLen = pktLen - (sizeof(zbApsdeDataReq_t) - sizeof(zbTxFragmentedHdr_t) - sizeof(uint8_t *));
  pDataReq->asduLength = asduLen;

  /* copy in 2nd part of header */
  FLib_MemCpy(&pDataReq->txOptions, pPkt + MbrOfs(zbApsdeDataReq_t, pAsdu) + asduLen, 
    MbrOfs(zbApsdeDataReq_t, fragmentHdr) - MbrOfs(zbApsdeDataReq_t, txOptions));
  FillWithZero(&pDataReq->fragmentHdr, sizeof(pDataReq->fragmentHdr));

  /* copy in ASDU */
  pDataReq->pAsdu = (void *)((pMsg - 1) + ApsmeGetAsduOffset());
  FLib_MemCpy(pDataReq->pAsdu, pPkt + MbrOfs(zbApsdeDataReq_t, pAsdu), asduLen);

  /* set up fragmented part */
#if (gFragmentationCapability_d)
  pDataReq->fragmentHdr.pNextDataBlock = mpFragHead;
  pDataReq->fragmentHdr.iDataSize = asduLen;
  pDataReq->fragmentHdr.iMsgType = gApsdeDataReqMsgType_d;

  /* mark frag head as NULL for next data request */
  /* all buffers in linked list will be freed by APSDE-DATA.request itself */
  mpFragHead = NULL;
#else
  pDataReq->fragmentHdr.pNextDataBlock = NULL;
  pDataReq->fragmentHdr.iDataSize = asduLen;
  pDataReq->fragmentHdr.iMsgType = gApsdeDataReqMsgType_d;
#endif

  return 1; // everything is OK
}
#endif /* (gZtcIncluded_d && gBeeStackIncluded_d) */

/****************************************************************************/

/* Handle Ztc configuration commands/requests from the external client.
 * This code would be easier to read, but slower and larger, if each
 * case called a function instead of processing in-line.
 *
 * On arrival, the opcodeGroup in the pMsg has been changed to the opcode
 * group used for Ztc responses.
 *
 * The functions that actually handle the packets are responsible for the
 * contents of the return packet, except for the return packet's opcode
 * group. The message type of the return packet will be unchanged from the
 * request packet.
 *
 * *warning* ZtcReq_Handler() receives data in the global gZtcPacketFromClient,
 * and modifies gZtcPacketToClient.
 */
#if gZtcIncluded_d
void ZtcReq_Handler(void) {
  ztcMsgType_t msgType = gZtcPacketFromClient.structured.header.msgType;
  index_t i;

  if (mZtcPacketToClientIsBusy) {
    return;
  }

  for (i = 0; i < gZtcInternalMsgTypeInfoTableLen; ++i) {
    if (gaZtcInternalMsgTypeInfoTable[i].msgType == msgType) {

      /* Set default values. */
      gZtcPacketToClient.structured.header.opcodeGroup = gZtcCnfOpcodeGroup_c;
      gZtcPacketToClient.structured.header.msgType = msgType;
      gZtcPacketToClient.structured.header.len = sizeof(clientPacketStatus_t);
      gZtcPacketToClient.structured.payload[0] = gZtcSuccess_c;

      (*gaZtcInternalMsgTypeInfoTable[i].pConfigFunc)();

#if gZtcErrorReporting_d
      if (!mZtcErrorReported)
#endif
        ZtcWritePacketToClient(sizeof(gZtcPacketToClient.structured.header)
                               + gZtcPacketToClient.structured.header.len);

      return;
    }
  }

  ZtcError(gZtcUnknownOpcode_c);
}                                       /* ZtcReq_Handler() */
#endif

/****************************************************************************/
#if gBeeStackIncluded_d

#if gZtcIncluded_d
void ZtcMsgAFResetReqFunc(void) {
  TS_AfTaskInit();
}                                       /* ZtcMsgAFResetReqFunc() */
#endif

/****************************************************************************/

#if gZtcIncluded_d
void ZtcMsgAPSReadyReqFunc(void) {
  gDevReadyState = TRUE;
}                                       /* ZtcMsgAPSReadyReqFunc() */
#endif

/****************************************************************************/

#if gZtcIncluded_d
void ZtcMsgAPSResetReqFunc(void) {
  apsmeMessage_t apsmeMessage;

  apsmeMessage.msgType = gApsmeReset_c;
  (void) ZDO_APSME_SapHandler(&apsmeMessage);
}                                       /* ZtcMsgAPSResetReqFunc() */
#endif

#endif /* gBeeStackIncluded_d */

/****************************************************************************/
#if gBeeStackIncluded_d

#if gZtcIncluded_d
typedef struct ZtcGetEndPointDescriptionPkt_tag {
  zbEndPoint_t endPoint;
} ZtcGetEndPointDescriptionPkt_t;

void ZtcMsgDeregisterEndPointFunc(void) {
#if !gZTC_RegEpCapability
  ZtcError(gZtcRequestIsDisabled_c);
#else
  index_t i;
  ZtcGetEndPointDescriptionPkt_t *pScratch;
  uint8_t status;

  pScratch = (ZtcGetEndPointDescriptionPkt_t *) gZtcPacketFromClient.structured.payload;
  status = AF_DeRegisterEndPoint(pScratch->endPoint);

  if (status == gZbSuccess_c) {
    for (i = 0; i < NumberOfElements(maSimpleDescriptors); i++) {
      if (maSimpleDescriptors[i].endPoint == pScratch->endPoint) {
        maSimpleDescriptors[i].endPoint = 0;
        break;
      }
    }
  }

  gZtcPacketToClient.structured.payload[0] = status;
#endif                                  /* #if !gZTC_RegEpCapability */
}                                       /* ZtcMsgDeregisterEndPointFunc() */
#endif

#endif /* gBeeStackIncluded_d */

/****************************************************************************/

/* Note that gApsCurrentChannelMask is stored little-endian. */
/* Channel numbers start at 0. */
#if gBeeStackIncluded_d
#if gZtcIncluded_d
void ZtcMsgGetChannelReqFunc(void) {

  uint8_t channelNumber = 0;

  channelNumber = NlmeGetRequest(gNwkLogicalChannel_c);
  gZtcPacketToClient.structured.payload[sizeof(clientPacketStatus_t)] = channelNumber;
  gZtcPacketToClient.structured.header.len = sizeof(clientPacketStatus_t)
                                           + sizeof(gZtcPacketToClient.structured.payload[0]);
}                                       /* ZtcMsgGetChannelReqFunc() */
#endif

/****************************************************************************/

#if gZtcIncluded_d
void ZtcMsgGetEndPointDescriptionFunc(void) {
#if !gZTC_RegEpCapability
  ZtcError(gZtcRequestIsDisabled_c);
#else
  index_t dstPacketLen;
  ZtcGetEndPointDescriptionPkt_t *pGetEndPointDescPkt;
  zbSimpleDescriptorPackageStore_t *pSimple;

  pGetEndPointDescPkt = (ZtcGetEndPointDescriptionPkt_t *) gZtcPacketFromClient.structured.payload;
  pSimple = (zbSimpleDescriptorPackageStore_t *) AF_FindEndPointDesc(pGetEndPointDescPkt->endPoint);
  if (!pSimple) {
    ZtcError(gZtcEndPointNotFound_c);
    return;
  }

  dstPacketLen = ZtcPktFromMsgTwoArrayPtrs(&gZtcPacketToClient.structured.payload[sizeof(clientPacketStatus_t)],
                                           sizeof(gZtcPacketToClient.structured.payload)
                                           - sizeof(clientPacketStatus_t),
                                           (uint8_t *) pSimple,
                                           gUnused_c,
                                           mFmtZTCRegisterEndPointReq_c);

  if (dstPacketLen == gTooBig_c) {
    ZtcError(gZtcTooBig_c);
  } else {
    gZtcPacketToClient.structured.header.len = dstPacketLen + sizeof(clientPacketStatus_t);
  }
#endif                                  /* #if !gZTC_RegEpCapability #else */
}                                       /* ZtcMsgGetEndPointDescriptionFunc() */
#endif

/****************************************************************************/

#if gZtcIncluded_d
void ZtcMsgGetEndPointIdListFunc(void) {
#if !gZTC_RegEpCapability
  ZtcError(gZtcRequestIsDisabled_c);
#else
  index_t numberOfEndPointsInList;
  zbEndPoint_t *pEndPointList;
  index_t listLen;                      /* Risky on an 8 bit CPU. */
  /* This is needed to avoid a compiler "multiply by 1" warning. */
  index_t sizeofEndPoint = sizeof(*pEndPointList);

  pEndPointList = AF_EndPointsList(&numberOfEndPointsInList);
  if (!pEndPointList || !numberOfEndPointsInList) {
    ZtcError(gZtcEndPointNotFound_c);
    return;
  }

  listLen = numberOfEndPointsInList * sizeofEndPoint;
  if (listLen + sizeof(clientPacketStatus_t) > sizeof(gZtcPacketToClient.structured.payload)) {
    ZtcError(gZtcTooBig_c);
    return;
  }

  FLib_MemCpy(&gZtcPacketToClient.structured.payload[sizeof(clientPacketStatus_t)],
              pEndPointList,
              listLen);

  gZtcPacketToClient.structured.header.len = listLen + sizeof(clientPacketStatus_t);
#endif                                  /* #if !gZTC_RegEpCapability #else */
}                                       /* ZtcMsgGetEndPointIdListFunc() */
#endif

/****************************************************************************/

#if gZtcIncluded_d && gICanHearYouTableCapability_d
void ZtcMsgGetICanHearYouListFunc(void) {
  ztcICanHearYouTable_t *pTable = (ztcICanHearYouTable_t *) &gZtcPacketToClient.structured.payload[sizeof(clientPacketStatus_t)];
  pTable->count = GetICanHearYouTable(pTable->table, NumberOfElements(pTable->table));
  gZtcPacketToClient.structured.header.len = sizeof(clientPacketStatus_t)
                                           + sizeof(pTable->count)
                                           + (pTable->count * sizeof(zbNwkAddr_t));
}                                       /* ZtcMsgGetICanHearYouListFunc() */
#endif

#endif /* gBeeStackIncluded_d */
/****************************************************************************/

#if gZtcIncluded_d
void ZtcMsgGetModeReqFunc(void) {
  uint8_t i;
  index_t payloadIndex = sizeof(clientPacketStatus_t);

  gZtcPacketToClient.structured.payload[payloadIndex++] = (uint8_t) gZtcUartTxBlocking;

  for (i = 0; i < mZtcSAPModeTableLen; ++i) {
    gZtcPacketToClient.structured.payload[payloadIndex++] = (uint8_t) maZtcSAPModeTable[i];
  }

  gZtcPacketToClient.structured.header.len = payloadIndex;
}                                       /* ZtcMsgGetModeReqFunc() */
#endif

/****************************************************************************/
#if gBeeStackIncluded_d

#if gZtcIncluded_d
void ZtcMsgGetNumberOfEndPointsFunc(void) {
  gZtcPacketToClient.structured.payload[sizeof(clientPacketStatus_t)] = AF_NumOfEndPoints();
  gZtcPacketToClient.structured.header.len = sizeof(clientPacketStatus_t)
                                           + sizeof(gZtcPacketToClient.structured.payload[0]);
}                                       /* ZtcMsgGetNumberOfEndPointsFunc() */
#endif
#endif /* gBeeStackIncluded_d */

/****************************************************************************/
#if gZtcIncluded_d
void ZtcMsgGetNVDataSetDescReqFunc(void) {
  index_t payloadIndex = sizeof(clientPacketStatus_t);
#if !gNvStorageIncluded_d
  gZtcPacketToClient.structured.payload[payloadIndex++] = 0;
#else
  index_t dataSetIndex;
  NvDataItemDescription_t const *pDesc;
  uint16_t size;

  gZtcPacketToClient.structured.payload[payloadIndex++] = NumberOfElements(NvDataSetTable);

  for (dataSetIndex = 0; dataSetIndex < NumberOfElements(NvDataSetTable); ++dataSetIndex) {
    gZtcPacketToClient.structured.payload[payloadIndex++] = NvDataSetTable[dataSetIndex].dataSetID;

    pDesc = NvDataSetTable[dataSetIndex].pItemDescriptions;
    size = 0;
    while (pDesc->length) {
      size += pDesc++->length;
    }

    gZtcPacketToClient.structured.payload[payloadIndex++] = (size & 0xFF);
    gZtcPacketToClient.structured.payload[payloadIndex++] = (size >> 8);
  }

#endif
  gZtcPacketToClient.structured.header.len = payloadIndex;
}                                       /* ZtcMsgGetNVDataSetDescReqFunc() */
#endif
/****************************************************************************/

#if gZtcIncluded_d
void ZtcMsgGetNVPageHdrReqFunc(void) {
  index_t payloadIndex = sizeof(clientPacketStatus_t);
#if !gNvStorageIncluded_d
  gZtcPacketToClient.structured.payload[payloadIndex++] = 0;
#else
  gZtcPacketToClient.structured.payload[payloadIndex++] = 0;
#endif
  gZtcPacketToClient.structured.header.len = payloadIndex;
}                                       /* ZtcMsgGetNVPageHdrReqFunc() */
#endif

/****************************************************************************/
#if gBeeStackIncluded_d

#if gZtcIncluded_d
void ZtcMsgGetPanIDReqFunc(void) {
  FLib_MemCpy(&gZtcPacketToClient.structured.payload[sizeof(clientPacketStatus_t)],
              NlmeGetRequest(gNwkPanId_c),
              sizeof(NlmeGetRequest(gNwkPanId_c)));
  gZtcPacketToClient.structured.header.len = sizeof(clientPacketStatus_t)
                                           + sizeof(NlmeGetRequest(gNwkPanId_c));
}                                       /* ZtcMsgGetPanIDReqFunc() */
#endif

#endif /* gBeeStackIncluded_d */
/****************************************************************************/

/* Set various Ztc operating mode flags:
 *
 *  gZtcUartTxBlocking: if TRUE, the UART output routine will block until
 *  output is finished.
 *
 *  maZtcSAPModeTable[]: One byter per group of SAP Handlers, indicating
 *  what Ztc should do when a message from one of the given SAP Handlers
 *  arrives at ZTC_TaskEventMonitor():
 *      ignore messages from that SAP Handler, or
 *      forward monitor copies of messages from that SAP Handler to the
 *          external client, or
 *      intercept messages from that SAP Handle; forward them to the external
 *      client, and prevent them from being passed to their destination
 *      BeeStack layer.
 *  Note that these modes only affect messages that are sent from the SAP
 *  Handler to Ztc. These settings have no effect on packets sent from the
 *  external client to the SAP Handler.
 *
 * *warning* This is brittle. Ztc and the client must implicitly
 * agree on the order of the mode setting flags.
 */
#if gZtcIncluded_d
void ZtcMsgModeSelectReqFunc(void) {
  uint8_t byte;
  index_t count;
  index_t dataLen = gZtcPacketFromClient.structured.header.len;
  uint8_t i;
  index_t payloadIndex = 0;

  if (dataLen > 0) {
    gZtcUartTxBlocking = !!gZtcPacketFromClient.structured.payload[payloadIndex++];
  }

  dataLen -= sizeof(gZtcPacketFromClient.structured.payload[0]);

  count = (dataLen <= mZtcSAPModeTableLen ? dataLen : mZtcSAPModeTableLen);

  for (i = 0; i < count; ++i) {
    byte = gZtcPacketFromClient.structured.payload[payloadIndex + i];
    /* If support for these SAP Handlers hse by compiled out, ignore them. */
    if (maZtcSAPModeTable[i] != gZtcSAPModeInvalid_c) {
      maZtcSAPModeTable[i] = byte;
    }
  }
}                                       /* ZtcMsgModeSelectReqFunc() */
#endif

/****************************************************************************/

#if gZtcIncluded_d
void ZtcMsgNVSaveReqFunc(void) {
#if !gNvStorageIncluded_d
  ZtcError(gZtcRequestIsDisabled_c);
#else
  uint8_t dataSetIndex;

  dataSetIndex = gZtcPacketFromClient.structured.payload[0];
  if (dataSetIndex > NumberOfElements(NvDataSetTable)) {
    ZtcError(gZtcTooBig_c);
    return;
  }

  NvSaveOnIdle(NvDataSetTable[dataSetIndex].dataSetID);
#endif
}                                       /* ZtcMsgNVSaveReqFunc() */
#endif

/****************************************************************************/
#if gZtcIncluded_d
#if (gMsgInfo_d)
#include "msgsystem.h"
extern pools_t maMmPools[];

/******************************************************************************
* MM_DebugNumFreeBigBuffers
*
******************************************************************************/
uint8_t ZTC_DebugNumFreeBigBuffers
  (
  void
  )
{
  listHeader_t *pHead;
  uint8_t count = 0;
  pHead = maMmPools[1].anchor.pHead;
  while(pHead != NULL)   
  {
    pHead = pHead->pNext;
    count++;
  }
   
 return count;
}

/******************************************************************************
* MM_DebugNumFreeSmallBuffers
*
******************************************************************************/
uint8_t ZTC_DebugNumFreeSmallBuffers
  (
  void
  )
{
  listHeader_t *pHead;
  uint8_t count = 0;
  
  pHead = maMmPools[0].anchor.pHead;
  while(pHead != NULL)    
  {
    pHead = pHead->pNext;
    count++;
  }
  return count;
}

/******************************************************************************/
void ZtcMsgGetNumOfMsgsReqFunc(void) {
  gZtcPacketToClient.structured.payload[0] = ZTC_DebugNumFreeSmallBuffers();
  gZtcPacketToClient.structured.payload[1] = ZTC_DebugNumFreeBigBuffers();
  gZtcPacketToClient.structured.header.len = (sizeof(uint8_t) *2);
}
#endif //gMsgInfo_d
#endif
/****************************************************************************/

#if gZtcIncluded_d
void ZtcMsgReadExtendedAdrReqFunc(void) {
  FLib_MemCpy( &gZtcPacketToClient.structured.payload[sizeof(clientPacketStatus_t)],
       aExtendedAddress, 8 );
 
  gZtcPacketToClient.structured.header.len = sizeof(clientPacketStatus_t) + 8;
}                                         /* ZtcMsgReadExtendedAdrReqFunc() */
#endif
#if (gZtcIncluded_d && gBeeStackIncluded_d)
void ZtcMsgReadNwkMngAddressReqFunc(void)
{
  FLib_MemCpy(&gZtcPacketToClient.structured.payload[sizeof(clientPacketStatus_t)],
              gNwkManagerAddr, 2);

  gZtcPacketToClient.structured.header.len = sizeof(clientPacketStatus_t) + 2;
}
#endif /* (gZtcIncluded_d && gBeeStackIncluded_d) */

/****************************************************************************/

/* eliminate compiler warnings */
#if gZtcIncluded_d
uint8_t AF_AppToAfdeDataReq(void) {
  return gZbSuccess_c;
}

#if gBeeStackIncluded_d
/* MSG Data Indication Callback Function Pointer */
void ZtcMsgDataCallBack(apsdeToAfMessage_t *pMsg) {
  AF_FreeDataIndicationMsg(pMsg);
}

/* Data Confirmation Callback Function Pointer */
void ZtcConfDataCallBack(apsdeToAfMessage_t *pMsg) {
  MSG_Free(pMsg);
}

void ZtcMsgRegisterEndPointFunc(void) {
#if !gZTC_RegEpCapability
  ZtcError(gZtcRequestIsDisabled_c);
#else
  bool_t endPointFound;
  index_t freeEndPoint;
  index_t i;
  zbSimpleDescriptorPackageStore_t *pScratch;
  index_t scratchLen;
  uint8_t status;

  
  /* Find the first unused slot in the EndPoint table. */
   for (endPointFound = FALSE, i = 0; ((endPointFound == FALSE) && (i < NumberOfElements(maSimpleDescriptors))); i++) {
    if (!maSimpleDescriptors[i].endPoint) {
      freeEndPoint = i;
    endPointFound = TRUE;
    }
  }

  if (endPointFound == FALSE) {
    ZtcError(gZtcEndPointTableIsFull_c);
    return;
  }
  /* Convert the variable length packet format into a
   * zbSimpleDescriptorPackageStore_t. This could be more directly, here in
   * this code, but then minor changes in the typedef would require code
   * changes here. Using the copy function is slower, but more robust.
   * This is a minor abuse of the format conversion mechanism; normally the
   * copy function pointer and the format parameter value would be found via
   * the message info table and the main format table.
   */
  pScratch = (zbSimpleDescriptorPackageStore_t *) MSG_Alloc(mMaxPacketSize_c);/* changed to 128 to limit to the size of a big buffer.*/
  if (!pScratch) {
    ZtcError(gZtcEndPointTableIsFull_c);
    return;
  }

  scratchLen = ZtcMsgFromPktTwoArrayPtrs((uint8_t *) pScratch,
                                         mMaxPacketSize_c,
                                         gZtcPacketFromClient.structured.payload,
                                         gZtcPacketFromClient.structured.header.len,
                                         mFmtZTCRegisterEndPointReq_c);

  if (   (scratchLen == gTooBig_c)
      || (pScratch->inputClusters .cNumClusters > NumberOfElements(maInputClusterIdLists[0]))
      || (pScratch->outputClusters.cNumClusters > NumberOfElements(maInputClusterIdLists[0]))) {
    MSG_Free(pScratch);
    ZtcError(gZtcTooBig_c);
    return;
  }

  /* Move the input and output cluster lists to more permanent places. */
  FLib_MemCpy(&maInputClusterIdLists[freeEndPoint],
              pScratch->inputClusters.pClusterList,
              pScratch->inputClusters.cNumClusters
              * sizeof(*pScratch->inputClusters.pClusterList));

  pScratch->inputClusters.pClusterList = maInputClusterIdLists[freeEndPoint];

  FLib_MemCpy(&maOutputClusterIdLists[freeEndPoint],
              pScratch->outputClusters.pClusterList,
              pScratch->outputClusters.cNumClusters
              * sizeof(*pScratch->outputClusters.pClusterList));

  pScratch->outputClusters.pClusterList = maOutputClusterIdLists[freeEndPoint];

  /* Store the simple descriptor, and set up the end point descriptor. */
  FLib_MemCpy(&maSimpleDescriptors[freeEndPoint], pScratch, sizeof(*pScratch));

  maEndPointDesc[freeEndPoint].pSimpleDesc = (zbSimpleDescriptor_t *) &maSimpleDescriptors[freeEndPoint];
  maEndPointDesc[freeEndPoint].pDataMsgCallBackFuncPtr = ZtcMsgDataCallBack;
  maEndPointDesc[freeEndPoint].pDataConfCallBackFuncPtr = ZtcConfDataCallBack;

  status = AF_RegisterEndPoint(&maEndPointDesc[freeEndPoint]);
  if (status == gRegFailure_c) {
    maSimpleDescriptors[freeEndPoint].endPoint = 0;
  }

  MSG_Free(pScratch);
  gZtcPacketToClient.structured.payload[0] = (clientPacketStatus_t) status;
#endif                                  /* #if !gZTC_RegEpCapability */
}                                       /* ZtcMsgRegisterEndPointFunc() */

#endif  /*  gBeeStackIncluded_d */

#endif

/****************************************************************************/

#if gZtcIncluded_d
void ZtcMsgResetCPUReqFunc(void) {
  /*PWRLib_Reset();*/
#include "crm.h"
  //CRM_SoftReset();
  __asm(
        "  movs   r0, #1   \n"
        "  lsls   r0, r0, #22 \n"
        "  bx    r0"
   );
}                                       /* ZtcMsgResetCPUReqFunc() */
#endif

/****************************************************************************/
#if gBeeStackIncluded_d

#if gZtcIncluded_d
void ZtcMsgRestartNwkReqFunc(void) {
  TS_SendEvent(gZdoStateMachineTaskID_c, gStartWithOutNvm_c);
}                                       /* ZtcMsgRestartNwkReqFunc() */
#endif

/****************************************************************************/

/* Note that zbChannels_t is stored little-endian. */
#if gZtcIncluded_d
void ZtcMsgSetChannelReqFunc(void) {
  zbChannels_t channel;
  index_t channelNumber = gZtcPacketFromClient.structured.payload[0];

  if (channelNumber >= sizeof(gBeeStackParameters.gApsChannelMask) * 8) {
    ZtcError(gZtcTooBig_c);
    return;
    }

  FLib_MemSet(channel, 0, sizeof(channel));
  channel[channelNumber / 8] = (1 << (channelNumber & 0x07));

  FLib_MemCpy(gBeeStackParameters.gApsChannelMask, channel, sizeof(gBeeStackParameters.gApsChannelMask));
}                                       /* ZtcMsgSetChannelReqFunc() */
#endif

/****************************************************************************/

#if gZtcIncluded_d && gICanHearYouTableCapability_d
void ZtcMsgSetICanHearYouListFunc(void) {
  ztcICanHearYouTable_t *pTable = (ztcICanHearYouTable_t *) gZtcPacketFromClient.structured.payload;

  SetICanHearYouTable(pTable->count, pTable->table);
}                                       /* ZtcMsgSetICanHearYouListFunc() */
#endif

/****************************************************************************/

#if gZtcIncluded_d
void ZtcMsgSetPanIDReqFunc(void) {
  FLib_MemCpy(NlmeGetRequest(gNwkPanId_c),
              (void *) gZtcPacketFromClient.structured.payload,
              sizeof(NlmeGetRequest(gNwkPanId_c)));
}                                       /* ZtcMsgGetPanIDReqFunc() */
#endif

/****************************************************************************/

#if gZtcIncluded_d
void ZtcMsgStartNwkReqFunc(void) {
	uint8_t rejoinMode = *(uint8_t*)gZtcPacketFromClient.structured.payload;
	event_t event = 0;
	if(rejoinMode == gAssociationJoin_c)
		event = gStartAssociationRejoinWithNvm_c;
	else if(rejoinMode == gOrphanJoin_c)
		event = gStartOrphanRejoinWithNvm_c;
	else if(rejoinMode == gNwkRejoin_c)
		event = gStartNwkRejoinWithNvm_c;
	else if(rejoinMode == gSilentRejoin_c)
		event = gStartSilentRejoinWithNvm_c;  
	else if(rejoinMode == gSilentNwkRejoin_c)
		event = gStartSilentNwkRejoin_c;
	/* if it's a valid event and if ZDO state machine is in its initial state */
	if( event )// && ZDO_GetState()== gZdoInitialState_c )
	  TS_SendEvent(gZdoStateMachineTaskID_c, event );
}                                       /* ZtcMsgStartNwkReqFunc() */
#endif

/****************************************************************************/

#if gZtcIncluded_d
void ZtcMsgStopNwkReqFunc(void) {
  TS_SendEvent(gZdoStateMachineTaskID_c, gStop_c);
}                                       /* ZtcMsgStopNwkReqFunc() */
#endif

#endif /* gBeeStackIncluded_d */
/****************************************************************************/

#if gZtcIncluded_d
void ZtcMsgWriteExtendedAdrReqFunc(void) {
  FLib_MemCpy(aExtendedAddress, gZtcPacketFromClient.structured.payload,8);
  MacPhyInit_WriteExtAddress(aExtendedAddress);

}                                       /* ZtcMsgWriteExtendedAdrReqFunc() */
#endif

#if (gZtcIncluded_d && gBeeStackIncluded_d)
void ZtcMsgWriteNwkMngAddressReqFunc(void)
{
  FLib_MemCpy(gNwkManagerAddr, gZtcPacketFromClient.structured.payload, 2);
}
#endif /* (gZtcIncluded_d && gBeeStackIncluded_d) */

/****************************************************************************/
#if (gSAPMessagesEnableNlme_d)
#if gZtcIncluded_d
void ZtcFreeDiscoveryTables(void) {
  NWK_FreeUpDiscoveryTables();
}                          

#endif
/****************************************************************************/

#if gZtcIncluded_d
void ZtcSetJoinFilterFlag(void) {
  gRejoinMode = gZtcPacketFromClient.structured.payload[0];
}                          
#endif
#endif
/****************************************************************************/

/* Start of the memory/GPIO handling functions                       *
 * These functions handle the direct read/write operations from and  *
 * to the microcontroller memory                                     *

These functions are, of course, called the ZTC way, using pointers to functions, picked from
the message handlers table, so do not look for their declarations. 

They decode the gZtcPacketFromClient variable and use the info from there to find
out which is the location to be read/written

*****************************************************************************/

/*The following function reads a memory block from a given address */

void  ZtcMemoryReadBlock(void)
{
  uint8_t *addr;
  uint8_t nBytes, lcount;
  uint8_t *pIn, *pOut;


  FLib_MemCpy(&addr, gZtcPacketFromClient.structured.payload, 4);

  nBytes = gZtcPacketFromClient.structured.payload[sizeof(addr)];
  lcount = nBytes;
//Construct and send response
  pOut = addr;
  pIn = &gZtcPacketToClient.structured.payload[0];
  for (;lcount != 0; lcount--)
  {
    *pIn++ = *pOut++;
  }
  gZtcPacketToClient.structured.header.opcodeGroup = gZtcCnfOpcodeGroup_c;
  gZtcPacketToClient.structured.header.msgType = mZtcLowLevelMemoryReadBlock_c; 
  gZtcPacketToClient.structured.header.len = (uint8_t)nBytes; 
//No illegal mem locations, and no strict parm check done
}

/*********************************************************************/
/*The following function reads a byte from a given address */
void  ZtcMemoryReadByte(void)
{
  uint8_t *addr;

  FLib_MemCpy(&addr, gZtcPacketFromClient.structured.payload, 4);

//Construct and send response
  gZtcPacketToClient.structured.payload[0] = *addr;
  gZtcPacketToClient.structured.header.opcodeGroup = gZtcCnfOpcodeGroup_c;
  gZtcPacketToClient.structured.header.msgType = mZtcLowLevelMemoryReadByte_c; 
  gZtcPacketToClient.structured.header.len = sizeof(uint8_t); 
//No illegal mem locations, and no strict parm check done

}
/********************************************************************/
/*The following function reads a word from a given address */
void  ZtcMemoryReadWord(void)
{
  uint8_t *addr;
  uint8_t lcount;
  uint8_t *pIn, *pOut;


  FLib_MemCpy(&addr, gZtcPacketFromClient.structured.payload, 4);
  lcount = 2;
  pOut = addr;
  pIn = &gZtcPacketToClient.structured.payload[0];
  for (;lcount != 0; lcount--) 
      *pIn++ = *pOut++;
  gZtcPacketToClient.structured.header.opcodeGroup = gZtcCnfOpcodeGroup_c;
  gZtcPacketToClient.structured.header.msgType = mZtcLowLevelMemoryReadWord_c; 
  gZtcPacketToClient.structured.header.len = 2; 
}
/********************************************************************/
/*The following function reads a long value from a given address */
void  ZtcMemoryReadLong(void)
{
  uint8_t *addr;
  uint8_t lcount;
  uint8_t *pIn, *pOut;

  FLib_MemCpy(&addr, gZtcPacketFromClient.structured.payload, 4);
  lcount = 4;
//Construct and send response
  pOut = addr;  
  pIn = &gZtcPacketToClient.structured.payload[0];
  for (;lcount != 0; lcount--) 
    *pIn++ = *pOut++;

  gZtcPacketToClient.structured.header.opcodeGroup = gZtcCnfOpcodeGroup_c;
  gZtcPacketToClient.structured.header.msgType = mZtcLowLevelMemoryReadLong_c; 
  gZtcPacketToClient.structured.header.len = 4; 
}

//-----------------------------------------------------------------------------------
/*The following function writes a byte block from a given address */
void  ZtcMemoryWriteBlock(void)
{
  uint8_t *addr;
  uint8_t nBytes;
  uint8_t *pIn, *pOut;
  uint8_t nWritten, nRead;

  FLib_MemCpy(&addr, gZtcPacketFromClient.structured.payload, 4);

  nBytes = gZtcPacketFromClient.structured.payload[sizeof(addr)];
  pIn = &gZtcPacketFromClient.structured.payload[sizeof(addr)+1];
  pOut = addr;
  nRead = nWritten = 0;
  while (nRead++ < nBytes)
  {
  if (!(((int)pOut < 0x00400000) && (((int)pOut & 0xF0000000)!= 0x80000000)))// Write to out of RAM range or I/O space attempted
     {
      *pOut++ = *pIn++;
      nWritten++;
     }
  }
  gZtcPacketToClient.structured.header.opcodeGroup = gZtcCnfOpcodeGroup_c;
  gZtcPacketToClient.structured.header.msgType = mZtcLowLevelMemoryWriteBlock_c; 
  gZtcPacketToClient.structured.header.len = 1;
  gZtcPacketToClient.structured.payload[0] = nWritten;
}
/************************************************************************/
/*This function writes a byte into a memory location*/

void  ZtcMemoryWriteByte(void)
{
  uint8_t *addr;
  uint8_t vIn, *pOut, nWritten;


  FLib_MemCpy(&addr, gZtcPacketFromClient.structured.payload, 4);  
  vIn = gZtcPacketFromClient.structured.payload[sizeof(addr)];
  pOut = addr;
  nWritten = 0;

  if (!((int)pOut < 0x00400000) && ((((int)pOut & 0xF0000000)!= 0x80000000)))  // Write to out of RAM range or I/O space attempted
  {
    *pOut = vIn ;
    nWritten = sizeof(uint8_t); 
  }
  gZtcPacketToClient.structured.header.opcodeGroup = gZtcCnfOpcodeGroup_c;
  gZtcPacketToClient.structured.header.msgType = mZtcLowLevelMemoryWriteByte_c; 
  gZtcPacketToClient.structured.header.len = 1;
  gZtcPacketToClient.structured.payload[0] = nWritten;
}

/***************************************************************************/
/*This function writes a word into a memory location*/
void  ZtcMemoryWriteWord(void)
{
  uint8_t *addr;
  uint8_t *pIn, *pOut;
  uint8_t nWritten, nRead;

  FLib_MemCpy(&addr, gZtcPacketFromClient.structured.payload, 4);
  pIn = &gZtcPacketFromClient.structured.payload[sizeof(addr)];
  pOut = addr;
  nRead = nWritten = 0;
  while (nRead++ < sizeof(uint16_t))
  {
    if (!(((int)pOut < 0x00400000) && (((int)pOut & 0xF0000000)!= 0x80000000)))// Write to out of RAM range or I/O space attempted
    {
      *pOut++ = *pIn++;
      nWritten++;
    }
  }
  gZtcPacketToClient.structured.header.opcodeGroup = gZtcCnfOpcodeGroup_c;
  gZtcPacketToClient.structured.header.msgType = mZtcLowLevelMemoryWriteWord_c; 
  gZtcPacketToClient.structured.header.len = 1;
  gZtcPacketToClient.structured.payload[0] = nWritten;
}

/***************************************************************************/
/*This function writes a long value into a memory location*/

void  ZtcMemoryWriteLong(void)
{
  uint8_t *addr;
  uint8_t *pIn, *pOut;
  uint8_t nWritten, nRead;

  FLib_MemCpy(&addr, gZtcPacketFromClient.structured.payload, 4);
  pIn = &gZtcPacketFromClient.structured.payload[sizeof(addr)];
  pOut = addr;
  nRead = nWritten = 0;
  while (nRead++ < sizeof(uint32_t))
  {
    if (!(((int)pOut < 0x00400000) && (((int)pOut & 0xF0000000)!= 0x80000000)))// Write to out of RAM range or I/O space attempted
    {
      *pOut++ = *pIn++;
      nWritten++;
    }
  }
  gZtcPacketToClient.structured.header.opcodeGroup = gZtcCnfOpcodeGroup_c;
  gZtcPacketToClient.structured.header.msgType = mZtcLowLevelMemoryWriteLong_c; 
  gZtcPacketToClient.structured.header.len = 1;
  gZtcPacketToClient.structured.payload[0] = nWritten;
}

/****************************************************************************/
/*ZtcPing simply echoes back the payload*/

void  ZtcPing(void)
{
  gZtcPacketToClient.structured.header.opcodeGroup = gZtcCnfOpcodeGroup_c;
  gZtcPacketToClient.structured.header.msgType = mZtcLowLevelPing_c; 
  gZtcPacketToClient.structured.header.len = gZtcPacketFromClient.structured.header.len;
  FLib_MemCpy(gZtcPacketToClient.structured.payload, gZtcPacketFromClient.structured.payload,
              gZtcPacketFromClient.structured.header.len );

}

/* end ZtcMain.c*/

