





























 















 















 















 






 

typedef signed    char  int8_t;
typedef unsigned  char  uint8_t;
typedef signed    short int16_t;
typedef unsigned  short uint16_t;
typedef signed    long  int32_t;
typedef unsigned  long  uint32_t;
typedef signed    long long int64_t;
typedef unsigned  long long uint64_t;

typedef signed    char  intn8_t;
typedef unsigned  char  uintn8_t;
typedef signed    short intn16_t;
typedef unsigned  short uintn16_t;
typedef signed    long  intn32_t;
typedef unsigned  long  uintn32_t;
typedef signed    long long intn64_t;
typedef unsigned  long long uintn64_t;

 
typedef uint8_t   bool_t;
typedef uintn8_t  booln_t;
 
typedef uint8_t   index_t;





typedef uint32_t zbClock32_t;
typedef uint32_t zbClock24_t;
typedef uint16_t zbClock16_t;


void Set2Bytes(void *ptr, uint16_t val);
bool_t IsEqual2BytesInt(void *ptr, uint16_t val);
void Inc4Bytes(uint8_t* aVal1, uint32_t Val2);

 

 
typedef uint8_t assertCode_t;

void BeeAppAssert(assertCode_t code);


 














 










 
 
 
 
 
 
 




 











 







 

 






 

 
typedef uint16_t event_t;

 
 
 
typedef index_t tsTaskID_t;

 
 
 
typedef uint8_t tsTaskPriority_t;

 
typedef void ( *pfTsTaskEventHandler_t )( event_t );

 
 
 
 
 
extern void IdleTask( event_t );





 

 
 
extern tsTaskID_t gIdleTaskID;
 
extern tsTaskID_t gMacTaskID_c;





 





 
void TS_ClearEvent
  (
  tsTaskID_t taskID,                     
  event_t events                         
  );


















 
tsTaskID_t TS_CreateTask
  (
  tsTaskPriority_t taskPriority,                 
  pfTsTaskEventHandler_t pfTaskEventHandler      
  );





 
void TS_DestroyTask
  (
  tsTaskID_t taskId                      
  );





 
void TS_Init( void );






 
bool_t TS_PendingEvents( void );





 
void TS_Scheduler( void );





 
void TS_SendEvent
  (
  tsTaskID_t taskID,                     
  event_t events                         
  );










 







 

 

 

 
 

 
 

 

 

 

 








 

 
typedef uint32_t tmrTimeInMilliseconds_t;

 
typedef uint16_t tmrTimeInMinutes_t;       

 
typedef uint16_t tmrTimeInSeconds_t;
 
typedef uint8_t tmrTimerID_t;

 

 
typedef uint8_t tmrTimerType_t;

 
 
 
 

 
typedef void (*pfTmrCallBack_t)(tmrTimerID_t);





 

 
 
 
extern tmrTimerID_t TMR_AllocateTimer(void);

 
 

 
 

 
 
 
extern bool_t TMR_AreAllTimersOff(void);

 
extern void TMR_FreeTimer(tmrTimerID_t timerID);

 
extern void TMR_Init(void);

 
extern bool_t TMR_IsTimerActive(tmrTimerID_t timerID);

 
 
 
extern void TMR_StartTimer
  (
  tmrTimerID_t timerId,
  tmrTimerType_t timerType,
  tmrTimeInMilliseconds_t timeInMilliseconds,
  void (*pfTmrCallBack)(tmrTimerID_t)
  );

 
 
 





 
 
extern void TMR_StartLowPowerTimer
  (
  tmrTimerID_t timerId,
  tmrTimerType_t timerType,
  uint32_t timeIn,
  void (*pfTmrCallBack)(tmrTimerID_t)
  );

 
extern void TMR_StartIntervalTimer
  (
  tmrTimerID_t timerId,
  tmrTimeInMilliseconds_t timeInMilliseconds,
  void (*pfTmrCallBack)(tmrTimerID_t)
  );

 
extern void TMR_StartSingleShotTimer
  (
  tmrTimerID_t timerId,
  tmrTimeInMilliseconds_t timeInMilliseconds,
  void (*pfTmrCallBack)(tmrTimerID_t)
  );

 
 
extern void TMR_StartMinuteTimer
  (
  tmrTimerID_t timerId, 
  tmrTimeInMinutes_t timeInMinutes, 
  void (*pfTmrCallBack)(tmrTimerID_t)
  );
  
 
 
extern void TMR_StartSecondTimer
  (
  tmrTimerID_t timerId, 
  tmrTimeInSeconds_t timeInSeconds, 
  void (*pfTmrCallBack)(tmrTimerID_t)
  ); 
 
 
 
 
 
extern void TMR_StopTimer(tmrTimerID_t timerID);

 
  
 
extern void TMR_SyncLpmTimers(uint32_t sleepDurationTmrTicks);





 
uint16_t TMR_NotCountedTicksBeforeSleep(void);

 

 

 
extern void TMR_Task(event_t events);



 
extern void TMR_NotifyClkChanged(uint32_t clkKhz);


 
 
 
extern void TMR_EnableTimer(tmrTimerID_t tmrID);






 











enum {
  gMacEventNwkMlmeMsgQueued_c = 1 << 0,  
  gMacEventNwkMcpsMsgQueued_c = 1 << 1,  
  gMacEventMemMlmeMsgQueued_c = 1 << 2,  
  gMacEventMemAspMsgQueued_c  = 1 << 3,  
  gMacEventPanIdConflict_c    = 1 << 4,  
  gMacEventGtsActionRequired_c= 1 << 5,  
  gMacEventBeaconCntrUpdated_c= 1 << 6   
};








  
  
enum {
  gAddrModeNone_c  = 0,
  gAddrModeShort_c = 2,
  gAddrModeLong_c  = 3,
  gScanModeFastED_c   = 4
};

  
  
enum {
  gLogicalChannel11_c = 11,
  gLogicalChannel12_c = 12,
  gLogicalChannel13_c = 13,
  gLogicalChannel14_c = 14,
  gLogicalChannel15_c = 15,
  gLogicalChannel16_c = 16,
  gLogicalChannel17_c = 17,
  gLogicalChannel18_c = 18,
  gLogicalChannel19_c = 19,
  gLogicalChannel20_c = 20,
  gLogicalChannel21_c = 21,
  gLogicalChannel22_c = 22,
  gLogicalChannel23_c = 23,
  gLogicalChannel24_c = 24,
  gLogicalChannel25_c = 25,
  gLogicalChannel26_c = 26
};

  
  
enum {
  gSecurityDisabled_c = 0,
  gSecurityEnabled_c  = 1
};

  
  
enum {
  gCapInfoAltPanCoord_c = 1<<0, 
  gCapInfoDeviceFfd_c   = 1<<1, 
  gCapInfoPowerMains_c  = 1<<2, 
  gCapInfoRxWhenIdle_c  = 1<<3, 
  gCapInfoSecurity_c    = 1<<6, 
  gCapInfoAllocAddr_c   = 1<<7  
};

  
enum {
  gScanModeED_c       = 0,
  gScanModeActive_c   = 1,
  gScanModePassive_c  = 2,
  gScanModeOrphan_c   = 3
};

  
enum {
  gSuperFrameSpecLsbBO_c            = 0x0F,
  gSuperFrameSpecLsbSO_c            = 0xF0,
  gSuperFrameSpecMsbFinalCapSlot_c  = 0x0F,
  gSuperFrameSpecMsbBattlifeExt_c   = 0x10,
  gSuperFrameSpecMsbReserved_c      = 0x20,
  gSuperFrameSpecMsbPanCoord_c      = 0x40,
  gSuperFrameSpecMsbAssocPermit_c   = 0x80
};

  
enum {
  gTxOptsAck_c      = 1<<0,
  gTxOptsGts_c      = 1<<1,
  gTxOptsIndirect_c = 1<<2,
  gTxOptsSecurity_c = 1<<3
};

  
enum {
  gGtsLength_c    = 0x0F, 
  gGtsDirection_c = 0x10, 
  gGtsType_c      = 0x20  
};

  
enum {
  
  gSecSuiteNoSecurity_c   = 0x00,
  
  gSecSuiteAesCtr_c       = 0x01,
  gSecSuiteAesCcm128_c    = 0x02,
  gSecSuiteAesCcm64_c     = 0x03,
  gSecSuiteAesCcm32_c     = 0x04,
  gSecSuiteAesCbcMac128_c = 0x05,
  gSecSuiteAesCbcMac64_c  = 0x06,
  gSecSuiteAesCbcMac32_c  = 0x07,
  
  gSecSuiteNone_c         = 0x08
};

  
enum {
  gOrder000s015ms_c = 0,  
  gOrder000s031ms_c = 1,  
  gOrder000s061ms_c = 2,  
  gOrder000s123ms_c = 3,  
  gOrder000s246ms_c = 4,  
  gOrder000s492ms_c = 5,  
  gOrder000s983ms_c = 6,  
  gOrder001s966ms_c = 7,  
  gOrder003s932ms_c = 8,  
  gOrder007s864ms_c = 9,  
  gOrder015s729ms_c = 10, 
  gOrder031s457ms_c = 11, 
  gOrder062s915ms_c = 12, 
  gOrder125s829ms_c = 13, 
  gOrder251s658ms_c = 14, 
  gOrderNone_c      = 15  
};

  
enum {
    
  gMPibRole_c                           = 0x20,
  gMPibLogicalChannel_c                 = 0x21,
  gMPibTreemodeStartTime_c              = 0x22,
  gMPibPanIdConflictDetection_c         = 0x23,
  gMPibBeaconResponseDenied_c           = 0x24,  
  gMPibNBSuperFrameInterval_c           = 0x25,
  gMPibBeaconResponseLQIThreshold_c     = 0x27,
    
  gMPibAckWaitDuration_c                = 0x40,
  gMPibAssociationPermit_c              = 0x41,
  gMPibAutoRequest_c                    = 0x42,
  gMPibBattLifeExt_c                    = 0x43,
  gMPibBattLifeExtPeriods_c             = 0x44,
  gMPibBeaconPayload_c                  = 0x45,	
  gMPibBeaconPayloadLength_c            = 0x46,
  gMPibBeaconOrder_c                    = 0x47,
  gMPibBeaconTxTime_c                   = 0x48,
  gMPibBsn_c                            = 0x49,
  gMPibCoordExtendedAddress_c           = 0x4A,
  gMPibCoordShortAddress_c              = 0x4B,
  gMPibDsn_c                            = 0x4C,
  gMPibGtsPermit_c                      = 0x4D,
  gMPibMaxCsmaBackoffs_c                = 0x4E,
  gMPibMinBe_c                          = 0x4F,
  gMPibPanId_c                          = 0x50,
  gMPibPromiscuousMode_c                = 0x51,
  gMPibRxOnWhenIdle_c                   = 0x52,
  gMPibShortAddress_c                   = 0x53,
  gMPibSuperFrameOrder_c                = 0x54,
  gMPibTransactionPersistenceTime_c     = 0x55,
    
  gMPibAclEntryDescriptorSet_c          = 0x70,
  gMPibAclEntryDescriptorSetSize_c      = 0x71,
  gMPibDefaultSecurity_c                = 0x72,
  gMPibDefaultSecurityMaterialLength_c  = 0x73,
  gMPibDefaultSecurityMaterial_c        = 0x74,
  gMPibDefaultSecuritySuite_c           = 0x75,
  gMPibSecurityMode_c                   = 0x76,
    
    
  gMPibAclEntryCurrent_c                = 0x77,
    
    
  gMPibAclEntryExtAddress_c             = 0x78,
  gMPibAclEntryShortAddress_c           = 0x79,
  gMPibAclEntryPanId_c                  = 0x7A,
  gMPibAclEntrySecurityMaterialLength_c = 0x7B,
  gMPibAclEntrySecurityMaterial_c       = 0x7C,
  gMPibAclEntrySecuritySuite_c          = 0x7D,  
};






enum {
  gNwkAssociateInd_c,
  gNwkAssociateCnf_c,
  gNwkDisassociateInd_c,
  gNwkDisassociateCnf_c,
  gNwkBeaconNotifyInd_c,
  gNwkGetCnf_c,
  gNwkGtsInd_c,
  gNwkGtsCnf_c,
  gNwkOrphanInd_c,
  gNwkResetCnf_c,
  gNwkRxEnableCnf_c,
  gNwkScanCnf_c,
  gNwkCommStatusInd_c,
  gNwkSetCnf_c,
  gNwkStartCnf_c,
  gNwkSyncLossInd_c,
  gNwkPollCnf_c,
  gNwkErrorCnf_c,
  gNwkBeaconStartInd_c,           
  gNwkMaintenanceScanCnf_c,       
  gNwkPollNotifyInd_c,            
  gNwkMaxPrimitives_c
};
typedef uint8_t primMlmeToNwk_t;

#pragma pack(1)
  
  
typedef struct panDescriptor_tag {
  uint8_t  coordAddress[8];
  uint8_t  coordPanId[2];
  uint8_t  coordAddrMode;
  uint8_t  logicalChannel;
  bool_t   securityUse;
  uint8_t  aclEntry;
  bool_t   securityFailure;
  uint8_t  superFrameSpec[2];
  bool_t   gtsPermit;
  uint8_t  linkQuality;
  uint8_t  timeStamp[3];
} panDescriptor_t;


  
  
typedef struct securityMaterial_tag {
  uint8_t key[16];
  uint8_t frameCounter[4];
  uint8_t keySeqCounter;
  uint8_t optFrameCounter[4];
  uint8_t optKeySeqCounter;
} securityMaterial_t;


  
typedef struct aclEntryDescriptor_tag {
  uint8_t aclExtendedAddress[8];      
  uint8_t aclShortAddress[2];         
  uint8_t aclPanId[2];                
  uint8_t aclSecurityMaterialLength;  
  uint8_t aclSecurityMaterial[sizeof(securityMaterial_t)]; 
  uint8_t aclSecuritySuite;           
} aclEntryDescriptor_t;



  
typedef struct nwkAssociateInd_tag {
  uint8_t  deviceAddress[8];
  bool_t   securityUse;
  uint8_t  AclEntry;
  uint8_t  capabilityInfo;
} nwkAssociateInd_t;

  
typedef struct nwkAssociateCnf_tag {
  uint8_t  assocShortAddress[2];
  uint8_t  status;
} nwkAssociateCnf_t;

  
typedef struct nwkDisassociateInd_tag {
  uint8_t  deviceAddress[8];
  bool_t   securityUse;
  uint8_t  aclEntry;
  uint8_t  disassociateReason;
} nwkDisassociateInd_t;

  
typedef struct nwkDisassociateCnf_tag {
  uint8_t  status;
} nwkDisassociateCnf_t;

  
typedef struct nwkBeaconNotifyInd_tag {
  uint8_t  bsn;
  uint8_t  pendAddrSpec;
  uint8_t  sduLength;
  uint8_t  *pAddrList;   
  panDescriptor_t *pPanDescriptor;  
  uint8_t  *pSdu;        
  void     *pBufferRoot; 
                         
} nwkBeaconNotifyInd_t;


typedef struct nwkPollNotifyInd_tag {
  uint8_t  srcAddrMode;
	uint8_t  srcAddr[8];
	uint8_t  srcPanId[2];
} nwkPollNotifyInd_t;

  
typedef struct nwkGetCnf_tag {
  uint8_t  status;
  uint8_t  pibAttribute;
  uint8_t  *pibAttributeValue;
} nwkGetCnf_t;

  
typedef struct nwkGtsInd_tag {
  uint8_t  devAddress[2];
  bool_t   securityUse;
  uint8_t  AclEntry;
  uint8_t  gtsCharacteristics;
} nwkGtsInd_t;

  
typedef struct nwkGtsCnf_tag {
  uint8_t  status;
  uint8_t  gtsCharacteristics;
} nwkGtsCnf_t;

  
typedef struct nwkOrphanInd_tag {
  uint8_t  orphanAddress[8];
  bool_t   securityUse;
  uint8_t  AclEntry;
} nwkOrphanInd_t;

  
typedef struct nwkResetCnf_tag {
  uint8_t  status;
} nwkResetCnf_t;

  
typedef struct nwkRxEnableCnf_tag {
  uint8_t  status;
} nwkRxEnableCnf_t;


struct panDescriptorBlock_tag {  
  panDescriptor_t descriptorList[5];
  uint8_t descriptorCount;
  struct panDescriptorBlock_tag *pNext;  
};

typedef struct panDescriptorBlock_tag panDescriptorBlock_t;
  


  
typedef struct nwkScanCnf_tag {
  uint8_t  status;
  uint8_t  scanType;
  uint8_t  resultListSize;
  uint8_t  unscannedChannels[4];
  union {  
    uint8_t *pEnergyDetectList;                  
    panDescriptorBlock_t *pPanDescriptorBlocks; 
  } resList;
} nwkScanCnf_t;

  
typedef struct nwkCommStatusInd_tag {
  uint8_t  srcAddress[8];
  uint8_t  panId[2];
  uint8_t  srcAddrMode;
  uint8_t  destAddress[8];
  uint8_t  destAddrMode;
  uint8_t  status;
} nwkCommStatusInd_t;

  
typedef struct nwkSetCnf_tag {
  uint8_t  status;
  uint8_t  pibAttribute;
} nwkSetCnf_t;

  
typedef struct nwkStartCnf_tag {
  uint8_t  status;
} nwkStartCnf_t;

  
typedef struct nwkSyncLossInd_tag {
  uint8_t  lossReason;
} nwkSyncLossInd_t;

  
typedef struct nwkPollCnf_tag {
  uint8_t  status;
} nwkPollCnf_t;

  
typedef struct nwkErrorCnf_tag {
  uint8_t  status;
} nwkErrorCnf_t;

  
typedef struct nwkBeaconStartInd_tag {
  uint8_t  source;
} nwkBeaconStartInd_t;

  
typedef struct nwkMaintenanceScanCnf_tag {
  uint8_t  status;
} nwkMaintenanceScanCnf_t;

  
typedef struct nwkMessage_tag {
  primMlmeToNwk_t msgType;
  union {
    nwkAssociateInd_t       associateInd;
    nwkAssociateCnf_t       associateCnf;
    nwkDisassociateInd_t    disassociateInd;
    nwkDisassociateCnf_t    disassociateCnf;
    nwkBeaconNotifyInd_t    beaconNotifyInd;
    nwkGetCnf_t             getCnf;         
    nwkGtsInd_t             gtsInd;
    nwkGtsCnf_t             gtsCnf;
    nwkOrphanInd_t          orphanInd;
    nwkResetCnf_t           resetCnf;       
    nwkRxEnableCnf_t        rxEnableCnf;
    nwkScanCnf_t            scanCnf;
    nwkCommStatusInd_t      commStatusInd;
    nwkSetCnf_t             setCnf;         
    nwkStartCnf_t           startCnf;
    nwkSyncLossInd_t        syncLossInd;
    nwkPollCnf_t            pollCnf;
    nwkErrorCnf_t           errorCnf;       
    nwkBeaconStartInd_t     beaconStartInd;
    nwkMaintenanceScanCnf_t maintenanceScanCnf;
    nwkPollNotifyInd_t      pollNotifyInd;
  } msgData;
} nwkMessage_t;








  
  
enum {
  gMcpsDataCnf_c,
  gMcpsDataInd_c,
  gMcpsPurgeCnf_c,
  gMcpsPromInd_c,  
  gMcpsToNwkMaxPrimitives_c
};
typedef uint8_t primMcpsToNwk_t;

  
typedef struct mcpsDataCnf_tag {
  uint8_t  msduHandle;
  uint8_t  status;
} mcpsDataCnf_t;

  
typedef struct mcpsDataInd_tag {
  uint8_t  dstAddr[8];    
  uint8_t  dstPanId[2];   
  uint8_t  dstAddrMode;
  uint8_t  srcAddr[8];    
  uint8_t  srcPanId[2];   
  uint8_t  srcAddrMode;
  uint8_t  msduLength;    
  uint8_t  mpduLinkQuality;
  bool_t   securityUse; 
  uint8_t  aclEntry;
  uint8_t  *pMsdu;        
} mcpsDataInd_t;

  
typedef struct mcpsPurgeCnf_tag {
  uint8_t  msduHandle;
  uint8_t  status;
} mcpsPurgeCnf_t;

  
typedef struct mcpsPromInd_tag {
  uint8_t  mpduLinkQuality;
  zbClock32_t timeStamp;
  uint8_t  msduLength;    
  uint8_t  *pMsdu;        
} mcpsPromInd_t;

  
typedef struct mcpsToNwkMessage_tag {
  primMcpsToNwk_t msgType;
  union {
    mcpsDataCnf_t   dataCnf;
    mcpsDataInd_t   dataInd;
    mcpsPurgeCnf_t  purgeCnf;
    mcpsPromInd_t   promInd;
    void            *dummyAlign;	
  } msgData;
} mcpsToNwkMessage_t;








  
  
  
  
enum {
  gMlmeAssociateReq_c,
  gMlmeAssociateRes_c,
  gMlmeDisassociateReq_c,
  gMlmeGetReq_c,
  gMlmeGtsReq_c,
  gMlmeOrphanRes_c,
  gMlmeResetReq_c,
  gMlmeRxEnableReq_c,
  gMlmeScanReq_c,
  gMlmeSetReq_c,
  gMlmeStartReq_c,
  gMlmeSyncReq_c,
  gMlmePollReq_c,
  gMlmeMaintenanceScanReq_c,    
  gMlmeInternalPanConflictDetected_c,
  gMlmeMaxPrimitives_c
};
typedef uint8_t primNwkToMlme_t;

  
typedef struct mlmeAssociateReq_tag {
  uint8_t  coordAddress[8];
  uint8_t  coordPanId[2];
  uint8_t  coordAddrMode;
  uint8_t  logicalChannel;
  bool_t   securityEnable;
  uint8_t  capabilityInfo;
} mlmeAssociateReq_t;

  
typedef struct mlmeAssociateRes_tag {
  uint8_t  deviceAddress[8];
  uint8_t  assocShortAddress[2];
  bool_t   securityEnable;
  uint8_t  status;  
} mlmeAssociateRes_t;

  
typedef struct mlmeDisassociateReq_tag {
  uint8_t  deviceAddress[8];
  bool_t   securityEnable;
  uint8_t  disassociateReason;
} mlmeDisassociateReq_t;

  
  
  
typedef struct mlmeGetReq_tag {
  uint8_t  pibAttribute;
  uint8_t  *pibAttributeValue;  
} mlmeGetReq_t;

  
typedef struct mlmeGtsReq_tag {
  bool_t   securityEnable;
  uint8_t  gtsCharacteristics;
} mlmeGtsReq_t;

  
typedef struct mlmeOrphanRes_tag {
  uint8_t  orphanAddress[8];
  uint8_t  shortAddress[2];
  bool_t   securityEnable;
  bool_t   associatedMember;
} mlmeOrphanRes_t;

  
typedef struct mlmeResetReq_tag {
  bool_t   setDefaultPib;
} mlmeResetReq_t;

  
typedef struct mlmeRxEnableReq_tag {
  bool_t   deferPermit;
  uint8_t  rxOnTime[3];
  uint8_t  rxOnDuration[3];
} mlmeRxEnableReq_t;

  
typedef struct mlmeScanReq_tag {
  uint8_t  scanType;
  uint8_t  scanChannels[4];
  uint8_t  scanDuration;
} mlmeScanReq_t;

  
  
  
typedef struct mlmeSetReq_tag {
  uint8_t   pibAttribute;
  uint8_t   *pibAttributeValue;
} mlmeSetReq_t;

  
typedef struct mlmeStartReq_tag {
  uint8_t  panId[2];
  uint8_t  logicalChannel;
  uint8_t  beaconOrder;
  uint8_t  superFrameOrder;
  
  bool_t   panCoordinator;
  bool_t   batteryLifeExt;
  bool_t   coordRealignment;
  bool_t   securityEnable;
} mlmeStartReq_t;

  
typedef struct mlmeSyncReq_tag {
  uint8_t  logicalChannel;
  bool_t   trackBeacon;
} mlmeSyncReq_t;

  
typedef struct mlmePollReq_tag {
  uint8_t  coordAddress[8];
  uint8_t  coordPanId[2];
  uint8_t  coordAddrMode;
  bool_t   securityEnable;
} mlmePollReq_t;

  
typedef struct mlmeMessage_tag {
  primNwkToMlme_t msgType;
  union {
    mlmeAssociateReq_t    associateReq;
    mlmeAssociateRes_t    associateRes;
    mlmeDisassociateReq_t disassociateReq;
    mlmeGetReq_t          getReq;
    mlmeGtsReq_t          gtsReq;
    mlmeOrphanRes_t       orphanRes;
    mlmeResetReq_t        resetReq;
    mlmeRxEnableReq_t     rxEnableReq;
    mlmeScanReq_t         scanReq;
    mlmeSetReq_t          setReq;
    mlmeStartReq_t        startReq;
    mlmeSyncReq_t         syncReq;
    mlmePollReq_t         pollReq;
  } msgData;
} mlmeMessage_t;








  
  
enum {
  gMcpsDataReq_c,
  gMcpsPurgeReq_c,
  gNwkToMcpsMaxPrimitives_c
};
typedef uint8_t primNwkToMcps_t;

typedef struct mcpsDataReq_tag {
  uint8_t  dstAddr[8];  
  uint8_t  dstPanId[2]; 
  uint8_t  dstAddrMode;
  uint8_t  srcAddr[8];  
  uint8_t  srcPanId[2]; 
  uint8_t  srcAddrMode;
  uint8_t  msduLength;  
  uint8_t  msduHandle; 
  uint8_t  txOptions;
  uint8_t  *pMsdu;     
} mcpsDataReq_t;

  
typedef struct mcpsPurgeReq_tag {
  uint8_t  msduHandle;
} mcpsPurgeReq_t;

  
typedef struct nwkToMcpsMessage_tag {
  primNwkToMcps_t msgType;
  union {
    mcpsDataReq_t         dataReq;
    mcpsPurgeReq_t        purgeReq;
    void *                dummyAlign; 
  } msgData;
} nwkToMcpsMessage_t;

#pragma pack()




 

 





 










 
extern uint8_t aMaxFrameRetries;
extern uint8_t gLowLatencyTX;

  

  

  

  
  













 


void Mlme_Main(event_t events);











 
uint8_t NWK_MLME_SapHandler(mlmeMessage_t *pMsg);










 
uint8_t NWK_MCPS_SapHandler(nwkToMcpsMessage_t *pMsg);










 
uint8_t MLME_NWK_SapHandler(nwkMessage_t *pMsg);

extern  uint8_t (*pfMLME_NWK_SapHandler)(nwkMessage_t* pMsg);










 
uint8_t MCPS_NWK_SapHandler(mcpsToNwkMessage_t *pMsg);

extern  uint8_t (*pfMCPS_NWK_SapHandler)(nwkMessage_t* pMsg);







 

extern void ZTC_TaskEventMonitor( uint8_t sapId, uint8_t* pMsg, uint8_t status );

extern  void (*pfZTC_TaskEventMonitor)( uint8_t sapId, uint8_t* pMsg, uint8_t status );





 

extern void TS_SendEvent( tsTaskID_t taskID, event_t events );

extern  void (*pfTS_SendEvent)( tsTaskID_t taskID, event_t events );

extern tsTaskID_t gMacTaskID_c;

extern tsTaskID_t gMacTaskIDROMCopy_c;





 

extern void  (*pfTMR_StartTimer)(tmrTimerID_t timerId, 
                            tmrTimerType_t timerType, 
                            tmrTimeInMilliseconds_t timeInMilliseconds,
                            void (*pfTmrCallBack)(tmrTimerID_t)
             );
extern bool_t (*pfTMR_IsTimerActive)(tmrTimerID_t timerID);
extern tmrTimerID_t (*pfTMR_AllocateTimer)(void);
extern void (*pfTMR_StopTimer)(tmrTimerID_t timerID);







 

extern aclEntryDescriptor_t gPIBaclEntryDescriptorSet[];
extern uint8_t gNumAclEntryDescriptors;

extern aclEntryDescriptor_t *gpPIBaclEntryDescriptorSetROMCopy;
extern uint8_t gNumAclEntryDescriptorsROMCopy;








 

extern bool_t MM_UpdateMsgTracking(const void *pBlock, const bool_t Alloc);
extern void   MM_InitMsgTracking(void);
extern void   MM_AddMsgToTrackingArray(uint8_t Index, uint32_t Addr);

extern bool_t (*pfMM_UpdateMsgTracking)(const void *pBlock, const bool_t Alloc);
extern void   (*pfMM_InitMsgTracking)(void);
extern void   (*pfMM_AddMsgToTrackingArray)(uint8_t Index, uint32_t Addr);













 







 





 





 





 





 











 
void FLib_MemCpy
  (
  void *pDst,     
  void *pSrc,     
  uint16_t cBytes 
  );











 
 void FLib_MemSet
  (
  void *pData,    
  uint8_t value,  
  uint16_t cBytes 
  );











 
void FLib_MemCpyReverseOrder
  (
  void *pDst, 
  void *pSrc, 
  uint8_t n   
  );











 
bool_t FLib_MemCmp
  (
  void *pData1,   
  void *pData2,   
  uint16_t cBytes 
  );










 
void FLib_MemInPlaceCpy
  (
  void *pDst, 
  void *pSrc, 
  uint8_t n   
  );










 











 











 








 






 

  

  

  

  
  


  

  

  

  
  
  






 
#pragma pack(1)
  
  
  
  
  
typedef struct listHeader_tag {
  struct listHeader_tag *pNext;
  struct pools_tag *pParentPool;
} listHeader_t;

  
  
typedef struct anchor_tag {
  listHeader_t *pHead;
  listHeader_t *pTail;
} anchor_t, msgQueue_t;

  
  
typedef struct pools_tag {
  anchor_t anchor; 
  uint8_t nextBlockSize;
  uint8_t blockSize;
  uint8_t padding[2];
} pools_t;

  
  
typedef struct poolInfo_tag {
  uint8_t poolSize;
  uint8_t blockSize;
  uint8_t nextBlockSize;
  uint8_t padding[1];
} poolInfo_t;

typedef struct MsgTracking_tag {
  uint32_t MsgAddr;        
 
  uint32_t AllocAddr;       
  uint32_t FreeAddr;        
  uint16_t  AllocCounter;    
  uint16_t  FreeCounter;     
  uint8_t  AllocStatus;     
} MsgTracking_t;
#pragma pack()





 











 
void *MM_AllocPool
  (
  pools_t *pPools, 
  uint8_t numBytes 
  );











 
void *MM_Alloc
  (
  uint8_t numBytes 
  );










 
void MM_Free
  (
  void *pBlock 
  );


























 
void MM_Init
  (
  uint8_t *pHeap, 
  const poolInfo_t *pPoolInfo,  
  pools_t *pPools 
  );





















 
void MM_AddToPool
  (
  pools_t *pPool,
  void *pBlock
  );












 
pools_t *MM_GetMacPool
  (
  uint8_t size 
  );












 
void List_ClearAnchor
  (
  anchor_t *pAnchor 
  );












 
void List_AddTail
  (
  anchor_t *pAnchor, 
  void *pBlock       
  );












 
void List_AddHead
  (
  anchor_t *pAnchor, 
  void *pBlock       
  );










 
void *List_RemoveHead
  (
  anchor_t *pAnchor  
  );






 

  
typedef union {
  nwkMessage_t    nwkMessage;
  panDescriptor_t panDescriptor;
} block1sizeOrigin_t;


  






 
struct rxPacket_tag {
  uint8_t frameLength;
  uint8_t linkQuality;
  uint8_t headerLength;
  uint8_t armPaddings;
  uint8_t rxData[(143)];
  zbClock32_t timeStamp;  
};                

struct txPacket_tag {
  uint8_t frameLength;
  uint8_t txInfo;
  struct {
    uint8_t csmaCaNb;
    uint8_t csmaCaBe;
    uint8_t txCount;
  } csmaAndTx;
  uint16_t expireTime;
  uint8_t msduHandle;
  uint8_t txData[(143)];
};

  


  

  
  
  
  
  
  

  
  
  


  





  

  

  











 

extern uintn8_t maMacHeap[];
extern poolInfo_t poolInfo[];
extern pools_t maMmPools[];
extern pools_t *pLastPool;
extern pools_t *pSecondLastPool;


extern uintn8_t* maMacHeapROMCopy;
extern poolInfo_t* poolInfoROMCopy;
extern pools_t* maMmPoolsROMCopy;
extern pools_t* pLastPoolROMCopy;
extern pools_t *pSecondLastPoolROMCopy;


 
uint32_t getSP();




 

  
uint8_t maMacHeap[((((5)) * ((((((sizeof(block1sizeOrigin_t))) + (sizeof(uint8_t *) - 1)) / sizeof(uint8_t *)) * sizeof(uint8_t *)) + sizeof(listHeader_t))) + (((6 - 1)) * ((((((((((((((sizeof(struct rxPacket_tag))) > ((sizeof(struct txPacket_tag)))) ? ((sizeof(struct rxPacket_tag))) : ((sizeof(struct txPacket_tag)))))) > ((((((sizeof(nwkToMcpsMessage_t) + (118))) > ((sizeof(mcpsToNwkMessage_t) + (118)))) ? ((sizeof(nwkToMcpsMessage_t) + (118))) : ((sizeof(mcpsToNwkMessage_t) + (118))))))) ? ((((((sizeof(struct rxPacket_tag))) > ((sizeof(struct txPacket_tag)))) ? ((sizeof(struct rxPacket_tag))) : ((sizeof(struct txPacket_tag)))))) : ((((((sizeof(nwkToMcpsMessage_t) + (118))) > ((sizeof(mcpsToNwkMessage_t) + (118)))) ? ((sizeof(nwkToMcpsMessage_t) + (118))) : ((sizeof(mcpsToNwkMessage_t) + (118))))))))) + (sizeof(uint8_t *) - 1)) / sizeof(uint8_t *)) * sizeof(uint8_t *)) + sizeof(listHeader_t))) + ((1) * ((((((((((((((sizeof(struct rxPacket_tag))) > ((sizeof(struct txPacket_tag)))) ? ((sizeof(struct rxPacket_tag))) : ((sizeof(struct txPacket_tag)))))) > ((((((sizeof(nwkToMcpsMessage_t) + (118))) > ((sizeof(mcpsToNwkMessage_t) + (118)))) ? ((sizeof(nwkToMcpsMessage_t) + (118))) : ((sizeof(mcpsToNwkMessage_t) + (118))))))) ? ((((((sizeof(struct rxPacket_tag))) > ((sizeof(struct txPacket_tag)))) ? ((sizeof(struct rxPacket_tag))) : ((sizeof(struct txPacket_tag)))))) : ((((((sizeof(nwkToMcpsMessage_t) + (118))) > ((sizeof(mcpsToNwkMessage_t) + (118)))) ? ((sizeof(nwkToMcpsMessage_t) + (118))) : ((sizeof(mcpsToNwkMessage_t) + (118))))))))) + (sizeof(uint8_t *) - 1)) / sizeof(uint8_t *)) * sizeof(uint8_t *)) + sizeof(listHeader_t))) + ((0) * (((((0) + (sizeof(uint8_t *) - 1)) / sizeof(uint8_t *)) * sizeof(uint8_t *)) + sizeof(listHeader_t))))];

  
pools_t maMmPools[3];

  
  
  
  
  
  
  
  
  
  

  
  
  
  
  
poolInfo_t poolInfo[3] = {
  (5), (((((sizeof(block1sizeOrigin_t))) + (sizeof(uint8_t *) - 1)) / sizeof(uint8_t *)) * sizeof(uint8_t *)), (((((((((((((sizeof(struct rxPacket_tag))) > ((sizeof(struct txPacket_tag)))) ? ((sizeof(struct rxPacket_tag))) : ((sizeof(struct txPacket_tag)))))) > ((((((sizeof(nwkToMcpsMessage_t) + (118))) > ((sizeof(mcpsToNwkMessage_t) + (118)))) ? ((sizeof(nwkToMcpsMessage_t) + (118))) : ((sizeof(mcpsToNwkMessage_t) + (118))))))) ? ((((((sizeof(struct rxPacket_tag))) > ((sizeof(struct txPacket_tag)))) ? ((sizeof(struct rxPacket_tag))) : ((sizeof(struct txPacket_tag)))))) : ((((((sizeof(nwkToMcpsMessage_t) + (118))) > ((sizeof(mcpsToNwkMessage_t) + (118)))) ? ((sizeof(nwkToMcpsMessage_t) + (118))) : ((sizeof(mcpsToNwkMessage_t) + (118))))))))) + (sizeof(uint8_t *) - 1)) / sizeof(uint8_t *)) * sizeof(uint8_t *)), 0,
  (6 - 1), (((((((((((((sizeof(struct rxPacket_tag))) > ((sizeof(struct txPacket_tag)))) ? ((sizeof(struct rxPacket_tag))) : ((sizeof(struct txPacket_tag)))))) > ((((((sizeof(nwkToMcpsMessage_t) + (118))) > ((sizeof(mcpsToNwkMessage_t) + (118)))) ? ((sizeof(nwkToMcpsMessage_t) + (118))) : ((sizeof(mcpsToNwkMessage_t) + (118))))))) ? ((((((sizeof(struct rxPacket_tag))) > ((sizeof(struct txPacket_tag)))) ? ((sizeof(struct rxPacket_tag))) : ((sizeof(struct txPacket_tag)))))) : ((((((sizeof(nwkToMcpsMessage_t) + (118))) > ((sizeof(mcpsToNwkMessage_t) + (118)))) ? ((sizeof(nwkToMcpsMessage_t) + (118))) : ((sizeof(mcpsToNwkMessage_t) + (118))))))))) + (sizeof(uint8_t *) - 1)) / sizeof(uint8_t *)) * sizeof(uint8_t *)), (((((((((((((sizeof(struct rxPacket_tag))) > ((sizeof(struct txPacket_tag)))) ? ((sizeof(struct rxPacket_tag))) : ((sizeof(struct txPacket_tag)))))) > ((((((sizeof(nwkToMcpsMessage_t) + (118))) > ((sizeof(mcpsToNwkMessage_t) + (118)))) ? ((sizeof(nwkToMcpsMessage_t) + (118))) : ((sizeof(mcpsToNwkMessage_t) + (118))))))) ? ((((((sizeof(struct rxPacket_tag))) > ((sizeof(struct txPacket_tag)))) ? ((sizeof(struct rxPacket_tag))) : ((sizeof(struct txPacket_tag)))))) : ((((((sizeof(nwkToMcpsMessage_t) + (118))) > ((sizeof(mcpsToNwkMessage_t) + (118)))) ? ((sizeof(nwkToMcpsMessage_t) + (118))) : ((sizeof(mcpsToNwkMessage_t) + (118))))))))) + (sizeof(uint8_t *) - 1)) / sizeof(uint8_t *)) * sizeof(uint8_t *)), 0,
  1, (((((((((((((sizeof(struct rxPacket_tag))) > ((sizeof(struct txPacket_tag)))) ? ((sizeof(struct rxPacket_tag))) : ((sizeof(struct txPacket_tag)))))) > ((((((sizeof(nwkToMcpsMessage_t) + (118))) > ((sizeof(mcpsToNwkMessage_t) + (118)))) ? ((sizeof(nwkToMcpsMessage_t) + (118))) : ((sizeof(mcpsToNwkMessage_t) + (118))))))) ? ((((((sizeof(struct rxPacket_tag))) > ((sizeof(struct txPacket_tag)))) ? ((sizeof(struct rxPacket_tag))) : ((sizeof(struct txPacket_tag)))))) : ((((((sizeof(nwkToMcpsMessage_t) + (118))) > ((sizeof(mcpsToNwkMessage_t) + (118)))) ? ((sizeof(nwkToMcpsMessage_t) + (118))) : ((sizeof(mcpsToNwkMessage_t) + (118))))))))) + (sizeof(uint8_t *) - 1)) / sizeof(uint8_t *)) * sizeof(uint8_t *)), 0, 0,
};

pools_t *pLastPool = &maMmPools[2];
  pools_t *pSecondLastPool = &maMmPools[2-1];

  
  aclEntryDescriptor_t gPIBaclEntryDescriptorSet[4];

    
  uint8_t gNumAclEntryDescriptors = 4;
const uint8_t TotalNoOfMsgs_c = (6 + 5);

MsgTracking_t MsgTrackingArray[(6 + 5)] = 0;
uint8_t NoOfWrongAddrs = 0;

extern uint32_t MM_GetLinkRegister(void);






 





 









 

void MM_InitMsgTracking(void) {
   FLib_MemSet((uint8_t* )&MsgTrackingArray[0],0,(sizeof(MsgTracking_t)/sizeof(uint8_t)) * TotalNoOfMsgs_c);
   NoOfWrongAddrs = 0;
}










 
void   MM_AddMsgToTrackingArray(uint8_t Index, uint32_t Addr) {
      MsgTrackingArray[Index].MsgAddr = Addr;  
}










   
int8_t MM_GetMsgIndex(const uint32_t MsgAddr)
{
  uint8_t i;    
    
  for (i = 0; i < TotalNoOfMsgs_c; i++) 
  {      
     
    if (MsgAddr == MsgTrackingArray[i].MsgAddr)
      return i;
  }
     
  NoOfWrongAddrs++;
  return -1;
}












   
bool_t MM_UpdateMsgTracking(const void *pBlock, const bool_t Alloc)
{
  int8_t index = MM_GetMsgIndex((uint32_t)pBlock);
  if (index >= 0)
  {          
    
    if (MsgTrackingArray[index].AllocStatus == Alloc)
    {      
     return 0;
    } 
        
    MsgTrackingArray[index].AllocStatus = Alloc;
 
       
    if (Alloc) {
      MsgTrackingArray[index].AllocCounter++;
      MsgTrackingArray[index].AllocAddr = MM_GetLinkRegister();
    }
    else {
      MsgTrackingArray[index].FreeCounter++;        
      MsgTrackingArray[index].FreeAddr = MM_GetLinkRegister();
    }
    return 1;
      
  }      
  else  
    return 0;
}

