










 














 






 

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













 






 

  






 





 













 

  
  












 


  
  
  




  











 
void MacPhyInit_Initialize
(
 void                            
);










 
void MacPhyInit_WriteExtAddress
(
  uint8_t *pExtendedAddress 
                            
);










 
uint8_t *MacPhyInit_ReadExtAddress(void);


 










 



 


 
 
 











































 





 











 

 
 
 
 

 
 
typedef uint16_t NvSaveInterval_t;

 
 
typedef uint16_t NvSaveCounter_t;


 

 
 
 
extern void BUtl_SetReceiverOff(void);
extern void BUtl_SetReceiverOn(void);





 

 
 
 

typedef uint8_t NvDataSetID_t;


 
typedef uint16_t NvDataItemLength_t;

 
typedef struct NvDataItemDescription_tag {
  void *pointer;
  NvDataItemLength_t length;
} NvDataItemDescription_t;

 
 
 
 
 
 
 
typedef struct NvDataSetDescription_tag {
  NvDataSetID_t dataSetID;
  NvDataItemDescription_t const *pItemDescriptions;
} NvDataSetDescription_t;

 
 
extern NvDataSetDescription_t const NvDataSetTable[2];





 









































 
extern void NvSaveOnIdle(NvDataSetID_t dataSetID);
extern void NvSaveOnInterval(NvDataSetID_t dataSetID);
extern void NvSaveOnCount(NvDataSetID_t dataSetID);

 
 
extern void NvSetMinimumTicksBetweenSaves(NvSaveInterval_t newInterval);

 
 
extern void NvSetCountsBetweenSaves(NvSaveCounter_t newCounter);

 
extern bool_t NvIsDataSetDirty(NvDataSetID_t dataSetID);

 
extern void NvModuleInit(void);

 
 
 
extern bool_t NvRestoreDataSet(NvDataSetID_t dataSetID);

 
 
 
extern void NvIdle(void);

 
 
 
 
 
 
 
 
 
extern bool_t NvTimerTick(bool_t countTick);

 
 
 
 
extern void NvClearCriticalSection(void);
extern void NvSetCriticalSection(void);















 













 



 






 

 
 
 
 
 
 
 

 

 

 

 

 











 


 












 

#pragma pack(push,current)
#pragma pack(1)

 
 
 
typedef struct FreescaleVersionStrings_tag {
  uint16_t NV_RAM_Version;
  uint8_t MAC_Version[4];
  uint8_t PHY_Version[4];
  uint8_t STACK_Version[4];
  uint8_t APP_Version[4];
  uint8_t HWName_Revision[4];
  uint8_t SerialNumber[4];
  uint16_t ProductionSite;
  uint8_t CountryCode;
  uint8_t ProductionWeekCode;
  uint8_t ProductionYearCode;
  uint8_t MCU_Manufacture;
  uint8_t MCU_Version;
  uint8_t NOT_USED;
} FreescaleVersionStrings_t;

 
 
 
 
 
 
 
 
typedef struct HardwareParameters_tag {
  unsigned char initialString[ sizeof( "Delim" )];
  uint8_t  Bus_Frequency_In_MHz;
  uint8_t  MAC_Address[8];
  uint8_t  defaultPowerLevel;
  uint8_t  dualPortRFOperation;
  uint8_t  paPowerLevelLimits[16];
  uint8_t  ccaThreshold;
  bool_t   enableComplementatyPAOutput; 
  bool_t   gSystemClock24MHz_c;
  uint8_t  gXtalCTune_c;
  uint8_t  gXtalFTune_c;
  uint8_t  gDigitalClock_PN_c;
  uint8_t  gDigitalClock_RN_c;
  uint16_t gMACA_Clock_DIV_c;
  uint32_t gDigitalClock_RAFC_c;
  uint8_t  gaRFSynVCODivI_c[16];
  uint32_t gaRFSynVCODivF_c[16];
  uint8_t  paPowerLevelLock;
  unsigned char terminalString[ sizeof( "Delim" )];
  } HardwareParameters_t;


#pragma pack(pop,current)




 


extern HardwareParameters_t const gHardwareParameters;



extern FreescaleVersionStrings_t const gFreescaleVersionStrings;
extern HardwareParameters_t const gHardwareParametersInit;





 















 













 













 










 





 







 





 
typedef volatile union
{
  uint32_t word;
  struct
  {
    uint32_t pwrSource:2;
    uint32_t pads1P8VSel:1;
    uint32_t spiF1P8VSel:1;
    uint32_t jtagEn:1;
    uint32_t xtal32Exists:1;
    uint32_t:2;
    uint32_t xtalClkDiv:6;
  } bit;
} crmSysCntlReg_t;


typedef volatile union
{
  uint32_t word;
  struct
  {
    uint32_t timerWuEn:1;
    uint32_t rtcWuEn:1;
    uint32_t hostWake:1;
    uint32_t autoADC:1;
    uint32_t extWuEn:4;
    uint32_t extWuEdge:4;
    uint32_t extWuPol:4;
    uint32_t timerWuIEn:1;
    uint32_t rtcWuIEn:1;
    uint32_t:2;
    uint32_t extWuIEn:4;
    uint32_t:4;
    uint32_t extOutPol:4;
  } bit;
} crmWuCntlReg_t;


typedef volatile union
{
  uint32_t word;
  struct
  {
    uint32_t hib:1;
    uint32_t doze:1;
    uint32_t :2;
    uint32_t ramRet:2;
    uint32_t mcuRet:1;
    uint32_t digPadEn:1;
  } bit;
} crmSleepCntlReg_t;


typedef volatile union
{
  uint32_t word;
  struct
  {
    uint32_t bsEn :1;
    uint32_t wait4Irq:1;
    uint32_t bsManEn:1;
    uint32_t armClkGEn:1;
    uint32_t :4;
    uint32_t armOffTime:6;              
  } bit;
} crmBSCntlReg_t;


typedef volatile union
{
  uint32_t word;
  struct
  {
    uint32_t copEn:1;
    uint32_t copOut:1;
    uint32_t copWP:1;
    uint32_t :5;
    uint32_t copTimeOut:7;
    uint32_t :1;
    uint32_t copCount:7;                 
  } bit;
} crmCopCntlReg_t;


typedef volatile union
{
  uint32_t word;
  struct
  {
    uint32_t sleepSync:1;
    uint32_t hibWuEvt:1;
    uint32_t dozeWuEvt:1;
    uint32_t rtcWuEvt:1;
    uint32_t extWuEvt:4;
    uint32_t xtal32Rdy:1;
    uint32_t calDone:1;
    uint32_t copEvt:1;
    uint32_t :5;
    uint32_t xtal32Exists:1;
    uint32_t vRegBuckRdy:1;
    uint32_t vReg1P8VRdy:1;
    uint32_t vReg1P5VRdy:1;
  } bit;
} crmStatusReg_t;


typedef volatile union
{
  uint32_t word;
  struct
  {
    uint32_t calTimeout :16;
    uint32_t calEn:1;
    uint32_t calIEn:1;
  } bit;
} crmCalCntlReg_t;


typedef volatile union
{
  uint32_t word;
  struct
  {
    uint32_t rOscEn :1;
    uint32_t rOscBiasSel:3;
    uint32_t rOscFTune:5;
    uint32_t rOscCTune:4;
  } bit;
} crmRingOsclCntlReg_t;


typedef volatile union
{
  uint32_t word;
  struct
  {
    uint32_t wp:1;
    uint32_t smallSig:1;
    uint32_t startupDelayBypass:1;
    uint32_t:1;
    uint32_t startupDelaySel:3;
    uint32_t:1;
    uint32_t iBiasSel:4; 
    uint32_t:4;
    uint32_t fTune:5;
    uint32_t cTune:5;
    uint32_t:6;
  } bit;
} crmXtalCntlReg_t;


typedef volatile union
{
  uint32_t word;
  struct
  {
    uint32_t xtal32En:1;
    uint32_t:3;
    uint32_t xtal32Gain:2;
  } bit;
} crmXtal32CntlReg_t;


typedef volatile union
{
  uint32_t word;
  struct
  {
    uint32_t buckEn:1;
    uint32_t buckSyncRecEn:1;
    uint32_t buckBypassEn:1;
    uint32_t vReg1P5VEn:2;
    uint32_t vReg1P5VISel:2;
    uint32_t vReg1P8VEn:1;
    uint32_t buckClkDiv:4;
  } bit;
} crmVRegCntlReg_t;


typedef volatile union
{
  uint32_t word;
  struct
  {
    uint32_t bgapBattTrim:4;
    uint32_t bgap1P8VTrim:4;
    uint32_t vReg0P9VTrim:4;
    uint32_t vReg0P9ITrim:4;
    uint32_t vRegXtalTrim:4;
    uint32_t vRegOscTrim:4;
  } bit;
} crmVRegTrimReg_t;






 





 












 





typedef union
{
 uint32_t word;
 struct
 {
   uint32_t SSIEN        :1;
   uint32_t TE           :1;
   uint32_t RE           :1;
   uint32_t NET          :1;
   uint32_t              :1;
   uint32_t I2S_MODE     :2;
   uint32_t              :2;
   uint32_t CLK_IST      :1;
   uint32_t TFR_CLK_DIS  :1;
   uint32_t RFR_CLK_DIS  :1;
 }bit;
}SsiCntlReg_t;

typedef union
{
 uint32_t word;
 struct
 {
  uint32_t TFE            :1;
  uint32_t                :1;
  uint32_t RFF            :1;
  uint32_t                :1;
  uint32_t RLS            :1;
  uint32_t TLS            :1;
  uint32_t RFS            :1;
  uint32_t TFS            :1;
  uint32_t TUE            :1;
  uint32_t                :1;
  uint32_t ROE            :1;
  uint32_t                :1;
  uint32_t TDE            :1;
  uint32_t                :1;
  uint32_t RDR            :1;
  uint32_t                :8;
  uint32_t TFRC           :1;
  uint32_t RFRC           :1;
 }bit;
}SsiISReg_t;

typedef union
{
 uint32_t word;
 struct
 {
  uint32_t TFE_EN         :1;
  uint32_t                :1;
  uint32_t RFF_EN         :1;
  uint32_t                :1;
  uint32_t RLS_EN         :1;
  uint32_t TLS_EN         :1;
  uint32_t RFS_EN         :1;
  uint32_t TFS_EN         :1;
  uint32_t TUE_EN         :1;
  uint32_t                :1;
  uint32_t ROE_EN         :1;
  uint32_t                :1;
  uint32_t TDE_EN         :1;
  uint32_t                :1;
  uint32_t RDR_EN         :1;
  uint32_t                :4;
  uint32_t TIE            :1;
  uint32_t                :1;
  uint32_t RIE            :1;
  uint32_t                :8;
  uint32_t TFRC_EN        :1;
  uint32_t RFRC_EN        :1;
 }bit;
}SsiIEReg_t;

typedef union
{
 uint32_t word;
 struct
 {
  uint32_t TEFS           :1;
  uint32_t TFSL           :1;
  uint32_t TFSI           :1;
  uint32_t TSCKP          :1;
  uint32_t TSHFD          :1;
  uint32_t TXDIR          :1;
  uint32_t TFDIR          :1;
  uint32_t TFEN           :1;
  uint32_t                :1;
  uint32_t TXBIT0         :1; 
 }bit;
}SsiTCReg_t;

typedef union
{
 uint32_t word;
 struct
 {
  uint32_t REFS           :1;
  uint32_t RFSL           :1;
  uint32_t RFSI           :1;
  uint32_t RSCKP          :1;
  uint32_t RSHFD          :1;
  uint32_t RXDIR          :1;
  uint32_t RFDIR          :1;
  uint32_t RFEN           :1;
  uint32_t                :1;
  uint32_t RXBIT0         :1; 
  uint32_t RXEXT          :1;
 }bit;
}SsiRCReg_t;

typedef union
{
 uint32_t word;
 struct
 {
  uint32_t PM             :8;
  uint32_t DC             :5;
  uint32_t WL             :4;
  uint32_t PSR            :1;
  uint32_t DIV2           :1;
 }bit;
}SsiTCCReg_t;

typedef union
{
 uint32_t word;
 struct
 {
  uint32_t TFWM0          :4;
  uint32_t RFWM0          :4;
  uint32_t TFCNT0         :4;
  uint32_t RFCNT0         :4;
 }bit;
}SsiFCSReg_t;

typedef union
{
 uint32_t word;
 struct
 {
  uint32_t SYNRST         :1;
  uint32_t                :2;
  uint32_t INIT           :1;
  uint32_t CLKOFF         :1;  
 }bit;
}SsiOptReg_t;


 

 

 

 

 

 

 


typedef struct
{  
  volatile unsigned long DirLo;             
  volatile unsigned long DirHi;             
  volatile unsigned long DataLo;            
  volatile unsigned long DataHi;            
  volatile unsigned long PuEnLo;            
  volatile unsigned long PuEnHi;            
  volatile unsigned long FuncSel0;          
  volatile unsigned long FuncSel1;          
  volatile unsigned long FuncSel2;          
  volatile unsigned long FuncSel3;          
  volatile unsigned long InputDataSelLo;    
  volatile unsigned long InputDataSelHi;    
  volatile unsigned long PuSelLo;           
  volatile unsigned long PuSelHi;           
  volatile unsigned long HystEnLo;          
  volatile unsigned long HystEnHi;          
  volatile unsigned long PuKeepLo;          
  volatile unsigned long PuKeepHi;          
  
  volatile unsigned long DataSetLo;         
  volatile unsigned long DataSetHi;         
  volatile unsigned long DataResetLo;       
  volatile unsigned long DataResetHi;       
  volatile unsigned long DirSetLo;          
  volatile unsigned long DirSetHi;          
  volatile unsigned long DirResetLo;        
  volatile unsigned long DirResetHi;        
} GpioRegs_t;



typedef struct
{
  volatile unsigned long SysCntl;            
  volatile unsigned long WuCntl;             
  volatile unsigned long SleepCntl;          
  volatile unsigned long BsCntl;             
  volatile unsigned long CopCntl;            
  volatile unsigned long CopService;         
  volatile unsigned long Status;             
  volatile unsigned long ModStatus;          
  volatile unsigned long WuCount;            
  volatile unsigned long WuTimeout;          
  volatile unsigned long RtcCount;           
  volatile unsigned long RtcTimeout;         
  volatile unsigned long reserved;           
  volatile unsigned long CalCntl;            
  volatile unsigned long CalXtalCnt;         
  volatile unsigned long RingOsclCntl;       
  volatile unsigned long XtalCntl;           
  volatile unsigned long Xtal32Cntl;         
  volatile unsigned long VregCntl;           
  volatile unsigned long VregTrim;           
  volatile unsigned long SwRst;              
} CrmRegs_t;


typedef struct
{
  volatile unsigned long IntCntl;           
  volatile unsigned long NiMask;            
  volatile unsigned long IntEnNum;          
  volatile unsigned long IntDisNum;         
  volatile unsigned long IntEnable;         
  volatile unsigned long IntType;           
  volatile unsigned long reserved3;         
  volatile unsigned long reserved2;         
  volatile unsigned long reserved1;         
  volatile unsigned long reserved0;         
  volatile unsigned long NiVector;          
  volatile unsigned long FiVector;          
  volatile unsigned long IntSrc;            
  volatile unsigned long IntFrc;            
  volatile unsigned long NiPend;             
  volatile unsigned long FiPend;             
} ItcRegs_t, AitcRegs_t;


typedef struct
{
  volatile unsigned long Ucon;              
  volatile unsigned long Ustat;             
  volatile unsigned long Udata;             
  volatile unsigned long Urxcon;            
  volatile unsigned long Utxcon;            
  volatile unsigned long Ucts;              
  volatile unsigned long Ubr;               
} UartRegs_t;


typedef struct
{
  volatile unsigned long TxData;            
  volatile unsigned long RxData;            
  volatile unsigned long ClkCtrl;           
  volatile unsigned long Setup;             
  volatile unsigned long Status;            
} SpiRegs_t;


typedef struct
{
  volatile unsigned short Comp1;            
  volatile unsigned short Comp2;            
  volatile unsigned short Capt;             
  volatile unsigned short Load;             
  volatile unsigned short Hold;             
  volatile unsigned short Cntr;             
  volatile unsigned short Ctrl;             
  volatile unsigned short StatCtrl;         
  volatile unsigned short CmpLd1;           
  volatile unsigned short CmpLd2;           
  volatile unsigned short CompStatCtrl;     
  volatile unsigned short reserved0;        
  volatile unsigned short reserved1;        
  volatile unsigned short reserved2;        
  volatile unsigned short reserved3;        
  volatile unsigned short reserved4;        
} TmrRegs_t;


typedef struct
{
  volatile unsigned long Key0;             
  volatile unsigned long Key1;             
  volatile unsigned long Key2;             
  volatile unsigned long Key3;             
  volatile unsigned long Data0;            
  volatile unsigned long Data1;            
  volatile unsigned long Data2;            
  volatile unsigned long Data3;            
  volatile unsigned long Ctr0;             
  volatile unsigned long Ctr1;             
  volatile unsigned long Ctr2;             
  volatile unsigned long Ctr3;             
  volatile unsigned long Ctr_result0;      
  volatile unsigned long Ctr_result1;      
  volatile unsigned long Ctr_result2;      
  volatile unsigned long Ctr_result3;      
  volatile unsigned long Cbc_result0;      
  volatile unsigned long Cbc_result1;      
  volatile unsigned long Cbc_result2;      
  volatile unsigned long Cbc_result3;      
  volatile unsigned long Control0;         
  volatile unsigned long Control1;         
  volatile unsigned long Status;           
  volatile unsigned long Undef0;           
  volatile unsigned long Mac0;             
  volatile unsigned long Mac1;             
  volatile unsigned long Mac2;             
  volatile unsigned long Mac3;             
} AsmRegs_t;


typedef struct
{
  volatile unsigned char Address;        
  unsigned char dummy0;
  unsigned char dummy1;
  unsigned char dummy2;
  volatile unsigned char FreqDiv;        
  unsigned char dummy3;
  unsigned char dummy4;
  unsigned char dummy5;
  volatile unsigned char Control;        
  unsigned char dummy6;
  unsigned char dummy7;
  unsigned char dummy8;
  volatile unsigned char Status;         
  unsigned char dummy9;
  unsigned char dummy10;
  unsigned char dummy11;
  volatile unsigned char Data;           
  unsigned char dummy12;
  unsigned char dummy13;
  unsigned char dummy14;
  volatile unsigned char DigitalFilter;  
  unsigned char dummy15;
  unsigned char dummy16;
  unsigned char dummy17;
  volatile unsigned char ClockEn;        
  unsigned char dummy18;
  unsigned char dummy19;
  unsigned char dummy20;
} I2cRegs_t;


typedef struct
{
  volatile unsigned long  STX;        
           unsigned long  dummy1;     
  volatile unsigned long  SRX;        
           unsigned long  dummy2;     
  volatile unsigned long  SCR;        
  volatile unsigned long  SISR;       
  volatile unsigned long  SIER;       
  volatile unsigned long  STCR;       
  volatile unsigned long  SRCR;       
  volatile unsigned long  STCCR;      
           unsigned long  dummy3;     
  volatile unsigned long  SFCSR;      
  volatile unsigned long  STR;        
  volatile unsigned long  SOR;        
           unsigned long  dummy4;     
           unsigned long  dummy5;     
           unsigned long  dummy6;     
           unsigned long  dummy7;     
  volatile unsigned long  STMSK;      
  volatile unsigned long  SRMSK;      
}SsiRegs_t;


typedef struct
{
  volatile unsigned short Comp0;            
  volatile unsigned short Comp1;            
  volatile unsigned short Comp2;            
  volatile unsigned short Comp3;            
  volatile unsigned short Comp4;            
  volatile unsigned short Comp5;            
  volatile unsigned short Comp6;            
  volatile unsigned short Comp7;            
  volatile unsigned short BattCompOver;     
  volatile unsigned short BattCompUnder;    
  volatile unsigned short Seq1;             
  volatile unsigned short Seq2;             
  volatile unsigned short Control;          
  volatile unsigned short Triggers;         
  volatile unsigned short Prescale;         
  volatile unsigned short reserved1;        
  volatile unsigned short FifoRead;         
  volatile unsigned short FifoCtrl;         
  volatile unsigned short FifoStatus;       
  volatile unsigned short reserved2;        
  volatile unsigned short reserved3;        
  volatile unsigned short reserved4;        
  volatile unsigned short reserved5;        
  volatile unsigned short reserved6;        
  volatile unsigned short Sr1High;          
  volatile unsigned short Sr1Low;           
  volatile unsigned short Sr2High;          
  volatile unsigned short Sr2Low;           
  volatile unsigned short OnTime;           
  volatile unsigned short ConvTime;         
  volatile unsigned short ClkDiv;           
  volatile unsigned short reserved7;        
  volatile unsigned short Override;         
  volatile unsigned short Irq;              
  volatile unsigned short Mode;             
  volatile unsigned short Adc1Result;       
  volatile unsigned short Adc2Result;       
} AdcRegs_t;






































 

 

 
 

 
  



 


 
 

 

 





 

 

 

 
 
 
 

 
 
 
 

 
 





 

 

typedef uint32_t UartBaudRate_t;




 






 


extern bool_t Uart1_TxCompleteFlag;
extern index_t mSci1RxBufferByteCount;       


 
extern void Uart_ModuleInit(void);

 
extern void Uart_ModuleUninit(void);

 
 
 
 
 
 
extern void Uart_ClearErrors(void);

 
extern void Uart1_SetBaud(UartBaudRate_t baudRate);
extern void Uart2_SetBaud(UartBaudRate_t baudRate);

 
 
 
 
 
 
 
extern bool_t Uart1_Transmit(unsigned char const *pBuf, index_t bufLen, void (*pfCallBack)(unsigned char const *pBuf));
extern bool_t Uart2_Transmit(unsigned char const *pBuf, index_t bufLen, void (*pfCallBack)(unsigned char const *pBuf));

 
 
extern bool_t Uart1_IsTxActive(void);
extern bool_t Uart2_IsTxActive(void);

 
 
 
 
 
 
 
extern void Uart1_SetRxCallBack(void (*pfCallBack)(void));
extern void Uart2_SetRxCallBack(void (*pfCallBack)(void));

 
 
extern bool_t Uart1_GetByteFromRxBuffer(unsigned char *pDst);
extern bool_t Uart2_GetByteFromRxBuffer(unsigned char *pDst);

 
 
 
extern void Uart1_UngetByte(unsigned char byte);
extern void Uart2_UngetByte(unsigned char byte);


 
extern uint32_t Uart1_RxBufferByteCount(void);
extern uint32_t Uart2_RxBufferByteCount(void);

 
 



  void Uart_Task(event_t events);
  void Uart_TaskInit(void);
















 

 
 

typedef uint8_t AppAspMsgType_t;


#pragma pack(1)

typedef struct aspGetTimeReq_tag {          
  zbClock24_t time;
} aspGetTimeReq_t;

typedef struct aspGetInactiveTimeReq_tag {  
  zbClock24_t time;
} aspGetInactiveTimeReq_t;

typedef struct aspGetMacStateReq_tag {      
  uint8_t placeHolder;
} aspGetMacStateReq_t;

typedef struct aspDozeReq_tag {             
  zbClock24_t dozeDuration;
  uint8_t clko_en;
} aspDozeReq_t;

typedef struct aspAutoDozeReq_tag {         
  bool_t autoEnable;
  bool_t enableWakeIndication;
  zbClock24_t autoDozeInterval;
  uint8_t clko_en;
} aspAutoDozeReq_t;

typedef struct aspAcomaReq_tag {            
  uint8_t clko_en;
} aspAcomaReq_t;

typedef struct aspHibernateReq_tag {        
  uint8_t placeHolder;
} aspHibernateReq_t;

typedef struct aspWakeReq_tag {             
  uint8_t placeHolder;
} aspWakeReq_t;

typedef struct aspEventReq_tag {            
  zbClock24_t eventTime;
} aspEventReq_t;

typedef struct aspClkoReq_tag {             
  uint8_t clkoEnable;
  uint8_t clkoRate;
} aspClkoReq_t;

typedef struct aspTrimReq_tag {             
  uint8_t fineTune;
  uint8_t coarseTune;
} aspTrimReq_t;

typedef struct aspDdrReq_tag {              
  uint8_t directionMask;
} aspDdrReq_t;

typedef struct aspPortReq_tag {             
  uint8_t portWrite;
  uint8_t portValue;
} aspPortReq_t;

typedef struct aspSetMinDozeTimeReq_tag {   
  zbClock24_t minDozeTime;
} aspSetMinDozeTimeReq_t;

typedef struct aspSetNotifyReq_tag {        
  uint8_t notifications;
} aspSetNotifyReq_t;

typedef struct aspSetPowerLevelReq_tag {    
  uint8_t powerLevel;
} aspSetPowerLevelReq_t;

typedef struct aspGetPowerLevelReq_tag {    
  uint8_t powerLevel;
} aspGetPowerLevelReq_t;

typedef struct aspTelecTest_tag {           
  uint8_t mode;
} aspTelecTest_t;

typedef struct aspTelecsetFreq_tag {        
  uint8_t channel;
} aspTelecsetFreq_t;

typedef struct aspTelecSendRawData_tag {   
  uint8_t  length;
  uint8_t* dataPtr;
} aspTelecSendRawData_t;


typedef union aspReq_tag {
  aspGetTimeReq_t         aspGetTimeReq;
  aspGetInactiveTimeReq_t aspGetInactiveTimeReq;
  aspDozeReq_t            aspDozeReq;
  aspAutoDozeReq_t        aspAutoDozeReq;
  aspAcomaReq_t           aspAcomaReq;
  aspHibernateReq_t       aspHibernateReq;
  aspWakeReq_t            aspWakeReq;
  aspEventReq_t           aspEventReq;
  aspClkoReq_t            aspClkoReq;
  aspTrimReq_t            aspTrimReq;
  aspDdrReq_t             aspDdrReq;
  aspPortReq_t            aspPortReq;
  aspSetMinDozeTimeReq_t  aspSetMinDozeTimeReq;
  aspSetNotifyReq_t       aspSetNotifyReq;
  aspSetPowerLevelReq_t   aspSetPowerLevelReq;
  aspGetPowerLevelReq_t   aspGetPowerLevelReq;
  aspTelecTest_t          aspTelecTest;
  aspTelecsetFreq_t       aspTelecsetFreq;
  aspTelecSendRawData_t   aspTelecSendRawData;
} aspReq_t;


 
typedef struct AppToAspMessage_tag {
  AppAspMsgType_t msgType;
  struct {
    aspReq_t  req;
  } msgData;
} AppToAspMessage_t;

#pragma pack()















 

 
 

typedef uint8_t AppLlcMsgType_t;


typedef enum {
  gAccelSensor_c = 0,
  gPressureSensor_c,
  gTempSensor_c,
  gAudioSensor_c
} SensorType_t;
  
typedef enum chessSquareSize_tag{
  gLlcSize1Pixel_c  =  1,
  gLlcSize2Pixel_c  =  2,
  gLlcSize4Pixel_c  =  4,
  gLlcSize8Pixel_c  =  8,
  gLlcSize16Pixel_c = 16,
  gLlcSize32Pixel_c = 32,
  gLlcSize64Pixel_c = 64  
}chessSquareSize_t;

#pragma pack(1)

typedef struct llcSetLedReq_tag {   
  bool_t led1on;
  bool_t led2on;  
  bool_t led3on;  
  bool_t led4on;  
} llcSetLedReq_t;

typedef struct llcSetVolumeReq_tag {   
  uint8_t volume;  
} llcSetVolumeReq_t;

typedef struct llcSetPwmDutyReq_tag
{
  uint8_t duty;
  uint8_t volume;
}llcSetPwmDutyReq_t;

typedef struct llcReadSensor_tag  {   
  SensorType_t  sensor;
  uint16_t readVal[3];
} llcReadSensorReq_t;

typedef struct llcSetASStareReq_tag {   
  bool_t sleepState;
} llcSetASStateReq_t;

typedef struct llcReadSw_tag  {   
  bool_t swState[5];
} llcReadSwReq_t;

typedef struct llcCrystalTrimm_tag  
{   
  uint8_t courseTune; 
  uint8_t fineTune; 
} llcCrystalTrimmReq_t;

typedef struct llcDisplayChessBoardReq_tag 
{  
  bool_t mode;
  bool_t backLightOn;
  chessSquareSize_t squareSize;
} llcDisplayChessBoardReq_t;

typedef struct llcStartReceiverReq_tag
{
  uint8_t  panId[2];
  uint8_t  logicalChannel;
  uint8_t  shortAddr[2];
}llcStartReceiverReq_t;

typedef struct llcGetReceivedPacketsReq_tag
{
 uint16_t packetCnt;
}llcGetReceivedPacketsReq_t;

typedef struct llcStartTransmitterReq_tag
{
  uint8_t  panId[2];
  uint8_t  logicalChannel;
  uint8_t  shortAddr[2];
}llcStartTransmitterReq_t;

typedef struct llcTransmitReq_tag
{
  uint8_t  destPanId[2];
  uint8_t  destShortAddr[2];
  uint8_t  packetCount;
  uint8_t  len;
}llcTransmitReq_t;

typedef struct llcReadJTAGNEXUSPinsReq_tag
{
  uint32_t  pins;
}llcReadJTAGNEXUSPinsReq_t;

typedef struct llcSetupJTAGNEXUSPinsReq_tag
{
  bool_t  restore;
}llcSetupJTAGNEXUSPinsReq_t;

typedef struct llcSetupGpioPinsReq_tag
{
  bool_t   readWriteNeg;
  uint8_t  gpioPort;
  uint8_t  gpioAttr;
  uint32_t gpioValue;
  uint32_t gpioMask;
}llcSetupGpioPinsReq_t;

typedef union llcReq_tag {
  llcSetLedReq_t             llcSetLedReq;  
  llcSetVolumeReq_t          llcSetVolumeReq;
  llcSetPwmDutyReq_t         llcSetPwmDutyReq;
  llcReadSensorReq_t         llcReadSensorReq;
  llcSetASStateReq_t         llcSetASStateReq;
  llcReadSwReq_t             llcReadSwReq;
  llcCrystalTrimmReq_t       llcCrystalTrimmReq;
  llcDisplayChessBoardReq_t  llcDisplayChessBoardReq;
  llcStartReceiverReq_t      llcStartReceiverReq;
  llcGetReceivedPacketsReq_t llcGetReceivedPacketsReq;
  llcStartTransmitterReq_t   llcStartTransmitterReq;
  llcTransmitReq_t           llcTransmitReq;
  llcReadJTAGNEXUSPinsReq_t  llcReadJTAGNEXUSPinsReq;
  llcSetupJTAGNEXUSPinsReq_t llcSetupJTAGNEXUSPinsReq;
  llcSetupGpioPinsReq_t      llcSetupGpioPinsReq;
}llcReq_t;

 
typedef struct AppToLlcMessage_tag {
  AppLlcMsgType_t msgType;
  llcReq_t  req;
} AppToLlcMessage_t;

#pragma pack()















 






















 

















 















 










 







 





 

 


 

 


 
 
 

 










 




 





 

 
 
typedef uint8_t ztcSAPHandlerStatus_t;

 
 



 



typedef uint8_t ztcOpcodeGroup_t;

 
 
 
 
typedef uint8_t ztcIntSAPId_t;







 
typedef uint8_t ztcMsgType_t;

typedef struct ZTCMessage_tag {
  ztcOpcodeGroup_t opCode;
  ztcMsgType_t opCodeId;
  uint8_t length;
  uint8_t data[1];                       
} ZTCMessage_t;




 
typedef void (*gpfTestClientToApplication_t)(void *pMsg);
extern gpfTestClientToApplication_t gpfTestClientToApplicationFuncPtr;

 
extern tsTaskID_t gZTCTaskID;





 

 
extern tsTaskID_t gZTCTaskID;





 

extern void Ztc_TaskInit(void);
extern void Ztc_Task(event_t events);
extern void ZTC_TaskEventMonitor(const ztcIntSAPId_t SAPId,
                                 uint8_t *pMsg,
                                 const uint8_t status);
extern void ZTC_FragEventMonitor(const ztcIntSAPId_t SAPId, uint8_t *pMsg);

 
extern void ZTCQueue_QueueToTestClient(uint8_t const *const pData,
                                       uint8_t const opCodeGrp,
                                       uint8_t const msgType,
                                       uint8_t const lengthOfData);
















 

 

  #pragma system_include

 
 

 

  #pragma system_include






 















 






 
 


  #pragma system_include

 
 

 

  #pragma system_include






 















 





                 



                 










 




                 





























 


  #pragma system_include

 
 
 


 

   

 

   #pragma system_include






 


 

 

 

 

 

 





 






 


  typedef struct
  {
    char *_Ap;
  } _VA_LIST;















 





















 










 




















































































































 


 










 





















 














 















 













 








 












 











 










 









 











 









 









 









 









 














 














 
















 












 








 











 










 









 









 









 









 









 









 









 









 







 




 









 




 





 







































 













 










 




 





 





 





 







                 



















 


                 
 
 





                 








                 

                 

                 
                 

 
 


  #pragma system_include

 
 

 

  #pragma system_include






 















 




 
 





 

                                 




                                 





                 
                                 


  typedef long long _Longlong;
  typedef unsigned long long _ULonglong;

  typedef unsigned short int _Wchart;
  typedef unsigned short int _Wintt;



                 

typedef signed int  _Ptrdifft;
typedef unsigned int     _Sizet;

                 
  typedef _VA_LIST __Va_list;


__intrinsic __nounwind void __iar_Atexit(void (*)(void));


  typedef struct
  {        
    unsigned int _Wchar;
    unsigned int _State;
  } _Mbstatet;



typedef struct
{        
  _Longlong _Off;     
  _Mbstatet _Wstate;
} _Fpost;




                 
















 


  #pragma system_include






























































 

 


   


  
  typedef void *__iar_Rmtx;

   
  __intrinsic __nounwind void __iar_Mtxinit(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_Mtxdst(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_Mtxlock(__iar_Rmtx *m);
  __intrinsic __nounwind void __iar_Mtxunlock(__iar_Rmtx *m);

  




  


  typedef unsigned _Once_t;

  








                 


                 
  
  
  __intrinsic __nounwind void __iar_Locksyslock(unsigned int);
  __intrinsic __nounwind void __iar_Unlocksyslock(unsigned int);
  
  


                 


                 







 
 
 


  #pragma system_include

 
 

 

  #pragma system_include






 















 






                 
typedef _Sizet size_t;

typedef unsigned int __data_size_t;







                 


                 
  typedef _Ptrdifft ptrdiff_t;

  typedef _Wchart wchar_t;







 












 




  


















































 

  

  

  

  







 

  

  





 




 

 


 
  
 
  
 


 

 



 


 

 

 
 

 
 

 

 

 
 

 




 





 

 
 





 

 

 





 

 





 

extern uint16_t Swap2Bytes(uint16_t iOldValue);





 

extern uint8_t aExtendedAddress[8];





 

 
 
typedef uint8_t (*pfnZtcSapHandler_t)(void *);

 

 
 


enum {                                   










 




















 




 









 


 









 


















 

 












 













































 


 




















































 


 
 
                                                                 

 
                                                                 

 
                                                                 

 

 

 


















 




































 


 
 
gZtcMsgFmtSimple_c,                           

 
gZtcMsgFmtMacBeaconNotifyInd_c,                           

 
gZtcMsgFmtMacScanReq_c,                           

 
gZtcMsgFmtMacScanCnf_c,                           


 

 

 
gZtcMsgFmtMacDataInd_c,                    

 
gZtcMsgFmtMcpsPromInd_c,                   

 
gZtcMsgFmtMacDataReq_c,                    

};
typedef uint8_t ztcMsgFmt_t;

 

 
enum {
  mZtcMsgModeSelectReq_c            = 0x00,  
  mZtcMsgGetModeReq_c               = 0x02,  
  mZtcMsgAFResetReq_c               = 0x05,  
  mZtcMsgAPSResetReq_c              = 0x06,  
  mZtcMsgAPSReadyReq_c              = 0x07,  
  mZtcMsgResetCPUReq_c              = 0x08,  
  mZtcMsgDeregisterEndPoint_c       = 0x0A,  
  mZtcMsgRegisterEndPoint_c         = 0x0B,  
  mZtcMsgGetNumberOfEndPoints_c     = 0x0C,  
  mZtcMsgGetEndPointDescription_c   = 0x0D,  
  mZtcMsgGetEndPointIdList_c        = 0x0E,  
  mZtcMsgGetICanHearYouList_c       = 0x10,  
  mZtcMsgSetICanHearYouList_c       = 0x11,  
  mZtcMsgGetChannelReq_c            = 0x12,  
  mZtcMsgSetChannelReq_c            = 0x13,  
  mZtcMsgGetPanIDReq_c              = 0x14,  
  mZtcMsgSetPanIDReq_c              = 0x15,  
  mZtcMsgApsmeGetIBReq_c            = 0x20,  
  mZtcMsgApsmeSetIBReq_c            = 0x21,  
  mZtcMsgNlmeGetIBReq_c             = 0x22,  
  mZtcMsgNlmeSetIBReq_c             = 0x23,  
  mZtcMsgGetNumOfMsgsReq_c          = 0x24,    
  mZtcMsgFreeDiscoveryTablesReq_c   = 0x25,  
  mZtcMsgSetJoinFilterFlagReq_c     = 0x26,  
  mZtcLowLevelMemoryWriteBlock_c    = 0x30,  
  mZtcLowLevelMemoryReadBlock_c     = 0x31,  
  mZtcLowLevelMemoryWriteByte_c     = 0x32,  
  mZtcLowLevelMemoryReadByte_c      = 0x33,  
  mZtcLowLevelMemoryWriteWord_c     = 0x34,  
  mZtcLowLevelMemoryReadWord_c      = 0x35,  
  mZtcLowLevelMemoryWriteLong_c     = 0x36,  
  mZtcLowLevelMemoryReadLong_c      = 0x37,  
  mZtcLowLevelPing_c                = 0x38,  
  mZtcMsgReadExtendedAdrReq_c       = 0xD2,  
  mZtcMsgWriteExtendedAdrReq_c      = 0xDB,  
  mZtcMsgReadNwkMngAddressReq_c     = 0xDA,  
  mZtcMsgWriteNwkMngAddressReq_c    = 0xAD,  
  mZtcMsgStopNwkReq_c               = 0xDC,  
  mZtcMsgStartNwkReq_c              = 0xDF,  
  mZtcMsgRestartNwkReq_c            = 0xE0,  
  mZtcMsgNVSaveReq_c                = 0xE4,  
  mZtcMsgGetNVDataSetDescReq_c      = 0xE5,  
  mZtcMsgGetNVPageHdrReq_c          = 0xE6,  
  mZtcMsgError_c                    = 0xFE,  
  mZtcMsgDebugPrint_c               = 0xFF,  
};














 







 

 





 

 
 
 
typedef uint8_t mUartStx_t;              
typedef uint8_t clientPacketChecksum_t;





 





 

 
 
 

 
 





 

 
 
typedef uint8_t clientPacketStatus_t;

typedef struct clientPacketHdr_tag {
  ztcOpcodeGroup_t opcodeGroup;
  ztcMsgType_t msgType;
  index_t len;                           
} clientPacketHdr_t;

 
 
 
typedef struct clientPacketStructured_tag {
  clientPacketHdr_t header;
  uint8_t payload[245];
  uint8_t checksum;
} clientPacketStructured_t;

typedef union clientPacket_tag {
   
  uint8_t raw[sizeof(clientPacketStructured_t)];

   
  clientPacketStructured_t structured;

   
  struct {                               
    clientPacketHdr_t header;
    uint8_t status;
  } headerAndStatus;
} clientPacket_t;





 

 
 
extern bool_t ZtcReadPacketFromClient(void);

 
 
 
 
extern void ZtcWritePacketToClient(index_t const len);

 
 
extern void ZtcTransmitBuffer(uint8_t const *pSrc, index_t const len, void (*pfCallBack)(unsigned char const *pBuf));

 
 
 
extern void ZtcTransmitBufferBlock(uint8_t const *pSrc, index_t const len);





 

 
extern clientPacket_t gZtcPacketFromClient;

 
extern clientPacket_t gZtcPacketToClient;

 
 
extern volatile bool_t mZtcPacketToClientIsBusy;

 
 
extern bool_t gZtcUartTxBlocking;





 














 






 

 

 


typedef uint8_t ztcMsgFlagAndFormat_t;















 
typedef struct ztcMsgTypeInfo_tag {
  ztcMsgType_t msgType;
  ztcMsgType_t cnfType;
  index_t len;
  ztcMsgFlagAndFormat_t flagAndFormat;
} ztcMsgTypeInfo_t;

 



 
typedef void ( *pZtcConfigFunc_t )( void );

typedef struct ztcInternalMsgTypeInfo_tag {
  ztcMsgType_t msgType;
  pZtcConfigFunc_t pConfigFunc;
} ztcInternalMsgTypeInfo_t;

extern ztcInternalMsgTypeInfo_t const gaZtcInternalMsgTypeInfoTable[];
extern index_t const gZtcInternalMsgTypeInfoTableLen;





 

const ztcMsgTypeInfo_t *pZtcMsgTypeInfoFromMsgType( const ztcMsgTypeInfo_t *pMsgTypeTable,
                                                    const index_t msgTypeInfoLen,
                                                    const ztcMsgType_t msgType );

 











 




 































 




 

 













 

 
 


 
  
  


 
  
  
  
  


 
  
  
  
  
  
  
  
  
  
  
  
  
  


 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  



 

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  


 

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  


 
 
 
  
   
   
   
   
  
  
  
   
  
  
  
  
  
   
   
   
   
  
  
  
  
  
  
 



 
  


 
  
  


 
  
  
  
  
  
  
  
  
  
  
  
  



 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  


 
  


 
  
  


 
  
  
  
  
  
  
  


 
  
  


 
  
  
  
  
  
  
  
  
  
  
  
  
  




 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

  










 

  
  
  
 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  






  


   


 
  



 
  
  


















 
extern void ZtcMsgModeSelectReqFunc( void );             
extern void ZtcMsgGetModeReqFunc( void );                
extern void ZtcMemoryWriteByte( void );                  
extern void ZtcMemoryReadByte( void );                   
extern void ZtcMemoryWriteWord( void );                  
extern void ZtcMemoryReadWord( void );                   
extern void ZtcMemoryWriteLong( void );                  
extern void ZtcMemoryReadLong( void );                   
extern void ZtcMemoryWriteBlock( void );                 
extern void ZtcMemoryReadBlock( void );                  
extern void ZtcPing( void );                             

extern void ZtcMsgResetCPUReqFunc( void );               
extern void ZtcMsgReadExtendedAdrReqFunc( void );        
extern void ZtcMsgWriteExtendedAdrReqFunc( void );       
















 











 






 





 





 





 





 















 







 





 










 
typedef uint8_t ztcSAPMode_t;

 
extern ztcSAPMode_t maZtcSAPModeTable[];
extern const index_t mZtcSAPModeTableLen;    

 

 

enum {











 

 























 





 




 

 





































 



gSAPModeIndexMcps_c,

gSAPModeIndexMlme_c,

gSAPModeIndexAsp_c,

gSAPModeIndexNlde_c,

gSAPModeIndexNlme_c,

gSAPModeIndexApsde_c,

gSAPModeIndexAfde_c,

gSAPModeIndexApsme_c,

gSAPModeIndexZdp_c,

gSAPModeIndexLlc_c,

gSAPModeIndexInterPan_c,

 









































 



 
 
                

                


                


                




 




































};

 




 


typedef uint8_t ztcSAPHandlerFlags_t;

 

 
 
typedef struct ztcSAPHandlerInfo_tag {
  ztcOpcodeGroup_t const opcodeGroup;
  ztcOpcodeGroup_t const converseOpcodeGroup;
  ztcIntSAPId_t const intSAPId;
  pfnZtcSapHandler_t const pSAPHandler;
  index_t const modeIndex;
  anchor_t *const pMsgQueue;
  uint8_t msgEvent;
  tsTaskID_t const *pTaskID;
  ztcMsgTypeInfo_t const *pMsgTypeTable;
  index_t const *pMsgTypeTableLen;
} ztcSAPHandlerInfo_t;





 

const ztcSAPHandlerInfo_t *pZtcSAPInfoFromOpcodeGroup( const ztcOpcodeGroup_t opcodeGroup );
const ztcSAPHandlerInfo_t *pZtcSAPInfoFromIntSAPId( const ztcIntSAPId_t intSAPId );

extern uint8_t NWK_MCPS_SapHandler();
extern uint8_t MCPS_NWK_SapHandler();
extern uint8_t NWK_MLME_SapHandler();
extern uint8_t MLME_NWK_SapHandler();
extern uint8_t APP_ASP_SapHandler();
extern uint8_t APP_LLC_SapHandler();
extern uint8_t ASP_APP_SapHandler();
extern uint8_t APS_NLDE_SapHandler();
extern uint8_t NLDE_APS_SapHandler();
extern uint8_t ZDO_NLME_SapHandler();
extern uint8_t NLME_ZDO_SapHandler();
extern uint8_t AF_APSDE_SapHandler();
extern uint8_t APSDE_AF_SapHandler();
extern uint8_t AF_AppToAfdeDataReq();
extern uint8_t ZDO_APSME_SapHandler();
extern uint8_t APSME_ZDO_SapHandler();
extern uint8_t APP_ZDP_SapHandler();
extern uint8_t ZDP_APP_SapHandler();






 

 
extern const ztcSAPHandlerInfo_t maZtcSAPHandlerInfo[];

 
extern const uint8_t mZtcSapHandlerTableLen;

 
extern anchor_t mMcpsNwkInputQueue;      
extern anchor_t mMlmeNwkInputQueue;      
extern anchor_t mZdoNlmeInputQueue;      
extern anchor_t mApsNldeInputQueue;      

extern anchor_t gNldeQueue;              
extern anchor_t mApsmeQueue;             
extern anchor_t gApsdeQueue;             
extern anchor_t gApsToAfdeQ;             

extern anchor_t mNlmeZdoInputQueue;      
extern anchor_t mApsmeZdoInputQueue;     
extern anchor_t mAppZdpInputQueue;       












 







 





 

 

 


 

typedef struct ztcFmtTwoArrayPtrs_tag {
  index_t hdrLen;

  index_t offsetToPtr1;
  index_t offsetToNumberOfArray1Elements;
  index_t sizeofArray1Element;
  index_t offsetToMsgData;

  index_t offsetToPtr2;
  index_t offsetToNumberOfArray2Elements;
  index_t sizeofArray2Element;
} ztcFmtTwoArrayPtrs_t;


enum {










 




















 




 









 


 









 


















 

 












 













































 


 




















































 


 
 
mFmtMacDataInd_c,                                                                 

 
mFmtMcpsPromInd_c,                                                                 

 
mFmtMacDataReq_c,                                                                 

 

 

 


















 




































 


 
 
                           

 
                           

 
                           

 
                           


 

 

 
                    

 
                   

 
                    

};





 





 

 





 





 
typedef index_t ( *pZtcPktFromMsg_t )( uint8_t *pDst,
                                       index_t dstLen,
                                       uint8_t *pSrc,
                                       index_t srcLen,
                                       index_t fmtParametersIndex );

 

 
 
 
 
 
typedef index_t ( *pZtcMsgFromPkt_t )( uint8_t *pDst,
                                       index_t dstLen,
                                       uint8_t *pSrc,
                                       index_t srcLen,
                                       index_t fmtParametersIndex );

 

 
 
enum {










 




















 




 









 


 









 


















 

 












 













































 


 




















































 


 
 
                                                                 

 
                                                                 

 
                                                                 

 

 

 

mZtcPktFromMsgUnused_c,
mZtcPktFromMsgSimple_c,
mZtcPktFromMsgMacScanCnf_c,
mZtcPktFromMsgMacBeaconNotifyInd_c,
mZtcPktFromMsgTwoArrayPtrs_c,




mZtcPktFromMsgMacScanReq_c,







 




































 


 
 
                           

 
                           

 
                           

 
                           


 

 

 
                    

 
                   

 
                    

};

enum {










 




















 




 









 


 









 


















 

 












 













































 


 




















































 


 
 
                                                                 

 
                                                                 

 
                                                                 

 

 

 







mZtcMsgFromPktUnused_c,
mZtcMsgFromPktSimple_c,
mZtcMsgFromPktMacScanReq_c,

mZtcMsgFromPktTwoArrayPtrs_c,






 




































 


 
 
                           

 
                           

 
                           

 
                           


 

 

 
                    

 
                   

 
                    

};

 
 

typedef struct ztcFmtInfo_tag {
  uint8_t copyFunctionIndexes;
  index_t pktFromMsgParametersIndex;
  index_t msgFromPktParametersIndex;
} ztcFmtInfo_t;





 

 



 












 




















 




 









 


 









 


















 

 












 













































 


 




















































 


 
 
                                                                 

 
                                                                 

 
                                                                 

 

 

 

extern index_t ZtcPktFromMsgUnused( uint8_t *pDst, index_t dstLen, uint8_t *pSrc, index_t srcLen, index_t fmtParametersIndex );
extern index_t ZtcPktFromMsgSimple( uint8_t *pDst, index_t dstLen, uint8_t *pSrc, index_t srcLen, index_t fmtParametersIndex );
extern index_t ZtcPktFromMsgMacScanCnf( uint8_t *pDst, index_t dstLen, uint8_t *pSrc, index_t srcLen, index_t fmtParametersIndex );
extern index_t ZtcPktFromMsgMacBeaconNotifyInd( uint8_t *pDst, index_t dstLen, uint8_t *pSrc, index_t srcLen, index_t fmtParametersIndex );
extern index_t ZtcPktFromMsgTwoArrayPtrs( uint8_t *pDst, index_t dstLen, uint8_t *pSrc, index_t srcLen, index_t fmtParametersIndex );

extern index_t ZtcMsgFromPktUnused( uint8_t *pDst, index_t dstLen, uint8_t *pSrc, index_t srcLen, index_t fmtParametersIndex );
extern index_t ZtcMsgFromPktSimple( uint8_t *pDst, index_t dstLen, uint8_t *pSrc, index_t srcLen, index_t fmtParametersIndex );
extern index_t ZtcMsgFromPktMacScanReq( uint8_t *pDst, index_t dstLen, uint8_t *pSrc, index_t srcLen, index_t fmtParametersIndex );
extern index_t ZtcPktFromMsgMacScanReq( uint8_t *pDst, index_t dstLen, uint8_t *pSrc, index_t srcLen, index_t fmtParametersIndex );
extern index_t ZtcMsgFromPktTwoArrayPtrs( uint8_t *pDst, index_t dstLen, uint8_t *pSrc, index_t srcLen, index_t fmtParametersIndex );






 




































 


 
 
                           

 
                           

 
                           

 
                           


 

 

 
                    

 
                   

 
                    






 

extern ztcFmtInfo_t const maZtcFmtInfoTable[];
extern pZtcMsgFromPkt_t const maPktFromMsgFunctionTable[];
extern pZtcMsgFromPkt_t const maMsgFromPktFunctionTable[];





 












 








 





 






 

 

 






 

 





 

 







 


 







 












 





 





















 


 
 

 
extern tsTaskID_t gMacTaskID_c; extern void TS_PlaceHolderTaskInit( void ); extern void Mlme_Main( event_t );






 






 








 
typedef struct sapHandlerMsgHdr_tag {
  ztcMsgType_t msgType;
} sapHandlerMsgHdr_t;


typedef union sapHandlerMsg_tag {
  uint8_t raw[144];
  struct {
    sapHandlerMsgHdr_t header;
    uint8_t payload[144 - sizeof(sapHandlerMsgHdr_t)];
  } structured;
} sapHandlerMsg_t;

 

#pragma pack(1)
 
typedef struct apsdeFragment_tag {
  uint8_t iBlockNumber;
  uint8_t iMoreBlocks;
  uint8_t iLength;
  uint8_t aData[1];
} apsdeFragment_t;
#pragma pack()




 






 
 
extern uint8_t giFragmentedPreAcked;

 







 




 






 




















 
void Ztc_Task(event_t events) {
  (void) events;
}                                        

 

 
 

void Ztc_TaskInit(void) {
}                                        

 



 
void ZTCQueue_QueueToTestClient
  (
  uint8_t const *const pData,
  uint8_t const opcodeGroup,
  uint8_t const msgType,
  uint8_t const dataLen
  )
{
  (void) pData;
  (void) opcodeGroup;
  (void) msgType;
  (void) dataLen;
}                                        

 
























 
void ZTC_TaskEventMonitor
  (
  ztcIntSAPId_t const srcIntSAPId,
  uint8_t *pMsgFromSAPHandler,
  clientPacketStatus_t const srcStatus
  )
{
  (void) srcIntSAPId;
  (void) pMsgFromSAPHandler;
  (void) srcStatus;
}   

 


 







 





 



 

 

 












 





 
void ZTC_FragEventMonitor
  (
  ztcIntSAPId_t const srcIntSAPId,
  uint8_t *pMsgFromSAPHandler
  )
{
   
  (void)srcIntSAPId;
  (void)pMsgFromSAPHandler;

 
}




 















 

 

 

 

 
 
 


 

 
 


 
 





















 

 


 
 


 

 

 


 
 



 
 











 

 

void  ZtcMemoryReadBlock(void)
{
  uint8_t *addr;
  uint8_t nBytes, lcount;
  uint8_t *pIn, *pOut;


  FLib_MemCpy(&addr, gZtcPacketFromClient.structured.payload, 4);

  nBytes = gZtcPacketFromClient.structured.payload[sizeof(addr)];
  lcount = nBytes;

  pOut = addr;
  pIn = &gZtcPacketToClient.structured.payload[0];
  for (;lcount != 0; lcount--)
  {
    *pIn++ = *pOut++;
  }
  gZtcPacketToClient.structured.header.opcodeGroup = 0xA4;
  gZtcPacketToClient.structured.header.msgType = mZtcLowLevelMemoryReadBlock_c; 
  gZtcPacketToClient.structured.header.len = (uint8_t)nBytes; 

}

 
 
void  ZtcMemoryReadByte(void)
{
  uint8_t *addr;

  FLib_MemCpy(&addr, gZtcPacketFromClient.structured.payload, 4);


  gZtcPacketToClient.structured.payload[0] = *addr;
  gZtcPacketToClient.structured.header.opcodeGroup = 0xA4;
  gZtcPacketToClient.structured.header.msgType = mZtcLowLevelMemoryReadByte_c; 
  gZtcPacketToClient.structured.header.len = sizeof(uint8_t); 


}
 
 
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
  gZtcPacketToClient.structured.header.opcodeGroup = 0xA4;
  gZtcPacketToClient.structured.header.msgType = mZtcLowLevelMemoryReadWord_c; 
  gZtcPacketToClient.structured.header.len = 2; 
}
 
 
void  ZtcMemoryReadLong(void)
{
  uint8_t *addr;
  uint8_t lcount;
  uint8_t *pIn, *pOut;

  FLib_MemCpy(&addr, gZtcPacketFromClient.structured.payload, 4);
  lcount = 4;

  pOut = addr;  
  pIn = &gZtcPacketToClient.structured.payload[0];
  for (;lcount != 0; lcount--) 
    *pIn++ = *pOut++;

  gZtcPacketToClient.structured.header.opcodeGroup = 0xA4;
  gZtcPacketToClient.structured.header.msgType = mZtcLowLevelMemoryReadLong_c; 
  gZtcPacketToClient.structured.header.len = 4; 
}


 
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
  if (!(((int)pOut < 0x00400000) && (((int)pOut & 0xF0000000)!= 0x80000000)))
     {
      *pOut++ = *pIn++;
      nWritten++;
     }
  }
  gZtcPacketToClient.structured.header.opcodeGroup = 0xA4;
  gZtcPacketToClient.structured.header.msgType = mZtcLowLevelMemoryWriteBlock_c; 
  gZtcPacketToClient.structured.header.len = 1;
  gZtcPacketToClient.structured.payload[0] = nWritten;
}
 
 

void  ZtcMemoryWriteByte(void)
{
  uint8_t *addr;
  uint8_t vIn, *pOut, nWritten;


  FLib_MemCpy(&addr, gZtcPacketFromClient.structured.payload, 4);  
  vIn = gZtcPacketFromClient.structured.payload[sizeof(addr)];
  pOut = addr;
  nWritten = 0;

  if (!((int)pOut < 0x00400000) && ((((int)pOut & 0xF0000000)!= 0x80000000)))  
  {
    *pOut = vIn ;
    nWritten = sizeof(uint8_t); 
  }
  gZtcPacketToClient.structured.header.opcodeGroup = 0xA4;
  gZtcPacketToClient.structured.header.msgType = mZtcLowLevelMemoryWriteByte_c; 
  gZtcPacketToClient.structured.header.len = 1;
  gZtcPacketToClient.structured.payload[0] = nWritten;
}

 
 
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
    if (!(((int)pOut < 0x00400000) && (((int)pOut & 0xF0000000)!= 0x80000000)))
    {
      *pOut++ = *pIn++;
      nWritten++;
    }
  }
  gZtcPacketToClient.structured.header.opcodeGroup = 0xA4;
  gZtcPacketToClient.structured.header.msgType = mZtcLowLevelMemoryWriteWord_c; 
  gZtcPacketToClient.structured.header.len = 1;
  gZtcPacketToClient.structured.payload[0] = nWritten;
}

 
 

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
    if (!(((int)pOut < 0x00400000) && (((int)pOut & 0xF0000000)!= 0x80000000)))
    {
      *pOut++ = *pIn++;
      nWritten++;
    }
  }
  gZtcPacketToClient.structured.header.opcodeGroup = 0xA4;
  gZtcPacketToClient.structured.header.msgType = mZtcLowLevelMemoryWriteLong_c; 
  gZtcPacketToClient.structured.header.len = 1;
  gZtcPacketToClient.structured.payload[0] = nWritten;
}

 
 

void  ZtcPing(void)
{
  gZtcPacketToClient.structured.header.opcodeGroup = 0xA4;
  gZtcPacketToClient.structured.header.msgType = mZtcLowLevelPing_c; 
  gZtcPacketToClient.structured.header.len = gZtcPacketFromClient.structured.header.len;
  FLib_MemCpy(gZtcPacketToClient.structured.payload, gZtcPacketFromClient.structured.payload,
              gZtcPacketFromClient.structured.header.len );

}

 

