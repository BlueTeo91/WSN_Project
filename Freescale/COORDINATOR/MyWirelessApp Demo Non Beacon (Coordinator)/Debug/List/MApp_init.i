









 











 











 











 











 






 

 

 

 





 

 





 

 











 














 






 

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













 






 











 




  


















































 

  

  

  

  







 

  

  






 

  
enum {
  gAspPowerLevel_m30dBm,     
  gAspPowerLevel_m28dBm,     
  gAspPowerLevel_m27dBm,     
  gAspPowerLevel_m26dBm,     
  gAspPowerLevel_m24dBm,     
  gAspPowerLevel_m21dBm,     
  gAspPowerLevel_m19dBm,     
  gAspPowerLevel_m17dBm,     
  gAspPowerLevel_m16dBm,     
  gAspPowerLevel_m15dBm,     
  gAspPowerLevel_m11dBm,     
  gAspPowerLevel_m10dBm,     
  gAspPowerLevel_m4d5dBm,    
  gAspPowerLevel_m3dBm,      
  gAspPowerLevel_m1d5dBm,    
  gAspPowerLevel_m1dBm,      
  gAspPowerLevel_1d7dBm,     
  gAspPowerLevel_3dBm,       
  gAspPowerLevel_4d5dBm      
};


 

  
enum {
  gAspNotifyNone_c,         
  gAspNotifyIdle_c,         
  gAspNotifyInactive_c,     
  gAspNotifyIdleInactive_c, 
  gAspNotifyLastEntry_c     
};

  
enum {
  gTestForceIdle_c=0  ,
  gTestPulseTxPrbs9_c,
  gTestContinuousRx_c,
  gTestContinuousTxMod_c,
  gTestContinuousTxNoMod_c
};

  
enum {
  gAspMacStateIdle_c = 0,
  gAspMacStateBusy_c,
  gAspMacStateNotEmpty_c
};

  
typedef enum {
  gAspRfSignalANT1_c,
  gAspRfSignalANT2_c,
  gAspRfSignalTXON_c,
  gAspRfSignalRXON_c,
  gAspRfSignalMax_c
}AspRfSignalType_t;

  
typedef enum {
  gAspRfSignalFunctionGPIO_c,
  gAspRfSignalFunction1_c,
  gAspRfSignalFunction2_c,
  gAspRfSignalFunctionMax_c
}AspRfSignalFunction_t;




enum {
  gAspErrorCfm_c,       
  gAspAppWakeInd_c,
  gAspAppIdleInd_c,
  gAspAppInactiveInd_c,
  gAspAppEventInd_c,
  gAspMaxPrimitives_c
};

#pragma pack(1)
  
typedef struct appWakeInd_tag {
  uint8_t status;
} appWakeInd_t;

  
typedef struct appIdleInd_tag {
  uint8_t timeRemaining[3];
} appIdleInd_t;

  
typedef struct appInactiveInd_tag {
  uint8_t timeRemaining[3];
} appInactiveInd_t;

  
typedef struct appEventInd_tag {
  uint8_t dummy; 
} appEventInd_t;


  
typedef struct appErrorCfm_tag {
  uint8_t  status;
} appErrorCfm_t;


  
typedef struct aspToAppMsg_tag {
  uint8_t msgType;
  union {
    appErrorCfm_t           appErrorCfm;
    appWakeInd_t            appWakeInd;
    appIdleInd_t            appIdleInd;
    appInactiveInd_t        appInactiveInd;
    appEventInd_t           appEventInd;
  } msgData;
} aspToAppMsg_t;

#pragma pack()





 










 
void    Asp_GetTimeReq(zbClock32_t *time);











 
void    Asp_SetDemodulatorType(bool_t demDCDenable);











 
void Asp_EnableComplementaryPAOutput(bool_t enable);

































 
uint8_t Asp_ConfigureRFCtlSignals(AspRfSignalType_t signalType, AspRfSignalFunction_t function, bool_t gpioOutput, bool_t gpioOutputHigh);

















 
uint8_t Asp_SetPowerLevelLockMode(bool_t enableLock);

















 
uint8_t Asp_GetMacStateReq(void);














 
void    Asp_WakeReq(void);

 
 













 
  uint8_t Asp_DozeReq(zbClock32_t *dozeDuration, uint8_t clko_en);

  



















 
  void Asp_AutoDozeReq(bool_t  autoEnable, bool_t  enableWakeIndication, zbClock32_t *autoDozeInterval, uint8_t clko_en);

  












 
  uint8_t Asp_HibernateReq(void);

  












 
  void Asp_SetMinDozeTimeReq(zbClock32_t *minDozeTime);

  
















 
  uint8_t Asp_AcomaReq(uint8_t clko_en);

  



















 
  uint8_t Asp_ClkoReq(bool_t  clkoEnable, uint8_t clkoRate);

  











 
  void    Asp_TrimReq(uint8_t fineTune, uint8_t coarseTune);

  









 
  void    Asp_DdrReq(uint8_t directionMask);

  













 
  void Asp_PortReq(uint8_t portWrite, uint8_t *portValue);

  












 
  uint8_t Asp_EventReq(zbClock32_t *time);


  




































 
  uint8_t Asp_SetPowerLevel(uint8_t powerLevel);
  
  







 
  uint8_t Asp_GetPowerLevel();










 
uint8_t ASP_APP_SapHandler
  (
  aspToAppMsg_t *pMsg
  );

extern  uint8_t (*pfASP_APP_SapHandler)(aspToAppMsg_t* pMsg);
















 















 







 





 





 





 





 











 
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












 





 
void StartNvmReg(void);



 
void StopNvmReg(void);










 
void PlatformPortInit(void);














 
void Platform_Init(void);















 
void Init_802_15_4 (bool_t mUseTS);











 











 













 










 





 







 





 
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






































 
typedef void (*IntHandlerFunc_t)(void);


typedef enum {
    gItcNormalPriority_c,
    gItcFastPriority_c
} ItcPriority_t;



typedef enum {
    gItcErr_OK_c,
    gItcErr_InvalidNumber_c,
    gItcErr_InvalidPriority_c
} ItcErr_t;


typedef enum {
    gAsmInt_c,
    gUart1Int_c,
    gUart2Int_c,
    gCrmInt_c,
    gI2cInt_c,
    gTmrInt_c,
    gFlashInt_c,
    gMacaInt_c,
    gSsiInt_c,
    gAdcInt_c,
    gSpiInt_c,
    gMaxInt_c,
    gUndefinedException_c,
    gSupervisorException_c,
    gPrefetchAbortException_c,
    gDataAbortException_c,
    gMaxException_c
} ItcNumber_t;








 










 










 











 











 











 










 










 







 











 
extern void ITC_Init(void);












 
extern ItcErr_t IntAssignHandler(ItcNumber_t Number, IntHandlerFunc_t pfIrqHandler);












 
extern IntHandlerFunc_t IntGetHandler(ItcNumber_t Number);













 
extern ItcErr_t ITC_SetPriority(ItcNumber_t Number, ItcPriority_t Priority);











 
extern ItcErr_t ITC_EnableInterrupt(ItcNumber_t Number);











 
extern ItcErr_t ITC_DisableInterrupt(ItcNumber_t Number);












 
extern ItcErr_t ITC_SetIrqMinimumLevel(ItcNumber_t Number);






extern void InterruptInit(void);
extern void IntRestoreFIQ(unsigned int);  
extern void IntRestoreIRQ(unsigned int);  
extern void IntRestoreAll(unsigned int);  
extern unsigned int IntDisableIRQ(void);  
extern unsigned int IntDisableFIQ(void);  
extern unsigned int IntDisableAll(void);  














 






 

  






 





 












 














 













 







 

 

 
 

 
  



 


 
 

 

 





 

 

 

 
 
 
 

 
 
 
 

 
 





 

 

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

    




 




 




 





 





 






 


 
enum {
  gPrtHexBigEndian_c = 1<<0,
  gPrtHexNewLine_c   = 1<<1,
  gPrtHexCommas_c    = 1<<2,
  gPrtHexSpaces_c    = 1<<3
};

typedef enum {
	gNoBlock_d  = 0,
	gAllowToBlock_d
}uartUtilBlock_t;





 





 
















 
void UartUtil_Print(uint8_t* pString, uartUtilBlock_t allowToBlock);


















 
void UartUtil_PrintHex(uint8_t *hex, uint8_t len, uint8_t flags);














 
void UartUtil_Tx(uint8_t * pData, uint8_t length);















 
void UartUtil_ConfigureStopMode(bool_t enterStopMode);















 














 





 

 

 





 














 






 

 
typedef struct 
{
  const uint16_t* pFontIndexTable;
  const uint8_t*  pFontCharTable;
  uint8_t         fontHeight;
} font_t;





 





 





 

extern const uint16_t gLCDNormalIndex[];
extern const uint8_t  gLCDNormalFont[];
extern const uint16_t gLCDVerdanaIndex[];
extern const uint8_t  gLCDVerdanaFont[];






 
 

 
 


 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 


 
 
 



 






 

typedef enum {
    gLCD_HexFormat_c,
    gLCD_DecFormat_c
}LCD_t;

typedef enum lcdFontType_tag
{
  gLCD_NormalFont_c = 0,
  gLCD_VerdanaFont_c,
  gLCD_MaxFont_c = 2
}lcdFontType_t;

typedef enum lcdError_tag
{
  gLCD_NoError_c = 0,
  gLCD_QueueFull_c
}lcdError_t;





 





 





 

extern const font_t aLCDFont[2];





 










 
extern void LCD_Init(void);











 
extern void LCD_ClearDisplay(void);











 
extern void LCD_WriteString(
  uint8_t line,   
  uint8_t *pstr	  
);












 
extern void LCD_WriteStringValue
  (
  uint8_t *pstr, 		  
  uint16_t value, 	  
  uint8_t line, 		   
  LCD_t numberFormat  
  );












 
extern void LCD_WriteBytes
(
	uint8_t   *pstr,    
	uint8_t   *value,   
	uint8_t   line,     
	uint8_t   length    
);











 
extern void LCD_WriteCommand(uint8_t command);











 
extern void LCD_WriteData(uint8_t data);













 
extern bool_t LCD_SetFont(lcdFontType_t font);















 
extern lcdError_t LCD_CheckError(void);

















 
extern void LCD_WriteBitmap(                      
  uint8_t *pstr,	   
  uint8_t len,       
  uint8_t line,      
  uint8_t *bitmap 	     
);















 











 






 





 

typedef enum
{
  gGpioPort0_c = 0,
  gGpioPort1_c,
  gGpioPortMax_c
} GpioPort_t;

typedef enum
{
  gGpioDirIn_c = 0,
  gGpioDirOut_c,
  gGpioDirMax_c
} GpioDirection_t;

typedef enum
{
  gGpioPinStateLow_c = 0,
  gGpioPinStateHigh_c,
  gGpioPinStateMax_c,
} GpioPinState_t;

typedef enum
{
  gGpioPinReadPad_c = 0,
  gGpioPinReadReg_c,
  gGpioPinReadMax_c
} GpioPinReadSel_t;

typedef enum
{
  gGpioPinPulldown_c = 0,
  gGpioPinPullup_c,
  gGpioPinPullupMax_c,
} GpioPinPullupSel_t;

typedef enum
{
  gGpioPin0_c,   gGpioPin1_c,  gGpioPin2_c,  gGpioPin3_c,  gGpioPin4_c,  gGpioPin5_c,  gGpioPin6_c, gGpioPin7_c,
  gGpioPin8_c,   gGpioPin9_c, gGpioPin10_c, gGpioPin11_c, gGpioPin12_c, gGpioPin13_c, gGpioPin14_c, gGpioPin15_c,
  gGpioPin16_c, gGpioPin17_c, gGpioPin18_c, gGpioPin19_c, gGpioPin20_c, gGpioPin21_c, gGpioPin22_c, gGpioPin23_c,
  gGpioPin24_c, gGpioPin25_c, gGpioPin26_c, gGpioPin27_c, gGpioPin28_c, gGpioPin29_c, gGpioPin30_c, gGpioPin31_c,
  gGpioPin32_c, gGpioPin33_c, gGpioPin34_c, gGpioPin35_c, gGpioPin36_c, gGpioPin37_c, gGpioPin38_c, gGpioPin39_c,
  gGpioPin40_c, gGpioPin41_c, gGpioPin42_c, gGpioPin43_c, gGpioPin44_c, gGpioPin45_c, gGpioPin46_c, gGpioPin47_c,
  gGpioPin48_c, gGpioPin49_c, gGpioPin50_c, gGpioPin51_c, gGpioPin52_c, gGpioPin53_c, gGpioPin54_c, gGpioPin55_c,
  gGpioPin56_c, gGpioPin57_c, gGpioPin58_c, gGpioPin59_c, gGpioPin60_c, gGpioPin61_c, gGpioPin62_c, gGpioPin63_c,
  gGpioPinMax_c
} GpioPin_t;

typedef enum {
  gGpioNormalMode_c = 0,
  gGpioAlternate1Mode_c,
  gGpioAlternate2Mode_c,
  gGpioAlternate3Mode_c,
  gGpioFunctionModeMax_c
} GpioFunctionMode_t;

typedef enum {
  gGpioErrNoError_c = 0,
  gGpioErrInvalidParameter_c
} GpioErr_t;

typedef enum {
  gGpioDirAttr_c = 0,
  gGpioDataAttr_c ,
  gGpioInputDataSelAttr_c,
  gGpioPullUpEnAttr_c ,
  gGpioPullUpSelAttr_c,
  gGpioHystEnAttr_c,
  gGpioPullUpKeepAttr_c,
  gGpioMaxAttr_c
}GpioPortAttr_t;

typedef struct{
  uint32_t portDir;
  uint32_t portData;
  uint32_t portInputDataSel;
  uint32_t portPuEn;
  uint32_t portPuSel;
  uint32_t portHystEn;
  uint32_t portPuKeepEn;
}GpioPortInit_t;





 





 





 





 

 

 
 















 
 
extern GpioErr_t Gpio_InitPort(GpioPort_t gpioPort, GpioPortInit_t* gpioPortInit);

 
 




















 
 
extern GpioErr_t Gpio_WrPortSetting(GpioPort_t gpioPort, GpioPortAttr_t portAttr, uint32_t portAttrValue, uint32_t mask);

 
 
















 
 
extern GpioErr_t Gpio_RdPortSetting(GpioPort_t gpioPort, GpioPortAttr_t portAttr, uint32_t* portAttrValue);

 

 
 


















 
 
extern GpioErr_t Gpio_SetPortDir(GpioPort_t gpioPort, uint32_t portDir, uint32_t mask);

 
 














 
 
extern GpioErr_t Gpio_GetPortDir(GpioPort_t gpioPort, uint32_t* portDir);

 
 













 
 
extern GpioErr_t Gpio_SetPinDir(GpioPin_t gpioPin, GpioDirection_t gpioPinDir);

 
 













 
 
extern GpioErr_t Gpio_GetPinDir(GpioPin_t gpioPin, GpioDirection_t* gpioPinDir);

 

 
 


















 
 
extern GpioErr_t Gpio_SetPortData(GpioPort_t gpioPort, uint32_t portData, uint32_t mask);

 
 














 
 
extern GpioErr_t Gpio_GetPortData(GpioPort_t gpioPort, uint32_t* portData);

 
 














 
 
extern GpioErr_t Gpio_SetPinData(GpioPin_t gpioPin, GpioPinState_t gpioPinState);


 
 














 
 
extern GpioErr_t Gpio_GetPinData(GpioPin_t gpioPin, GpioPinState_t* gpioPinState);

 
 











 
 
extern GpioErr_t Gpio_TogglePin(GpioPin_t gpioPin);

 

 
 















 
 
extern GpioErr_t Gpio_SetPinReadSource(GpioPin_t gpioPin, GpioPinReadSel_t gpioReadSource);

 
 















 
 
extern GpioErr_t Gpio_GetPinReadSource(GpioPin_t gpioPin, GpioPinReadSel_t* gpioReadSource);

 

 
 















 
 
extern GpioErr_t Gpio_EnPinPullup(GpioPin_t gpioPin, bool_t gpioEnPinPu);

 
 















 
 
extern GpioErr_t Gpio_IsPinPullupEn(GpioPin_t gpioPin, bool_t* gpioEnPinPu);

 

 
 














 
 
extern GpioErr_t Gpio_SelectPinPullup(GpioPin_t gpioPin, GpioPinPullupSel_t gpioPinPuSel);

 
 
















 
 
extern GpioErr_t Gpio_GetPinPullupSel(GpioPin_t gpioPin, GpioPinPullupSel_t* gpioPinPuSel);

 

 
 













 
 
extern GpioErr_t Gpio_EnPinPuKeeper(GpioPin_t gpioPin, bool_t gpioEnPinPuKeep);

 
 
















 
 
extern GpioErr_t Gpio_IsPinPuKeeperEn(GpioPin_t gpioPin, bool_t* gpioEnPinPuKeep);

 

 
 













 
 
extern GpioErr_t Gpio_EnPinHyst(GpioPin_t gpioPin, bool_t gpioEnPinHyst);

 
 
















 
 
extern GpioErr_t Gpio_IsPinHystEn(GpioPin_t gpioPin, bool_t* gpioEnPinHyst);

 

 
 


















 
 
extern GpioErr_t Gpio_SetPortFunction(GpioPort_t gpioPort, GpioFunctionMode_t gpioPortFunction, uint32_t mask);

 
 














 
 
extern GpioErr_t Gpio_SetPinFunction(GpioPin_t gpioPin, GpioFunctionMode_t gpioPinFunction);

 
 














 
 
extern GpioErr_t Gpio_GetPinFunction(GpioPin_t gpioPin, GpioFunctionMode_t* gpioPinFunction);






 


 

 


 
typedef uint8_t LED_t;




 
typedef uint8_t LedState_t;  

enum  
{
  gLedFlashing_c,          
  gLedStopFlashing_c,      
  gLedBlip_c,              
  gLedOn_c,                
  gLedOff_c,               
  gLedToggle_c             
};















 






 
 
 

 





 
 





 
 





 
 





 
 



 





 

 

 




 
 

 

 
                        






 

void LED_Init(void);                                       

void LED_TurnOffLed(LED_t LEDNr);                          
void LED_TurnOnLed(LED_t LEDNr);                           
void LED_ToggleLed(LED_t LEDNr);                           

void LED_StartFlash(LED_t LEDNr);                          
void LED_StopFlash (LED_t LEDNr);                          

void LED_StartSerialFlash(void);                           
void LED_StopFlashingAllLeds(void);                        
void LED_ExitSerialFlash(void);                            

void LED_TurnOffAllLeds(void);                             
void LED_TurnOnAllLeds(void);                              

LedState_t  LED_GetLed( LED_t LEDNr);                      
void    LED_SetLed( LED_t LEDNr, LedState_t  state);       
void    LED_SetHex( uint8_t hexValue);                     
void    Set_Pins  ( LED_t LEDNr);                          

 





 
 





 
 





 
 











 











 



 
 

 

 



 
 

 
 







 

 
typedef uint8_t key_event_t;

 
enum {
  gKBD_EventSW1_c = 1,
  gKBD_EventSW2_c,
  gKBD_EventSW3_c,
  gKBD_EventSW4_c,
  gKBD_EventLongSW1_c,
  gKBD_EventLongSW2_c,
  gKBD_EventLongSW3_c,
  gKBD_EventLongSW4_c
};


 
enum {
  gJoystick_Event1_c = 1,
  gJoystick_Event2_c,
  gJoystick_Event3_c,
  gJoystick_Event4_c,
  gJoystick_Event1Long_c,
  gJoystick_Event2Long_c,
  gJoystick_Event3Long_c,
  gJoystick_Event4Long_c,
  gJoystick_CenterKey_c,
  gJoystick_CenterKeyLong_c
};


 
typedef void (*KBDFunction_t) ( uint8_t events );





 






 










 
extern void KBD_Init
  (
  KBDFunction_t pfCallBackAdr  
  );


 
extern void CrmKBDIsr(void);








 
extern void KBD_EnableDisableKeyScan(bool_t enable);

 
extern void KBD_Task(event_t events);










 



 






 

 
 
 
 
 
 
 

 

 

 

 

 











 


 












 

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







 

  

  

 





 

 
enum {
  stateInit,
  stateScanEdStart,
  stateScanEdWaitConfirm,
  stateStartCoordinator,
  stateStartCoordinatorWaitConfirm,
  stateListen
};



 


 
enum {
  errorNoError,
  errorWrongConfirm,
  errorNotSuccessful,
  errorNoMessage,
  errorAllocFailed,
  errorInvalidParameter,
  errorNoScanResults
};





 
extern void MApp_init(void);
extern tsTaskID_t gAppTaskID_c;

 







 

void Init_MacExtendedAddress(void) ;





 














 

  
  












 


  
  
  




  











 
void MacPhyInit_Initialize
(
 void                            
);










 
void MacPhyInit_WriteExtAddress
(
  uint8_t *pExtendedAddress 
                            
);










 
uint8_t *MacPhyInit_ReadExtAddress(void);












 








 





 






 

 

 






 

 





 

 







 


 







 












 





 





















 


 
 

 
extern tsTaskID_t gMacTaskID_c; extern void TS_PlaceHolderTaskInit( void ); extern void Mlme_Main( event_t );






 












 






 





 









 
void MacInit
  ( 
  void 
  );




 
 




 
 




 
 










 



 


 
 
 











































 





 











 

 
 
 
 

 
 
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















 







 






 

void IdleTask(event_t event);
void AppTask(event_t events);
tsTaskID_t gAppTaskID_c;
uint8_t gPowerSaveMode;





 





 

extern uint8_t aExtendedAddress[8];

static bool_t receiverOn;




 








 

void Main(void)
 {
  InterruptInit();
  IntDisableAll();
  Platform_Init();
  

  TS_Init();                             
  TMR_Init();                            							
  NvModuleInit();
  Uart_ModuleInit();
   
  MacInit();
   
  Init_802_15_4(1);


    
  gAppTaskID_c = TS_CreateTask(0x80, AppTask);
 
  MApp_init();
 
   
  (void)Gpio_SetPinData(gGpioPin23_c, gGpioPinStateLow_c);
  (void)Gpio_SetPinData(gGpioPin24_c, gGpioPinStateLow_c);
  (void)Gpio_SetPinData(gGpioPin25_c, gGpioPinStateLow_c);
  (void)Gpio_SetPinData(gGpioPin44_c, gGpioPinStateLow_c);
  
   
  TS_Scheduler(); 
 
}

void BUtl_SetReceiverOff(void)
{
  
 mlmeMessage_t msg;	  
 bool_t value; 
  
 
 msg.msgType = gMlmeGetReq_c;
 msg.msgData.getReq.pibAttribute = gMPibRxOnWhenIdle_c;
 msg.msgData.getReq.pibAttributeValue = &value; 
 (void)((NWK_MLME_SapHandler)((void *)(&msg)));
 
 if(value)
 {
   
  receiverOn = 1;
  
  value = 0;
  msg.msgType = gMlmeSetReq_c;
  msg.msgData.setReq.pibAttribute = gMPibRxOnWhenIdle_c;
  msg.msgData.setReq.pibAttributeValue = &value;
  (void)((NWK_MLME_SapHandler)((void *)(&msg)));
 }
 else
 {
   
  receiverOn = 0;
 }
 
}

void BUtl_SetReceiverOn(void)
{
  
 mlmeMessage_t msg;	  
 bool_t value = 1;
 if(receiverOn == 1)
 {  
   
  msg.msgType = gMlmeSetReq_c;
  msg.msgData.setReq.pibAttribute = gMPibRxOnWhenIdle_c;
  msg.msgData.setReq.pibAttributeValue = &value;
  (void)((NWK_MLME_SapHandler)((void *)(&msg)));
 } 
}











 

void IdleTask(event_t events)
{
   
  (void)events;
   
  NvIdle();
}










 
void Init_MacExtendedAddress( void ) 
{
  uint8_t tempExtAddress[8]= {0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF};

  if((gHardwareParameters.MAC_Address[0] == 0xFF)&&(gHardwareParameters.MAC_Address[1] == 0xFF)&&
     (gHardwareParameters.MAC_Address[2] == 0xFF)&&(gHardwareParameters.MAC_Address[3] == 0xFF)&&
     (gHardwareParameters.MAC_Address[4] == 0xFF)&&(gHardwareParameters.MAC_Address[5] == 0xFF)&&
     (gHardwareParameters.MAC_Address[6] == 0xFF)&&(gHardwareParameters.MAC_Address[7] == 0xFF))
  {
    MacPhyInit_WriteExtAddress(tempExtAddress);
  }
  else
  {
    MacPhyInit_WriteExtAddress((unsigned char*)gHardwareParameters.MAC_Address);
  }
}






 
void BeeAppAssert
  (
  assertCode_t code  
  )
{
  volatile bool_t waitForever = code;  
  
  while (waitForever)
    { }
}





 
uint16_t Swap2Bytes(uint16_t iOldValue)
{
  uint16_t iValue;

  iValue = ((uint8_t *)&iOldValue)[0] << 8;
  iValue += ((uint8_t *)&iOldValue)[1];

  return iValue;
}

 


