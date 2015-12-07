









 














 






 

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















 






 

 
 
 


 


 





 
typedef unsigned char NvRawPage_t[ 508 ];
typedef unsigned char NvRawSector_t[ 4096];

typedef  uint32_t NvRawPageAddress_t;
typedef  uint32_t NvRawSectorAddress_t;


 
typedef uint16_t NvSize_t;







 









 




 

extern NvRawSectorAddress_t const maNvRawSectorAddressTable[ 2];






 

 
void NvHalEraseSector
  (
  NvRawSectorAddress_t NvRawSectorAddress
  );

 
void NvHalInit( void );

 
void NvHalRead
  (
  NvRawPageAddress_t nvRawPageAddress,
  NvSize_t srcPageOffset,
  unsigned char *pDst,
  NvSize_t dstLen
  );

 
 
 
 
bool_t NvHalWrite
  (
  NvRawPageAddress_t nvRawPageAddress,
  NvSize_t dstPageOffset,
  unsigned char *pSource,
  NvSize_t sourceLen
  );
  
  
  bool_t NvHalVerify
  (
  NvRawPageAddress_t nvRawPageAddress,
  NvSize_t dstPageOffset,
  unsigned char *pSource,
  NvSize_t sourceLen
  );

  bool_t NvHalIsBlank
  (
  NvRawPageAddress_t nvRawPageAddress,
  NvSize_t dstPageOffset,
  NvSize_t length
  ) ;





 

 
 













 







 




 


 
 
 

typedef uint8_t NvSectorSequenceNumber_t;


 
 
 

 
 
 
 
 
 
 
 

typedef uint8_t NvMagicNumber_t;



#pragma pack(push,current)
#pragma pack(1)

typedef struct NvStructuredSectorHeader_tag 
{
  NvMagicNumber_t magicNumber;
  NvSectorSequenceNumber_t sequenceNumber;
} NvStructuredSectorHeader_t;

typedef struct NvStructuredPageHeader_tag 
{
  NvMagicNumber_t magicNumber;
  NvDataSetID_t dataSetID;
} NvStructuredPageHeader_t;

 
 
 
 
typedef struct NvStructuredPage_tag {
  NvStructuredPageHeader_t header;
  unsigned char clientData[   sizeof(NvRawPage_t)
                            - sizeof(NvStructuredPageHeader_t)
                            - sizeof(NvStructuredPageHeader_t)];
  NvStructuredPageHeader_t trailer;
} NvStructuredPage_t;

typedef struct NvStructuredSector_tag {
  NvStructuredSectorHeader_t header;
  unsigned char clientData[   sizeof(NvRawSector_t)
                            - sizeof(NvStructuredSectorHeader_t)
                            - sizeof(NvStructuredSectorHeader_t)];
  NvStructuredSectorHeader_t trailer;
} NvStructuredSector_t;
#pragma pack(pop,current)
typedef NvRawPageAddress_t NvSectPageInfo_t[ 2 ];




 

 
 

 
 
 
 
 
 
 
extern void const *pNvPrimitiveSearch
  (
  unsigned char *pDelimiterString,
  index_t delimiterStringLen,
  NvSize_t totalStructLen
  );












 













 










 





 







 





 
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






































 





 



 



 



 



 



 



 



 



 



 



 



 



 






 






 
typedef enum
{
  gCrmErrNoError_c,
  gCrmErrCopCntlWP_c,
  gCrmErrXtalCntlWP_c,
  gCrmErrInvalidParameters_c,
  gCrmErrCalInProgress_c,
  gCrmErrNoCalInProgress_c,
  gCrmErrRingOscOff_c,
  gCrmErrIgnoredInActualPowerMode_c,
  gCrmErrInvalidPowerSource_c,
  gCrmErrBuckNotEnabledNorBypassed_c
}crmErr_t;

typedef enum
{
  gCrmPwS3V3Battery_c,
  gCrmPwSBuckRegulation_c,
  gCrmPwS1V8Battery_c,
  gCrmPwSNotValid_c
}crmPowerSource_t;

typedef enum
{
  gPadStandardDrive_c,
  gPadHighDrive_c
}crmPadsDriveStrength_t;

typedef enum 
{
  gARegDisable_c,
  gRxTxRegEnable_c,
  gARegNotValid_c,
  gRxTxandPLLRegEnable_c = 3
}crmAnalogVRegEnable_t;

typedef enum 
{
  gARegCurent4mA_c,
  gARegCurent20mA_c,
  gARegCurentNotValid_c,
  gARegCurent40mA_c = 3
}crmAnalogVRegCurrentSel_t;

typedef enum 
{
  gBuckVReg_c,
  g1P5VReg_c,
  g1P8VReg_c,
  gMaxVReg_c
}crmVReg_t;

typedef enum 
{
  gBuckClkDiv_16_c,
  gBuckClkDiv_8_c = 8,
  gBuckClkDiv_9_c,
  gBuckClkDiv_10_c,
  gBuckClkDiv_11_c,
  gBuckClkDiv_12_c,
  gBuckClkDiv_13_c,
  gBuckClkDiv_14_c,
  gBuckClkDiv_15_c
}crmBuckClkDiv_t;

typedef   struct
{
  uint32_t buckEn:1; 
  uint32_t buckSyncRecEn:1; 
  uint32_t buckBypassEn:1; 
  uint32_t buckClkDiv:4; 
}crmBuckCntl_t;

typedef   struct
{
  uint32_t vReg1P5VEn:2; 
  uint32_t vReg1P5VISel:2; 
}crmVReg1P5VCntl_t;                

typedef   struct
{
  crmVReg_t vReg;
  union
  {
    crmBuckCntl_t buckCntl;
    crmVReg1P5VCntl_t vReg1P5VCntl;
    bool_t vReg1P8VEn;
  }cntl;
}crmVRegCntl_t;               




typedef enum
{
  gCrmTimerWuEvent_c,
  gCrmRTCWuEvent_c,
  gCrmKB4WuEvent_c,
  gCrmKB5WuEvent_c,
  gCrmKB6WuEvent_c,
  gCrmKB7WuEvent_c,
  gCrmCalDoneEvent_c,
  gCrmXtal32ReadyEvent_c,
  gCrmCOPTimeoutEvent_c
}crmInterruptSource_t;

typedef enum
{
  gBgapBatt_c,
  gBgap1P8V_c,
  gVReg0P9VTrim_c,
  gVReg0P9ITrim_c,
  gVRegXtalTrim_c,
  gVRegOscTrim_c,
  gTrimMax_c
}crmTrimmedDevice_t;

typedef void (*pfCallback_t)(void);

typedef enum
{
  gXSD512_c,
  gXSD1024_c, 
  gXSD2048_c,
  gXSD4096_c,
  gXSD8192_c,
  gXSD16384_c,
  gXSD32768_c,
  gXSD65536_c
}crmXtalStartupDelay_t;

typedef union
{
  uint32_t word;
  struct
  {
    uint32_t wp:1;
    uint32_t smallSig:1;
    uint32_t startupDelayBypass:1;
    uint32_t startupDelaySel:3;
    uint32_t refXtalDiv:6;
  }bit; 
}crmRefXtalCntl_t;              

typedef enum
{
  gAutomaticBs_c,
  gManualBs_c,
  gDisableBs_c
}crmBSCntl_t;

typedef union
{
  uint32_t word;
  struct
  {
    uint32_t armEn:1;
    uint32_t macaEn:1;
    uint32_t asmEn:1;
    uint32_t spiEn:1;
    uint32_t gpioEn:1;
    uint32_t uart1En:1;
    uint32_t uart2En:1;
    uint32_t tmrEn:1;
    uint32_t rifEn:1;
    uint32_t i2cEn:1;
    uint32_t ssiEn:1;
    uint32_t spiFEn:1;
    uint32_t adcEn:1;
    uint32_t ahbEn:1;
    uint32_t jtagEn:1;
    uint32_t nexEn:1;
    uint32_t tmxEn:1;
    uint32_t aimEn:1;
  }bit;
}crmModuleEnableStatus_t;

typedef  union
{
  uint32_t word;
  struct
  {
    uint32_t copEn:1;
    uint32_t copOut:1;
    uint32_t copWP:1;
    uint32_t copTimeOut:7;
  } bit;
}crmCopCntl_t;

typedef enum
{
  gExtWu_c,
  gTimerWu_c,
  gRtcWu_c
} crmWuSource_t;

typedef enum
{
  gExtWuEventLevel_c,
  gExtWuEventEdge_c
}crmExtWuEvent_t;

typedef enum
{
  gExtWuPolLLevel_or_NEdge_c,
  gExtWuPolHLevel_or_PEdge_c
}crmExtWuPol_t;

typedef union
{
  uint32_t word;
  struct 
  {
    uint32_t  kbi4WuEn:1;
    uint32_t  kbi5WuEn:1;
    uint32_t  kbi6WuEn:1;
    uint32_t  kbi7WuEn:1;
    uint32_t  kbi4WuEvent:1;
    uint32_t  kbi5WuEvent:1;
    uint32_t  kbi6WuEvent:1;
    uint32_t  kbi7WuEvent:1;
    uint32_t  kbi4WuPol:1;
    uint32_t  kbi5WuPol:1;
    uint32_t  kbi6WuPol:1;
    uint32_t  kbi7WuPol:1;
    uint32_t  kbi4IntEn:1;
    uint32_t  kbi5IntEn:1;
    uint32_t  kbi6IntEn:1;
    uint32_t  kbi7IntEn:1;
  }bit;
  struct 
  {
    uint32_t  kbiWuEn:4;
    uint32_t  kbiWuEvent:4;
    uint32_t  kbiWuPol:4;
    uint32_t  kbiIntEn:4;
  }nibble;
}crmExtWuCtrl_t;

 
 
 
 
               
typedef struct
{
  uint32_t timerWuEn:1; 
  uint32_t timerWuIntEn:1; 
  uint32_t timeOut;      
}crmTimerWuCtrl_t; 
              
              
typedef struct
{
  uint32_t rtcWuEn:1;
  uint32_t rtcWuIntEn:1;
  uint32_t timeOut;      
}crmRtcWuCtrl_t;    

              
typedef struct{
  crmWuSource_t wuSource;
  union
  {
    crmExtWuCtrl_t   ext;
    crmTimerWuCtrl_t timer;
    crmRtcWuCtrl_t   rtc;              
  }ctrl;
}crmWuCtrl_t;

typedef enum
{
  gRamRet8k_c,
  gRamRet32k_c,
  gRamRet64k_c,
  gRamRet96k_c
} crmRamRet_t;

typedef enum
{
  gNoMcuRet_c,
  gMcuRet_c,
  gMcuAndDigPadRet_c=3
} crmMcuRet_t;

typedef enum
{
  gHibernate_c,
  gDoze_c
} crmSleep_t;

typedef struct
{
  uint8_t sleepType:1;
  uint8_t ramRet:2;
  uint8_t mcuRet:1;
  uint8_t digPadRet:1;
  pfCallback_t  pfToDoBeforeSleep;
}crmSleepCtrl_t;






 






 
extern void CRM_GoToSleep(crmSleepCtrl_t* pSleepCtrl);






 
extern crmErr_t CRM_WuCntl(crmWuCtrl_t* pWuCtrl);






 
extern crmModuleEnableStatus_t CRM_ModuleEnStatus(void);






 
extern crmErr_t CRM_CopCntl(crmCopCntl_t copCntl);






 
extern crmErr_t CRM_ForceCopTimeout(void);






 
extern void CRM_Wait4Irq(void);






 
extern crmErr_t CRM_BusStealingCntl(crmBSCntl_t bsCntl,bool_t armClkGate,uint8_t cyclesToSteal);






 
extern crmErr_t CRM_RefXtalControl(crmRefXtalCntl_t xtalCntl);






 
extern crmErr_t CRM_2kToXtal32Switch(bool_t armHalted, pfCallback_t pfToCallback);






 
extern crmErr_t CRM_RingOscCal(uint16_t calLength,bool_t haltMcu, void * pTR);






 
extern crmErr_t CRM_RingOscAbortCal(void);






 
extern crmErr_t CRM_SetPowerSource(crmPowerSource_t pwSource);






 
extern crmErr_t CRM_VRegCntl(crmVRegCntl_t* pVRegCntl);






 
extern crmErr_t CRM_VRegTrimm(crmTrimmedDevice_t trimmedDevice,uint8_t trimmValue);






 
extern crmErr_t CRM_SetDigOutDriveStrength(crmPadsDriveStrength_t padsDriveStrength);






 
extern crmErr_t CRM_SetSPIFDriveStrength(crmPadsDriveStrength_t spiFDriveStrength);






 
extern crmErr_t CRM_RegisterISR(crmInterruptSource_t crmIS, pfCallback_t pfISR);






 
extern void CRM_Isr(void);






 

 

 
 
 


 





 
void PowerUpNVM(void);
void PowerDownNVM(void);
static index_t NvDataSetIndexFromID(NvDataSetID_t dataSetID);
static bool_t NvIsValidPage( NvRawPageAddress_t nvRawPageAddress , NvDataSetID_t *pDataSetID );
static bool_t NvIsValidSector (  NvRawSectorAddress_t nvRawSectorAddress  );
static bool_t NvSaveDataSetLowLevel(  index_t dataSetIndex , NvRawPageAddress_t pageAddress  );
static void NvSaveDataSet( index_t dataSetIndex );
static void NvGetFirstBlankPageInfo(NvRawPageAddress_t nvRawSectorAddress, NvRawPageAddress_t* pBlankPage, index_t* pBlankPageIndex);
static NvSectorSequenceNumber_t NvGetSectorSequenceNumber( NvRawSectorAddress_t nvRawSectorAddress );
static bool_t NvCopyDataSet  (  NvRawPageAddress_t sourcePage , NvRawPageAddress_t destPage  );
static bool_t NvOpen_Validate_Sector(NvRawSectorAddress_t nvRawSectorAddress, NvSectorSequenceNumber_t sequenceNumber, bool_t open );
static NvSectorSequenceNumber_t NvLastSectorSequence ( NvSectorSequenceNumber_t sectorSeqA,NvSectorSequenceNumber_t sectorSeqB );
static void NvGetSectorPageInfo ( NvRawSectorAddress_t nvRawSectorAddress, NvSectPageInfo_t* pSectPageInfo );
static bool_t  NvCopyTheRemainsDataSets ( NvSectPageInfo_t* oldSectPageInfo, NvSectPageInfo_t* newSectPageInfo, NvRawPageAddress_t firstBlankPageAddress,index_t firstBlankPageIndex );






 

 
typedef struct NvDataSetInfo_tag {
  bool_t saveNextInterval;
  NvSaveInterval_t ticksToNextSave;
  NvSaveCounter_t countsToNextSave;
} NvDataSetInfo_t;






 

 
static NvDataSetInfo_t maNvDirtyFlags[2];

 
NvSaveInterval_t gNvMinimumTicksBetweenSaves = 4;
 
static NvSaveCounter_t gNvCountsBetweenSaves = 256;

 
static uint8_t mNvCriticalSectionFlag = 0;

 






 





 

void NvClearCriticalSection(void) {
  if(mNvCriticalSectionFlag)   
    --mNvCriticalSectionFlag;
}

void NvSetCriticalSection(void) {
  ++mNvCriticalSectionFlag;
}


 

 
void NvIdle(void)
{
  index_t i;

  if (mNvCriticalSectionFlag) {
    return;
  }
   
  for (i = 0; i < 2; ++i) {
    if (!maNvDirtyFlags[i].countsToNextSave) {
      NvSaveDataSet(i);
    }
  }
}                                        

 

 
bool_t NvIsDataSetDirty
  (
  NvDataSetID_t dataSetID
  )
{
  index_t dataSetIndex = NvDataSetIndexFromID(dataSetID);
  return (    maNvDirtyFlags[dataSetIndex].saveNextInterval
          || (maNvDirtyFlags[dataSetIndex].countsToNextSave != 256));
}                                        

 















 
void NvModuleInit(void)
{
  index_t i;
  index_t sectorIndex;
  NvRawSectorAddress_t      oldSectAddress , newSectAddress;
  NvSectorSequenceNumber_t  oldSectSeq , newSectSeq;
  NvSectPageInfo_t oldSectPageInfo ,  newSectPageInfo;
  NvRawPageAddress_t firstBlankPageAddress;
  index_t firstBlankPageIndex;
  
   
  PowerUpNVM();
   
  NvHalInit();
  
   
  for (i = 0; i < 2; ++i)
  {
    maNvDirtyFlags[i].saveNextInterval = 0;
    maNvDirtyFlags[i].countsToNextSave = gNvCountsBetweenSaves;
  }
  
   
   
   
  
   
   
  
  newSectAddress = 0xffffffff;
  for (sectorIndex = 0; sectorIndex < 2; ++sectorIndex)
  {
    
    if (!NvIsValidSector(maNvRawSectorAddressTable[sectorIndex])) 
    {
      if( !NvHalIsBlank(maNvRawSectorAddressTable[sectorIndex] , 0 , sizeof(NvRawSector_t)) )
      {
        NvHalEraseSector(maNvRawSectorAddressTable[sectorIndex]);
      }
    } 
    else
    {
      if(newSectAddress != 0xffffffff )
      {
        newSectSeq = NvGetSectorSequenceNumber(newSectAddress);
        oldSectSeq =   NvGetSectorSequenceNumber(maNvRawSectorAddressTable[sectorIndex]);
        if(oldSectSeq ==  NvLastSectorSequence ( newSectSeq ,oldSectSeq )  )
        {
          oldSectAddress = newSectAddress ;
          newSectAddress = maNvRawSectorAddressTable[sectorIndex];
        }
        else
        {
          oldSectAddress = maNvRawSectorAddressTable[sectorIndex];
        }
        NvGetSectorPageInfo ( newSectAddress, &newSectPageInfo );
        NvGetSectorPageInfo ( oldSectAddress, &oldSectPageInfo );
        NvGetFirstBlankPageInfo ( newSectAddress , &firstBlankPageAddress, &firstBlankPageIndex );
        if( NvCopyTheRemainsDataSets(  &oldSectPageInfo , &newSectPageInfo, firstBlankPageAddress,firstBlankPageIndex))
        {
          
          NvHalEraseSector(newSectAddress);
          newSectAddress = oldSectAddress;
        }
        else
        {
          NvHalEraseSector(oldSectAddress);
        }
      }
      else 
      {
        newSectAddress = maNvRawSectorAddressTable[sectorIndex];
      }
    }                                    
  }
  
  
  
  
   
  
  
   
  PowerDownNVM();
  
}                                        

 



















 

uint32_t NvPrimitiveSearch
  (
  unsigned char *pDelimiterString,
  index_t delimiterStringLen,
  NvSize_t totalStructLen
  )
{
  NvSize_t lastStartingOffset;
  index_t pageIndex;
  NvSize_t pageOffset;
  index_t sectorIndex;
  NvSectPageInfo_t sectPageInfo;
  NvRawPageAddress_t pageAddress;
   
   
  lastStartingOffset = sizeof(NvRawPage_t)
                     - sizeof(NvStructuredPageHeader_t)      
                     - totalStructLen;
   
  PowerUpNVM();
   
    for( sectorIndex=0; sectorIndex < 2;sectorIndex++ )
       {
        if(NvIsValidSector(maNvRawSectorAddressTable[sectorIndex]))
         {
          break;
         }
       }
    if(sectorIndex == 2)
      {
       PowerDownNVM();
       return 0;
      }
    NvGetSectorPageInfo ( maNvRawSectorAddressTable[sectorIndex], &sectPageInfo );
    
    for(pageIndex = 0; pageIndex < 2; pageIndex++)
      {
         if(sectPageInfo[pageIndex] != 0xffffffff)
         {
            pageAddress = sectPageInfo[pageIndex];
            for (pageOffset = sizeof(NvStructuredPageHeader_t); pageOffset <= lastStartingOffset;  ++pageOffset)
               {               	

               if (NvHalVerify(pageAddress,pageOffset,pDelimiterString,delimiterStringLen )
                && NvHalVerify(pageAddress,pageOffset+totalStructLen - delimiterStringLen,pDelimiterString,delimiterStringLen ))
                   {
                        
                     PowerDownNVM();
                     return pageAddress + pageOffset;
          
                   }                                
               }                                    
           
         }
      }
    
  
   
  PowerDownNVM();
  return 0;
}                                        

                                        

 

 
 
 
 

bool_t NvRestoreDataSet
  (
  NvDataSetID_t dataSetID
 )
{
  NvDataItemDescription_t const *pDataItemDescriptions;
  index_t dataSetIndex;
  index_t sectorIndex;
  NvRawSectorAddress_t sectorAddress;
  NvSectPageInfo_t sectPageInfo;
  NvSize_t pageOffset;
   
  PowerUpNVM();
   
  dataSetIndex = NvDataSetIndexFromID(dataSetID);
  
  for( sectorIndex=0; sectorIndex < 2;sectorIndex++ )
       {
       sectorAddress = maNvRawSectorAddressTable[sectorIndex];  
       if(NvIsValidSector(sectorAddress))
         {
          break;
         }
       }
  if(sectorIndex == 2)
  {
    
    PowerDownNVM(); 
    return 0;
  }

  NvGetSectorPageInfo(sectorAddress , &sectPageInfo);
  if(sectPageInfo[dataSetIndex] == 0xffffffff)
  {
    
    PowerDownNVM(); 
    return 0;
  }
  pDataItemDescriptions = NvDataSetTable[dataSetIndex].pItemDescriptions;

   
  pageOffset = sizeof(NvStructuredPageHeader_t);

   
  while (pDataItemDescriptions->length)
  {
    NvHalRead(sectPageInfo[dataSetIndex], pageOffset, (uint8_t*)pDataItemDescriptions->pointer, pDataItemDescriptions->length);
    pageOffset += pDataItemDescriptions->length;
    ++pDataItemDescriptions;
  }

  maNvDirtyFlags[dataSetIndex].saveNextInterval = 0;
  maNvDirtyFlags[dataSetIndex].countsToNextSave = 256;
   
  PowerDownNVM();
  return 1;
}
 

 
 
void NvSaveOnIdle
  (
  NvDataSetID_t dataSetID
 )
{
  maNvDirtyFlags[NvDataSetIndexFromID(dataSetID)].countsToNextSave = 0;
}

 

void NvSaveOnInterval
  (
  NvDataSetID_t dataSetID
 )
{
  index_t dataSetIndex = NvDataSetIndexFromID(dataSetID);

  if (!maNvDirtyFlags[dataSetIndex].saveNextInterval) {
    maNvDirtyFlags[dataSetIndex].ticksToNextSave  = 4;
    maNvDirtyFlags[dataSetIndex].saveNextInterval = 1;
    TS_SendEvent(gIdleTaskID, ( 1 << 0 ));  
  }
}                                        

 

 
 
void NvSaveOnCount
  (
  NvDataSetID_t dataSetID
  )
{
  index_t dataSetIndex = NvDataSetIndexFromID(dataSetID);

  if (maNvDirtyFlags[dataSetIndex].countsToNextSave) {
    --maNvDirtyFlags[dataSetIndex].countsToNextSave;
  }
}                                        

 

 
 
void NvSetMinimumTicksBetweenSaves
  (
  NvSaveInterval_t newInterval
 )
{
  gNvMinimumTicksBetweenSaves = newInterval;
}                                        

 

 
 
void NvSetCountsBetweenSaves
  (
  NvSaveCounter_t newCounter
 )
{
  gNvCountsBetweenSaves = newCounter;
}                                        

 

 
 
 
 
 
bool_t NvTimerTick(bool_t countTick)
{
  index_t i;
  bool_t fTicksLeft = 0;
  NvDataSetInfo_t *pDirtyFlags;

  if (countTick) {
    pDirtyFlags = maNvDirtyFlags;
    for (i = 0; i < 2; ++i) {
      
      if(pDirtyFlags->ticksToNextSave)
        --(pDirtyFlags->ticksToNextSave);
      if(pDirtyFlags->ticksToNextSave)
        fTicksLeft = 1;

      if (pDirtyFlags->saveNextInterval
          && !pDirtyFlags->ticksToNextSave
          && !mNvCriticalSectionFlag) {
        NvSaveDataSet(i);
      }

      ++pDirtyFlags;
    }
  }

  return fTicksLeft;
}                                        





 


 

void PowerUpNVM(void)
{
  crmVRegCntl_t VRegCntl;

  VRegCntl.vReg = g1P8VReg_c;
  VRegCntl.cntl.vReg1P8VEn =1;
  CRM_VRegCntl(&VRegCntl);
  while(!(((crmStatusReg_t*)&((CrmRegs_t *)0x80003000)->Status)->bit . vReg1P8VRdy)){};
}



 
void PowerDownNVM(void)
{
  crmVRegCntl_t VRegCntl;

  VRegCntl.vReg = g1P8VReg_c;
  VRegCntl.cntl.vReg1P8VEn =0;
  CRM_VRegCntl(&VRegCntl);
}


 



 
static index_t NvDataSetIndexFromID
  (
  NvDataSetID_t dataSetID
 )
{
  index_t i;

  for (i = 0; i < 2; ++i) {
    if (NvDataSetTable[i].pItemDescriptions
         && (NvDataSetTable[i].dataSetID == dataSetID)) {
      return i;
    }
  }

   
   
   
  for (;;) { }
}                                        


 





 


static bool_t NvIsValidPage
  (
  NvRawPageAddress_t nvRawPageAddress , NvDataSetID_t *pDataSetID
  )
{
  bool_t legitDataSetID;
  index_t i;
  NvStructuredPageHeader_t pageHeader;
  
  NvHalRead(nvRawPageAddress,0,(unsigned char*)&pageHeader,sizeof(NvStructuredPageHeader_t));
   

   
  for (legitDataSetID = 0, i = 0; i < 2; ++i) 
    {
    if(NvDataSetTable[i].dataSetID && (NvDataSetTable[i].dataSetID == pageHeader.dataSetID)) 
      {
      legitDataSetID = 1;
      *pDataSetID = pageHeader.dataSetID;
      break;
      }
    }

   
   
  if (legitDataSetID
       && NvHalVerify( nvRawPageAddress , sizeof(NvRawPage_t)- sizeof(NvStructuredPageHeader_t),(unsigned char*)&pageHeader,sizeof(NvStructuredPageHeader_t))
  
 
       && (pageHeader.magicNumber == ((NvMagicNumber_t) 0x27))) {
    return 1;
  }

  return 0;
}                                        
 




 

 
static bool_t NvIsValidSector
  (
  NvRawSectorAddress_t nvRawSectorAddress
  )
{

  NvStructuredSectorHeader_t sectorHeader;
  
  NvHalRead(nvRawSectorAddress,0,(unsigned char*)&sectorHeader,sizeof(NvStructuredSectorHeader_t));
  
   
   
  if (NvHalVerify( nvRawSectorAddress , sizeof(NvRawSector_t)- sizeof(NvStructuredSectorHeader_t),(unsigned char*)&sectorHeader,sizeof(NvStructuredSectorHeader_t))
  
 
       && (sectorHeader.magicNumber == ((NvMagicNumber_t) 0x27))) {
    return 1;
  }

  return 0;
}                                        


 
static bool_t NvOpen_Validate_Sector(NvRawSectorAddress_t nvRawSectorAddress, NvSectorSequenceNumber_t sequenceNumber, bool_t open )
  {
  NvStructuredSectorHeader_t sectorHeader;
  NvSize_t pageOffset;
  sectorHeader.magicNumber = ((NvMagicNumber_t) 0x27);
  sectorHeader.sequenceNumber = sequenceNumber;
  pageOffset = open ? 0 : ( sizeof(NvRawSector_t) - sizeof(NvStructuredSectorHeader_t) );
  if( NvHalWrite( nvRawSectorAddress , pageOffset , (uint8_t*)&sectorHeader , sizeof(NvStructuredSectorHeader_t)))
   {
    return 0;  
   }
  return 1;
  }                                        

   




 



static void NvGetFirstBlankPageInfo
  (
  NvRawSectorAddress_t nvRawSectorAddress, NvRawPageAddress_t* pBlankPage, index_t* pBlankPageIndex 
  )
{
  NvRawPageAddress_t pageAddress;
  index_t pageIndex;
  *pBlankPage = ( sizeof(NvStructuredSectorHeader_t) + 8 * sizeof(NvRawPage_t)) + nvRawSectorAddress;
  pageAddress  =   ( sizeof(NvStructuredSectorHeader_t) + (8 - 1) * sizeof(NvRawPage_t)) + nvRawSectorAddress;
  *pBlankPageIndex = pageIndex  = 8;
  
  while(pageIndex --)
  {
    if( NvHalIsBlank ( pageAddress, 0 , sizeof(NvRawPage_t)))
      {
      *pBlankPage = pageAddress;
      *pBlankPageIndex = pageIndex;
      }
    else
      {
        return;
      }
    pageAddress -= sizeof(NvRawPage_t);
  }  

}                                      
   




 


      





 

static void NvGetSectorPageInfo
  (
  NvRawSectorAddress_t nvRawSectorAddress, NvSectPageInfo_t* pSectPageInfo
  )
{
  
  NvRawPageAddress_t pageAddress;
  index_t pageIndex;
  NvDataSetID_t dataSetID;
  for(pageIndex = 0; pageIndex < 2; pageIndex++)
  {
    (*pSectPageInfo)[pageIndex] = (NvRawPageAddress_t)0xffffffff;
  }
  
 
  for(pageIndex = 0 ,pageAddress  = nvRawSectorAddress + sizeof(NvStructuredSectorHeader_t); pageIndex < 8 ; pageIndex++ , pageAddress += sizeof(NvRawPage_t ))
  {
    
        if( NvIsValidPage( pageAddress , &dataSetID ))
          {
            (*pSectPageInfo)[NvDataSetIndexFromID(dataSetID)] = pageAddress;
          }
          
  }

}                                      
            
   




 



static NvSectorSequenceNumber_t NvGetSectorSequenceNumber
  (
  NvRawSectorAddress_t nvRawSectorAddress
  )
{
  NvSectorSequenceNumber_t sectorSequenceNumber;
  NvHalRead( nvRawSectorAddress,  sizeof(NvMagicNumber_t) , (uint8_t *)&sectorSequenceNumber, sizeof(sectorSequenceNumber));
  return sectorSequenceNumber;
}                                      
   




 



static NvSectorSequenceNumber_t NvLastSectorSequence
(
NvSectorSequenceNumber_t sectorSeqA,NvSectorSequenceNumber_t sectorSeqB
)
{
  NvSectorSequenceNumber_t seqDiff;
  seqDiff = sectorSeqA - sectorSeqB;
  return (seqDiff == 1) ? sectorSeqA : sectorSeqB ;
}                                      
            
 












 
static bool_t NvSaveDataSetLowLevel
  (
  index_t dataSetIndex , NvRawPageAddress_t pageAddress
  )
{
  NvDataItemDescription_t const *pDataItemDescriptions;
  NvDataSetID_t dataSetID;
  static NvStructuredPageHeader_t pageHeader;
  NvSize_t pageOffset;
  
  dataSetID = NvDataSetTable[dataSetIndex].dataSetID;

   
  pageHeader.magicNumber = ((NvMagicNumber_t) 0x27);
  pageHeader.dataSetID = dataSetID;
  pDataItemDescriptions = NvDataSetTable[dataSetIndex].pItemDescriptions;
  pageOffset = 0;

     
   if( 0 == NvHalWrite( pageAddress,  pageOffset,  (uint8_t*) &pageHeader,  sizeof(pageHeader)) )
     {
       return 0;
     }
   pageOffset += sizeof(pageHeader);

     
     
     
    while ( pDataItemDescriptions->length) 
      {
       if( 0 == NvHalWrite( pageAddress, pageOffset, (uint8_t*)(pDataItemDescriptions->pointer), pDataItemDescriptions->length))
         {
           return 0;
         }
       pageOffset += pDataItemDescriptions->length;
      ++pDataItemDescriptions;
      }

     
    pageOffset =   sizeof(NvRawPage_t) - sizeof(NvStructuredPageHeader_t);
    if( 0 == NvHalWrite( pageAddress, pageOffset, (uint8_t *) &pageHeader, sizeof(pageHeader)) )
      {
       return 0;
      }
    return 1;
}                                        



 












 
static void NvSaveDataSet
(
index_t dataSetIndex 
)
{
  index_t i;
  NvRawSectorAddress_t activeSectorAddress , oldSectorAddress ;
  NvRawPageAddress_t firstBlankPageAddress;
  bool_t sectorChange;
  bool_t sectorOpen;
  bool_t dataSaved;
  bool_t nvmError ;
  index_t sectorIndex;
  index_t firstBlankPageIndex;
  uint8_t retries;
  NvSectorSequenceNumber_t sectSeqNo;
  NvSectPageInfo_t validSectPageInfo, newSectPageInfo;
  
  PowerUpNVM();   
  retries = 32;
  while(retries--)  
  {
    nvmError = 0;  
    sectorChange = 0;
    sectorOpen = 0;
    activeSectorAddress = 0xffffffff;
    dataSaved = 0;
    
    for( sectorIndex=0; sectorIndex < 2;sectorIndex++ )
    {
      if(NvIsValidSector(maNvRawSectorAddressTable[sectorIndex]))
      {
        activeSectorAddress = maNvRawSectorAddressTable[sectorIndex];
        NvGetFirstBlankPageInfo(activeSectorAddress, &firstBlankPageAddress, &firstBlankPageIndex);
        break;
      }
    }
    while(dataSaved == 0)
    {
      if(activeSectorAddress == 0xffffffff)
      {
        
        sectorIndex = 0;
        sectSeqNo = 0;
        activeSectorAddress = maNvRawSectorAddressTable[sectorIndex];
        firstBlankPageAddress = activeSectorAddress + sizeof(NvStructuredSectorHeader_t);
        firstBlankPageIndex = 0;
        if (nvmError =  NvOpen_Validate_Sector( activeSectorAddress , sectSeqNo, 1 ))
        {
          break;
        }
        sectorOpen = 1;
      }
      else   
      {   
        if( 8 == firstBlankPageIndex )
        {
          
          if(sectorChange || sectorOpen)
          {
            nvmError = 1;
            break;
            
            
          }
          else
          {
            
            sectSeqNo = NvGetSectorSequenceNumber(activeSectorAddress);
            oldSectorAddress = activeSectorAddress;
            NvGetSectorPageInfo(activeSectorAddress , &validSectPageInfo);
            sectSeqNo  +=  1;
            for(i=0 ; i < 2; i++ )
            {
              newSectPageInfo[i] = (NvRawPageAddress_t)0xffffffff;
            }
            sectorIndex = ((sectorIndex + 1) < 2)?(sectorIndex + 1):0 ;
            activeSectorAddress = maNvRawSectorAddressTable[sectorIndex];
            firstBlankPageAddress = activeSectorAddress + sizeof(NvStructuredSectorHeader_t);
            firstBlankPageIndex = 0;
            
            if (nvmError =  NvOpen_Validate_Sector( activeSectorAddress , sectSeqNo, 1 ) )
            {
              break;
            }
            sectorChange = 1;
            
            
            
          }
        }
      }
      if(NvSaveDataSetLowLevel(dataSetIndex,firstBlankPageAddress ))
      {
        dataSaved = 1; 
        if(sectorChange)
        {
          newSectPageInfo[dataSetIndex] = firstBlankPageAddress;
        }
      }  
      firstBlankPageAddress +=  sizeof(NvRawPage_t);
      firstBlankPageIndex ++;
      
    }
    if((sectorChange || sectorOpen) && (nvmError == 0))
      {
      
      nvmError = NvOpen_Validate_Sector( activeSectorAddress , sectSeqNo, 0 );
      }
    
    if(sectorChange &&(nvmError == 0))
    {
      
      nvmError =NvCopyTheRemainsDataSets(&validSectPageInfo, &newSectPageInfo,firstBlankPageAddress,firstBlankPageIndex);
    }

    if((sectorChange ) && (nvmError == 0))
    {
      NvHalEraseSector(oldSectorAddress);  
    } 
    if(nvmError)
    {
      NvHalEraseSector(activeSectorAddress);
      
      continue;  
    }
    
    maNvDirtyFlags[dataSetIndex].saveNextInterval = 0;
    maNvDirtyFlags[dataSetIndex].countsToNextSave = 256;
    
    
    break;
  } 
  PowerDownNVM();
}                                        


 
            
static bool_t NvCopyDataSet
  (
  NvRawPageAddress_t sourcePage , NvRawPageAddress_t destPage
  )
{
  NvDataItemDescription_t const *pDataItemDescriptions;
  static NvStructuredPageHeader_t pageHeader;
  index_t dataSetIndex;
  uint8_t buffer[64];
  NvSize_t length;
  NvSize_t numBytes;
  NvSize_t pageOffset;
  
  NvHalRead(sourcePage, 0, (uint8_t*)&pageHeader, sizeof(pageHeader));  
  dataSetIndex = NvDataSetIndexFromID(pageHeader.dataSetID); 
   
  pDataItemDescriptions = NvDataSetTable[dataSetIndex].pItemDescriptions;
  length = 0;
   while (pDataItemDescriptions->length)
   {
    length += pDataItemDescriptions->length;
    ++pDataItemDescriptions;
   }
 
  pageOffset = 0;
  if( 0 == NvHalWrite( destPage,  pageOffset,  (uint8_t*) &pageHeader,  sizeof(pageHeader)) )
     {
       return 0;
     }
    
  pageOffset = sizeof(NvStructuredPageHeader_t);
  
  while(length)
  {
    numBytes = (length  <  sizeof(buffer)) ? length : sizeof(buffer);
    NvHalRead(sourcePage, pageOffset , buffer, numBytes);  
    if( 0 == NvHalWrite( destPage,  pageOffset,  buffer, numBytes) )
     {
       return 0;
     }
    length -= numBytes;
    pageOffset += numBytes;
  }
    
   pageOffset =   sizeof(NvRawPage_t) - sizeof(NvStructuredPageHeader_t);
    if( 0 == NvHalWrite( destPage, pageOffset, (uint8_t *) &pageHeader, sizeof(pageHeader)) )
      {
       return 0;
      }
    return 1;
}                                        


            
 
            
static bool_t  NvCopyTheRemainsDataSets
  (
   NvSectPageInfo_t* oldSectPageInfo, NvSectPageInfo_t *newSectPageInfo, NvRawPageAddress_t firstBlankPageAddress,index_t firstBlankPageIndex
  )
{
  index_t dataSetsToCopy;
  index_t dataSetIndex;
  for(dataSetIndex = 0 , dataSetsToCopy = 0 ; dataSetIndex < 2 ; dataSetIndex++ )
    {
      if( ( (*oldSectPageInfo)[dataSetIndex] != 0xffffffff ) && ((*newSectPageInfo)[dataSetIndex] == 0xffffffff))
      {
        dataSetsToCopy++;
      }
    }
  if(!dataSetsToCopy)
    return 0;
  dataSetIndex = 0;
  while(dataSetsToCopy)
  {
     if((8 - firstBlankPageIndex) < dataSetsToCopy )
       return 1;
     if( ( (*oldSectPageInfo)[dataSetIndex] != 0xffffffff ) && ((*newSectPageInfo)[dataSetIndex] == 0xffffffff))
      {
        if( NvCopyDataSet( (*oldSectPageInfo)[dataSetIndex] , firstBlankPageAddress))
        {
          dataSetsToCopy--;
          dataSetIndex++;
        }
        firstBlankPageAddress +=  sizeof(NvRawPage_t);
        firstBlankPageIndex ++;
      }
     else
       {
        dataSetIndex++;
       }
  }
   
  return 0;

}                                        



    
