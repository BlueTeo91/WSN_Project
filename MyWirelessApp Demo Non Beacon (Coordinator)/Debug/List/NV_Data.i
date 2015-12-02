









 














 






 

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


















 
 






 
#pragma location = "nv_data_init_struct"
const HardwareParameters_t gHardwareParameters = 
{
 "Delim", 
  
 24000/1000,                                    
 
 {0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF},     
 
  (uint8_t)gAspPowerLevel_m1dBm,                                
 
  0,
  
  { gAspPowerLevel_4d5dBm, gAspPowerLevel_4d5dBm, gAspPowerLevel_4d5dBm, gAspPowerLevel_4d5dBm, gAspPowerLevel_4d5dBm, gAspPowerLevel_4d5dBm, gAspPowerLevel_4d5dBm, gAspPowerLevel_4d5dBm, gAspPowerLevel_4d5dBm, gAspPowerLevel_4d5dBm, gAspPowerLevel_4d5dBm, gAspPowerLevel_4d5dBm, gAspPowerLevel_4d5dBm, gAspPowerLevel_4d5dBm, gAspPowerLevel_4d5dBm, gAspPowerLevel_4d5dBm },                                        
  
  0x39,                                     
  
  0,
  
  1,                              
  0x08,                                     
  0x0F,                                     
  24,                               
  21,                                 
  95,                                
  0,                             
  { 0x2f, 0x2f, 0x2f, 0x2f, 0x2f, 0x2f, 0x2f, 0x2f, 0x2f, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30, 0x30 },                                 
  { 0x00355555, 0x006aaaaa, 0x00a00000, 0x00d55555, 0x010aaaaa, 0x01400000, 0x01755555, 0x01aaaaaa, 0x01e00000, 0x00155555, 0x004aaaaa, 0x00800000, 0x00b55555, 0x00eaaaaa, 0x01200000, 0x01555555 },                                 
   0,
  "Delim"  
};




 

 

 
 




 
NvDataItemDescription_t const gaNvNwkDataSet[] = {
  {(( void * )( 0 )), 0}        
};

 
extern NvDataItemDescription_t const gaNvAppDataSet[];

 
 
 
NvDataSetDescription_t const NvDataSetTable[2] = {
  {0x12, gaNvNwkDataSet},
  {0x20, gaNvAppDataSet}
};




