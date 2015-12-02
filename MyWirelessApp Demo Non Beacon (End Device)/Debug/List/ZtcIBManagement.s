///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      12/Oct/2015  10:21:28 /
// IAR ANSI C/C++ Compiler V5.50.7.22081/W32 EVALUATION for ARM               /
// Copyright (C) 1999-2010 IAR Systems AB.                                    /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Documents and Settings\Administrator\Desktop\MyWirel /
//                    essApp Demo Non Beacon (End Device)\MyWirelessApp Demo  /
//                    Non Beacon (End Device)\SSM\ZTC\Source\ZtcIBManagement. /
//                    c                                                       /
//    Command line =  "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\SSM\ZTC\Source\ZtcIBManage /
//                    ment.c" -D gMacStandAlone_d=1 -D                        /
//                    gSAPMessagesEnableLlc_d=0 -D gZtcIncluded_d=0 -D        /
//                    gTargetMC1322xSRB=1 --preprocess "C:\Documents and      /
//                    Settings\Administrator\Desktop\MyWirelessApp Demo Non   /
//                    Beacon (End Device)\MyWirelessApp Demo Non Beacon (End  /
//                    Device)\Debug\List\" -lC "C:\Documents and              /
//                    Settings\Administrator\Desktop\MyWirelessApp Demo Non   /
//                    Beacon (End Device)\MyWirelessApp Demo Non Beacon (End  /
//                    Device)\Debug\List\" -lB "C:\Documents and              /
//                    Settings\Administrator\Desktop\MyWirelessApp Demo Non   /
//                    Beacon (End Device)\MyWirelessApp Demo Non Beacon (End  /
//                    Device)\Debug\List\" --diag_suppress                    /
//                    Pe014,Pe001,Pe991,Pa039,Pe520 -o "C:\Documents and      /
//                    Settings\Administrator\Desktop\MyWirelessApp Demo Non   /
//                    Beacon (End Device)\MyWirelessApp Demo Non Beacon (End  /
//                    Device)\Debug\Obj\" --no_cse --no_unroll --no_inline    /
//                    --no_code_motion --no_tbaa --no_clustering              /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=ARM7TDMI-S --fpu=None --dlib_config "C:\Program   /
//                    Files\IAR Systems\Embedded Workbench 5.4                /
//                    Evaluation\arm\INC\DLib_Config_Normal.h" -I             /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\MacPhy\Interface\" -I      /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\Application\Init\" -I      /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\Application\Interface\"    /
//                    -I "C:\Documents and Settings\Administrator\Desktop\MyW /
//                    irelessApp Demo Non Beacon (End Device)\MyWirelessApp   /
//                    Demo Non Beacon (End Device)\Application\Configure\"    /
//                    -I "C:\Documents and Settings\Administrator\Desktop\MyW /
//                    irelessApp Demo Non Beacon (End Device)\MyWirelessApp   /
//                    Demo Non Beacon (End Device)\Application\UartUtil\" -I  /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\Application\Source\" -I    /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\SSM\TS\Interface\" -I      /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\SSM\TS\Source\" -I         /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\SSM\ZTC\Interface\" -I     /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\SSM\ZTC\Source\" -I        /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\PLM\Interface\" -I         /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\PLM\LibInterface\" -I      /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\PLM\Source\Display\" -I    /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\PLM\Source\Keyboard\" -I   /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\PLM\Source\NVM\" -I        /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\PLM\Source\TMR\" -I        /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\PLM\Source\UART\" -I       /
//                    "C:\Program Files\IAR Systems\Embedded Workbench 5.4    /
//                    Evaluation\arm\INC\" --interwork --cpu_mode thumb -On   /
//    List file    =  C:\Documents and Settings\Administrator\Desktop\MyWirel /
//                    essApp Demo Non Beacon (End Device)\MyWirelessApp Demo  /
//                    Non Beacon (End Device)\Debug\List\ZtcIBManagement.s    /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME ZtcIBManagement



        END
// C:\Documents and Settings\Administrator\Desktop\MyWirelessApp Demo Non Beacon (End Device)\MyWirelessApp Demo Non Beacon (End Device)\SSM\ZTC\Source\ZtcIBManagement.c
//    1 /******************************************************************************
//    2 * Ztc access to the NWK/APS Information Base
//    3 *
//    4 * Copyright (c) 2008, Freescale, Inc.  All rights reserved.
//    5 *
//    6 *
//    7 * No part of this document must be reproduced in any form - including copied,
//    8 * transcribed, printed or by any electronic means - without specific written
//    9 * permission from Freescale Semiconductor.
//   10 *
//   11 ******************************************************************************/
//   12 
//   13 #include "EmbeddedTypes.h"
//   14 #if gBeeStackIncluded_d
//   15 #include "ZigBee.h"
//   16 #include "BeeStackFunctionality.h"
//   17 #include "BeeStackConfiguration.h"
//   18 #endif
//   19 
//   20 #include "ZtcInterface.h"
//   21 
//   22 #if gZtcIncluded_d
//   23 
//   24 #include "FunctionLib.h"
//   25 #if gBeeStackIncluded_d
//   26 #include "BeeStackInterface.h"
//   27 #include "BeeStack_Globals.h"
//   28 
//   29 #include "AfApsInterface.h"
//   30 #include "ZdoApsInterface.h"
//   31 #include "ApsMgmtInterface.h"
//   32 #include "BeeStackParameters.h"
//   33 #endif
//   34 
//   35 #include "ZtcPrivate.h"
//   36 #include "ZtcClientCommunication.h"
//   37 #include "ZtcIBManagement.h"
//   38 
//   39 /******************************************************************************
//   40 *******************************************************************************
//   41 * Private macros
//   42 *******************************************************************************
//   43 ******************************************************************************/
//   44 
//   45 /* determine which table to search */
//   46 #define mRomTable_c 0x00
//   47 #define mRamTable_c 0x01
//   48 
//   49 /******************************************************************************
//   50 *******************************************************************************
//   51 * Private prototypes
//   52 *******************************************************************************
//   53 ******************************************************************************/
//   54 
//   55 #if gBeeStackIncluded_d
//   56 
//   57 ztcIBData_t const *ZtcIBLookupEntry(zbIBAttributeId_t iId);
//   58 
//   59 /******************************************************************************
//   60 *******************************************************************************
//   61 * Private type definitions
//   62 *******************************************************************************
//   63 ******************************************************************************/
//   64 
//   65 /******************************************************************************
//   66 *******************************************************************************
//   67 * Public memory definitions
//   68 *******************************************************************************
//   69 ******************************************************************************/
//   70 
//   71 extern  uint8_t gDeviceType;
//   72 
//   73 /******************************************************************************
//   74 *******************************************************************************
//   75 * Private memory declarations
//   76 *******************************************************************************
//   77 ******************************************************************************/
//   78 
//   79 ztcIBData_t const maZtcIBData[] = {
//   80 
//   81   /* Network Information Base Identifiers. r17 - Table 3.41 NWK IB Attributes. */
//   82   {gNwkSequenceNumber_c,                    mZtcIBRO, sizeof(gNibSequenceNumber),                    mIBScalar,                              (void *) &gNibSequenceNumber},
//   83   {gNwkPassiveAckTimeout_c,                 mZtcIBRO, sizeof(gNibPassiveAckTimeout),                 mIBScalar,                              (void *) &gNibPassiveAckTimeout},
//   84   {gNwkMaxBroadcastRetries_c,               mZtcIBRO, sizeof(gNibMaxBroadcastRetries),               mIBScalar,                              (void *) &gNibMaxBroadcastRetries},
//   85   {gNwkMaxChildren_c,                       mZtcIBRO, sizeof(gNibMaxChildren),                       mIBScalar,                              (void *) &gNibMaxChildren},
//   86   {gNwkMaxDepth_c,                          mZtcIBRO, sizeof(gNibMaxDepth),                          mIBScalar,                              (void *) &gNibMaxDepth},
//   87   {gNwkMaxRouter_c,                         mZtcIBRO, sizeof(gNibMaxRouter),                         mIBScalar,                              (void *) &gNibMaxRouter},
//   88   {gNwkNetworkBroadcastDeliveryTime_c,      mZtcIBRO, sizeof(gNibNetworkBroadcastDeliveryTime),      mIBScalar,                              (void *) &gNibNetworkBroadcastDeliveryTime},
//   89   {gNwkReportConstantCost_c,                mZtcIBRO, sizeof(gNibReportConstantCost),                mIBScalar,                              (void *) &gNibReportConstantCost},
//   90   {gNwkRouteDiscoveryRetriesPermitted_c,    mZtcIBRO, sizeof(gNibRouteDiscoveryRetriesPermitted),    mIBScalar,                              (void *) &gNibRouteDiscoveryRetriesPermitted},
//   91   {gNwkSymLink_c,                           mZtcIBRO, sizeof(gNibSymLink),                           mIBScalar,                              (void *) &gNibSymLink},
//   92   {gNwkCapabilityInformation_c,             mZtcIBRW, sizeof(NlmeGetRequest(gNwkCapabilityInformation_c)), mIBScalar,                        (void *) &NlmeGetRequest(gNwkCapabilityInformation_c)},
//   93   {gNwkAddrAlloc_c,                         mZtcIBRO, sizeof(gNibAddrAlloc),                         mIBScalar,                              (void *) &gNibAddrAlloc},
//   94   {gNwkUseTreeRouting_c,                    mZtcIBRO, sizeof(gNibUseTreeRouting),                    mIBScalar,                              (void *) &gNibUseTreeRouting},
//   95   {gNwkManagerAddr_c,                       mZtcIBRW, sizeof(zbNwkAddr_t),                           mIBScalar,                              gNwkManagerAddr},
//   96  
//   97   {gNwkTransactionPersistenceTime_c,        mZtcIBRO, sizeof(gNibTransactionPersistenceTime),        mIBScalar,                              (void *) &gNibTransactionPersistenceTime},
//   98   {gNwkShortAddress_c,                      mZtcIBRO, sizeof(NlmeGetRequest(gNwkShortAddress_c)),    mIBScalar,                              (void *) &NlmeGetRequest(gNwkShortAddress_c)},
//   99   {gNwkStackProfile_c,                      mZtcIBRO, sizeof(gNibStackProfile),                      mIBScalar,                              (void *) &gNibStackProfile},
//  100   {gNwkProtocolVersion_c,                   mZtcIBRO, sizeof(gNibProtocolVersion),                   mIBScalar,                              (void *) &gNibProtocolVersion},
//  101   {gNwkExtendedPanId_c,                     mZtcIBRO, sizeof(NlmeGetRequest(gNwkExtendedPanId_c)),   mIBScalar,                              (void *) &NlmeGetRequest(gNwkExtendedPanId_c)},
//  102 
//  103 #if gCoordinatorCapability_d || gRouterCapability_d
//  104 #if gRnplusCapability_d
//  105   {gNwkRouteTable_c,                        mZtcIBRW, sizeof(routeTable_t),                          gNwkInfobaseMaxRouteTableEntry_c,       gaRouteTable},
//  106 #endif
//  107   {gNwkNeighborTable_c,                     mZtcIBRW, sizeof(neighborTable_t),                       gNwkInfobaseMaxNeighborTableEntry_c,    gaNeighborTable},
//  108 #endif
//  109 
//  110     /* BeeStack implementation attributes */
//  111   {gNwkPanId_c,                             mZtcIBRW, sizeof(NlmeGetRequest(gNwkPanId_c)),           mIBScalar,                              (void *) &NlmeGetRequest(gNwkPanId_c)},
//  112   {gDevType_c,                              mZtcIBRO, sizeof(gDeviceType),                           mIBScalar,                              (void *) &gDeviceType},
//  113   {gSoftwareVersion_c,                      mZtcIBRO, sizeof(gaSoftwareVersion),                     mIBScalar,                              (void *) &gaSoftwareVersion},
//  114 
//  115 #if (gEndDevCapability_d)
//  116   {gPollTimeOut_c,                          mZtcIBRW, sizeof(gBeeStackConfig.gPollTimeOut),          mIBScalar,                              (void *) &gBeeStackConfig.gPollTimeOut},
//  117   {gConfirmationPollTimeOut_c,              mZtcIBRW, sizeof(gBeeStackConfig.gConfirmationPollTimeOut), mIBScalar,                           (void *) &gBeeStackConfig.gConfirmationPollTimeOut},
//  118 #endif
//  119 
//  120 #if gComCapability_d || gResCapability_d
//  121   {gNwkSecurityLevel_c,                     mZtcIBRO, sizeof(gBeeStackParameters.securityParameters.nwkSecurityLevel),  mIBScalar,           (void *) &gBeeStackParameters.securityParameters.nwkSecurityLevel},
//  122   {gNwkSecurityMaterialSet_c,               mZtcIBRO, sizeof(gBeeStackParameters.securityParameters.nwkSecurityLevel),  mIBScalar,           (void *) &gBeeStackParameters.securityParameters.nwkSecurityLevel},
//  123   {gNwkActiveKeySeqNumber_c,                mZtcIBRO, sizeof(gBeeStackParameters.nwkKeys.keySeqNumber),                 mIBScalar,           (void *) &gBeeStackParameters.nwkKeys.keySeqNumber},
//  124   {gNwkAllFresh_c,                          mZtcIBRO, sizeof(gBeeStackParameters.securityParameters.nwkAllFresh),       mIBScalar,           (void *) &gBeeStackParameters.securityParameters.nwkAllFresh},
//  125   {gNwkSecureAllFrames_c,                   mZtcIBRO, sizeof(gBeeStackParameters.securityParameters.nwkSecureAllFrames),mIBScalar,           (void *) &gBeeStackParameters.securityParameters.nwkSecureAllFrames},
//  126   {gApsTrustCenterAddress_c,                mZtcIBRW, sizeof(gBeeStackParameters.apsTrustCenterAddress),                mIBScalar,           (void *) &gBeeStackParameters.apsTrustCenterAddress},
//  127   {gApsSecurityTimeOutPeriod_c,             mZtcIBRW, sizeof(gBeeStackParameters.apsSecurityTimeOutPeriod),             mIBScalar,           (void *) &gBeeStackParameters.apsSecurityTimeOutPeriod},
//  128 #endif
//  129 
//  130   /* APS Information Base Identifiers. r17 - Table 2.24 */
//  131   {gApsAddressMap_c,             mZtcIBRW, sizeof(zbAddressMap_t),                                  gApsMaxAddrMapEntries_c,           ((void *)( gaApsAddressMap ))},
//  132 #if gBindCapability_d
//  133   {gApsBindingTable_c,           mZtcIBRW, sizeof(apsBindingTable_t),                               gMaximumApsBindingTableEntries_c,  ((void *)( gaApsBindingTable ))},
//  134 #endif
//  135   {gApsDesignatedCoordinator_c,  mZtcIBRW, sizeof(gBeeStackParameters.gfApsDesignatedCoordinator),  mIBScalar,                         ((void *)(&gBeeStackParameters.gfApsDesignatedCoordinator)) },
//  136   {gApsChannelMask_c,            mZtcIBRW, sizeof(gBeeStackParameters.gApsChannelMask),             mIBScalar,                         ((void *)(gBeeStackParameters.gApsChannelMask)) },
//  137   {gApsUseExtendedPANID_c,       mZtcIBRW, sizeof(gNwkData.aExtendedPanId),                         mIBScalar,                         ((void *)((gNwkData.aExtendedPanId))) },
//  138   {gApsGroupTable_c,             mZtcIBRW, sizeof(zbGroupTable_t),                                  gApsMaxGroups_c,                   (( void *)(gaApsGroupTable))},
//  139   {gApsNonmemberRadius_c,        mZtcIBRW, sizeof(gBeeStackParameters.gApsNonmemberRadius),         mIBScalar,                         ((void *)(&gBeeStackParameters.gApsNonmemberRadius)) },
//  140   {gApsUseInsecureJoin_c,        mZtcIBRW, sizeof(gBeeStackParameters.gfApsUseInsecureJoinDefault), mIBScalar,                         ((void *)(&gBeeStackParameters.gfApsUseInsecureJoinDefault)) },
//  141 #if gFragmentationCapability_d
//  142   {gApsInterframeDelay_c,        mZtcIBRW, sizeof(gBeeStackParameters.gApsInterframeDelay),         mIBScalar,                         ((void *)(&gBeeStackParameters.gApsInterframeDelay)) },
//  143   {gApsMaxWindowSize_c,          mZtcIBRW, sizeof(gBeeStackParameters.gApsMaxWindowSize),           mIBScalar,                         ((void *)(&gBeeStackParameters.gApsMaxWindowSize)) },
//  144   {gApsMaxFragmentLength_c,      mZtcIBRW, sizeof(gBeeStackParameters.gApsMaxFragmentLength),       mIBScalar,                         ((void *)(&gBeeStackParameters.gApsMaxFragmentLength)) },
//  145 #endif
//  146   {gApsLastChannelEnergy_c,      mZtcIBRO, sizeof(gApsLastChannelEnergy),                           mIBScalar,                         ((void *)(&gApsLastChannelEnergy)) },
//  147   {gApsLastChannelFailureRate_c, mZtcIBRO, sizeof(gApsChannelFailureRate),                          mIBScalar,                         ((void *)(&gApsChannelFailureRate)) },
//  148 #if 0  /* gAPSLinkKeySecurity_d  */
//  149   {gApsDeviceKeyPairSet_c,       mZtcIBRO, sizeof(gBeeStackParameters.apsDeviceKeyPairSet),         mIBScalar,                         ((void *)(&gBeeStackParameters.apsDeviceKeyPairSet)) },
//  150 #endif
//  151   {gApsChannelTimer_c,           mZtcIBRO, sizeof(gApsChannelTimer),                               mIBScalar,                         ((void *)(&gApsChannelTimer)) }
//  152 };
//  153 
//  154 /******************************************************************************
//  155 *******************************************************************************
//  156 * Public functions
//  157 *******************************************************************************
//  158 ******************************************************************************/
//  159 
//  160 /* Retrieve information from the Information Base.
//  161  *
//  162  * On entry
//  163  *  pRequest->iId       ID of the IB entry to get,
//  164  *  pRequest->iIndex    Index of the first element to get, and
//  165  *  pRequest->iEntries  Number of elements to get.
//  166  *  pRequest->pData     Ignored
//  167  *
//  168  * Return
//  169  *  pRequest->iEntries  Actual number of elements returned,
//  170  *  pRequest->pData     Reused as the total data returned, in bytes.
//  171  *
//  172  * Note that this code treats everything as an array. Scalar values are
//  173  * considered arrays that have a maximum of one element.
//  174  */
//  175 void ZtcMsgGetIBReqFunc(void) {
//  176 #define pRequest ((getIBRequest_t *) gZtcPacketFromClient.structured.payload)
//  177   getIBRequest_t *pResponse = ((getIBRequest_t *) &gZtcPacketToClient.structured.payload[sizeof(clientPacketStatus_t)]);
//  178 
//  179   index_t entriesReturned = pRequest->iEntries;
//  180   index_t entrySize;
//  181   index_t firstEntry = pRequest->iIndex;
//  182   index_t i;
//  183   ztcIBData_t const *pIBData;
//  184   index_t totalDataSize;
//  185 
//  186   for (i = 0, pIBData = NULL; i < NumberOfElements(maZtcIBData); ++i) {
//  187     if (pRequest->iId == maZtcIBData[i].id) {
//  188       pIBData = &maZtcIBData[i];
//  189       break;
//  190     }
//  191   }
//  192 
//  193   if (!pIBData) {
//  194     ZtcError(gZtcUnknownIBIdentifier_c);
//  195     return;
//  196   }
//  197 
//  198   /* The Test Tool is used by humans, who make mistakes. Be forgiving. */
//  199   if (firstEntry >= pIBData->maxEntries) {
//  200     firstEntry = pIBData->maxEntries - 1;
//  201   }
//  202   if (firstEntry + entriesReturned > pIBData->maxEntries) {
//  203     entriesReturned = pIBData->maxEntries - firstEntry;
//  204   }
//  205   if (!entriesReturned) {
//  206     entriesReturned = 1;
//  207   }
//  208 
//  209   /* points to the "To" client packet. They don't overlap. */
//  210   FLib_MemCpy((uint8_t *) pResponse, (void *) pRequest, sizeof(getIBRequest_t));
//  211 
//  212   pResponse->iEntries = entriesReturned;
//  213   pResponse->iEntrySize = entrySize = pIBData->entrySize;
//  214   totalDataSize = (index_t) (entriesReturned * entrySize);
//  215   if (totalDataSize > sizeof(gZtcPacketFromClient.structured.payload) - sizeof(getIBRequest_t)) {
//  216     gZtcPacketToClient.structured.payload[0] = gZtcTooBig_c;
//  217     return;
//  218   }
//  219 
//  220   /* Note that pRequest points to the "From" client packet, and pResponse */
//  221   /* totalDataSize is shifted because Test Tool has to receive it little endian */
//  222   *((uint16_t *) &pResponse->pData) = totalDataSize; /* << 8; */
//  223   gZtcPacketToClient.structured.header.len = sizeof(getIBRequest_t) + totalDataSize + sizeof(clientPacketStatus_t);
//  224 
//  225 /*
//  226 The actual problem is the existance of an adittional field in the payload region which specifies payload length for client
//  227  */
//  228 
//  229 #define DataSizeFieldLengthInBytes 2
//  230   
//  231 FLib_MemCpy(((uint8_t *) &pResponse->pData) + DataSizeFieldLengthInBytes,
//  232               (void *) (((uint8_t *) pIBData->pTable) + (entrySize * firstEntry)),
//  233               totalDataSize);
//  234         
//  235 #undef DataSizeFieldLengthInBytes /*  As this is not final, get rid of it ASAP */
//  236         
//  237 #undef pRequest
//  238 }                                       /* ZtcMsgGetIBReqFunc() */
//  239 
//  240 /*****************************************************************************/
//  241 
//  242 /* Store information to the Information Base.
//  243  *
//  244  * On entry
//  245  *  pRequest->iId       ID of the IB entry to set,
//  246  *  pRequest->iIndex    Index of the first element to set, and
//  247  *  pRequest->iEntries  Number of elements to set.
//  248  *  pRequest->pData     Not actually a pointer; replaced by the start of the
//  249  *                          data.
//  250  *
//  251  * Note that this code treats everything as an array. Scalar values are
//  252  * considered arrays that have a maximum of one element.
//  253  */
//  254 void ZtcMsgSetIBReqFunc(void) {
//  255 #define pRequest ((getIBRequest_t *) gZtcPacketFromClient.structured.payload)
//  256 
//  257   index_t entriesToSet = pRequest->iEntries;
//  258   index_t entrySize;
//  259   index_t firstEntry = pRequest->iIndex;
//  260   index_t i;
//  261   ztcIBData_t const *pIBData;
//  262   index_t totalDataSize;
//  263 
//  264   for (i = 0, pIBData = NULL; i < NumberOfElements(maZtcIBData); ++i) {
//  265     if (pRequest->iId == maZtcIBData[i].id) {
//  266       pIBData = &maZtcIBData[i];
//  267       break;
//  268     }
//  269   }
//  270 
//  271   if (!pIBData) {
//  272     ZtcError(gZtcUnknownIBIdentifier_c);
//  273     return;
//  274   }
//  275 
//  276   if (pIBData->access != mZtcIBRW) {
//  277     gZtcPacketToClient.structured.payload[0] = gZtcReadOnly_c;
//  278     return;
//  279   }
//  280 
//  281   entrySize = pIBData->entrySize;
//  282   totalDataSize = (index_t) (entriesToSet * entrySize);
//  283 
//  284   /* Check each of these conditions separately, to catch overflows. */
//  285   if (  (firstEntry >= pIBData->maxEntries)
//  286       || (firstEntry + entriesToSet > pIBData->maxEntries)
//  287       || (totalDataSize > gZtcPacketFromClient.structured.header.len)) {
//  288     gZtcPacketToClient.structured.payload[0] = gZtcTooBig_c;
//  289     return;
//  290   }
//  291 
//  292   FLib_MemCpy((uint8_t *) pIBData->pTable + (index_t) (entrySize * firstEntry),
//  293               (void *) &pRequest->pData,
//  294               totalDataSize);
//  295 
//  296 #undef pRequest
//  297 }                                       /* ZtcMsgSetIBReqFunc() */
//  298 
//  299 #endif /* gBeeStackIncluded_d */
//  300 #endif                                  /* #if gZtcIncluded_d */
// 
// 
// 0 bytes of memory
//
//Errors: none
//Warnings: none
