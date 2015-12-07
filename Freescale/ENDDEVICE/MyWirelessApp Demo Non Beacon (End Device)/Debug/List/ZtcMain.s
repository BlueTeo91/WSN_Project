///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      08/Dec/2015  00:24:16 /
// IAR ANSI C/C++ Compiler V5.50.7.22081/W32 EVALUATION for ARM               /
// Copyright (C) 1999-2010 IAR Systems AB.                                    /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Documents and Settings\Administrator\Desktop\WSN_Pro /
//                    ject\ENDDEV\MyWirelessApp Demo Non Beacon (End          /
//                    Device)\SSM\ZTC\Source\ZtcMain.c                        /
//    Command line =  "C:\Documents and Settings\Administrator\Desktop\WSN_Pr /
//                    oject\ENDDEV\MyWirelessApp Demo Non Beacon (End         /
//                    Device)\SSM\ZTC\Source\ZtcMain.c" -D                    /
//                    gMacStandAlone_d=1 -D gSAPMessagesEnableLlc_d=0 -D      /
//                    gZtcIncluded_d=0 -D gTargetMC1322xSRB=1 --preprocess    /
//                    "C:\Documents and Settings\Administrator\Desktop\WSN_Pr /
//                    oject\ENDDEV\MyWirelessApp Demo Non Beacon (End         /
//                    Device)\Debug\List\" -lC "C:\Documents and              /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End Device)\Debug\List\" -lB  /
//                    "C:\Documents and Settings\Administrator\Desktop\WSN_Pr /
//                    oject\ENDDEV\MyWirelessApp Demo Non Beacon (End         /
//                    Device)\Debug\List\" --diag_suppress                    /
//                    Pe014,Pe001,Pe991,Pa039,Pe520 -o "C:\Documents and      /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End Device)\Debug\Obj\"       /
//                    --no_cse --no_unroll --no_inline --no_code_motion       /
//                    --no_tbaa --no_clustering --no_scheduling --debug       /
//                    --endian=little --cpu=ARM7TDMI-S --fpu=None             /
//                    --dlib_config "C:\Program Files\IAR Systems\Embedded    /
//                    Workbench 5.4 Evaluation\arm\INC\DLib_Config_Normal.h"  /
//                    -I "C:\Documents and Settings\Administrator\Desktop\WSN /
//                    _Project\ENDDEV\MyWirelessApp Demo Non Beacon (End      /
//                    Device)\MacPhy\Interface\" -I "C:\Documents and         /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\Application\Init\" -I "C:\Documents and         /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\Application\Interface\" -I "C:\Documents and    /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\Application\Configure\" -I "C:\Documents and    /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\Application\UartUtil\" -I "C:\Documents and     /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\Application\Source\" -I "C:\Documents and       /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\SSM\TS\Interface\" -I "C:\Documents and         /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End Device)\SSM\TS\Source\"   /
//                    -I "C:\Documents and Settings\Administrator\Desktop\WSN /
//                    _Project\ENDDEV\MyWirelessApp Demo Non Beacon (End      /
//                    Device)\SSM\ZTC\Interface\" -I "C:\Documents and        /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End Device)\SSM\ZTC\Source\"  /
//                    -I "C:\Documents and Settings\Administrator\Desktop\WSN /
//                    _Project\ENDDEV\MyWirelessApp Demo Non Beacon (End      /
//                    Device)\PLM\Interface\" -I "C:\Documents and            /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\PLM\LibInterface\" -I "C:\Documents and         /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\PLM\Source\Display\" -I "C:\Documents and       /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\PLM\Source\Keyboard\" -I "C:\Documents and      /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End Device)\PLM\Source\NVM\"  /
//                    -I "C:\Documents and Settings\Administrator\Desktop\WSN /
//                    _Project\ENDDEV\MyWirelessApp Demo Non Beacon (End      /
//                    Device)\PLM\Source\TMR\" -I "C:\Documents and           /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\PLM\Source\UART\" -I "C:\Program Files\IAR      /
//                    Systems\Embedded Workbench 5.4 Evaluation\arm\INC\"     /
//                    --interwork --cpu_mode thumb -On                        /
//    List file    =  C:\Documents and Settings\Administrator\Desktop\WSN_Pro /
//                    ject\ENDDEV\MyWirelessApp Demo Non Beacon (End          /
//                    Device)\Debug\List\ZtcMain.s                            /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME ZtcMain

        EXTERN FLib_MemCpy
        EXTERN gZtcPacketFromClient
        EXTERN gZtcPacketToClient

        PUBLIC ZTCQueue_QueueToTestClient
        PUBLIC ZTC_FragEventMonitor
        PUBLIC ZTC_TaskEventMonitor
        PUBLIC ZtcMemoryReadBlock
        PUBLIC ZtcMemoryReadByte
        PUBLIC ZtcMemoryReadLong
        PUBLIC ZtcMemoryReadWord
        PUBLIC ZtcMemoryWriteBlock
        PUBLIC ZtcMemoryWriteByte
        PUBLIC ZtcMemoryWriteLong
        PUBLIC ZtcMemoryWriteWord
        PUBLIC ZtcPing
        PUBLIC Ztc_Task
        PUBLIC Ztc_TaskInit

// C:\Documents and Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWirelessApp Demo Non Beacon (End Device)\SSM\ZTC\Source\ZtcMain.c
//    1 /******************************************************************************
//    2 * Implementation of the ZigBee Test Client.
//    3 * ZTC task public functions, and various internals.
//    4 *
//    5 * Copyright (c) 2008, Freescale, Inc.  All rights reserved.
//    6 *
//    7 *
//    8 * No part of this document must be reproduced in any form - including copied,
//    9 * transcribed, printed or by any electronic means - without specific written
//   10 * permission from Freescale Semiconductor.
//   11 *
//   12 ******************************************************************************/
//   13 
//   14 #include "EmbeddedTypes.h"
//   15 #if gBeeStackIncluded_d
//   16 #include "ZigBee.h"
//   17 #include "BeeStackFunctionality.h"
//   18 #include "BeeStackConfiguration.h"
//   19 
//   20 #include "BeeStackInterface.h"
//   21 #include "BeeCommon.h"
//   22 #include "BeeStack_Globals.h"
//   23 #endif
//   24 
//   25 
//   26 #include "MsgSystem.h"
//   27 #include "FunctionLib.h"
//   28 #include "PublicConst.h"
//   29 #include "MacPhyInit.h"
//   30 #include "TS_Interface.h"
//   31  
//   32 #include "NVM_Interface.h"
//   33 
//   34 #include "NV_Data.h"
//   35 
//   36 #if gBeeStackIncluded_d
//   37 #include "BeeStackUtil.h"
//   38 #include "ZDOStateMachineHandler.h"
//   39 #include "nwkcommon.h"
//   40 #include "AfZdoInterface.h"
//   41 #include "ZdoApsInterface.h"
//   42 #include "ApsMgmtInterface.h"
//   43 #include "AfApsInterface.h"
//   44 #endif
//   45 
//   46 /*
//   47 #include "PWRLib.h"
//   48 */
//   49 #include "PublicConst.h"
//   50 #if gBeeStackIncluded_d
//   51 #include "BeeAppInit.h"
//   52 #endif
//   53 
//   54 #include "Uart_Interface.h"
//   55 
//   56 
//   57 #include "AspZtc.h"
//   58 #include "LlcZtc.h"
//   59 #include "ZtcInterface.h"
//   60 #include "ZtcPrivate.h"
//   61 #include "ZtcClientCommunication.h"
//   62 #include "ZtcMsgTypeInfo.h"
//   63 #include "ZtcSAPHandlerInfo.h"
//   64 #include "ZtcCopyData.h"
//   65 
//   66 #if gMacStandAlone_d
//   67 #include "Mac_Globals.h"
//   68 #endif
//   69 
//   70 #if (gZtcIncluded_d && gFragmentationCapability_d)
//   71 static void ZtcApsde_Handler(void);
//   72 #endif
//   73 /******************************************************************************
//   74 *******************************************************************************
//   75 * Private type definitions
//   76 *******************************************************************************
//   77 ******************************************************************************/
//   78 
//   79 /* Format of the messages echanged between Ztc and the SAP Handlers.
//   80  *
//   81  * *warning* All of the SAP Handlers receive a sapHandlerMsg_t, containing a
//   82  * msgType.
//   83  * The AFDE -> APP and APP -> AFDE SAP Handler send back only raw data,
//   84  * without a msgType, to ZTC_TaskEventMonitor().
//   85  * All other SAP Handlers send back a sapHandlerMsg_t *with* a msgType.
//   86  */
//   87 typedef struct sapHandlerMsgHdr_tag {
//   88   ztcMsgType_t msgType;
//   89 } sapHandlerMsgHdr_t;
//   90 
//   91 #ifndef gMAC2006_d
//   92  #define mSapHandlerMsgTotalLen_c    144
//   93  #define mMaxPacketSize_c            144
//   94 #else
//   95  #define mSapHandlerMsgTotalLen_c    155  // Security material added (securityLevel, keyIdMode, keySource, keyIndex)
//   96  #define mMaxPacketSize_c            155
//   97 #endif //gMAC2006_d
//   98 
//   99 typedef union sapHandlerMsg_tag {
//  100   uint8_t raw[mSapHandlerMsgTotalLen_c];
//  101   struct {
//  102     sapHandlerMsgHdr_t header;
//  103     uint8_t payload[mSapHandlerMsgTotalLen_c - sizeof(sapHandlerMsgHdr_t)];
//  104   } structured;
//  105 } sapHandlerMsg_t;
//  106 
//  107 /* The ICanHearYou table is a debugging tool used in BeeStack. */
//  108 #if gBeeStackIncluded_d
//  109 typedef struct ztcICanHearYouTable_tag {
//  110   index_t count;                                /* Number of entries in table. */
//  111   zbNwkAddr_t table[(sizeof(clientPacket_t) - sizeof(clientPacketHdr_t))
//  112                     / sizeof(zbNwkAddr_t)];     /* First entry of variable-length table. */
//  113 } ztcICanHearYouTable_t;
//  114 #endif
//  115 
//  116 #pragma pack(1)
//  117 /* a single fragment as seen by ZTC */
//  118 typedef struct apsdeFragment_tag {
//  119   uint8_t iBlockNumber;
//  120   uint8_t iMoreBlocks;
//  121   uint8_t iLength;
//  122   uint8_t aData[1];
//  123 } apsdeFragment_t;
//  124 #pragma pack()
//  125 /******************************************************************************
//  126 *******************************************************************************
//  127 * Private prototypes
//  128 *******************************************************************************
//  129 ******************************************************************************/
//  130 #if gZtcIncluded_d
//  131 static void pktFromMsgAsync(uint8_t const *pMsgFromSAPHandler,
//  132                             ztcSAPHandlerInfo_t const *pSrcSAPInfo,
//  133                             ztcMsgTypeInfo_t const *pSrcMsgTypeInfo);
//  134 
//  135 static void pktFromMsgSync(uint8_t const *pMsgFromSAPHandler,
//  136                            ztcSAPHandlerInfo_t const *pSrcSAPInfo,
//  137                            ztcMsgTypeInfo_t const *pSrcMsgTypeInfo,
//  138                            uint8_t const srcStatus);
//  139 
//  140 static void ZtcReq_Handler(void);
//  141 
//  142 static void CheckUartBufferStatus(void); 
//  143 #endif
//  144 
//  145 
//  146 /******************************************************************************
//  147 *******************************************************************************
//  148 * Private memory declarations
//  149 *******************************************************************************
//  150 ******************************************************************************/
//  151 /* fragmentation fields */
//  152 extern uint8_t giFragmentedPreAcked;
//  153 
//  154 /* Used to recognize monitor copies of messages that Ztc sent to other code. */
//  155 #if gZtcIncluded_d
//  156 static bool_t mMsgOriginIsZtc;
//  157 extern uint8_t gRejoinMode;
//  158 #endif
//  159 
//  160 #if gZtcErrorReporting_d
//  161 /* Set to TRUE when ZtcError() is called. */
//  162 static bool_t mZtcErrorReported;
//  163 #endif
//  164 
//  165 #if gBeeStackIncluded_d
//  166 #if gZTC_RegEpCapability && gZtcIncluded_d
//  167 static zbSimpleDescriptorPackageStore_t maSimpleDescriptors[gNumberOfEndPoints_c];
//  168 static endPointDesc_t maEndPointDesc[NumberOfElements(maSimpleDescriptors)];
//  169 
//  170 static zbClusterId_t maInputClusterIdLists [NumberOfElements(maSimpleDescriptors)][gNumberOfEndPoints_c];
//  171 static zbClusterId_t maOutputClusterIdLists[NumberOfElements(maSimpleDescriptors)]
//  172                                            [NumberOfElements(maInputClusterIdLists[0])];
//  173 #endif                                  /* #if gZTC_RegEpCapability */
//  174 #endif /* gBeeStackIncluded_d */
//  175 
//  176 /******************************************************************************
//  177 *******************************************************************************
//  178 * Public memory definitions
//  179 *******************************************************************************
//  180 ******************************************************************************/
//  181 
//  182 /* The rest of BeeStack can set this pointer to allow handling of messages
//  183  * from the external client that have opcode groups not normally
//  184  * recognized by Ztc.
//  185  */
//  186 #if gZtcIncluded_d
//  187 gpfTestClientToApplication_t gpfTestClientToApplicationFuncPtr = NULL;
//  188 #endif
//  189 
//  190 #if gZtcIncluded_d
//  191 tsTaskID_t gZTCTaskID;
//  192 #endif
//  193 
//  194 /******************************************************************************
//  195 *******************************************************************************
//  196 * Public functions
//  197 *******************************************************************************
//  198 ******************************************************************************/
//  199 
//  200 /* Main routine for the ZTC task.
//  201  *
//  202  * Ztc only understands one event, which signals that the UART ISR has received
//  203  * an octet from a local communication port (e.g. serial port or USB).
//  204  *
//  205  * Note that no messages are ever sent to the Ztc task.
//  206  *
//  207  * The event flags are cleared by the kernel.
//  208  *
//  209  * Note that the ISR declares an event for every octet, so this routine is
//  210  * often called before there is enough of a packet received from the external
//  211  * client to process.
//  212  *
//  213  * Once a complete and well formed packet has arrived, copy to a SAP Handler
//  214  * message, with whatever changes are needed to the format of the data, and
//  215  * forward it to the SAP Handler.
//  216  *
//  217  * The SAP Handler will eventually call ZTC_TaskEventMonitor() to record the
//  218  * SAP Handler's receipt of a message.
//  219  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  220 void Ztc_Task(event_t events) {
//  221 #if !gZtcIncluded_d
//  222   (void) events;
//  223 #else
//  224   sapHandlerMsg_t *pMsgToSAPHandler;
//  225   ztcMsgTypeInfo_t const *pMsgTypeInfo;
//  226   ztcOpcodeGroup_t opcodeGroup;
//  227   ztcSAPHandlerInfo_t const *pSAPInfo;
//  228   ztcFmtInfo_t const *pFmtInfo;
//  229   index_t dstDataLen;
//  230   pZtcMsgFromPkt_t pCopyFunc;
//  231   uint8_t status;
//  232 
//  233   (void) events;
//  234 
//  235   /* Do we have a complete packet? */
//  236   if (!ZtcReadPacketFromClient()) {
//  237     CheckUartBufferStatus();
//  238     return;
//  239   }
//  240 
//  241 #if gZtcErrorReporting_d
//  242   mZtcErrorReported = FALSE;
//  243 #endif
//  244 
//  245   opcodeGroup = gZtcPacketFromClient.structured.header.opcodeGroup;
//  246 
//  247   /* *warning* ZtcReq_Handler() depends on it's input data being in the */
//  248   /* global gZtcPacketFromClient, and it modifies gZtcPacketToClient. */
//  249   if (opcodeGroup == gZtcReqOpcodeGroup_c) {
//  250     ZtcReq_Handler();
//  251     CheckUartBufferStatus();
//  252     return;
//  253   }
//  254 
//  255   /* special fragmented APSDE commands */
//  256 #if (gFragmentationCapability_d)
//  257   if (opcodeGroup == gAfApsdeOpcodeGroup_c && 
//  258       gZtcPacketFromClient.structured.header.msgType != gApsdeDataReqMsgType_d)
//  259   {
//  260     ZtcApsde_Handler();
//  261     CheckUartBufferStatus();
//  262     return;
//  263   }
//  264 #endif
//  265 
//  266   pSAPInfo = pZtcSAPInfoFromOpcodeGroup(opcodeGroup);
//  267 
//  268   /* If this is a recognized opcode group, but one which has been disabled */
//  269   /* by an option setting, let the user know. Otherwise, Test Tool users */
//  270   /* may wonder why they are not getting any responses to valid requests. */
//  271 #if gZtcErrorReporting_d
//  272   if (pSAPInfo == gZtcIsDisabledOpcodeGroup_c) {
//  273     ZtcError(gZtcOpcodeGroupIsDisabled_c);
//  274     CheckUartBufferStatus();
//  275     return;
//  276   }
//  277 #endif
//  278 
//  279   /* If the opcode group is not familiar, call a general purpose hook. */
//  280   if (!pSAPInfo) {
//  281     if (gpfTestClientToApplicationFuncPtr) {
//  282       (*gpfTestClientToApplicationFuncPtr)((void *) gZtcPacketFromClient.raw);
//  283     } else {
//  284       ZtcError(gZtcUnknownOpcodeGroup_c);
//  285     }
//  286     CheckUartBufferStatus();
//  287     return;
//  288   }
//  289 
//  290   /* The client has sent a well formed packet, with a known opcode group. */
//  291   pMsgTypeInfo = pZtcMsgTypeInfoFromMsgType(pSAPInfo->pMsgTypeTable,
//  292                                             *(pSAPInfo->pMsgTypeTableLen),
//  293                                             gZtcPacketFromClient.structured.header.msgType);
//  294   if (!pMsgTypeInfo) {
//  295     ZtcError(gZtcUnknownOpcode_c);
//  296     CheckUartBufferStatus();
//  297     return;
//  298   }
//  299 
//  300   /* The size of the destination message isn't known yet, so allocate */
//  301   /* a large message. */
//  302   pMsgToSAPHandler = (sapHandlerMsg_t *) MSG_Alloc(sizeof(sapHandlerMsg_t));
//  303 
//  304   if (!pMsgToSAPHandler) {
//  305     ZtcError(gZtcOutOfMessages_c);
//  306     CheckUartBufferStatus();
//  307     return;
//  308   }
//  309 
//  310   /* Copy the content of the packet to the SAP Handler message, changing */
//  311   /* formats as necessary. */
//  312   pFmtInfo = &(maZtcFmtInfoTable[ZtcMsgGetFmt(pMsgTypeInfo->flagAndFormat)]);
//  313   pCopyFunc = maMsgFromPktFunctionTable[ZtcGetMsgFromPktFuncIndex(pFmtInfo->copyFunctionIndexes)];
//  314 
//  315   dstDataLen = (*pCopyFunc)(pMsgToSAPHandler->structured.payload,
//  316                             sizeof(pMsgToSAPHandler->structured.payload),
//  317                             gZtcPacketFromClient.structured.payload,
//  318                             gZtcPacketFromClient.structured.header.len,
//  319                             pFmtInfo->msgFromPktParametersIndex);
//  320 
//  321   if (dstDataLen == gTooBig_c) {
//  322     MSG_Free(pMsgToSAPHandler);
//  323     ZtcError(gZtcTooBig_c);
//  324     CheckUartBufferStatus();
//  325     return;
//  326   }
//  327 
//  328   /* mMsgOriginIsZtc lets ZTC_TaskEventMonitor() know that this message */
//  329   /* originated with Ztc. */
//  330   pMsgToSAPHandler->structured.header.msgType = gZtcPacketFromClient.structured.header.msgType;
//  331   mMsgOriginIsZtc = TRUE;
//  332   status = (pSAPInfo->pSAPHandler)(pMsgToSAPHandler);
//  333   mMsgOriginIsZtc = FALSE;
//  334 
//  335   /* SAP Handlers don't free buffers that contain synchronous messages. */
//  336   if (ZtcMsgGetFlg(pMsgTypeInfo->flagAndFormat) == gZtcMsgFlagSync_c) {
//  337     #if gSAPMessagesEnableMlme_d
//  338       /* For a MLME.Reset request synchronous message, the memory pool is re-initiated and
//  339          all allocated messages are deallocated. Because of this, we don't need 
//  340          to free the allocated message. */
//  341       if ((opcodeGroup != gNwkMlmeOpcodeGroup_c)||(pMsgTypeInfo->msgType != gMlmeResetReq_c)) {
//  342     #endif
//  343         MSG_Free(pMsgToSAPHandler);
//  344     #if gSAPMessagesEnableMlme_d
//  345       }
//  346     #endif
//  347   } else if (status != gZbSuccess_c) {
//  348     /* This is an async message, and the SAP Handler is unhappy. Synthesize */
//  349     /* a confirmation message containing the status, and send it back to the */
//  350     /* external client. This is the SAP Handler's issue, not a ZtcError(). */
//  351     
//  352     ZTCQueue_QueueToTestClient(&status, pSAPInfo->converseOpcodeGroup, pMsgTypeInfo->cnfType, sizeof(status));
//  353   }
//  354   CheckUartBufferStatus();
//  355 #endif                                  /* #if !gZtcIncluded_d #else */
//  356 }                                       /* Ztc_Task() */
Ztc_Task:
        BX       LR               ;; return
//  357 
//  358 /****************************************************************************/
//  359 
//  360 /* Initialization routine for the ZTC task. Called once by the kernel at */
//  361 /* startup. */
//  362 #if gZtcIncluded_d
//  363 void ZtcUartRxCallBack(void) {
//  364   SendEventToZTC();
//  365 }
//  366 #endif
//  367 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  368 void Ztc_TaskInit(void) {
//  369 #if gZtcIncluded_d
//  370   gZTCTaskID = TS_CreateTask(gTsZTCTaskPriority_c, Ztc_Task);
//  371   UartX_SetRxCallBack(ZtcUartRxCallBack);
//  372 #endif
//  373 }                                       /* Ztc_TaskInit() */
Ztc_TaskInit:
        BX       LR               ;; return
//  374 
//  375 /****************************************************************************/
//  376 
//  377 /* Send an arbitrary event from an application to the external client. The
//  378  * data, opcode group and message type can be anything.
//  379  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  380 void ZTCQueue_QueueToTestClient
//  381   (
//  382   uint8_t const *const pData,
//  383   uint8_t const opcodeGroup,
//  384   uint8_t const msgType,
//  385   uint8_t const dataLen
//  386   )
//  387 {
//  388 #if !gZtcIncluded_d
//  389   (void) pData;
//  390   (void) opcodeGroup;
//  391   (void) msgType;
//  392   (void) dataLen;
//  393 #else
//  394 
//  395 #if gZtcErrorReporting_d
//  396   mZtcErrorReported = FALSE;
//  397 #endif
//  398 
//  399   if (dataLen > sizeof(gZtcPacketToClient.structured.payload)) {
//  400     ZtcError(gZtcAppMsgTooBig_c);
//  401     return;
//  402   }
//  403 
//  404   if (mZtcPacketToClientIsBusy) {
//  405     return;
//  406   }
//  407 
//  408   gZtcPacketToClient.structured.header.opcodeGroup = opcodeGroup;
//  409   gZtcPacketToClient.structured.header.msgType = msgType;
//  410   gZtcPacketToClient.structured.header.len = dataLen;
//  411 
//  412   FLib_MemCpy(gZtcPacketToClient.structured.payload, (void *) pData, dataLen);
//  413   ZtcWritePacketToClient(sizeof(gZtcPacketToClient.structured.header) + dataLen);
//  414 #endif                                  /* #if !gZtcIncluded_d #else */
//  415 }                                       /* ZTCQueue_QueueToTestClient() */
ZTCQueue_QueueToTestClient:
        BX       LR               ;; return
//  416 
//  417 /****************************************************************************/
//  418 
//  419 /* Called by other functions in BeeStack, generally SAP Handlers.
//  420  * A message is passing through the SAP Handler, and it is letting us know.
//  421  * A SAP Handler can receive a message from a BeeStack layer, or from Ztc.
//  422  * The SAP Handler doesn't know the origin, and calls this function
//  423  * regardless.
//  424  *
//  425  * If the message is async and it was sent to the SAP Handler by Ztc,
//  426  * ignore it.
//  427  *
//  428  * If the message is async and it was not sent to the SAP Handler by Ztc,
//  429  * forward a copy to the external client.
//  430  *
//  431  * Sync messages are always responses to requests. The origin of the request
//  432  * (Ztc or other BeeStack code) does not matter; this routine will only see
//  433  * the response, not the request.
//  434  * Alter the opcode group to make the message look like it is coming from
//  435  * the converse of the SAP Handler that actually sent it here, and change
//  436  * the message type to the type of the corresponding response. Forward the
//  437  * edited message to the external client.
//  438  *
//  439  * Note that the message from the SAP Handler is sent to the external client
//  440  * directly from here, eliminating the need for logic to queue more than
//  441  * one packet.
//  442  */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  443 void ZTC_TaskEventMonitor
//  444   (
//  445   ztcIntSAPId_t const srcIntSAPId,
//  446   uint8_t *pMsgFromSAPHandler,
//  447   clientPacketStatus_t const srcStatus
//  448   )
//  449 {
//  450 #if !gZtcIncluded_d
//  451   (void) srcIntSAPId;
//  452   (void) pMsgFromSAPHandler;
//  453   (void) srcStatus;
//  454 #else
//  455   ztcMsgTypeInfo_t const *pSrcMsgTypeInfo;
//  456   ztcSAPHandlerInfo_t const *pSrcSAPInfo;
//  457 
//  458 #if gZtcErrorReporting_d
//  459   /* Sync messages might be originated by Ztc_Task(), which already set this */
//  460   /* once. Setting it again here could lead to reporting two errors. Since */
//  461   /* are likely to be errors in different contexts, this isn't generally a */
//  462   /* problem. */
//  463   mZtcErrorReported = FALSE;
//  464 #endif
//  465 
//  466   pSrcSAPInfo = pZtcSAPInfoFromIntSAPId(srcIntSAPId);
//  467   if (!pSrcSAPInfo) {
//  468     /* Calling ZtcError() here might just annoy the user, repeatedly */
//  469     /* sending an error message about something they already know. */
//  470     return;
//  471   }
//  472 
//  473   ZtcPrint(FALSE, &srcStatus, sizeof(srcStatus));
//  474   ZtcPrint(FALSE, &pMsgFromSAPHandler, sizeof(pMsgFromSAPHandler));
//  475   ZtcPrint(FALSE, &pSrcSAPInfo->opcodeGroup, sizeof(pSrcSAPInfo->opcodeGroup));
//  476   ZtcPrint(TRUE,  pMsgFromSAPHandler, 32);
//  477 
//  478   if (maZtcSAPModeTable[pSrcSAPInfo->modeIndex] == gZtcSAPModeDisable_c) {
//  479     return;
//  480   }
//  481 
//  482   pSrcMsgTypeInfo = pZtcMsgTypeInfoFromMsgType(pSrcSAPInfo->pMsgTypeTable,
//  483                                                *pSrcSAPInfo->pMsgTypeTableLen,
//  484                                                ((sapHandlerMsg_t *) pMsgFromSAPHandler)->structured.header.msgType);
//  485   if (!pSrcMsgTypeInfo) {
//  486     /* Calling ZtcError() here might just annoy the user, repeatedly */
//  487     /* sending an error message about something they already know. */
//  488     return;
//  489   }
//  490 
//  491   if (mZtcPacketToClientIsBusy) {
//  492     return;
//  493   }
//  494 
//  495   if (ZtcMsgGetFlg(pSrcMsgTypeInfo->flagAndFormat) == gZtcMsgFlagAsync_c) {
//  496     pktFromMsgAsync(pMsgFromSAPHandler, pSrcSAPInfo, pSrcMsgTypeInfo);
//  497   } else {
//  498     pktFromMsgSync(pMsgFromSAPHandler, pSrcSAPInfo, pSrcMsgTypeInfo, srcStatus);
//  499   }
//  500 #endif  /* #if !gZtcIncluded_d #else */
//  501 }  /* ZTC_TaskEventMonitor() */
ZTC_TaskEventMonitor:
        BX       LR               ;; return
//  502 
//  503 /****************************************************************************/
//  504 
//  505 #if gZtcIncluded_d
//  506 void pktFromMsgAsync
//  507 (
//  508   uint8_t const *pMsgFromSAPHandler,
//  509   ztcSAPHandlerInfo_t const *pSrcSAPInfo,
//  510   ztcMsgTypeInfo_t const *pSrcMsgTypeInfo
//  511 )
//  512 {
//  513   index_t dstDataLen;
//  514   pZtcPktFromMsg_t pCopyFunc;
//  515   ztcFmtInfo_t const *pFmtInfo;
//  516   nwkMessage_t *pMsg; /* MAC Confirm/Indication data type */
//  517 
//  518   /* If this message is originated in Ztc, ignore it. */
//  519   if (mMsgOriginIsZtc)
//  520     return;
//  521 
//  522    /* (void)pMsg; */ /* Set stub the pointer used for the Queue */
//  523     pFmtInfo = &(maZtcFmtInfoTable[ZtcMsgGetFmt(pSrcMsgTypeInfo->flagAndFormat)]);
//  524     pCopyFunc = maPktFromMsgFunctionTable[ZtcGetPktFromMsgFuncIndex(pFmtInfo->copyFunctionIndexes)];
//  525 
//  526     /* Copy the payload from the message to the client packet. */
//  527     dstDataLen = (*pCopyFunc)(gZtcPacketToClient.structured.payload,
//  528                               sizeof(gZtcPacketToClient.structured.payload),
//  529                               ((sapHandlerMsg_t *) pMsgFromSAPHandler)->structured.payload,
//  530                               pSrcMsgTypeInfo->len,
//  531                               pFmtInfo->pktFromMsgParametersIndex);  
//  532 
//  533   /* If the SAP Handler that sent the message here is in hook mode, dequeue */
//  534   /* the message and clear the event to prevent the message from reaching the */
//  535   /* destination SAP Handler. */
//  536   if (maZtcSAPModeTable[pSrcSAPInfo->modeIndex] == gZtcSAPModeHook_c)
//  537   {
//  538     if (pSrcSAPInfo->pMsgQueue)
//  539     {
//  540       /* If there is a Message in the Queue, then pint to it */
//  541       pMsg = MSG_DeQueue(pSrcSAPInfo->pMsgQueue);
//  542       #if gBeeStackIncluded_d
//  543       if (pSrcSAPInfo->opcodeGroup == gNlmeZdoOpcodeGroup_c) /* If the message came from NWK layer */
//  544       {
//  545         if (pSrcMsgTypeInfo->msgType == gNlmeNetworkDiscoveryConfirm_c) /* If the messaage is a Discovery confirm */
//  546         {
//  547           if (((nlmeZdoMessage_t *) pMsg)->msgData.networkDiscoveryConf.networkCount != 0) /* If the internal list of the discovery has some data or point to some place */
//  548             /*If the discovery confirmation is obtained the NetworkDescriptor is freed*/
//  549                                            MSG_Free(((nlmeZdoMessage_t *) pMsg)->msgData.networkDiscoveryConf.pNetworkDescriptor );
//  550 
//  551         }        
//  552         if (pSrcMsgTypeInfo->msgType == gNlmeEnergyScanConfirm_c) /* If the messaage is a Energy scan confirm */				{
//  553 					  /*If the discovery confirmation is obtained the NetworkDescriptor is freed*/
//  554             MSG_Free(((nlmeZdoMessage_t *) pMsg)->msgData.EnergyScanConf.resList.pEnergyDetectList );
//  555 	}			  
//  556 
//  557       }
//  558       #endif
//  559       /* The MAC Layer has some exceptions in some message that need to free some internal memory */
//  560       if (pSrcSAPInfo->opcodeGroup == gMlmeNwkOpcodeGroup_c) /* If the message came from MAC layer */
//  561       {
//  562         if (pSrcMsgTypeInfo->msgType == gNwkScanCnf_c) /* If the messaage is a ScanRequest */
//  563         {
//  564           if (pMsg->msgData.scanCnf.resList.pPanDescriptorBlocks->descriptorList) /* If the internal list of the scan has somem data or point to some place */
//  565             /* Free the internal list comming in the the Scan from the MAC (second block) */
//  566             if(pMsg->msgData.scanCnf.resList.pPanDescriptorBlocks->pNext)
//  567               MSG_Free(pMsg->msgData.scanCnf.resList.pPanDescriptorBlocks->pNext);
//  568             /* Free the internal list comming in the the Scan from the MAC (first block) */
//  569             MSG_Free(pMsg->msgData.scanCnf.resList.pPanDescriptorBlocks);
//  570         }
//  571         if (pSrcMsgTypeInfo->msgType == gNwkBeaconNotifyInd_c) /* If The messge is a Beacon Notify Indiction it has  messge allocated inside the message already allocted */
//  572         {
//  573           if (pMsg->msgData.beaconNotifyInd.pBufferRoot)
//  574             MSG_Free(pMsg->msgData.beaconNotifyInd.pBufferRoot);
//  575         }
//  576       }
//  577       if (pMsg)
//  578         MSG_Free(pMsg); /* Free the whole message comming from the Queue */
//  579     }
//  580 
//  581     if (pSrcSAPInfo->pTaskID[0]) /* Take the message out of the Queue for no further processing */
//  582     {
//  583       TS_ClearEvent(pSrcSAPInfo->pTaskID[0], pSrcSAPInfo->msgEvent);
//  584     }
//  585   }
//  586 
//  587   if (dstDataLen == gTooBig_c)
//  588   {
//  589     ZtcError(gZtcTooBig_c);
//  590     return;
//  591   }
//  592 
//  593   gZtcPacketToClient.structured.header.opcodeGroup = pSrcSAPInfo->opcodeGroup;
//  594   gZtcPacketToClient.structured.header.msgType = ((sapHandlerMsg_t *) pMsgFromSAPHandler)->structured.header.msgType;
//  595   gZtcPacketToClient.structured.header.len = dstDataLen;
//  596 
//  597   ZtcWritePacketToClient(sizeof(gZtcPacketToClient.structured.header) + dstDataLen);
//  598 }  /* pktFromMsgAsync() */
//  599 #endif
//  600 
//  601 /****************************************************************************/
//  602 
//  603 /* Handle a synchronous message from a SAP Handler.
//  604  * Sync messages are always requests. Translate this message into the
//  605  * corresponding response.
//  606  *
//  607  * By convention, the request message type info contains the format
//  608  * information.
//  609  */
//  610 #if gZtcIncluded_d
//  611 void pktFromMsgSync
//  612 (
//  613   uint8_t const *pMsgFromSAPHandler,
//  614   ztcSAPHandlerInfo_t const *pSrcSAPInfo,
//  615   ztcMsgTypeInfo_t const *pSrcMsgTypeInfo,
//  616   uint8_t const srcStatus
//  617 )
//  618 {
//  619   index_t dstDataLen;
//  620   pZtcPktFromMsg_t pCopyFunc;
//  621   ztcFmtInfo_t const *pFmtInfo;
//  622   uint8_t *pSrcData;
//  623 
//  624   /* For sync messages, a status code was passed here as a parameter, */
//  625   /* and must be stored in the first byte of the packet payload. */
//  626   gZtcPacketToClient.structured.payload[0] = srcStatus;
//  627   pSrcData = ((sapHandlerMsg_t *) pMsgFromSAPHandler)->structured.payload;
//  628 
//  629   pFmtInfo = &(maZtcFmtInfoTable[ZtcMsgGetFmt(pSrcMsgTypeInfo->flagAndFormat)]);
//  630   pCopyFunc = maPktFromMsgFunctionTable[ZtcGetPktFromMsgFuncIndex(pFmtInfo->copyFunctionIndexes)];
//  631 
//  632   /* Copy the payload from the message to the client packet. */
//  633   dstDataLen = (*pCopyFunc)(&gZtcPacketToClient.structured.payload[sizeof(clientPacketStatus_t)],
//  634                             sizeof(gZtcPacketToClient.structured.payload) - sizeof(clientPacketStatus_t),
//  635                             pSrcData,
//  636                             pSrcMsgTypeInfo->len,
//  637                             pFmtInfo->pktFromMsgParametersIndex);
//  638 
//  639   if (dstDataLen == gTooBig_c)
//  640   {
//  641     ZtcError(gZtcTooBig_c);
//  642     return;
//  643   }
//  644 
//  645   gZtcPacketToClient.structured.header.opcodeGroup = pSrcSAPInfo->converseOpcodeGroup;
//  646   gZtcPacketToClient.structured.header.msgType = pSrcMsgTypeInfo->cnfType;
//  647   gZtcPacketToClient.structured.header.len = dstDataLen + sizeof(clientPacketStatus_t);
//  648 
//  649   ZtcWritePacketToClient(dstDataLen
//  650                         + sizeof(gZtcPacketToClient.structured.header)
//  651                         + sizeof(clientPacketStatus_t));
//  652 }  /* pktFromMsgSync() */
//  653 #endif
//  654 
//  655 /******************************************************************************
//  656 *******************************************************************************
//  657 * Private functions
//  658 *******************************************************************************
//  659 ******************************************************************************/
//  660 /****************************************************************************
//  661 This function checks if there is any bytes in the uart buffer, and 
//  662 if there is any left, the ZTC task is signaled.
//  663 ****************************************************************************/
//  664 #if gZtcIncluded_d
//  665 static void CheckUartBufferStatus(void) {
//  666   if (UartX_RxBufferByteCount != 0) {
//  667     SendEventToZTC();    
//  668   }
//  669 }
//  670 #endif 
//  671 
//  672 /* Send an error message back to the external client. */
//  673 #if gZtcErrorReporting_d
//  674 void ZtcError(uint8_t errorCode)
//  675 {
//  676   uint8_t buf[MbrSizeof(clientPacket_t, headerAndStatus)];
//  677 
//  678   if (mZtcErrorReported)
//  679     return;                             /* Don't cascade error messages. */
//  680 
//  681 
//  682   ((clientPacket_t *) buf)->headerAndStatus.header.opcodeGroup = gZtcCnfOpcodeGroup_c;
//  683   ((clientPacket_t *) buf)->headerAndStatus.header.msgType = mZtcMsgError_c;
//  684   ((clientPacket_t *) buf)->headerAndStatus.header.len = sizeof(((clientPacket_t *) buf)->headerAndStatus.status);
//  685   ((clientPacket_t *) buf)->headerAndStatus.status = errorCode;
//  686 
//  687   ZtcTransmitBufferBlock(buf, sizeof(buf));
//  688   mZtcErrorReported = TRUE;
//  689 }
//  690 #endif                                  /* #if gZtcErrorReporting_d */
//  691 
//  692 /****************************************************************************/
//  693 
//  694 /* Ztc's version of printf() debugging.
//  695  *
//  696  * To save RAM, use a dynamically allocated message buffer to construct
//  697  * the message. If no buffer is available, send an error buffer and give up.
//  698  *
//  699  * Write as much of the requested data as possible to the buffer, but there
//  700  * is no guarantee there the buffer will be big enough.
//  701  *
//  702  * Concatenate the source data to the print buffer, then
//  703  *  If readyToSend is false, do nothing.
//  704  *  If readyToSend is true,  send the buffer to the external client.
//  705  */
//  706 #if gZtcDebug_d
//  707 void ZtcPrint
//  708   (
//  709   bool_t readyToSend,
//  710   void const *pSrc,
//  711   index_t len
//  712   )
//  713 {
//  714   static index_t bufLen = 0;
//  715   static index_t dataInBuf = 0;
//  716   static uint8_t *pBuf = NULL;
//  717 
//  718   /* Search for a valid and available message buffer size, instead of */
//  719   /* depending on knowing the possible buffer sizes. */
//  720 #define ztcPrintDecrement       8       /* Ensure decrementing to zero. */
//  721 #define ztcPrintNumberOfTries   8
//  722   if (!bufLen) {
//  723     for (pBuf = 0, bufLen = ztcPrintDecrement * ztcPrintNumberOfTries;
//  724          !pBuf && bufLen;
//  725          bufLen -= ztcPrintDecrement) {
//  726       pBuf = MSG_Alloc(bufLen);
//  727       dataInBuf = sizeof(clientPacketHdr_t);
//  728     }
//  729 
//  730     if (!bufLen) {
//  731       ZtcError(gZtcDebugPrintFailed_c);
//  732       return;
//  733     }
//  734   }
//  735 
//  736   /* Concatenate the source data to the print buffer, if there's room. */
//  737   if (dataInBuf + len < bufLen) {
//  738     FLib_MemCpy(pBuf + dataInBuf, pSrc, len);
//  739     dataInBuf += len;
//  740   }
//  741 
//  742   if (readyToSend) {
//  743     ((clientPacketHdr_t *) pBuf)->opcodeGroup = gZtcCnfOpcodeGroup_c;
//  744     ((clientPacketHdr_t *) pBuf)->msgType = mZtcMsgDebugPrint_c;
//  745     ((clientPacketHdr_t *) pBuf)->len = dataInBuf - sizeof(clientPacketHdr_t);
//  746     ZtcTransmitBufferBlock(pBuf, dataInBuf);
//  747     MSG_Free(pBuf);
//  748     bufLen = 0;
//  749   }
//  750 }
//  751 #endif                                  /* #if gZtcDebug_d */
//  752 
//  753 
//  754 /*
//  755   Called from both AF_APSDE_SapHandler() and APSDE_AF_SapHandler(), this function will 
//  756   display all fragmented blocks to ZTC if both fragmentation and ZTC are enabled. 
//  757 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  758 void ZTC_FragEventMonitor
//  759   (
//  760   ztcIntSAPId_t const srcIntSAPId,
//  761   uint8_t *pMsgFromSAPHandler
//  762   )
//  763 {
//  764 #if (!gZtcIncluded_d)
//  765   /* avoid compiler warning on unused parameters */
//  766   (void)srcIntSAPId;
//  767   (void)pMsgFromSAPHandler;
//  768 
//  769 /* ZTC is included */
//  770 #else
//  771 
//  772  #if (gFragmentationCapability_d)
//  773   zbTxFragmentedHdr_t *pFragHdr;
//  774   apsdeFragment_t sZtcFragment;
//  775   uint8_t *pData;
//  776   uint8_t msgType;
//  777   uint8_t dataSize;
//  778   uint8_t opCodeGroup;
//  779   uint8_t iBlockNumber;
//  780  #endif
//  781 
//  782   /* first, send the main message to ZTC */
//  783   ZTC_TaskEventMonitor(srcIntSAPId, (uint8_t *) pMsgFromSAPHandler, gZbSuccess_c);
//  784 
//  785  #if (gFragmentationCapability_d)
//  786 
//  787   /* find fragHdr for this message */
//  788   /* the message will either come from the gAF_APSDE_SAPHandlerId_c or the gAPSDE_AF_SAPHandlerId_c */
//  789   /* note: this code assumes both zbTxFragmentedHdr_t and zbRxFragmentedHdr_t begin with same 2 fields */
//  790   msgType = *pMsgFromSAPHandler;
//  791   if(srcIntSAPId == gAF_APSDE_SAPHandlerId_c)
//  792   {
//  793     /* make sure message is a data request */
//  794     if(msgType != gApsdeDataReqMsgType_d)
//  795       return;
//  796 
//  797     /* find first fragment header */
//  798     pFragHdr = &(((afToApsdeMessage_t *)pMsgFromSAPHandler)->msgData.dataReq.fragmentHdr);
//  799     opCodeGroup = 0x9c;
//  800   }
//  801 
//  802   /* assumes srcIntSAPId == gAPSDE_AF_SAPHandlerId_c */
//  803   else
//  804   {
//  805     /* make sure message is a data indication */
//  806     if(msgType != gApsdeDataIndMsgType_d)
//  807       return;
//  808 
//  809     /* find first fragment header */
//  810     pFragHdr = (zbTxFragmentedHdr_t *)(&(((apsdeToAfMessage_t *)pMsgFromSAPHandler)->msgData.dataIndication.fragmentHdr));
//  811     opCodeGroup = 0x9d;
//  812   }
//  813 
//  814   /* skip first block (with dataReq or dataInd), as that's already been sent to ZTC */
//  815   pFragHdr = pFragHdr->pNextDataBlock;
//  816 
//  817   /* send all subsequent blocks to ZTC */
//  818   iBlockNumber = 1;
//  819   while(pFragHdr)
//  820   {
//  821     /* copy data into ZTC Tx buffer */
//  822     dataSize = pFragHdr->iDataSize;
//  823     gZtcPacketToClient.structured.header.opcodeGroup = opCodeGroup;
//  824     gZtcPacketToClient.structured.header.msgType = pFragHdr->iMsgType;
//  825     gZtcPacketToClient.structured.header.len = (sizeof(apsdeFragment_t) - 1) + dataSize;
//  826     sZtcFragment.iLength = dataSize;
//  827     sZtcFragment.iBlockNumber = iBlockNumber++;
//  828     sZtcFragment.iMoreBlocks = pFragHdr->pNextDataBlock ? TRUE : FALSE;
//  829     gZtcPacketToClient.structured.payload[0] = dataSize;
//  830     if(srcIntSAPId == gAF_APSDE_SAPHandlerId_c)
//  831       pData = (uint8_t *)(pFragHdr + 1);    /* on Tx, data immediately follows TxFragHdr */
//  832     else
//  833       pData = ((zbRxFragmentedHdr_t *)pFragHdr)->pData; /* on Rx, it's pointed to by RxFragHdr */
//  834     FLib_MemCpy(gZtcPacketToClient.structured.payload, &sZtcFragment, sizeof(apsdeFragment_t) - 1);
//  835     FLib_MemCpy(&gZtcPacketToClient.structured.payload[sizeof(apsdeFragment_t) - 1], pData, dataSize);
//  836 
//  837     /* send through ZTC */
//  838 	  ZtcWritePacketToClient(sizeof(gZtcPacketToClient.structured.header) + 
//  839 	    (sizeof(apsdeFragment_t) - 1) + dataSize);
//  840 
//  841     /* go on to next block */
//  842     pFragHdr = pFragHdr->pNextDataBlock;
//  843   }
//  844  #endif /* gFragmentationCapability_d */
//  845 #endif  /* gZtcIncluded_d */
//  846 }
ZTC_FragEventMonitor:
        BX       LR               ;; return
//  847 
//  848 #if (gZtcIncluded_d && gFragmentationCapability_d)
//  849 
//  850 /* for loading fragments prior to a data request */
//  851 static zbTxFragmentedHdr_t *mpFragHead;  /* if NULL, then no fragments loaded */
//  852 
//  853 /*
//  854   For handling the "special" APSDE commands for fragmentation. These do not go to the SAP 
//  855   handler.
//  856 
//  857   ResetFragments   Free any memory allocated by LoadFragment. Only required if aborting a
//  858                    Data request, or if
//  859   LoadFragment     Load a fragment into memory through the ZTC interface.
//  860   SetFragAckMask   Used for passing ZCP tests. Pretend a packet has already been ACKed so
//  861                    it's not sent first time.
//  862     
//  863   Normal sequence for initiating an APSDE-DATA.request over ZTC is:
//  864   1. Call LoadFragment (for all fragments but the first one. These fragments may be any length, 
//  865      but should be the max size that will fit in a message (128 bytes) 
//  866   2. Call APSDE-DATA.request for the first fragment. AsduLen should be the length of the first
//  867      fragment only. ZTC will add the total size of all fragments.
//  868 
//  869   Note: the above sequence is different than from an application. The AF_DataRequestFragmented()
//  870   and AF_DataRequestFragmentedNoCopy() should be called instead.
//  871 
//  872   Note: ZtcApsde_Handler() receives data in the global gZtcPacketFromClient, and modifies 
//  873   gZtcPacketToClient.
//  874 */
//  875 static void ZtcApsde_Handler(void)
//  876 {
//  877 
//  878   /* these commands do not actually go through the SAP, but are valid only in ZTC */
//  879   #define gZtcMsgTypeResetFragments_c       0x10
//  880   #define gZtcMsgTypeLoadFragment_c         0x11
//  881   #define gZtcMsgTypeSetFragAckMask_c       0x12
//  882   #define gZtcMsgTypeSetMaxFragmentLength_c 0x13
//  883   #define gZtcMsgTypeSetWindowSize_c        0x14
//  884   #define gZtcMsgTypeSetInterframeDelay_c   0x15
//  885 
//  886   zbTxFragmentedHdr_t *pFragBlock;    /* allocated message */
//  887   zbTxFragmentedHdr_t *pFragNext;     /* next fragmented buffer */
//  888   uint8_t fragLen;
//  889   ztcMsgType_t msgType;
//  890   clientPacketStatus_t ztcError = gZtcSuccess_c;
//  891 
//  892   msgType = gZtcPacketFromClient.structured.header.msgType;
//  893   switch(msgType)
//  894   {
//  895     /* ResetFragments command. Will free any memory allocated with LoadFragment command. */
//  896     case gZtcMsgTypeResetFragments_c:
//  897 
//  898       /* free every buffer in the linked list */
//  899       while(mpFragHead)
//  900       {
//  901         pFragNext = mpFragHead->pNextDataBlock;
//  902         MSG_Free(mpFragHead);
//  903         mpFragHead = pFragNext;
//  904       }
//  905       /* note: mpFragHead will end up NULL */
//  906     break;
//  907 
//  908     /* LoadFragment command */
//  909     case gZtcMsgTypeLoadFragment_c:
//  910 
//  911       /* allocate a message buffer for the fragment */
//  912       fragLen = gZtcPacketFromClient.structured.header.len - 1;
//  913       pFragBlock = MSG_Alloc(sizeof(zbTxFragmentedHdr_t) + fragLen);
//  914       if(!pFragBlock)
//  915       {
//  916         ztcError = gZtcOutOfMessages_c;
//  917         break;
//  918       }
//  919 
//  920       /* find tail, and link in allocated buffer at end */
//  921       if(!mpFragHead)
//  922         mpFragHead = pFragBlock;
//  923       else
//  924       {
//  925         /* find tail */
//  926         pFragNext = mpFragHead;
//  927         while(pFragNext->pNextDataBlock)
//  928           pFragNext = pFragNext->pNextDataBlock;
//  929         pFragNext->pNextDataBlock = pFragBlock;
//  930       }
//  931 
//  932       /* set up allocated buffer */
//  933       pFragBlock->iDataSize = fragLen;
//  934       pFragBlock->iMsgType = gApsdeDataReqFragMsgType_d;
//  935       pFragBlock->pNextDataBlock = NULL;
//  936 
//  937       /* copy actual octets (they immediately follow the header) */
//  938       FLib_MemCpy((uint8_t *)pFragBlock + sizeof(zbTxFragmentedHdr_t), 
//  939           &(gZtcPacketFromClient.structured.payload[1]), fragLen);
//  940     break;
//  941 
//  942     /* set the fragmentation mask (for debugging and ZCP testing) */
//  943     case gZtcMsgTypeSetFragAckMask_c:
//  944       giFragmentedPreAcked = *gZtcPacketFromClient.structured.payload;
//  945     break;
//  946 
//  947     /* set the maximum OTA fragment length */
//  948     case gZtcMsgTypeSetMaxFragmentLength_c:
//  949       ApsmeSetRequest(gApsMaxFragmentLength_c, *gZtcPacketFromClient.structured.payload);
//  950     break;
//  951 
//  952     /* set the window size (1-8) */
//  953     case gZtcMsgTypeSetWindowSize_c:
//  954       ApsmeSetRequest(gApsMaxWindowSize_c, *gZtcPacketFromClient.structured.payload);
//  955     break;
//  956 
//  957     /* set the interframe delay 1-255 milliseconds */
//  958     case gZtcMsgTypeSetInterframeDelay_c:
//  959       ApsmeSetRequest(gApsInterframeDelay_c, *gZtcPacketFromClient.structured.payload);
//  960     break;
//  961 
//  962     /* unknown opcode (aka msgType) */
//  963     default:
//  964       ztcError = gZtcUnknownOpcode_c;
//  965     break;
//  966   }
//  967 
//  968   /* send response */
//  969   gZtcPacketToClient.structured.header.opcodeGroup = gApsdeAfOpcodeGroup_c;
//  970   gZtcPacketToClient.structured.header.msgType = msgType;
//  971   gZtcPacketToClient.structured.header.len = sizeof(clientPacketStatus_t);
//  972   gZtcPacketToClient.structured.payload[0] = ztcError;
//  973   ZtcWritePacketToClient(sizeof(gZtcPacketToClient.structured.header)
//  974                                + gZtcPacketToClient.structured.header.len);
//  975 
//  976 }
//  977 #endif // #if (gZtcIncluded_d && gFragmentationCapability_d)
//  978 
//  979 
//  980 #if (gZtcIncluded_d && gBeeStackIncluded_d)
//  981 /*
//  982   Called on inbound APSDE data requests
//  983 
//  984   This function both services APSDE-DATA.requests
//  985 */
//  986 index_t ZtcMsgFromPktApsde
//  987   (
//  988   uint8_t *pMsg,                        /* Pointer to message payload (just after msgType byte) */
//  989   index_t msgLen,                       /* Length  of message payload */
//  990   uint8_t *pPkt,                        /* Pointer to packet  payload */
//  991   index_t pktLen,                       /* Length  of packet  payload */
//  992   index_t fmtParametersIndex
//  993   )
//  994 {
//  995   zbApsdeDataReq_t *pDataReq;
//  996   uint8_t asduLen;
//  997 
//  998   /* unused parameters, mark so no compiler warnings */
//  999   (void)msgLen;
// 1000   (void)fmtParametersIndex;
// 1001 
// 1002   /* copy in 1st part header (up to asdu) */
// 1003   pDataReq = (void *)pMsg;
// 1004   FLib_MemCpy(pDataReq, pPkt, MbrOfs(zbApsdeDataReq_t, pAsdu));
// 1005 
// 1006   /* asdu too large? we're done */
// 1007   asduLen = pktLen - (sizeof(zbApsdeDataReq_t) - sizeof(zbTxFragmentedHdr_t) - sizeof(uint8_t *));
// 1008   pDataReq->asduLength = asduLen;
// 1009 
// 1010   /* copy in 2nd part of header */
// 1011   FLib_MemCpy(&pDataReq->txOptions, pPkt + MbrOfs(zbApsdeDataReq_t, pAsdu) + asduLen, 
// 1012     MbrOfs(zbApsdeDataReq_t, fragmentHdr) - MbrOfs(zbApsdeDataReq_t, txOptions));
// 1013   FillWithZero(&pDataReq->fragmentHdr, sizeof(pDataReq->fragmentHdr));
// 1014 
// 1015   /* copy in ASDU */
// 1016   pDataReq->pAsdu = (void *)((pMsg - 1) + ApsmeGetAsduOffset());
// 1017   FLib_MemCpy(pDataReq->pAsdu, pPkt + MbrOfs(zbApsdeDataReq_t, pAsdu), asduLen);
// 1018 
// 1019   /* set up fragmented part */
// 1020 #if (gFragmentationCapability_d)
// 1021   pDataReq->fragmentHdr.pNextDataBlock = mpFragHead;
// 1022   pDataReq->fragmentHdr.iDataSize = asduLen;
// 1023   pDataReq->fragmentHdr.iMsgType = gApsdeDataReqMsgType_d;
// 1024 
// 1025   /* mark frag head as NULL for next data request */
// 1026   /* all buffers in linked list will be freed by APSDE-DATA.request itself */
// 1027   mpFragHead = NULL;
// 1028 #else
// 1029   pDataReq->fragmentHdr.pNextDataBlock = NULL;
// 1030   pDataReq->fragmentHdr.iDataSize = asduLen;
// 1031   pDataReq->fragmentHdr.iMsgType = gApsdeDataReqMsgType_d;
// 1032 #endif
// 1033 
// 1034   return 1; // everything is OK
// 1035 }
// 1036 #endif /* (gZtcIncluded_d && gBeeStackIncluded_d) */
// 1037 
// 1038 /****************************************************************************/
// 1039 
// 1040 /* Handle Ztc configuration commands/requests from the external client.
// 1041  * This code would be easier to read, but slower and larger, if each
// 1042  * case called a function instead of processing in-line.
// 1043  *
// 1044  * On arrival, the opcodeGroup in the pMsg has been changed to the opcode
// 1045  * group used for Ztc responses.
// 1046  *
// 1047  * The functions that actually handle the packets are responsible for the
// 1048  * contents of the return packet, except for the return packet's opcode
// 1049  * group. The message type of the return packet will be unchanged from the
// 1050  * request packet.
// 1051  *
// 1052  * *warning* ZtcReq_Handler() receives data in the global gZtcPacketFromClient,
// 1053  * and modifies gZtcPacketToClient.
// 1054  */
// 1055 #if gZtcIncluded_d
// 1056 void ZtcReq_Handler(void) {
// 1057   ztcMsgType_t msgType = gZtcPacketFromClient.structured.header.msgType;
// 1058   index_t i;
// 1059 
// 1060   if (mZtcPacketToClientIsBusy) {
// 1061     return;
// 1062   }
// 1063 
// 1064   for (i = 0; i < gZtcInternalMsgTypeInfoTableLen; ++i) {
// 1065     if (gaZtcInternalMsgTypeInfoTable[i].msgType == msgType) {
// 1066 
// 1067       /* Set default values. */
// 1068       gZtcPacketToClient.structured.header.opcodeGroup = gZtcCnfOpcodeGroup_c;
// 1069       gZtcPacketToClient.structured.header.msgType = msgType;
// 1070       gZtcPacketToClient.structured.header.len = sizeof(clientPacketStatus_t);
// 1071       gZtcPacketToClient.structured.payload[0] = gZtcSuccess_c;
// 1072 
// 1073       (*gaZtcInternalMsgTypeInfoTable[i].pConfigFunc)();
// 1074 
// 1075 #if gZtcErrorReporting_d
// 1076       if (!mZtcErrorReported)
// 1077 #endif
// 1078         ZtcWritePacketToClient(sizeof(gZtcPacketToClient.structured.header)
// 1079                                + gZtcPacketToClient.structured.header.len);
// 1080 
// 1081       return;
// 1082     }
// 1083   }
// 1084 
// 1085   ZtcError(gZtcUnknownOpcode_c);
// 1086 }                                       /* ZtcReq_Handler() */
// 1087 #endif
// 1088 
// 1089 /****************************************************************************/
// 1090 #if gBeeStackIncluded_d
// 1091 
// 1092 #if gZtcIncluded_d
// 1093 void ZtcMsgAFResetReqFunc(void) {
// 1094   TS_AfTaskInit();
// 1095 }                                       /* ZtcMsgAFResetReqFunc() */
// 1096 #endif
// 1097 
// 1098 /****************************************************************************/
// 1099 
// 1100 #if gZtcIncluded_d
// 1101 void ZtcMsgAPSReadyReqFunc(void) {
// 1102   gDevReadyState = TRUE;
// 1103 }                                       /* ZtcMsgAPSReadyReqFunc() */
// 1104 #endif
// 1105 
// 1106 /****************************************************************************/
// 1107 
// 1108 #if gZtcIncluded_d
// 1109 void ZtcMsgAPSResetReqFunc(void) {
// 1110   apsmeMessage_t apsmeMessage;
// 1111 
// 1112   apsmeMessage.msgType = gApsmeReset_c;
// 1113   (void) ZDO_APSME_SapHandler(&apsmeMessage);
// 1114 }                                       /* ZtcMsgAPSResetReqFunc() */
// 1115 #endif
// 1116 
// 1117 #endif /* gBeeStackIncluded_d */
// 1118 
// 1119 /****************************************************************************/
// 1120 #if gBeeStackIncluded_d
// 1121 
// 1122 #if gZtcIncluded_d
// 1123 typedef struct ZtcGetEndPointDescriptionPkt_tag {
// 1124   zbEndPoint_t endPoint;
// 1125 } ZtcGetEndPointDescriptionPkt_t;
// 1126 
// 1127 void ZtcMsgDeregisterEndPointFunc(void) {
// 1128 #if !gZTC_RegEpCapability
// 1129   ZtcError(gZtcRequestIsDisabled_c);
// 1130 #else
// 1131   index_t i;
// 1132   ZtcGetEndPointDescriptionPkt_t *pScratch;
// 1133   uint8_t status;
// 1134 
// 1135   pScratch = (ZtcGetEndPointDescriptionPkt_t *) gZtcPacketFromClient.structured.payload;
// 1136   status = AF_DeRegisterEndPoint(pScratch->endPoint);
// 1137 
// 1138   if (status == gZbSuccess_c) {
// 1139     for (i = 0; i < NumberOfElements(maSimpleDescriptors); i++) {
// 1140       if (maSimpleDescriptors[i].endPoint == pScratch->endPoint) {
// 1141         maSimpleDescriptors[i].endPoint = 0;
// 1142         break;
// 1143       }
// 1144     }
// 1145   }
// 1146 
// 1147   gZtcPacketToClient.structured.payload[0] = status;
// 1148 #endif                                  /* #if !gZTC_RegEpCapability */
// 1149 }                                       /* ZtcMsgDeregisterEndPointFunc() */
// 1150 #endif
// 1151 
// 1152 #endif /* gBeeStackIncluded_d */
// 1153 
// 1154 /****************************************************************************/
// 1155 
// 1156 /* Note that gApsCurrentChannelMask is stored little-endian. */
// 1157 /* Channel numbers start at 0. */
// 1158 #if gBeeStackIncluded_d
// 1159 #if gZtcIncluded_d
// 1160 void ZtcMsgGetChannelReqFunc(void) {
// 1161 
// 1162   uint8_t channelNumber = 0;
// 1163 
// 1164   channelNumber = NlmeGetRequest(gNwkLogicalChannel_c);
// 1165   gZtcPacketToClient.structured.payload[sizeof(clientPacketStatus_t)] = channelNumber;
// 1166   gZtcPacketToClient.structured.header.len = sizeof(clientPacketStatus_t)
// 1167                                            + sizeof(gZtcPacketToClient.structured.payload[0]);
// 1168 }                                       /* ZtcMsgGetChannelReqFunc() */
// 1169 #endif
// 1170 
// 1171 /****************************************************************************/
// 1172 
// 1173 #if gZtcIncluded_d
// 1174 void ZtcMsgGetEndPointDescriptionFunc(void) {
// 1175 #if !gZTC_RegEpCapability
// 1176   ZtcError(gZtcRequestIsDisabled_c);
// 1177 #else
// 1178   index_t dstPacketLen;
// 1179   ZtcGetEndPointDescriptionPkt_t *pGetEndPointDescPkt;
// 1180   zbSimpleDescriptorPackageStore_t *pSimple;
// 1181 
// 1182   pGetEndPointDescPkt = (ZtcGetEndPointDescriptionPkt_t *) gZtcPacketFromClient.structured.payload;
// 1183   pSimple = (zbSimpleDescriptorPackageStore_t *) AF_FindEndPointDesc(pGetEndPointDescPkt->endPoint);
// 1184   if (!pSimple) {
// 1185     ZtcError(gZtcEndPointNotFound_c);
// 1186     return;
// 1187   }
// 1188 
// 1189   dstPacketLen = ZtcPktFromMsgTwoArrayPtrs(&gZtcPacketToClient.structured.payload[sizeof(clientPacketStatus_t)],
// 1190                                            sizeof(gZtcPacketToClient.structured.payload)
// 1191                                            - sizeof(clientPacketStatus_t),
// 1192                                            (uint8_t *) pSimple,
// 1193                                            gUnused_c,
// 1194                                            mFmtZTCRegisterEndPointReq_c);
// 1195 
// 1196   if (dstPacketLen == gTooBig_c) {
// 1197     ZtcError(gZtcTooBig_c);
// 1198   } else {
// 1199     gZtcPacketToClient.structured.header.len = dstPacketLen + sizeof(clientPacketStatus_t);
// 1200   }
// 1201 #endif                                  /* #if !gZTC_RegEpCapability #else */
// 1202 }                                       /* ZtcMsgGetEndPointDescriptionFunc() */
// 1203 #endif
// 1204 
// 1205 /****************************************************************************/
// 1206 
// 1207 #if gZtcIncluded_d
// 1208 void ZtcMsgGetEndPointIdListFunc(void) {
// 1209 #if !gZTC_RegEpCapability
// 1210   ZtcError(gZtcRequestIsDisabled_c);
// 1211 #else
// 1212   index_t numberOfEndPointsInList;
// 1213   zbEndPoint_t *pEndPointList;
// 1214   index_t listLen;                      /* Risky on an 8 bit CPU. */
// 1215   /* This is needed to avoid a compiler "multiply by 1" warning. */
// 1216   index_t sizeofEndPoint = sizeof(*pEndPointList);
// 1217 
// 1218   pEndPointList = AF_EndPointsList(&numberOfEndPointsInList);
// 1219   if (!pEndPointList || !numberOfEndPointsInList) {
// 1220     ZtcError(gZtcEndPointNotFound_c);
// 1221     return;
// 1222   }
// 1223 
// 1224   listLen = numberOfEndPointsInList * sizeofEndPoint;
// 1225   if (listLen + sizeof(clientPacketStatus_t) > sizeof(gZtcPacketToClient.structured.payload)) {
// 1226     ZtcError(gZtcTooBig_c);
// 1227     return;
// 1228   }
// 1229 
// 1230   FLib_MemCpy(&gZtcPacketToClient.structured.payload[sizeof(clientPacketStatus_t)],
// 1231               pEndPointList,
// 1232               listLen);
// 1233 
// 1234   gZtcPacketToClient.structured.header.len = listLen + sizeof(clientPacketStatus_t);
// 1235 #endif                                  /* #if !gZTC_RegEpCapability #else */
// 1236 }                                       /* ZtcMsgGetEndPointIdListFunc() */
// 1237 #endif
// 1238 
// 1239 /****************************************************************************/
// 1240 
// 1241 #if gZtcIncluded_d && gICanHearYouTableCapability_d
// 1242 void ZtcMsgGetICanHearYouListFunc(void) {
// 1243   ztcICanHearYouTable_t *pTable = (ztcICanHearYouTable_t *) &gZtcPacketToClient.structured.payload[sizeof(clientPacketStatus_t)];
// 1244   pTable->count = GetICanHearYouTable(pTable->table, NumberOfElements(pTable->table));
// 1245   gZtcPacketToClient.structured.header.len = sizeof(clientPacketStatus_t)
// 1246                                            + sizeof(pTable->count)
// 1247                                            + (pTable->count * sizeof(zbNwkAddr_t));
// 1248 }                                       /* ZtcMsgGetICanHearYouListFunc() */
// 1249 #endif
// 1250 
// 1251 #endif /* gBeeStackIncluded_d */
// 1252 /****************************************************************************/
// 1253 
// 1254 #if gZtcIncluded_d
// 1255 void ZtcMsgGetModeReqFunc(void) {
// 1256   uint8_t i;
// 1257   index_t payloadIndex = sizeof(clientPacketStatus_t);
// 1258 
// 1259   gZtcPacketToClient.structured.payload[payloadIndex++] = (uint8_t) gZtcUartTxBlocking;
// 1260 
// 1261   for (i = 0; i < mZtcSAPModeTableLen; ++i) {
// 1262     gZtcPacketToClient.structured.payload[payloadIndex++] = (uint8_t) maZtcSAPModeTable[i];
// 1263   }
// 1264 
// 1265   gZtcPacketToClient.structured.header.len = payloadIndex;
// 1266 }                                       /* ZtcMsgGetModeReqFunc() */
// 1267 #endif
// 1268 
// 1269 /****************************************************************************/
// 1270 #if gBeeStackIncluded_d
// 1271 
// 1272 #if gZtcIncluded_d
// 1273 void ZtcMsgGetNumberOfEndPointsFunc(void) {
// 1274   gZtcPacketToClient.structured.payload[sizeof(clientPacketStatus_t)] = AF_NumOfEndPoints();
// 1275   gZtcPacketToClient.structured.header.len = sizeof(clientPacketStatus_t)
// 1276                                            + sizeof(gZtcPacketToClient.structured.payload[0]);
// 1277 }                                       /* ZtcMsgGetNumberOfEndPointsFunc() */
// 1278 #endif
// 1279 #endif /* gBeeStackIncluded_d */
// 1280 
// 1281 /****************************************************************************/
// 1282 #if gZtcIncluded_d
// 1283 void ZtcMsgGetNVDataSetDescReqFunc(void) {
// 1284   index_t payloadIndex = sizeof(clientPacketStatus_t);
// 1285 #if !gNvStorageIncluded_d
// 1286   gZtcPacketToClient.structured.payload[payloadIndex++] = 0;
// 1287 #else
// 1288   index_t dataSetIndex;
// 1289   NvDataItemDescription_t const *pDesc;
// 1290   uint16_t size;
// 1291 
// 1292   gZtcPacketToClient.structured.payload[payloadIndex++] = NumberOfElements(NvDataSetTable);
// 1293 
// 1294   for (dataSetIndex = 0; dataSetIndex < NumberOfElements(NvDataSetTable); ++dataSetIndex) {
// 1295     gZtcPacketToClient.structured.payload[payloadIndex++] = NvDataSetTable[dataSetIndex].dataSetID;
// 1296 
// 1297     pDesc = NvDataSetTable[dataSetIndex].pItemDescriptions;
// 1298     size = 0;
// 1299     while (pDesc->length) {
// 1300       size += pDesc++->length;
// 1301     }
// 1302 
// 1303     gZtcPacketToClient.structured.payload[payloadIndex++] = (size & 0xFF);
// 1304     gZtcPacketToClient.structured.payload[payloadIndex++] = (size >> 8);
// 1305   }
// 1306 
// 1307 #endif
// 1308   gZtcPacketToClient.structured.header.len = payloadIndex;
// 1309 }                                       /* ZtcMsgGetNVDataSetDescReqFunc() */
// 1310 #endif
// 1311 /****************************************************************************/
// 1312 
// 1313 #if gZtcIncluded_d
// 1314 void ZtcMsgGetNVPageHdrReqFunc(void) {
// 1315   index_t payloadIndex = sizeof(clientPacketStatus_t);
// 1316 #if !gNvStorageIncluded_d
// 1317   gZtcPacketToClient.structured.payload[payloadIndex++] = 0;
// 1318 #else
// 1319   gZtcPacketToClient.structured.payload[payloadIndex++] = 0;
// 1320 #endif
// 1321   gZtcPacketToClient.structured.header.len = payloadIndex;
// 1322 }                                       /* ZtcMsgGetNVPageHdrReqFunc() */
// 1323 #endif
// 1324 
// 1325 /****************************************************************************/
// 1326 #if gBeeStackIncluded_d
// 1327 
// 1328 #if gZtcIncluded_d
// 1329 void ZtcMsgGetPanIDReqFunc(void) {
// 1330   FLib_MemCpy(&gZtcPacketToClient.structured.payload[sizeof(clientPacketStatus_t)],
// 1331               NlmeGetRequest(gNwkPanId_c),
// 1332               sizeof(NlmeGetRequest(gNwkPanId_c)));
// 1333   gZtcPacketToClient.structured.header.len = sizeof(clientPacketStatus_t)
// 1334                                            + sizeof(NlmeGetRequest(gNwkPanId_c));
// 1335 }                                       /* ZtcMsgGetPanIDReqFunc() */
// 1336 #endif
// 1337 
// 1338 #endif /* gBeeStackIncluded_d */
// 1339 /****************************************************************************/
// 1340 
// 1341 /* Set various Ztc operating mode flags:
// 1342  *
// 1343  *  gZtcUartTxBlocking: if TRUE, the UART output routine will block until
// 1344  *  output is finished.
// 1345  *
// 1346  *  maZtcSAPModeTable[]: One byter per group of SAP Handlers, indicating
// 1347  *  what Ztc should do when a message from one of the given SAP Handlers
// 1348  *  arrives at ZTC_TaskEventMonitor():
// 1349  *      ignore messages from that SAP Handler, or
// 1350  *      forward monitor copies of messages from that SAP Handler to the
// 1351  *          external client, or
// 1352  *      intercept messages from that SAP Handle; forward them to the external
// 1353  *      client, and prevent them from being passed to their destination
// 1354  *      BeeStack layer.
// 1355  *  Note that these modes only affect messages that are sent from the SAP
// 1356  *  Handler to Ztc. These settings have no effect on packets sent from the
// 1357  *  external client to the SAP Handler.
// 1358  *
// 1359  * *warning* This is brittle. Ztc and the client must implicitly
// 1360  * agree on the order of the mode setting flags.
// 1361  */
// 1362 #if gZtcIncluded_d
// 1363 void ZtcMsgModeSelectReqFunc(void) {
// 1364   uint8_t byte;
// 1365   index_t count;
// 1366   index_t dataLen = gZtcPacketFromClient.structured.header.len;
// 1367   uint8_t i;
// 1368   index_t payloadIndex = 0;
// 1369 
// 1370   if (dataLen > 0) {
// 1371     gZtcUartTxBlocking = !!gZtcPacketFromClient.structured.payload[payloadIndex++];
// 1372   }
// 1373 
// 1374   dataLen -= sizeof(gZtcPacketFromClient.structured.payload[0]);
// 1375 
// 1376   count = (dataLen <= mZtcSAPModeTableLen ? dataLen : mZtcSAPModeTableLen);
// 1377 
// 1378   for (i = 0; i < count; ++i) {
// 1379     byte = gZtcPacketFromClient.structured.payload[payloadIndex + i];
// 1380     /* If support for these SAP Handlers hse by compiled out, ignore them. */
// 1381     if (maZtcSAPModeTable[i] != gZtcSAPModeInvalid_c) {
// 1382       maZtcSAPModeTable[i] = byte;
// 1383     }
// 1384   }
// 1385 }                                       /* ZtcMsgModeSelectReqFunc() */
// 1386 #endif
// 1387 
// 1388 /****************************************************************************/
// 1389 
// 1390 #if gZtcIncluded_d
// 1391 void ZtcMsgNVSaveReqFunc(void) {
// 1392 #if !gNvStorageIncluded_d
// 1393   ZtcError(gZtcRequestIsDisabled_c);
// 1394 #else
// 1395   uint8_t dataSetIndex;
// 1396 
// 1397   dataSetIndex = gZtcPacketFromClient.structured.payload[0];
// 1398   if (dataSetIndex > NumberOfElements(NvDataSetTable)) {
// 1399     ZtcError(gZtcTooBig_c);
// 1400     return;
// 1401   }
// 1402 
// 1403   NvSaveOnIdle(NvDataSetTable[dataSetIndex].dataSetID);
// 1404 #endif
// 1405 }                                       /* ZtcMsgNVSaveReqFunc() */
// 1406 #endif
// 1407 
// 1408 /****************************************************************************/
// 1409 #if gZtcIncluded_d
// 1410 #if (gMsgInfo_d)
// 1411 #include "msgsystem.h"
// 1412 extern pools_t maMmPools[];
// 1413 
// 1414 /******************************************************************************
// 1415 * MM_DebugNumFreeBigBuffers
// 1416 *
// 1417 ******************************************************************************/
// 1418 uint8_t ZTC_DebugNumFreeBigBuffers
// 1419   (
// 1420   void
// 1421   )
// 1422 {
// 1423   listHeader_t *pHead;
// 1424   uint8_t count = 0;
// 1425   pHead = maMmPools[1].anchor.pHead;
// 1426   while(pHead != NULL)   
// 1427   {
// 1428     pHead = pHead->pNext;
// 1429     count++;
// 1430   }
// 1431    
// 1432  return count;
// 1433 }
// 1434 
// 1435 /******************************************************************************
// 1436 * MM_DebugNumFreeSmallBuffers
// 1437 *
// 1438 ******************************************************************************/
// 1439 uint8_t ZTC_DebugNumFreeSmallBuffers
// 1440   (
// 1441   void
// 1442   )
// 1443 {
// 1444   listHeader_t *pHead;
// 1445   uint8_t count = 0;
// 1446   
// 1447   pHead = maMmPools[0].anchor.pHead;
// 1448   while(pHead != NULL)    
// 1449   {
// 1450     pHead = pHead->pNext;
// 1451     count++;
// 1452   }
// 1453   return count;
// 1454 }
// 1455 
// 1456 /******************************************************************************/
// 1457 void ZtcMsgGetNumOfMsgsReqFunc(void) {
// 1458   gZtcPacketToClient.structured.payload[0] = ZTC_DebugNumFreeSmallBuffers();
// 1459   gZtcPacketToClient.structured.payload[1] = ZTC_DebugNumFreeBigBuffers();
// 1460   gZtcPacketToClient.structured.header.len = (sizeof(uint8_t) *2);
// 1461 }
// 1462 #endif //gMsgInfo_d
// 1463 #endif
// 1464 /****************************************************************************/
// 1465 
// 1466 #if gZtcIncluded_d
// 1467 void ZtcMsgReadExtendedAdrReqFunc(void) {
// 1468   FLib_MemCpy( &gZtcPacketToClient.structured.payload[sizeof(clientPacketStatus_t)],
// 1469        aExtendedAddress, 8 );
// 1470  
// 1471   gZtcPacketToClient.structured.header.len = sizeof(clientPacketStatus_t) + 8;
// 1472 }                                         /* ZtcMsgReadExtendedAdrReqFunc() */
// 1473 #endif
// 1474 #if (gZtcIncluded_d && gBeeStackIncluded_d)
// 1475 void ZtcMsgReadNwkMngAddressReqFunc(void)
// 1476 {
// 1477   FLib_MemCpy(&gZtcPacketToClient.structured.payload[sizeof(clientPacketStatus_t)],
// 1478               gNwkManagerAddr, 2);
// 1479 
// 1480   gZtcPacketToClient.structured.header.len = sizeof(clientPacketStatus_t) + 2;
// 1481 }
// 1482 #endif /* (gZtcIncluded_d && gBeeStackIncluded_d) */
// 1483 
// 1484 /****************************************************************************/
// 1485 
// 1486 /* eliminate compiler warnings */
// 1487 #if gZtcIncluded_d
// 1488 uint8_t AF_AppToAfdeDataReq(void) {
// 1489   return gZbSuccess_c;
// 1490 }
// 1491 
// 1492 #if gBeeStackIncluded_d
// 1493 /* MSG Data Indication Callback Function Pointer */
// 1494 void ZtcMsgDataCallBack(apsdeToAfMessage_t *pMsg) {
// 1495   AF_FreeDataIndicationMsg(pMsg);
// 1496 }
// 1497 
// 1498 /* Data Confirmation Callback Function Pointer */
// 1499 void ZtcConfDataCallBack(apsdeToAfMessage_t *pMsg) {
// 1500   MSG_Free(pMsg);
// 1501 }
// 1502 
// 1503 void ZtcMsgRegisterEndPointFunc(void) {
// 1504 #if !gZTC_RegEpCapability
// 1505   ZtcError(gZtcRequestIsDisabled_c);
// 1506 #else
// 1507   bool_t endPointFound;
// 1508   index_t freeEndPoint;
// 1509   index_t i;
// 1510   zbSimpleDescriptorPackageStore_t *pScratch;
// 1511   index_t scratchLen;
// 1512   uint8_t status;
// 1513 
// 1514   
// 1515   /* Find the first unused slot in the EndPoint table. */
// 1516    for (endPointFound = FALSE, i = 0; ((endPointFound == FALSE) && (i < NumberOfElements(maSimpleDescriptors))); i++) {
// 1517     if (!maSimpleDescriptors[i].endPoint) {
// 1518       freeEndPoint = i;
// 1519     endPointFound = TRUE;
// 1520     }
// 1521   }
// 1522 
// 1523   if (endPointFound == FALSE) {
// 1524     ZtcError(gZtcEndPointTableIsFull_c);
// 1525     return;
// 1526   }
// 1527   /* Convert the variable length packet format into a
// 1528    * zbSimpleDescriptorPackageStore_t. This could be more directly, here in
// 1529    * this code, but then minor changes in the typedef would require code
// 1530    * changes here. Using the copy function is slower, but more robust.
// 1531    * This is a minor abuse of the format conversion mechanism; normally the
// 1532    * copy function pointer and the format parameter value would be found via
// 1533    * the message info table and the main format table.
// 1534    */
// 1535   pScratch = (zbSimpleDescriptorPackageStore_t *) MSG_Alloc(mMaxPacketSize_c);/* changed to 128 to limit to the size of a big buffer.*/
// 1536   if (!pScratch) {
// 1537     ZtcError(gZtcEndPointTableIsFull_c);
// 1538     return;
// 1539   }
// 1540 
// 1541   scratchLen = ZtcMsgFromPktTwoArrayPtrs((uint8_t *) pScratch,
// 1542                                          mMaxPacketSize_c,
// 1543                                          gZtcPacketFromClient.structured.payload,
// 1544                                          gZtcPacketFromClient.structured.header.len,
// 1545                                          mFmtZTCRegisterEndPointReq_c);
// 1546 
// 1547   if (   (scratchLen == gTooBig_c)
// 1548       || (pScratch->inputClusters .cNumClusters > NumberOfElements(maInputClusterIdLists[0]))
// 1549       || (pScratch->outputClusters.cNumClusters > NumberOfElements(maInputClusterIdLists[0]))) {
// 1550     MSG_Free(pScratch);
// 1551     ZtcError(gZtcTooBig_c);
// 1552     return;
// 1553   }
// 1554 
// 1555   /* Move the input and output cluster lists to more permanent places. */
// 1556   FLib_MemCpy(&maInputClusterIdLists[freeEndPoint],
// 1557               pScratch->inputClusters.pClusterList,
// 1558               pScratch->inputClusters.cNumClusters
// 1559               * sizeof(*pScratch->inputClusters.pClusterList));
// 1560 
// 1561   pScratch->inputClusters.pClusterList = maInputClusterIdLists[freeEndPoint];
// 1562 
// 1563   FLib_MemCpy(&maOutputClusterIdLists[freeEndPoint],
// 1564               pScratch->outputClusters.pClusterList,
// 1565               pScratch->outputClusters.cNumClusters
// 1566               * sizeof(*pScratch->outputClusters.pClusterList));
// 1567 
// 1568   pScratch->outputClusters.pClusterList = maOutputClusterIdLists[freeEndPoint];
// 1569 
// 1570   /* Store the simple descriptor, and set up the end point descriptor. */
// 1571   FLib_MemCpy(&maSimpleDescriptors[freeEndPoint], pScratch, sizeof(*pScratch));
// 1572 
// 1573   maEndPointDesc[freeEndPoint].pSimpleDesc = (zbSimpleDescriptor_t *) &maSimpleDescriptors[freeEndPoint];
// 1574   maEndPointDesc[freeEndPoint].pDataMsgCallBackFuncPtr = ZtcMsgDataCallBack;
// 1575   maEndPointDesc[freeEndPoint].pDataConfCallBackFuncPtr = ZtcConfDataCallBack;
// 1576 
// 1577   status = AF_RegisterEndPoint(&maEndPointDesc[freeEndPoint]);
// 1578   if (status == gRegFailure_c) {
// 1579     maSimpleDescriptors[freeEndPoint].endPoint = 0;
// 1580   }
// 1581 
// 1582   MSG_Free(pScratch);
// 1583   gZtcPacketToClient.structured.payload[0] = (clientPacketStatus_t) status;
// 1584 #endif                                  /* #if !gZTC_RegEpCapability */
// 1585 }                                       /* ZtcMsgRegisterEndPointFunc() */
// 1586 
// 1587 #endif  /*  gBeeStackIncluded_d */
// 1588 
// 1589 #endif
// 1590 
// 1591 /****************************************************************************/
// 1592 
// 1593 #if gZtcIncluded_d
// 1594 void ZtcMsgResetCPUReqFunc(void) {
// 1595   /*PWRLib_Reset();*/
// 1596 #include "crm.h"
// 1597   //CRM_SoftReset();
// 1598   __asm(
// 1599         "  movs   r0, #1   \n"
// 1600         "  lsls   r0, r0, #22 \n"
// 1601         "  bx    r0"
// 1602    );
// 1603 }                                       /* ZtcMsgResetCPUReqFunc() */
// 1604 #endif
// 1605 
// 1606 /****************************************************************************/
// 1607 #if gBeeStackIncluded_d
// 1608 
// 1609 #if gZtcIncluded_d
// 1610 void ZtcMsgRestartNwkReqFunc(void) {
// 1611   TS_SendEvent(gZdoStateMachineTaskID_c, gStartWithOutNvm_c);
// 1612 }                                       /* ZtcMsgRestartNwkReqFunc() */
// 1613 #endif
// 1614 
// 1615 /****************************************************************************/
// 1616 
// 1617 /* Note that zbChannels_t is stored little-endian. */
// 1618 #if gZtcIncluded_d
// 1619 void ZtcMsgSetChannelReqFunc(void) {
// 1620   zbChannels_t channel;
// 1621   index_t channelNumber = gZtcPacketFromClient.structured.payload[0];
// 1622 
// 1623   if (channelNumber >= sizeof(gBeeStackParameters.gApsChannelMask) * 8) {
// 1624     ZtcError(gZtcTooBig_c);
// 1625     return;
// 1626     }
// 1627 
// 1628   FLib_MemSet(channel, 0, sizeof(channel));
// 1629   channel[channelNumber / 8] = (1 << (channelNumber & 0x07));
// 1630 
// 1631   FLib_MemCpy(gBeeStackParameters.gApsChannelMask, channel, sizeof(gBeeStackParameters.gApsChannelMask));
// 1632 }                                       /* ZtcMsgSetChannelReqFunc() */
// 1633 #endif
// 1634 
// 1635 /****************************************************************************/
// 1636 
// 1637 #if gZtcIncluded_d && gICanHearYouTableCapability_d
// 1638 void ZtcMsgSetICanHearYouListFunc(void) {
// 1639   ztcICanHearYouTable_t *pTable = (ztcICanHearYouTable_t *) gZtcPacketFromClient.structured.payload;
// 1640 
// 1641   SetICanHearYouTable(pTable->count, pTable->table);
// 1642 }                                       /* ZtcMsgSetICanHearYouListFunc() */
// 1643 #endif
// 1644 
// 1645 /****************************************************************************/
// 1646 
// 1647 #if gZtcIncluded_d
// 1648 void ZtcMsgSetPanIDReqFunc(void) {
// 1649   FLib_MemCpy(NlmeGetRequest(gNwkPanId_c),
// 1650               (void *) gZtcPacketFromClient.structured.payload,
// 1651               sizeof(NlmeGetRequest(gNwkPanId_c)));
// 1652 }                                       /* ZtcMsgGetPanIDReqFunc() */
// 1653 #endif
// 1654 
// 1655 /****************************************************************************/
// 1656 
// 1657 #if gZtcIncluded_d
// 1658 void ZtcMsgStartNwkReqFunc(void) {
// 1659 	uint8_t rejoinMode = *(uint8_t*)gZtcPacketFromClient.structured.payload;
// 1660 	event_t event = 0;
// 1661 	if(rejoinMode == gAssociationJoin_c)
// 1662 		event = gStartAssociationRejoinWithNvm_c;
// 1663 	else if(rejoinMode == gOrphanJoin_c)
// 1664 		event = gStartOrphanRejoinWithNvm_c;
// 1665 	else if(rejoinMode == gNwkRejoin_c)
// 1666 		event = gStartNwkRejoinWithNvm_c;
// 1667 	else if(rejoinMode == gSilentRejoin_c)
// 1668 		event = gStartSilentRejoinWithNvm_c;  
// 1669 	else if(rejoinMode == gSilentNwkRejoin_c)
// 1670 		event = gStartSilentNwkRejoin_c;
// 1671 	/* if it's a valid event and if ZDO state machine is in its initial state */
// 1672 	if( event )// && ZDO_GetState()== gZdoInitialState_c )
// 1673 	  TS_SendEvent(gZdoStateMachineTaskID_c, event );
// 1674 }                                       /* ZtcMsgStartNwkReqFunc() */
// 1675 #endif
// 1676 
// 1677 /****************************************************************************/
// 1678 
// 1679 #if gZtcIncluded_d
// 1680 void ZtcMsgStopNwkReqFunc(void) {
// 1681   TS_SendEvent(gZdoStateMachineTaskID_c, gStop_c);
// 1682 }                                       /* ZtcMsgStopNwkReqFunc() */
// 1683 #endif
// 1684 
// 1685 #endif /* gBeeStackIncluded_d */
// 1686 /****************************************************************************/
// 1687 
// 1688 #if gZtcIncluded_d
// 1689 void ZtcMsgWriteExtendedAdrReqFunc(void) {
// 1690   FLib_MemCpy(aExtendedAddress, gZtcPacketFromClient.structured.payload,8);
// 1691   MacPhyInit_WriteExtAddress(aExtendedAddress);
// 1692 
// 1693 }                                       /* ZtcMsgWriteExtendedAdrReqFunc() */
// 1694 #endif
// 1695 
// 1696 #if (gZtcIncluded_d && gBeeStackIncluded_d)
// 1697 void ZtcMsgWriteNwkMngAddressReqFunc(void)
// 1698 {
// 1699   FLib_MemCpy(gNwkManagerAddr, gZtcPacketFromClient.structured.payload, 2);
// 1700 }
// 1701 #endif /* (gZtcIncluded_d && gBeeStackIncluded_d) */
// 1702 
// 1703 /****************************************************************************/
// 1704 #if (gSAPMessagesEnableNlme_d)
// 1705 #if gZtcIncluded_d
// 1706 void ZtcFreeDiscoveryTables(void) {
// 1707   NWK_FreeUpDiscoveryTables();
// 1708 }                          
// 1709 
// 1710 #endif
// 1711 /****************************************************************************/
// 1712 
// 1713 #if gZtcIncluded_d
// 1714 void ZtcSetJoinFilterFlag(void) {
// 1715   gRejoinMode = gZtcPacketFromClient.structured.payload[0];
// 1716 }                          
// 1717 #endif
// 1718 #endif
// 1719 /****************************************************************************/
// 1720 
// 1721 /* Start of the memory/GPIO handling functions                       *
// 1722  * These functions handle the direct read/write operations from and  *
// 1723  * to the microcontroller memory                                     *
// 1724 
// 1725 These functions are, of course, called the ZTC way, using pointers to functions, picked from
// 1726 the message handlers table, so do not look for their declarations. 
// 1727 
// 1728 They decode the gZtcPacketFromClient variable and use the info from there to find
// 1729 out which is the location to be read/written
// 1730 
// 1731 *****************************************************************************/
// 1732 
// 1733 /*The following function reads a memory block from a given address */
// 1734 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1735 void  ZtcMemoryReadBlock(void)
// 1736 {
ZtcMemoryReadBlock:
        PUSH     {R3-R7,LR}
// 1737   uint8_t *addr;
// 1738   uint8_t nBytes, lcount;
// 1739   uint8_t *pIn, *pOut;
// 1740 
// 1741 
// 1742   FLib_MemCpy(&addr, gZtcPacketFromClient.structured.payload, 4);
        MOVS     R2,#+4
        LDR      R1,??DataTable8
        ADDS     R1,R1,#+3
        MOV      R0,SP
        BL       FLib_MemCpy
// 1743 
// 1744   nBytes = gZtcPacketFromClient.structured.payload[sizeof(addr)];
        LDR      R0,??DataTable8
        LDRB     R0,[R0, #+7]
        MOVS     R7,R0
// 1745   lcount = nBytes;
        MOVS     R4,R7
// 1746 //Construct and send response
// 1747   pOut = addr;
        LDR      R0,[SP, #+0]
        MOVS     R5,R0
// 1748   pIn = &gZtcPacketToClient.structured.payload[0];
        LDR      R0,??DataTable8_1
        ADDS     R0,R0,#+3
        MOVS     R6,R0
// 1749   for (;lcount != 0; lcount--)
??ZtcMemoryReadBlock_0:
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+0
        BEQ      ??ZtcMemoryReadBlock_1
// 1750   {
// 1751     *pIn++ = *pOut++;
        LDRB     R0,[R5, #+0]
        STRB     R0,[R6, #+0]
        ADDS     R5,R5,#+1
        ADDS     R6,R6,#+1
// 1752   }
        SUBS     R4,R4,#+1
        B        ??ZtcMemoryReadBlock_0
// 1753   gZtcPacketToClient.structured.header.opcodeGroup = gZtcCnfOpcodeGroup_c;
??ZtcMemoryReadBlock_1:
        LDR      R0,??DataTable8_1
        MOVS     R1,#+164
        STRB     R1,[R0, #+0]
// 1754   gZtcPacketToClient.structured.header.msgType = mZtcLowLevelMemoryReadBlock_c; 
        LDR      R0,??DataTable8_1
        MOVS     R1,#+49
        STRB     R1,[R0, #+1]
// 1755   gZtcPacketToClient.structured.header.len = (uint8_t)nBytes; 
        LDR      R0,??DataTable8_1
        STRB     R7,[R0, #+2]
// 1756 //No illegal mem locations, and no strict parm check done
// 1757 }
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return
// 1758 
// 1759 /*********************************************************************/
// 1760 /*The following function reads a byte from a given address */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1761 void  ZtcMemoryReadByte(void)
// 1762 {
ZtcMemoryReadByte:
        PUSH     {R7,LR}
// 1763   uint8_t *addr;
// 1764 
// 1765   FLib_MemCpy(&addr, gZtcPacketFromClient.structured.payload, 4);
        MOVS     R2,#+4
        LDR      R1,??DataTable8
        ADDS     R1,R1,#+3
        MOV      R0,SP
        BL       FLib_MemCpy
// 1766 
// 1767 //Construct and send response
// 1768   gZtcPacketToClient.structured.payload[0] = *addr;
        LDR      R0,??DataTable8_1
        LDR      R1,[SP, #+0]
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+3]
// 1769   gZtcPacketToClient.structured.header.opcodeGroup = gZtcCnfOpcodeGroup_c;
        LDR      R0,??DataTable8_1
        MOVS     R1,#+164
        STRB     R1,[R0, #+0]
// 1770   gZtcPacketToClient.structured.header.msgType = mZtcLowLevelMemoryReadByte_c; 
        LDR      R0,??DataTable8_1
        MOVS     R1,#+51
        STRB     R1,[R0, #+1]
// 1771   gZtcPacketToClient.structured.header.len = sizeof(uint8_t); 
        LDR      R0,??DataTable8_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
// 1772 //No illegal mem locations, and no strict parm check done
// 1773 
// 1774 }
        POP      {R0,R3}
        BX       R3               ;; return
// 1775 /********************************************************************/
// 1776 /*The following function reads a word from a given address */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1777 void  ZtcMemoryReadWord(void)
// 1778 {
ZtcMemoryReadWord:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
// 1779   uint8_t *addr;
// 1780   uint8_t lcount;
// 1781   uint8_t *pIn, *pOut;
// 1782 
// 1783 
// 1784   FLib_MemCpy(&addr, gZtcPacketFromClient.structured.payload, 4);
        MOVS     R2,#+4
        LDR      R1,??DataTable8
        ADDS     R1,R1,#+3
        MOV      R0,SP
        BL       FLib_MemCpy
// 1785   lcount = 2;
        MOVS     R0,#+2
        MOVS     R4,R0
// 1786   pOut = addr;
        LDR      R0,[SP, #+0]
        MOVS     R5,R0
// 1787   pIn = &gZtcPacketToClient.structured.payload[0];
        LDR      R0,??DataTable8_1
        ADDS     R0,R0,#+3
        MOVS     R6,R0
// 1788   for (;lcount != 0; lcount--) 
??ZtcMemoryReadWord_0:
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+0
        BEQ      ??ZtcMemoryReadWord_1
// 1789       *pIn++ = *pOut++;
        LDRB     R0,[R5, #+0]
        STRB     R0,[R6, #+0]
        ADDS     R5,R5,#+1
        ADDS     R6,R6,#+1
        SUBS     R4,R4,#+1
        B        ??ZtcMemoryReadWord_0
// 1790   gZtcPacketToClient.structured.header.opcodeGroup = gZtcCnfOpcodeGroup_c;
??ZtcMemoryReadWord_1:
        LDR      R0,??DataTable8_1
        MOVS     R1,#+164
        STRB     R1,[R0, #+0]
// 1791   gZtcPacketToClient.structured.header.msgType = mZtcLowLevelMemoryReadWord_c; 
        LDR      R0,??DataTable8_1
        MOVS     R1,#+53
        STRB     R1,[R0, #+1]
// 1792   gZtcPacketToClient.structured.header.len = 2; 
        LDR      R0,??DataTable8_1
        MOVS     R1,#+2
        STRB     R1,[R0, #+2]
// 1793 }
        POP      {R0,R1,R4-R6}
        POP      {R3}
        BX       R3               ;; return
// 1794 /********************************************************************/
// 1795 /*The following function reads a long value from a given address */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1796 void  ZtcMemoryReadLong(void)
// 1797 {
ZtcMemoryReadLong:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
// 1798   uint8_t *addr;
// 1799   uint8_t lcount;
// 1800   uint8_t *pIn, *pOut;
// 1801 
// 1802   FLib_MemCpy(&addr, gZtcPacketFromClient.structured.payload, 4);
        MOVS     R2,#+4
        LDR      R1,??DataTable8
        ADDS     R1,R1,#+3
        MOV      R0,SP
        BL       FLib_MemCpy
// 1803   lcount = 4;
        MOVS     R0,#+4
        MOVS     R4,R0
// 1804 //Construct and send response
// 1805   pOut = addr;  
        LDR      R0,[SP, #+0]
        MOVS     R5,R0
// 1806   pIn = &gZtcPacketToClient.structured.payload[0];
        LDR      R0,??DataTable8_1
        ADDS     R0,R0,#+3
        MOVS     R6,R0
// 1807   for (;lcount != 0; lcount--) 
??ZtcMemoryReadLong_0:
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+0
        BEQ      ??ZtcMemoryReadLong_1
// 1808     *pIn++ = *pOut++;
        LDRB     R0,[R5, #+0]
        STRB     R0,[R6, #+0]
        ADDS     R5,R5,#+1
        ADDS     R6,R6,#+1
        SUBS     R4,R4,#+1
        B        ??ZtcMemoryReadLong_0
// 1809 
// 1810   gZtcPacketToClient.structured.header.opcodeGroup = gZtcCnfOpcodeGroup_c;
??ZtcMemoryReadLong_1:
        LDR      R0,??DataTable8_1
        MOVS     R1,#+164
        STRB     R1,[R0, #+0]
// 1811   gZtcPacketToClient.structured.header.msgType = mZtcLowLevelMemoryReadLong_c; 
        LDR      R0,??DataTable8_1
        MOVS     R1,#+55
        STRB     R1,[R0, #+1]
// 1812   gZtcPacketToClient.structured.header.len = 4; 
        LDR      R0,??DataTable8_1
        MOVS     R1,#+4
        STRB     R1,[R0, #+2]
// 1813 }
        POP      {R0,R1,R4-R6}
        POP      {R3}
        BX       R3               ;; return
// 1814 
// 1815 //-----------------------------------------------------------------------------------
// 1816 /*The following function writes a byte block from a given address */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1817 void  ZtcMemoryWriteBlock(void)
// 1818 {
ZtcMemoryWriteBlock:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+12
// 1819   uint8_t *addr;
// 1820   uint8_t nBytes;
// 1821   uint8_t *pIn, *pOut;
// 1822   uint8_t nWritten, nRead;
// 1823 
// 1824   FLib_MemCpy(&addr, gZtcPacketFromClient.structured.payload, 4);
        MOVS     R2,#+4
        LDR      R1,??DataTable8
        ADDS     R1,R1,#+3
        ADD      R0,SP,#+4
        BL       FLib_MemCpy
// 1825 
// 1826   nBytes = gZtcPacketFromClient.structured.payload[sizeof(addr)];
        MOV      R0,SP
        LDR      R1,??DataTable8
        LDRB     R1,[R1, #+7]
        STRB     R1,[R0, #+0]
// 1827   pIn = &gZtcPacketFromClient.structured.payload[sizeof(addr)+1];
        LDR      R0,??DataTable8
        ADDS     R0,R0,#+8
        MOVS     R7,R0
// 1828   pOut = addr;
        LDR      R0,[SP, #+4]
        MOVS     R6,R0
// 1829   nRead = nWritten = 0;
        MOVS     R0,#+0
        MOVS     R5,R0
        MOVS     R4,R0
// 1830   while (nRead++ < nBytes)
??ZtcMemoryWriteBlock_0:
        MOVS     R0,R4
        MOVS     R4,R0
        ADDS     R4,R4,#+1
        MOV      R1,SP
        LDRB     R1,[R1, #+0]
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        CMP      R0,R1
        BCS      ??ZtcMemoryWriteBlock_1
// 1831   {
// 1832   if (!(((int)pOut < 0x00400000) && (((int)pOut & 0xF0000000)!= 0x80000000)))// Write to out of RAM range or I/O space attempted
        MOVS     R0,#+128
        LSLS     R0,R0,#+15       ;; #+4194304
        CMP      R6,R0
        BGE      ??ZtcMemoryWriteBlock_2
        LSRS     R0,R6,#+28
        LSLS     R0,R0,#+28
        MOVS     R1,#+128
        LSLS     R1,R1,#+24       ;; #-2147483648
        CMP      R0,R1
        BNE      ??ZtcMemoryWriteBlock_0
// 1833      {
// 1834       *pOut++ = *pIn++;
??ZtcMemoryWriteBlock_2:
        LDRB     R0,[R7, #+0]
        STRB     R0,[R6, #+0]
        ADDS     R7,R7,#+1
        ADDS     R6,R6,#+1
// 1835       nWritten++;
        ADDS     R5,R5,#+1
        B        ??ZtcMemoryWriteBlock_0
// 1836      }
// 1837   }
// 1838   gZtcPacketToClient.structured.header.opcodeGroup = gZtcCnfOpcodeGroup_c;
??ZtcMemoryWriteBlock_1:
        LDR      R0,??DataTable8_1
        MOVS     R1,#+164
        STRB     R1,[R0, #+0]
// 1839   gZtcPacketToClient.structured.header.msgType = mZtcLowLevelMemoryWriteBlock_c; 
        LDR      R0,??DataTable8_1
        MOVS     R1,#+48
        STRB     R1,[R0, #+1]
// 1840   gZtcPacketToClient.structured.header.len = 1;
        LDR      R0,??DataTable8_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
// 1841   gZtcPacketToClient.structured.payload[0] = nWritten;
        LDR      R0,??DataTable8_1
        STRB     R5,[R0, #+3]
// 1842 }
        POP      {R0-R2,R4-R7}
        POP      {R3}
        BX       R3               ;; return
// 1843 /************************************************************************/
// 1844 /*This function writes a byte into a memory location*/
// 1845 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1846 void  ZtcMemoryWriteByte(void)
// 1847 {
ZtcMemoryWriteByte:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
// 1848   uint8_t *addr;
// 1849   uint8_t vIn, *pOut, nWritten;
// 1850 
// 1851 
// 1852   FLib_MemCpy(&addr, gZtcPacketFromClient.structured.payload, 4);  
        MOVS     R2,#+4
        LDR      R1,??DataTable8
        ADDS     R1,R1,#+3
        MOV      R0,SP
        BL       FLib_MemCpy
// 1853   vIn = gZtcPacketFromClient.structured.payload[sizeof(addr)];
        LDR      R0,??DataTable8
        LDRB     R0,[R0, #+7]
        MOVS     R6,R0
// 1854   pOut = addr;
        LDR      R0,[SP, #+0]
        MOVS     R4,R0
// 1855   nWritten = 0;
        MOVS     R0,#+0
        MOVS     R5,R0
// 1856 
// 1857   if (!((int)pOut < 0x00400000) && ((((int)pOut & 0xF0000000)!= 0x80000000)))  // Write to out of RAM range or I/O space attempted
        MOVS     R0,#+128
        LSLS     R0,R0,#+15       ;; #+4194304
        CMP      R4,R0
        BLT      ??ZtcMemoryWriteByte_0
        LSRS     R0,R4,#+28
        LSLS     R0,R0,#+28
        MOVS     R1,#+128
        LSLS     R1,R1,#+24       ;; #-2147483648
        CMP      R0,R1
        BEQ      ??ZtcMemoryWriteByte_0
// 1858   {
// 1859     *pOut = vIn ;
        STRB     R6,[R4, #+0]
// 1860     nWritten = sizeof(uint8_t); 
        MOVS     R0,#+1
        MOVS     R5,R0
// 1861   }
// 1862   gZtcPacketToClient.structured.header.opcodeGroup = gZtcCnfOpcodeGroup_c;
??ZtcMemoryWriteByte_0:
        LDR      R0,??DataTable8_1
        MOVS     R1,#+164
        STRB     R1,[R0, #+0]
// 1863   gZtcPacketToClient.structured.header.msgType = mZtcLowLevelMemoryWriteByte_c; 
        LDR      R0,??DataTable8_1
        MOVS     R1,#+50
        STRB     R1,[R0, #+1]
// 1864   gZtcPacketToClient.structured.header.len = 1;
        LDR      R0,??DataTable8_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
// 1865   gZtcPacketToClient.structured.payload[0] = nWritten;
        LDR      R0,??DataTable8_1
        STRB     R5,[R0, #+3]
// 1866 }
        POP      {R0,R1,R4-R6}
        POP      {R3}
        BX       R3               ;; return
// 1867 
// 1868 /***************************************************************************/
// 1869 /*This function writes a word into a memory location*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1870 void  ZtcMemoryWriteWord(void)
// 1871 {
ZtcMemoryWriteWord:
        PUSH     {R3-R7,LR}
// 1872   uint8_t *addr;
// 1873   uint8_t *pIn, *pOut;
// 1874   uint8_t nWritten, nRead;
// 1875 
// 1876   FLib_MemCpy(&addr, gZtcPacketFromClient.structured.payload, 4);
        MOVS     R2,#+4
        LDR      R1,??DataTable8
        ADDS     R1,R1,#+3
        MOV      R0,SP
        BL       FLib_MemCpy
// 1877   pIn = &gZtcPacketFromClient.structured.payload[sizeof(addr)];
        LDR      R0,??DataTable8
        ADDS     R0,R0,#+7
        MOVS     R7,R0
// 1878   pOut = addr;
        LDR      R0,[SP, #+0]
        MOVS     R6,R0
// 1879   nRead = nWritten = 0;
        MOVS     R0,#+0
        MOVS     R5,R0
        MOVS     R4,R0
// 1880   while (nRead++ < sizeof(uint16_t))
??ZtcMemoryWriteWord_0:
        MOVS     R0,R4
        MOVS     R4,R0
        ADDS     R4,R4,#+1
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+2
        BCS      ??ZtcMemoryWriteWord_1
// 1881   {
// 1882     if (!(((int)pOut < 0x00400000) && (((int)pOut & 0xF0000000)!= 0x80000000)))// Write to out of RAM range or I/O space attempted
        MOVS     R0,#+128
        LSLS     R0,R0,#+15       ;; #+4194304
        CMP      R6,R0
        BGE      ??ZtcMemoryWriteWord_2
        LSRS     R0,R6,#+28
        LSLS     R0,R0,#+28
        MOVS     R1,#+128
        LSLS     R1,R1,#+24       ;; #-2147483648
        CMP      R0,R1
        BNE      ??ZtcMemoryWriteWord_0
// 1883     {
// 1884       *pOut++ = *pIn++;
??ZtcMemoryWriteWord_2:
        LDRB     R0,[R7, #+0]
        STRB     R0,[R6, #+0]
        ADDS     R7,R7,#+1
        ADDS     R6,R6,#+1
// 1885       nWritten++;
        ADDS     R5,R5,#+1
        B        ??ZtcMemoryWriteWord_0
// 1886     }
// 1887   }
// 1888   gZtcPacketToClient.structured.header.opcodeGroup = gZtcCnfOpcodeGroup_c;
??ZtcMemoryWriteWord_1:
        LDR      R0,??DataTable8_1
        MOVS     R1,#+164
        STRB     R1,[R0, #+0]
// 1889   gZtcPacketToClient.structured.header.msgType = mZtcLowLevelMemoryWriteWord_c; 
        LDR      R0,??DataTable8_1
        MOVS     R1,#+52
        STRB     R1,[R0, #+1]
// 1890   gZtcPacketToClient.structured.header.len = 1;
        LDR      R0,??DataTable8_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
// 1891   gZtcPacketToClient.structured.payload[0] = nWritten;
        LDR      R0,??DataTable8_1
        STRB     R5,[R0, #+3]
// 1892 }
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return
// 1893 
// 1894 /***************************************************************************/
// 1895 /*This function writes a long value into a memory location*/
// 1896 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1897 void  ZtcMemoryWriteLong(void)
// 1898 {
ZtcMemoryWriteLong:
        PUSH     {R3-R7,LR}
// 1899   uint8_t *addr;
// 1900   uint8_t *pIn, *pOut;
// 1901   uint8_t nWritten, nRead;
// 1902 
// 1903   FLib_MemCpy(&addr, gZtcPacketFromClient.structured.payload, 4);
        MOVS     R2,#+4
        LDR      R1,??DataTable8
        ADDS     R1,R1,#+3
        MOV      R0,SP
        BL       FLib_MemCpy
// 1904   pIn = &gZtcPacketFromClient.structured.payload[sizeof(addr)];
        LDR      R0,??DataTable8
        ADDS     R0,R0,#+7
        MOVS     R7,R0
// 1905   pOut = addr;
        LDR      R0,[SP, #+0]
        MOVS     R6,R0
// 1906   nRead = nWritten = 0;
        MOVS     R0,#+0
        MOVS     R5,R0
        MOVS     R4,R0
// 1907   while (nRead++ < sizeof(uint32_t))
??ZtcMemoryWriteLong_0:
        MOVS     R0,R4
        MOVS     R4,R0
        ADDS     R4,R4,#+1
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+4
        BCS      ??ZtcMemoryWriteLong_1
// 1908   {
// 1909     if (!(((int)pOut < 0x00400000) && (((int)pOut & 0xF0000000)!= 0x80000000)))// Write to out of RAM range or I/O space attempted
        MOVS     R0,#+128
        LSLS     R0,R0,#+15       ;; #+4194304
        CMP      R6,R0
        BGE      ??ZtcMemoryWriteLong_2
        LSRS     R0,R6,#+28
        LSLS     R0,R0,#+28
        MOVS     R1,#+128
        LSLS     R1,R1,#+24       ;; #-2147483648
        CMP      R0,R1
        BNE      ??ZtcMemoryWriteLong_0
// 1910     {
// 1911       *pOut++ = *pIn++;
??ZtcMemoryWriteLong_2:
        LDRB     R0,[R7, #+0]
        STRB     R0,[R6, #+0]
        ADDS     R7,R7,#+1
        ADDS     R6,R6,#+1
// 1912       nWritten++;
        ADDS     R5,R5,#+1
        B        ??ZtcMemoryWriteLong_0
// 1913     }
// 1914   }
// 1915   gZtcPacketToClient.structured.header.opcodeGroup = gZtcCnfOpcodeGroup_c;
??ZtcMemoryWriteLong_1:
        LDR      R0,??DataTable8_1
        MOVS     R1,#+164
        STRB     R1,[R0, #+0]
// 1916   gZtcPacketToClient.structured.header.msgType = mZtcLowLevelMemoryWriteLong_c; 
        LDR      R0,??DataTable8_1
        MOVS     R1,#+54
        STRB     R1,[R0, #+1]
// 1917   gZtcPacketToClient.structured.header.len = 1;
        LDR      R0,??DataTable8_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
// 1918   gZtcPacketToClient.structured.payload[0] = nWritten;
        LDR      R0,??DataTable8_1
        STRB     R5,[R0, #+3]
// 1919 }
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return
// 1920 
// 1921 /****************************************************************************/
// 1922 /*ZtcPing simply echoes back the payload*/
// 1923 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1924 void  ZtcPing(void)
// 1925 {
ZtcPing:
        PUSH     {R7,LR}
// 1926   gZtcPacketToClient.structured.header.opcodeGroup = gZtcCnfOpcodeGroup_c;
        LDR      R0,??DataTable8_1
        MOVS     R1,#+164
        STRB     R1,[R0, #+0]
// 1927   gZtcPacketToClient.structured.header.msgType = mZtcLowLevelPing_c; 
        LDR      R0,??DataTable8_1
        MOVS     R1,#+56
        STRB     R1,[R0, #+1]
// 1928   gZtcPacketToClient.structured.header.len = gZtcPacketFromClient.structured.header.len;
        LDR      R0,??DataTable8_1
        LDR      R1,??DataTable8
        LDRB     R1,[R1, #+2]
        STRB     R1,[R0, #+2]
// 1929   FLib_MemCpy(gZtcPacketToClient.structured.payload, gZtcPacketFromClient.structured.payload,
// 1930               gZtcPacketFromClient.structured.header.len );
        LDR      R0,??DataTable8
        LDRB     R2,[R0, #+2]
        LSLS     R2,R2,#+16       ;; ZeroExtS R2,R2,#+16,#+16
        LSRS     R2,R2,#+16
        LDR      R1,??DataTable8
        ADDS     R1,R1,#+3
        LDR      R0,??DataTable8_1
        ADDS     R0,R0,#+3
        BL       FLib_MemCpy
// 1931 
// 1932 }
        POP      {R0,R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8:
        DC32     gZtcPacketFromClient

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8_1:
        DC32     gZtcPacketToClient

        END
// 1933 
// 1934 /* end ZtcMain.c*/
// 1935 
// 
// 740 bytes in section .text
// 
// 740 bytes of CODE memory
//
//Errors: none
//Warnings: none
