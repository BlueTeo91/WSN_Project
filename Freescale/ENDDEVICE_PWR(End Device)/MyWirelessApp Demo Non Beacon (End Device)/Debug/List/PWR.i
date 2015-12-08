










 






 













 






 

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


 












 





 





































 








  


















 
























  extern void                                   DeepSleepWakeupStackProc(void);





































 





 





 









 










 









 

 
typedef enum {PWR_Run = 77, PWR_Sleep, PWR_DeepSleep, PWR_Reset, PWR_OFF} PWR_CheckForAndEnterNewPowerState_t;

typedef enum {MCU_Running=66, MCU_Wait,   MCU_Hibernate,   MCU_Doze}  PWRLib_MCUStatus_t;
typedef enum {RADIO_Idle=88,  RADIO_Off} PWRLib_RADIOStatus_t;



typedef enum {StackPS_Running=122, StackPS_Sleep, StackPS_DeepSleep}      PWRLib_StackPS_t;




typedef  union {
  uint8_t AllBits;
  struct {
    unsigned int   FromHibernate   :1;                
    unsigned int   FromDoze        :1;                
    unsigned int   FromWait        :1;                
    unsigned int   FromReset       :1;                
    unsigned int   FromKBI         :1;                
    unsigned int   FromTimer       :1;                
    unsigned int   LVD_Updated     :1;                
  } Bits;
} PWRLib_WakeupReason_t;




typedef enum
{ 
  PWR_NODEPOWER_LEVEL_100      = 0x0c, 
  PWR_NODEPOWER_LEVEL_66       = 0x08,
  PWR_NODEPOWER_LEVEL_50,
  PWR_NODEPOWER_LEVEL_33       = 0x04,
  PWR_NODEPOWER_LEVEL_CRITICAL = 0x00
} PWRLib_LVD_VoltageLevel_t;





 
extern volatile PWRLib_WakeupReason_t     PWRLib_MCU_WakeupReason;
extern PWRLib_StackPS_t                   PWRLib_StackPS;









 
extern void PWRLib_Reset(void);





















  
void PWR_AllowDeviceToSleep(void);





















  
void PWR_DisallowDeviceToSleep(void);




















  
bool_t PWR_CheckIfDeviceCanGoToSleep( void );








 

PWRLib_WakeupReason_t PWR_EnterLowPower(void);
 

 







 
void PWR_CheckForAndEnterNewPowerState_Init(void);









  
PWRLib_LVD_VoltageLevel_t   PWRLib_LVD_ReportLevel(void);









 
void PWR_SetExtOutPol(uint8_t val);








 
void PWR_SetDozeTimeSymbols(uint32_t dozeTimeSym);
 










 













 










 





 







 





 
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







 















 






 
 

 

 

 








 
 





 
 





 
 





 
 






 
 
 
 







 




 
 

 






 

 
extern void KbGpioInit(void);


 
extern void KbCrmInit(void);

 
extern uint8_t KbReadPins(void);

 
extern uint8_t KbReadCenterKey(void);





 









 











 







 
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





                                               








 
static void PWR_MacaTimerUpdate(void);




 





 
 static uint16_t notCountedTmrTicksBeforeSleep;

static uint8_t mExtOutPol = 0;




 
static uint8_t mLPMFlag = 0;
 

static   uint32_t mSavedMacaClk;

volatile PWRLib_WakeupReason_t     PWRLib_MCU_WakeupReason;

 
  
PWRLib_StackPS_t                   PWRLib_StackPS;


 
 










 
void PWR_SetExtOutPol(uint8_t val)
{
  mExtOutPol = val;
}














 

void PWR_AllowDeviceToSleep(void)
{
  unsigned int saveInt;
  saveInt = IntDisableAll();
  
  if( mLPMFlag != 0 )
  {
    mLPMFlag--;
  }
  IntRestoreAll(saveInt);
}













 
 
void PWR_DisallowDeviceToSleep(void)
{
  IntDisableAll();
  mLPMFlag++;
  IntRestoreAll(0);
}




















  
bool_t PWR_CheckIfDeviceCanGoToSleep( void ) 
{
  return (bool_t)(mLPMFlag == 0); 
}

 
 
void PWRLib_Reset(void)
{
 ((CrmRegs_t *)0x80003000)->SwRst = 0x87651234;
}
 

 
void PWR_MCUWait(void) {
  ;;
  ;;
  CRM_Wait4Irq();
}   

 
static void PWR_CallBeforeSleep(void) 
{
  mSavedMacaClk = (*((volatile uint32_t *)(0x80004048)));
}   

 
 
void PWR_MCUSleep(crmSleep_t crmSleep) {
 crmSleepCtrl_t  crmSleepCtrl;
 
 crmSleepCtrl.sleepType = crmSleep;
 crmSleepCtrl.ramRet = gRamRet96k_c;
 crmSleepCtrl.mcuRet = 1;
 crmSleepCtrl.digPadRet = 1;
 crmSleepCtrl.pfToDoBeforeSleep = PWR_CallBeforeSleep;
 
 ((crmWuCntlReg_t*)&((CrmRegs_t *)0x80003000)->WuCntl)->bit .extOutPol = mExtOutPol;
 
 if(crmSleep == gDoze_c)
 {
  ;;
 }
 
 if(crmSleep == gHibernate_c)
 {
  ;;
 }
 ;;
 CRM_GoToSleep(&crmSleepCtrl);
}   

 
void PWR_AllOff(void)
{
    
   ((crmWuCntlReg_t*)&((CrmRegs_t *)0x80003000)->WuCntl)->bit .extWuEn = 0;
   ((crmWuCntlReg_t*)&((CrmRegs_t *)0x80003000)->WuCntl)->bit .timerWuEn = 0;
   ((crmWuCntlReg_t*)&((CrmRegs_t *)0x80003000)->WuCntl)->bit .rtcWuEn = 0;
    
   PWR_MCUSleep(gHibernate_c);
}   


 
 
void PWR_RunAgain(void) {

   while(((crmStatusReg_t*)&((CrmRegs_t *)0x80003000)->Status)->bit .sleepSync == 0);
   
   if(0 == gHardwareParameters.gSystemClock24MHz_c)
   {
    (*((volatile uint32_t *)(0x80003048))) = 0x00000F78;
    (*((volatile uint32_t *)(0x80009000))) = 0xC0050300;
   }
   PWR_MacaTimerUpdate();
   ((CrmRegs_t *)0x80003000)->Status = 1;

    {
           volatile uint32_t crmSleepTime = ((CrmRegs_t *)0x80003000)->WuCount;
           
           crmSleepTime = ( (((crmStatusReg_t*)&((CrmRegs_t *)0x80003000)->Status)->bit . hibWuEvt == 1) ? ( ((((crmSysCntlReg_t*)&((CrmRegs_t *)0x80003000)->SysCntl)->bit . xtal32Exists == 1) && (((crmXtal32CntlReg_t*)&((CrmRegs_t *)0x80003000)->Xtal32Cntl)->bit . xtal32En == 1)) ? ((uint32_t)(crmSleepTime) * (24000 / ((uint32_t)128 * 32))) : ((uint32_t)(crmSleepTime) * (24000 / ((uint32_t)128 * 2))) ) : ((uint32_t)(crmSleepTime) * (128 / (uint32_t)128)) );
           
           crmSleepTime += notCountedTmrTicksBeforeSleep;
            
           TMR_SyncLpmTimers(crmSleepTime);
     }  

  ((CrmRegs_t *)0x80003000)->Status = (((CrmRegs_t *)0x80003000)->Status & (~0xF0));  

  ;;
  ;;
}   


 
 
bool_t PWR_DeepSleepAllowed(void) {
      if (PWRLib_StackPS == StackPS_DeepSleep) {
          if ( Asp_GetMacStateReq() == gAspMacStateIdle_c) {
            return 1;
          } else {
            return 0;
          }
      } else {
        return 0;
      }
}   


 
 
bool_t  PWR_SleepAllowed(void) {  
      if (( PWRLib_StackPS == StackPS_Sleep) ||            ( PWRLib_StackPS == StackPS_DeepSleep)) {
          if (( Asp_GetMacStateReq()==gAspMacStateNotEmpty_c) ||               ( Asp_GetMacStateReq()==gAspMacStateIdle_c)) {
            return 1;
          } else {
            return 0;
          }
      } else {
        return 0;
      }
}   


 
 
PWRLib_WakeupReason_t  PWR_HandleDeepSleep( zbClock24_t  DozeDuration) {
  PWRLib_WakeupReason_t  Res;
  Res.AllBits = 0;
  
   
  (void)DozeDuration;
  
  
		   
         
        ((crmWuCntlReg_t*)&((CrmRegs_t *)0x80003000)->WuCntl)->bit .rtcWuEn = 0;   
        
         
        { 
         crmWuCtrl_t    wuCtrl;
         wuCtrl.wuSource = gTimerWu_c;
         wuCtrl. ctrl . timer . timerWuEn = 1;
         wuCtrl. ctrl . timer . timerWuIntEn = 0;
         wuCtrl. ctrl . timer . timeOut = ( (7 < 5) ? ( ((((crmSysCntlReg_t*)&((CrmRegs_t *)0x80003000)->SysCntl)->bit . xtal32Exists == 1) && (((crmXtal32CntlReg_t*)&((CrmRegs_t *)0x80003000)->Xtal32Cntl)->bit . xtal32En == 1)) ? (uint32_t)((10000) * 32) : (uint32_t)((10000) * 2) ) : (uint32_t)(( (uint64_t)(10000) * 24000) / 128) );
         CRM_WuCntl(&wuCtrl);
        } 
        
          PWR_MCUSleep(gDoze_c);
          PWRLib_MCU_WakeupReason.Bits.FromDoze = 1;
          
        if( (((crmStatusReg_t*)&((CrmRegs_t *)0x80003000)->Status)->bit .extWuEvt == 0) && (((crmStatusReg_t*)&((CrmRegs_t *)0x80003000)->Status)->bit .rtcWuEvt == 0))
        {
         PWRLib_MCU_WakeupReason.Bits.FromTimer = 1;
        }
        else
        {
         if(((crmStatusReg_t*)&((CrmRegs_t *)0x80003000)->Status)->bit .extWuEvt)
         {
          PWRLib_MCU_WakeupReason.Bits.FromKBI = 1;
         }
        }

        Res.AllBits = PWRLib_MCU_WakeupReason.AllBits;

        PWR_RunAgain();
        if(PWRLib_MCU_WakeupReason.Bits.FromTimer == 1)
        {  
         DeepSleepWakeupStackProc();;           
        } 
        
    
        
    PWRLib_MCU_WakeupReason.AllBits = 0;
    return Res;
    
}   


 
 
PWRLib_WakeupReason_t  PWR_HandleSleep( zbClock24_t DozeDuration) {
  PWRLib_WakeupReason_t   Res;

  Res.AllBits = 0;
     
        PWR_MCUWait();
        PWRLib_MCU_WakeupReason.Bits.FromWait = 1;
        
        Res.AllBits = PWRLib_MCU_WakeupReason.AllBits;
     
        
    PWRLib_MCU_WakeupReason.AllBits = 0;
    return Res; 
    
}   






 

 
 
PWRLib_WakeupReason_t PWR_CheckForAndEnterNewPowerState(PWR_CheckForAndEnterNewPowerState_t NewPowerState, zbClock24_t DozeDuration) {
  PWRLib_WakeupReason_t    ReturnValue;
  ReturnValue.AllBits = 0;


    if ( NewPowerState == PWR_Run) {
       
    }
    else if ( NewPowerState == PWR_OFF) {      
      while (1) 
      {
        PWR_AllOff();
      }     
    }
    else if ( NewPowerState == PWR_Reset) {
      PWRLib_Reset();                       
    }
     
    else if (( NewPowerState == PWR_DeepSleep) && PWR_DeepSleepAllowed()) {
      ReturnValue = PWR_HandleDeepSleep( DozeDuration);
    } 
    else if (( NewPowerState == PWR_Sleep) && PWR_SleepAllowed()) {
      ReturnValue = PWR_HandleSleep( DozeDuration);
    }
    else {
       
    }

    PWRLib_MCU_WakeupReason.AllBits = 0;                      

  return ReturnValue;
}    

 
 
PWRLib_LVD_VoltageLevel_t   PWRLib_LVD_ReportLevel(void) {
 
   
  





 

  return PWR_NODEPOWER_LEVEL_100;
}   

 
 
void PWR_CheckForAndEnterNewPowerState_Init(void) {
 ;;
 ;;
 PWRLib_StackPS = StackPS_DeepSleep;;
 
 PWRLib_MCU_WakeupReason.AllBits = 0;
 if(((crmStatusReg_t*)&((CrmRegs_t *)0x80003000)->Status)->bit .hibWuEvt == 1)
 {
  PWRLib_MCU_WakeupReason.Bits.FromHibernate = 1;  
 }
 else
 {
  if(((crmStatusReg_t*)&((CrmRegs_t *)0x80003000)->Status)->bit .dozeWuEvt == 1)
  {
   PWRLib_MCU_WakeupReason.Bits.FromDoze = 1;  
  }
  else
  {
   PWRLib_MCU_WakeupReason.Bits.FromReset = 1;  
  }
 }
}    


 
PWRLib_WakeupReason_t PWR_EnterLowPower(void)
{
  PWRLib_WakeupReason_t ReturnValue;  
  bool_t interruptsEnabled = 0;

  ReturnValue.AllBits = 0;
  
  
   if (TMR_AreAllTimersOff())   
   {
    

 
    notCountedTmrTicksBeforeSleep = TMR_NotCountedTicksBeforeSleep();
  }
  
  
  
  IntDisableAll();
  if (TS_PendingEvents() == 0)
  {		 
    PWRLib_StackPS = StackPS_DeepSleep;;
    if (TMR_AreAllTimersOff())   
    {			
      ReturnValue = PWR_CheckForAndEnterNewPowerState ( PWR_DeepSleep, 0);
    }else  
    { 	 
     interruptsEnabled = 1;
     
     IntRestoreAll(0);
     ReturnValue = PWR_CheckForAndEnterNewPowerState ( PWR_Sleep, 0);
    }
  }  
  if(interruptsEnabled == 0)
  {
   IntRestoreAll(0);  
  } 
  
  return ReturnValue;
}

 
void PWR_SetDozeTimeSymbols(uint32_t dozeTimeSym)
{
 (void)dozeTimeSym;
}





 
static void PWR_MacaTimerUpdate(void)
{

 if(((crmStatusReg_t*)&((CrmRegs_t *)0x80003000)->Status)->bit .hibWuEvt)
 {
   if(((crmSysCntlReg_t*)&((CrmRegs_t *)0x80003000)->SysCntl)->bit .xtal32Exists)
   {
    (*((volatile uint32_t *)(0x80004048))) = mSavedMacaClk + (uint32_t)(((CrmRegs_t *)0x80003000)->WuCount * (125.0/16.0));
   }
   else
   {
    (*((volatile uint32_t *)(0x80004048))) = mSavedMacaClk + ((CrmRegs_t *)0x80003000)->WuCount * 125;
   }
 }
 else
 { 
   if(((crmStatusReg_t*)&((CrmRegs_t *)0x80003000)->Status)->bit .dozeWuEvt)
   {
    (*((volatile uint32_t *)(0x80004048))) = mSavedMacaClk + (uint32_t)(((CrmRegs_t *)0x80003000)->WuCount * ((250000.0*128.0)/24000));
   }
 }  

}





 
