/******************************************************************************
* Ztc access to the NWK/APS Information Base
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
#endif

#include "ZtcInterface.h"

#if gZtcIncluded_d

#include "FunctionLib.h"
#if gBeeStackIncluded_d
#include "BeeStackInterface.h"
#include "BeeStack_Globals.h"

#include "AfApsInterface.h"
#include "ZdoApsInterface.h"
#include "ApsMgmtInterface.h"
#include "BeeStackParameters.h"
#endif

#include "ZtcPrivate.h"
#include "ZtcClientCommunication.h"
#include "ZtcIBManagement.h"

/******************************************************************************
*******************************************************************************
* Private macros
*******************************************************************************
******************************************************************************/

/* determine which table to search */
#define mRomTable_c 0x00
#define mRamTable_c 0x01

/******************************************************************************
*******************************************************************************
* Private prototypes
*******************************************************************************
******************************************************************************/

#if gBeeStackIncluded_d

ztcIBData_t const *ZtcIBLookupEntry(zbIBAttributeId_t iId);

/******************************************************************************
*******************************************************************************
* Private type definitions
*******************************************************************************
******************************************************************************/

/******************************************************************************
*******************************************************************************
* Public memory definitions
*******************************************************************************
******************************************************************************/

extern  uint8_t gDeviceType;

/******************************************************************************
*******************************************************************************
* Private memory declarations
*******************************************************************************
******************************************************************************/

ztcIBData_t const maZtcIBData[] = {

  /* Network Information Base Identifiers. r17 - Table 3.41 NWK IB Attributes. */
  {gNwkSequenceNumber_c,                    mZtcIBRO, sizeof(gNibSequenceNumber),                    mIBScalar,                              (void *) &gNibSequenceNumber},
  {gNwkPassiveAckTimeout_c,                 mZtcIBRO, sizeof(gNibPassiveAckTimeout),                 mIBScalar,                              (void *) &gNibPassiveAckTimeout},
  {gNwkMaxBroadcastRetries_c,               mZtcIBRO, sizeof(gNibMaxBroadcastRetries),               mIBScalar,                              (void *) &gNibMaxBroadcastRetries},
  {gNwkMaxChildren_c,                       mZtcIBRO, sizeof(gNibMaxChildren),                       mIBScalar,                              (void *) &gNibMaxChildren},
  {gNwkMaxDepth_c,                          mZtcIBRO, sizeof(gNibMaxDepth),                          mIBScalar,                              (void *) &gNibMaxDepth},
  {gNwkMaxRouter_c,                         mZtcIBRO, sizeof(gNibMaxRouter),                         mIBScalar,                              (void *) &gNibMaxRouter},
  {gNwkNetworkBroadcastDeliveryTime_c,      mZtcIBRO, sizeof(gNibNetworkBroadcastDeliveryTime),      mIBScalar,                              (void *) &gNibNetworkBroadcastDeliveryTime},
  {gNwkReportConstantCost_c,                mZtcIBRO, sizeof(gNibReportConstantCost),                mIBScalar,                              (void *) &gNibReportConstantCost},
  {gNwkRouteDiscoveryRetriesPermitted_c,    mZtcIBRO, sizeof(gNibRouteDiscoveryRetriesPermitted),    mIBScalar,                              (void *) &gNibRouteDiscoveryRetriesPermitted},
  {gNwkSymLink_c,                           mZtcIBRO, sizeof(gNibSymLink),                           mIBScalar,                              (void *) &gNibSymLink},
  {gNwkCapabilityInformation_c,             mZtcIBRW, sizeof(NlmeGetRequest(gNwkCapabilityInformation_c)), mIBScalar,                        (void *) &NlmeGetRequest(gNwkCapabilityInformation_c)},
  {gNwkAddrAlloc_c,                         mZtcIBRO, sizeof(gNibAddrAlloc),                         mIBScalar,                              (void *) &gNibAddrAlloc},
  {gNwkUseTreeRouting_c,                    mZtcIBRO, sizeof(gNibUseTreeRouting),                    mIBScalar,                              (void *) &gNibUseTreeRouting},
  {gNwkManagerAddr_c,                       mZtcIBRW, sizeof(zbNwkAddr_t),                           mIBScalar,                              gNwkManagerAddr},
 
  {gNwkTransactionPersistenceTime_c,        mZtcIBRO, sizeof(gNibTransactionPersistenceTime),        mIBScalar,                              (void *) &gNibTransactionPersistenceTime},
  {gNwkShortAddress_c,                      mZtcIBRO, sizeof(NlmeGetRequest(gNwkShortAddress_c)),    mIBScalar,                              (void *) &NlmeGetRequest(gNwkShortAddress_c)},
  {gNwkStackProfile_c,                      mZtcIBRO, sizeof(gNibStackProfile),                      mIBScalar,                              (void *) &gNibStackProfile},
  {gNwkProtocolVersion_c,                   mZtcIBRO, sizeof(gNibProtocolVersion),                   mIBScalar,                              (void *) &gNibProtocolVersion},
  {gNwkExtendedPanId_c,                     mZtcIBRO, sizeof(NlmeGetRequest(gNwkExtendedPanId_c)),   mIBScalar,                              (void *) &NlmeGetRequest(gNwkExtendedPanId_c)},

#if gCoordinatorCapability_d || gRouterCapability_d
#if gRnplusCapability_d
  {gNwkRouteTable_c,                        mZtcIBRW, sizeof(routeTable_t),                          gNwkInfobaseMaxRouteTableEntry_c,       gaRouteTable},
#endif
  {gNwkNeighborTable_c,                     mZtcIBRW, sizeof(neighborTable_t),                       gNwkInfobaseMaxNeighborTableEntry_c,    gaNeighborTable},
#endif

    /* BeeStack implementation attributes */
  {gNwkPanId_c,                             mZtcIBRW, sizeof(NlmeGetRequest(gNwkPanId_c)),           mIBScalar,                              (void *) &NlmeGetRequest(gNwkPanId_c)},
  {gDevType_c,                              mZtcIBRO, sizeof(gDeviceType),                           mIBScalar,                              (void *) &gDeviceType},
  {gSoftwareVersion_c,                      mZtcIBRO, sizeof(gaSoftwareVersion),                     mIBScalar,                              (void *) &gaSoftwareVersion},

#if (gEndDevCapability_d)
  {gPollTimeOut_c,                          mZtcIBRW, sizeof(gBeeStackConfig.gPollTimeOut),          mIBScalar,                              (void *) &gBeeStackConfig.gPollTimeOut},
  {gConfirmationPollTimeOut_c,              mZtcIBRW, sizeof(gBeeStackConfig.gConfirmationPollTimeOut), mIBScalar,                           (void *) &gBeeStackConfig.gConfirmationPollTimeOut},
#endif

#if gComCapability_d || gResCapability_d
  {gNwkSecurityLevel_c,                     mZtcIBRO, sizeof(gBeeStackParameters.securityParameters.nwkSecurityLevel),  mIBScalar,           (void *) &gBeeStackParameters.securityParameters.nwkSecurityLevel},
  {gNwkSecurityMaterialSet_c,               mZtcIBRO, sizeof(gBeeStackParameters.securityParameters.nwkSecurityLevel),  mIBScalar,           (void *) &gBeeStackParameters.securityParameters.nwkSecurityLevel},
  {gNwkActiveKeySeqNumber_c,                mZtcIBRO, sizeof(gBeeStackParameters.nwkKeys.keySeqNumber),                 mIBScalar,           (void *) &gBeeStackParameters.nwkKeys.keySeqNumber},
  {gNwkAllFresh_c,                          mZtcIBRO, sizeof(gBeeStackParameters.securityParameters.nwkAllFresh),       mIBScalar,           (void *) &gBeeStackParameters.securityParameters.nwkAllFresh},
  {gNwkSecureAllFrames_c,                   mZtcIBRO, sizeof(gBeeStackParameters.securityParameters.nwkSecureAllFrames),mIBScalar,           (void *) &gBeeStackParameters.securityParameters.nwkSecureAllFrames},
  {gApsTrustCenterAddress_c,                mZtcIBRW, sizeof(gBeeStackParameters.apsTrustCenterAddress),                mIBScalar,           (void *) &gBeeStackParameters.apsTrustCenterAddress},
  {gApsSecurityTimeOutPeriod_c,             mZtcIBRW, sizeof(gBeeStackParameters.apsSecurityTimeOutPeriod),             mIBScalar,           (void *) &gBeeStackParameters.apsSecurityTimeOutPeriod},
#endif

  /* APS Information Base Identifiers. r17 - Table 2.24 */
  {gApsAddressMap_c,             mZtcIBRW, sizeof(zbAddressMap_t),                                  gApsMaxAddrMapEntries_c,           ((void *)( gaApsAddressMap ))},
#if gBindCapability_d
  {gApsBindingTable_c,           mZtcIBRW, sizeof(apsBindingTable_t),                               gMaximumApsBindingTableEntries_c,  ((void *)( gaApsBindingTable ))},
#endif
  {gApsDesignatedCoordinator_c,  mZtcIBRW, sizeof(gBeeStackParameters.gfApsDesignatedCoordinator),  mIBScalar,                         ((void *)(&gBeeStackParameters.gfApsDesignatedCoordinator)) },
  {gApsChannelMask_c,            mZtcIBRW, sizeof(gBeeStackParameters.gApsChannelMask),             mIBScalar,                         ((void *)(gBeeStackParameters.gApsChannelMask)) },
  {gApsUseExtendedPANID_c,       mZtcIBRW, sizeof(gNwkData.aExtendedPanId),                         mIBScalar,                         ((void *)((gNwkData.aExtendedPanId))) },
  {gApsGroupTable_c,             mZtcIBRW, sizeof(zbGroupTable_t),                                  gApsMaxGroups_c,                   (( void *)(gaApsGroupTable))},
  {gApsNonmemberRadius_c,        mZtcIBRW, sizeof(gBeeStackParameters.gApsNonmemberRadius),         mIBScalar,                         ((void *)(&gBeeStackParameters.gApsNonmemberRadius)) },
  {gApsUseInsecureJoin_c,        mZtcIBRW, sizeof(gBeeStackParameters.gfApsUseInsecureJoinDefault), mIBScalar,                         ((void *)(&gBeeStackParameters.gfApsUseInsecureJoinDefault)) },
#if gFragmentationCapability_d
  {gApsInterframeDelay_c,        mZtcIBRW, sizeof(gBeeStackParameters.gApsInterframeDelay),         mIBScalar,                         ((void *)(&gBeeStackParameters.gApsInterframeDelay)) },
  {gApsMaxWindowSize_c,          mZtcIBRW, sizeof(gBeeStackParameters.gApsMaxWindowSize),           mIBScalar,                         ((void *)(&gBeeStackParameters.gApsMaxWindowSize)) },
  {gApsMaxFragmentLength_c,      mZtcIBRW, sizeof(gBeeStackParameters.gApsMaxFragmentLength),       mIBScalar,                         ((void *)(&gBeeStackParameters.gApsMaxFragmentLength)) },
#endif
  {gApsLastChannelEnergy_c,      mZtcIBRO, sizeof(gApsLastChannelEnergy),                           mIBScalar,                         ((void *)(&gApsLastChannelEnergy)) },
  {gApsLastChannelFailureRate_c, mZtcIBRO, sizeof(gApsChannelFailureRate),                          mIBScalar,                         ((void *)(&gApsChannelFailureRate)) },
#if 0  /* gAPSLinkKeySecurity_d  */
  {gApsDeviceKeyPairSet_c,       mZtcIBRO, sizeof(gBeeStackParameters.apsDeviceKeyPairSet),         mIBScalar,                         ((void *)(&gBeeStackParameters.apsDeviceKeyPairSet)) },
#endif
  {gApsChannelTimer_c,           mZtcIBRO, sizeof(gApsChannelTimer),                               mIBScalar,                         ((void *)(&gApsChannelTimer)) }
};

/******************************************************************************
*******************************************************************************
* Public functions
*******************************************************************************
******************************************************************************/

/* Retrieve information from the Information Base.
 *
 * On entry
 *  pRequest->iId       ID of the IB entry to get,
 *  pRequest->iIndex    Index of the first element to get, and
 *  pRequest->iEntries  Number of elements to get.
 *  pRequest->pData     Ignored
 *
 * Return
 *  pRequest->iEntries  Actual number of elements returned,
 *  pRequest->pData     Reused as the total data returned, in bytes.
 *
 * Note that this code treats everything as an array. Scalar values are
 * considered arrays that have a maximum of one element.
 */
void ZtcMsgGetIBReqFunc(void) {
#define pRequest ((getIBRequest_t *) gZtcPacketFromClient.structured.payload)
  getIBRequest_t *pResponse = ((getIBRequest_t *) &gZtcPacketToClient.structured.payload[sizeof(clientPacketStatus_t)]);

  index_t entriesReturned = pRequest->iEntries;
  index_t entrySize;
  index_t firstEntry = pRequest->iIndex;
  index_t i;
  ztcIBData_t const *pIBData;
  index_t totalDataSize;

  for (i = 0, pIBData = NULL; i < NumberOfElements(maZtcIBData); ++i) {
    if (pRequest->iId == maZtcIBData[i].id) {
      pIBData = &maZtcIBData[i];
      break;
    }
  }

  if (!pIBData) {
    ZtcError(gZtcUnknownIBIdentifier_c);
    return;
  }

  /* The Test Tool is used by humans, who make mistakes. Be forgiving. */
  if (firstEntry >= pIBData->maxEntries) {
    firstEntry = pIBData->maxEntries - 1;
  }
  if (firstEntry + entriesReturned > pIBData->maxEntries) {
    entriesReturned = pIBData->maxEntries - firstEntry;
  }
  if (!entriesReturned) {
    entriesReturned = 1;
  }

  /* points to the "To" client packet. They don't overlap. */
  FLib_MemCpy((uint8_t *) pResponse, (void *) pRequest, sizeof(getIBRequest_t));

  pResponse->iEntries = entriesReturned;
  pResponse->iEntrySize = entrySize = pIBData->entrySize;
  totalDataSize = (index_t) (entriesReturned * entrySize);
  if (totalDataSize > sizeof(gZtcPacketFromClient.structured.payload) - sizeof(getIBRequest_t)) {
    gZtcPacketToClient.structured.payload[0] = gZtcTooBig_c;
    return;
  }

  /* Note that pRequest points to the "From" client packet, and pResponse */
  /* totalDataSize is shifted because Test Tool has to receive it little endian */
  *((uint16_t *) &pResponse->pData) = totalDataSize; /* << 8; */
  gZtcPacketToClient.structured.header.len = sizeof(getIBRequest_t) + totalDataSize + sizeof(clientPacketStatus_t);

/*
The actual problem is the existance of an adittional field in the payload region which specifies payload length for client
 */

#define DataSizeFieldLengthInBytes 2
  
FLib_MemCpy(((uint8_t *) &pResponse->pData) + DataSizeFieldLengthInBytes,
              (void *) (((uint8_t *) pIBData->pTable) + (entrySize * firstEntry)),
              totalDataSize);
        
#undef DataSizeFieldLengthInBytes /*  As this is not final, get rid of it ASAP */
        
#undef pRequest
}                                       /* ZtcMsgGetIBReqFunc() */

/*****************************************************************************/

/* Store information to the Information Base.
 *
 * On entry
 *  pRequest->iId       ID of the IB entry to set,
 *  pRequest->iIndex    Index of the first element to set, and
 *  pRequest->iEntries  Number of elements to set.
 *  pRequest->pData     Not actually a pointer; replaced by the start of the
 *                          data.
 *
 * Note that this code treats everything as an array. Scalar values are
 * considered arrays that have a maximum of one element.
 */
void ZtcMsgSetIBReqFunc(void) {
#define pRequest ((getIBRequest_t *) gZtcPacketFromClient.structured.payload)

  index_t entriesToSet = pRequest->iEntries;
  index_t entrySize;
  index_t firstEntry = pRequest->iIndex;
  index_t i;
  ztcIBData_t const *pIBData;
  index_t totalDataSize;

  for (i = 0, pIBData = NULL; i < NumberOfElements(maZtcIBData); ++i) {
    if (pRequest->iId == maZtcIBData[i].id) {
      pIBData = &maZtcIBData[i];
      break;
    }
  }

  if (!pIBData) {
    ZtcError(gZtcUnknownIBIdentifier_c);
    return;
  }

  if (pIBData->access != mZtcIBRW) {
    gZtcPacketToClient.structured.payload[0] = gZtcReadOnly_c;
    return;
  }

  entrySize = pIBData->entrySize;
  totalDataSize = (index_t) (entriesToSet * entrySize);

  /* Check each of these conditions separately, to catch overflows. */
  if (  (firstEntry >= pIBData->maxEntries)
      || (firstEntry + entriesToSet > pIBData->maxEntries)
      || (totalDataSize > gZtcPacketFromClient.structured.header.len)) {
    gZtcPacketToClient.structured.payload[0] = gZtcTooBig_c;
    return;
  }

  FLib_MemCpy((uint8_t *) pIBData->pTable + (index_t) (entrySize * firstEntry),
              (void *) &pRequest->pData,
              totalDataSize);

#undef pRequest
}                                       /* ZtcMsgSetIBReqFunc() */

#endif /* gBeeStackIncluded_d */
#endif                                  /* #if gZtcIncluded_d */
