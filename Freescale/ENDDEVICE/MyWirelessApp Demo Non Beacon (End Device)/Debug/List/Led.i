










 









 















 






 

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

 





 
 





 
 





 
 







 

 





 
static void LED_FlashTimeout(uint8_t timerId);





 





 

static bool_t mfLedInSerialMode;       
static uint8_t mLedFlashingLEDs = 0;   
static tmrTimerID_t mLEDTimerID = 0xFF;





 





 
void LED_Init(void)
{
   
  Set_Pins(0x0F);;
  
   
  mLEDTimerID = TMR_AllocateTimer();
  LED_TurnOffAllLeds();
}






 
void Set_Pins( LED_t LEDNr )
{
  if (LEDNr & 0x01){
    Gpio_SetPinFunction(gGpioPin23_c, gGpioNormalMode_c);
    Gpio_SetPinReadSource(gGpioPin23_c, gGpioPinReadReg_c);
    Gpio_SetPinDir(gGpioPin23_c, gGpioDirOut_c);
    Gpio_SetPinData(gGpioPin23_c, gGpioPinStateLow_c);
  }
  if (LEDNr & 0x02){
    Gpio_SetPinFunction(gGpioPin24_c, gGpioNormalMode_c);
    Gpio_SetPinReadSource(gGpioPin24_c, gGpioPinReadReg_c);
    Gpio_SetPinDir(gGpioPin24_c, gGpioDirOut_c);
    Gpio_SetPinData(gGpioPin24_c, gGpioPinStateLow_c);
  }
  if (LEDNr & 0x04){
    Gpio_SetPinFunction(gGpioPin25_c, gGpioNormalMode_c);
    Gpio_SetPinReadSource(gGpioPin25_c, gGpioPinReadReg_c);
    Gpio_SetPinDir(gGpioPin25_c, gGpioDirOut_c);
    Gpio_SetPinData(gGpioPin25_c, gGpioPinStateLow_c);
  }
  if (LEDNr & 0x08){
    Gpio_SetPinFunction(gGpioPin44_c, gGpioNormalMode_c);
    Gpio_SetPinReadSource(gGpioPin44_c, gGpioPinReadReg_c);
    Gpio_SetPinDir(gGpioPin44_c, gGpioDirOut_c);
    Gpio_SetPinData(gGpioPin44_c, gGpioPinStateLow_c);
  }
}













 
LedState_t LED_GetLed( LED_t LEDNr)                      
{
  GpioPinState_t gpioPinState;
  LED_t LEDpinsState = 0;
  int8_t ReturnSingleLED = 0;
  
  if ( (LEDNr == 0x01) || (LEDNr == 0x02) || (LEDNr == 0x04) || (LEDNr == 0x08) )
    ReturnSingleLED = 1;
  else
    ReturnSingleLED = 0;
  
  if (LEDNr & 0x01)
  {
    Gpio_GetPinData(gGpioPin23_c, &gpioPinState);
    gpioPinState = (GpioPinState_t)(1 - (gpioPinState ^ gGpioPinStateHigh_c));
    if (ReturnSingleLED)
      return gpioPinState;
  }
  LEDpinsState |= gpioPinState << 0;
  
  if (LEDNr & 0x02)
  {
    Gpio_GetPinData(gGpioPin24_c, &gpioPinState);
    gpioPinState = (GpioPinState_t)(1 - (gpioPinState ^ gGpioPinStateHigh_c));
    if (ReturnSingleLED)
      return gpioPinState;
  }
  LEDpinsState |= gpioPinState << 1;
  
  if (LEDNr & 0x04)
  {
    Gpio_GetPinData(gGpioPin25_c, &gpioPinState);
    gpioPinState = (GpioPinState_t)(1 - (gpioPinState ^ gGpioPinStateHigh_c));
    if (ReturnSingleLED)
      return gpioPinState;
  }
  LEDpinsState |= gpioPinState << 2;
  
  if (LEDNr & 0x08)
  {
    Gpio_GetPinData(gGpioPin44_c, &gpioPinState);
    gpioPinState = (GpioPinState_t)(1 - (gpioPinState ^ gGpioPinStateHigh_c));
    if (ReturnSingleLED)
      return gpioPinState;
  }
  LEDpinsState |= gpioPinState << 3;
  
  return LEDpinsState;
  
}





 
void LED_ToggleLed(LED_t LEDNr)
{
  if (LEDNr & 0x01){    
    (void)Gpio_TogglePin (gGpioPin23_c);
  }
  if (LEDNr & 0x02){    
    (void)Gpio_TogglePin (gGpioPin24_c);
  }
  if (LEDNr & 0x04){    
    (void)Gpio_TogglePin (gGpioPin25_c);
  }
  if (LEDNr & 0x08){    
    (void)Gpio_TogglePin (gGpioPin44_c);
  }
}





 
void LED_TurnOffLed(LED_t LEDNr)
{
  if (LEDNr & 0x01)
    (void)Gpio_SetPinData(gGpioPin23_c, gGpioPinStateLow_c);
  if (LEDNr & 0x02)
    (void)Gpio_SetPinData(gGpioPin24_c, gGpioPinStateLow_c);
  if (LEDNr & 0x04)
    (void)Gpio_SetPinData(gGpioPin25_c, gGpioPinStateLow_c);
  if (LEDNr & 0x08)
    (void)Gpio_SetPinData(gGpioPin44_c, gGpioPinStateLow_c);
}





 
void LED_TurnOnLed(LED_t LEDNr)
{
  if (LEDNr & 0x01)
    (void)Gpio_SetPinData(gGpioPin23_c, gGpioPinStateHigh_c);
  if (LEDNr & 0x02)
    (void)Gpio_SetPinData(gGpioPin24_c, gGpioPinStateHigh_c);
  if (LEDNr & 0x04)
    (void)Gpio_SetPinData(gGpioPin25_c, gGpioPinStateHigh_c);
  if (LEDNr & 0x08)
    (void)Gpio_SetPinData(gGpioPin44_c, gGpioPinStateHigh_c);
}





 
void LED_TurnOffAllLeds(void)
{
  LED_TurnOffLed(0x0F);
}





 
void LED_TurnOnAllLeds(void)
{
  LED_TurnOnLed(0x0F);
}





 
void LED_StopFlashingAllLeds(void)
{
  LED_SetLed(0x0F, gLedOff_c);
}





 
void LED_StartFlash
 (
    LED_t LEDNr  
 )
{
   
  mLedFlashingLEDs |= LEDNr;

   
  TMR_StartIntervalTimer(mLEDTimerID, 100, LED_FlashTimeout);
}






 
void LED_StopFlash
  (
  LED_t LEDNr  
  )
{
   
  LED_TurnOffLed(LEDNr);

   
  mLedFlashingLEDs &= (~LEDNr);

   
  if(!mLedFlashingLEDs)
    TMR_StopTimer(mLEDTimerID);
}





 
void LED_StartSerialFlash(void)
{
   
  LED_StartFlash(0);

   
  LED_TurnOffAllLeds();
  (void)Gpio_SetPinData(gGpioPin23_c, gGpioPinStateHigh_c);
  mLedFlashingLEDs = 0x01 | 0x02;  

   
  mfLedInSerialMode = 1;
}





 
void LED_SetHex
  (
  uint8_t hexValue
  )
{
  LED_SetLed(0x0F, gLedOff_c);
  LED_SetLed(hexValue, gLedOn_c);
}





 
void LED_SetLed
  (
  LED_t LEDNr,     
  LedState_t state
  )
{
   
  if(state == gLedStopFlashing_c)
    state = gLedOff_c;

   
  LED_ExitSerialFlash();

   
  if(state == gLedFlashing_c)
    LED_StartFlash(LEDNr);


   
  else {

     
    if(mfLedInSerialMode || (mLedFlashingLEDs & LEDNr))
      LED_StopFlash(LEDNr);

     
    if(state == gLedOn_c)
      LED_TurnOnLed(LEDNr);
    if(state == gLedOff_c)
      LED_TurnOffLed(LEDNr);
    if(state == gLedToggle_c)
      LED_ToggleLed(LEDNr);
  }
}






 






 
void LED_ExitSerialFlash(void)
{
  if(mfLedInSerialMode) 
  {
    mLedFlashingLEDs = 0;    
    LED_TurnOffAllLeds();
    TMR_StopTimer(mLEDTimerID);
    mfLedInSerialMode = 0;
  }
}






 
static void LED_FlashTimeout
  (
  uint8_t timerId  
  )
{
  (void)timerId;   

  if(mLedFlashingLEDs & 0x01)
    (void)Gpio_TogglePin (gGpioPin23_c);
  if(mLedFlashingLEDs & 0x02)
    (void)Gpio_TogglePin (gGpioPin24_c);
  if(mLedFlashingLEDs & 0x04)
    (void)Gpio_TogglePin (gGpioPin25_c);
  if(mLedFlashingLEDs & 0x08)
    (void)Gpio_TogglePin (gGpioPin44_c);


  
  if(mfLedInSerialMode)
  {
    mLedFlashingLEDs = mLedFlashingLEDs << 1;
    if(mLedFlashingLEDs & (0x08 << 1))   
    {
      mLedFlashingLEDs &= 0x0F;
      mLedFlashingLEDs |= 0x01;
    }
  }
}






 

 


