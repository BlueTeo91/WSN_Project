









 













 






 

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






































 

  
 





 





 

 
typedef enum {
  gTmrErrNoError_c = 0,                 
  gTmrErrTimerIsEn_c,
  gTmrErrTimerIsDis_c,   
  gTmrErrNullPointer_c,    
  gTmrErrInvalidParameter_c,    
  gTmrErrTimerBusy_c,
  gTmrErrMax_c
} TmrErr_t;

 
typedef enum {
  gTmr0_c = 0,
  gTmr1_c,
  gTmr2_c,
  gTmr3_c,
  gTmrMax_c
} TmrNumber_t;

 
typedef enum {
  gTmrNoOperation_c = 0,
  gTmrCntRiseEdgPriSrc_c ,
  gTmrCntRiseEdgFallEdgPriSrc_c,
  gTmrCntRiseEdgWhileSecInputHighActive_c,
  gTmrQuadCnt_c,
  gTmrCntPriSrcRiseEdgSecSrcSpecDir_c,
  gTmrEdgSecSrcTriggerPriCntTillComp_c,
  gTmrSyncCnt_c,
  gTmrModeMax_c
} TmrMode_t;

 
typedef enum {
  gTmrAssert_c = 0,                 
  gTmrClearOF_c,                 
  gTmrSetOF_c,
  gTmrToggleOF_c,
  gTmrToggleOFUsingAlternateReg_c,
  gTmrSetOnCompClearOnSecInputEdg_c,
  gTmrSetOnCompClearOnRollover_c,
  gTmrEnGateClock_c,  
  gTmrOutputModeMax_c
} TmrOutputMode_t;

 
typedef enum {
  gTmrPrimaryCnt0Input_c = 0,                 
  gTmrPrimaryCnt1Input_c,                 
  gTmrPrimaryCnt2Input_c,
  gTmrPrimaryCnt3Input_c,
  gTmrPrimaryCnt0Output_c,
  gTmrPrimaryCnt1Output_c,
  gTmrPrimaryCnt2Output_c,
  gTmrPrimaryCnt3Output_c,
  gTmrPrimaryClkDiv1_c,
  gTmrPrimaryClkDiv2_c,
  gTmrPrimaryClkDiv4_c,
  gTmrPrimaryClkDiv8_c,
  gTmrPrimaryClkDiv16_c,
  gTmrPrimaryClkDiv32_c,
  gTmrPrimaryClkDiv64_c,
  gTmrPrimaryClkDiv128_c,
  gTmrPrimaryCntSrcMax_c
} TmrPrimaryCntSrc_t;

 
typedef enum {
  gTmrSecondaryCnt0Input_c = 0,                 
  gTmrSecondaryCnt1Input_c,                 
  gTmrSecondaryCnt2Input_c,
  gTmrSecondaryCnt3Input_c,
  gTmrSecondaryCntSrcMax_c
} TmrSecondaryCntSrc_t;

 
typedef  enum {
  gTmrComp1Event_c = 0,
  gTmrComp2Event_c,
  gTmrCompEvent_c,
  gTmrOverEvent_c,
  gTmrEdgeEvent_c,
  gTmrMaxEvent
} TmrEvent_t;
  
 
typedef struct TmrConfig_tag{
  TmrOutputMode_t       tmrOutputMode;
  bool_t                tmrCoInit;
  bool_t                tmrCntDir;
  bool_t                tmrCntLen;
  bool_t                tmrCntOnce;
  TmrSecondaryCntSrc_t  tmrSecondaryCntSrc;
  TmrPrimaryCntSrc_t    tmrPrimaryCntSrc;
} TmrConfig_t;

 
typedef union TmrStatusCtrl_tag{
  struct{
    uint16_t OEN:1;
    uint16_t OPS:1;
    uint16_t FORCE:1;
    uint16_t VAL:1;
    uint16_t EEOF:1;
    uint16_t MSTR:1;
    uint16_t CAPMODE:2;
    uint16_t INPUT:1;
    uint16_t IPS:1;
    uint16_t IEFIE:1;
    uint16_t IEF:1;
    uint16_t TOFIE:1;
    uint16_t TOF:1;
    uint16_t TCFIE:1;
    uint16_t TCF:1;
  } bitFields;
  uint16_t uintValue;
} TmrStatusCtrl_t;

 
typedef union TmrComparatorStatusCtrl_tag{
  struct{
    uint16_t CL1:2;
    uint16_t CL2:2;
    uint16_t TCF1:1;
    uint16_t TCF2:1;
    uint16_t TCF1EN:1;
    uint16_t TCF2EN:1;
    uint16_t RESERVED:5;
    uint16_t FILT_EN:1;
    uint16_t DBG_EN:2;
  } bitFields;
  uint16_t uintValue;
} TmrComparatorStatusCtrl_t;

 
typedef void (*TmrCallbackFunction_t)(TmrNumber_t tmrNumber);





 





 

 
 







   
 
extern void TmrInit(void);

 
 











   
 
extern TmrErr_t TmrEnable(TmrNumber_t tmrNumber);

 
 











 
 
extern TmrErr_t TmrDisable(TmrNumber_t tmrNumber);

 
 













 
 
extern TmrErr_t TmrSetMode(TmrNumber_t tmrNumber, TmrMode_t tmrMode);

 
 















 
 
extern TmrErr_t TmrSetConfig(TmrNumber_t tmrNumber, TmrConfig_t* pconfig);

 
 













    
 
extern TmrErr_t TmrSetStatusControl(TmrNumber_t tmrNumber, TmrStatusCtrl_t* pStatusCtrl);

 
 














    
 
extern TmrErr_t TmrSetCompStatusControl(TmrNumber_t tmrNumber, TmrComparatorStatusCtrl_t* pCompStatusCtrl);

 
 














    
 
extern TmrErr_t TmrSetCallbackFunction(TmrNumber_t tmrNumber, TmrEvent_t tmrEvent, TmrCallbackFunction_t pCallbackFunc);

 
 












    
 
extern TmrErr_t TmrWriteValue( TmrNumber_t tmrNumber, uint16_t value);

 
 














    
 
extern TmrErr_t TmrGetMode(TmrNumber_t tmrNumber, TmrMode_t *pTmrMode);

 
 














    
 
extern TmrErr_t TmrGetConfig(TmrNumber_t tmrNumber, TmrConfig_t* pconfig);

 
 














    
 
extern TmrErr_t TmrGetStatusControl(TmrNumber_t tmrNumber, TmrStatusCtrl_t* pStatusCtrl);

 
 














    
 
extern TmrErr_t TmrGetCompStatusControl(TmrNumber_t tmrNumber, TmrComparatorStatusCtrl_t* pCompStatusCtrl);

 
 














    
 
extern TmrErr_t TmrReadValue(TmrNumber_t tmrNumber,  uint16_t* pvalue);    

 
 






    
 
extern void TmrIsr(void);











 














 





 

 

 





 









 

 
typedef uint16_t tmrTimerTicks16_t;
typedef uint32_t tmrTimerTicks32_t;




 

 







 











 











 







 
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







 

 








 


 



 





 








 
typedef struct tmrTimerTableEntry_tag {
  tmrTimerTicks32_t intervalInTicks;
  tmrTimerTicks32_t remainingTicks;
  pfTmrCallBack_t pfCallBack;
} tmrTimerTableEntry_t;

 
 
typedef uint8_t tmrTimerStatus_t;

typedef uint8_t tmrStatus_t;





 
static tmrStatus_t TMR_GetTimerStatus(tmrTimerID_t timerID);
static void TMR_SetTimerStatus(tmrTimerID_t timerID, tmrStatus_t status);
static tmrTimerType_t TMR_GetTimerType(tmrTimerID_t timerID);
static void TMR_SetTimerType(tmrTimerID_t timerID, tmrTimerType_t type);
static bool_t TMR_SetReg(TmrNumber_t tmrNumber);
 
static tmrTimerTicks32_t TmrTicksFromMilliseconds(tmrTimeInMilliseconds_t milliseconds);

 
void TmrCompEvCallBack(TmrNumber_t tmrNumber);





 
static tmrTimerTicks16_t previousTimeInTicks;


 
static uint16_t mMaxToCountDown_c; 
 
static uint32_t mTicksFor4ms;
 
static uint32_t mClkSourceKhz = 24000;
 
 
static tmrTimerTableEntry_t maTmrTimerTable[(4 + 30)];

 
 
static tmrStatus_t maTmrTimerStatusTable[(4 + 30)];


 
static uint8_t numberOfActiveTimers = 0;

 
static uint8_t numberOfLowPowerActiveTimers = 0;


 
static tsTaskID_t mTimerTaskID;





 

 
void TMR_Init(void)
{
  
  TmrInit();
  TmrEnable(gTmr0_c);   
  TMR_SetReg(gTmr0_c);
   
  mTimerTaskID = TS_CreateTask(0xFE, TMR_Task);
  
 
  mMaxToCountDown_c = 0xFFFF - TmrTicksFromMilliseconds(8); 
   
  mTicksFor4ms = TmrTicksFromMilliseconds(4);
  
}

 
void TMR_NotifyClkChanged(uint32_t clkKhz)
{
  mClkSourceKhz = clkKhz;
  

 
  mMaxToCountDown_c = 0xFFFF - TmrTicksFromMilliseconds(8); 
   
  mTicksFor4ms = TmrTicksFromMilliseconds(4);  
}
 



 

tmrTimerID_t TMR_AllocateTimer
(
void
)
{
  uint32_t i;
  
  for (i = 0; i < ((sizeof(maTmrTimerTable) / (sizeof(maTmrTimerTable[0])))); ++i) {
    if (!(maTmrTimerStatusTable[(i)])) {
      TMR_SetTimerStatus(i, 0x80);
      return i;
    }
  }
  
  return 0xFF;
}                                        

 

 
bool_t TMR_AreAllTimersOff
(
void
)
{
  return !numberOfActiveTimers;
}                                        

 

 
void TMR_FreeTimer
(
tmrTimerID_t timerID
)
{
  TMR_StopTimer(timerID);
  maTmrTimerStatusTable[(timerID)] = 0;
}                                        

 

 
void TmrCompEvCallBack(TmrNumber_t tmrNumber)
{
  
  TS_SendEvent(mTimerTaskID, ( 1 << 0 ));
  
}

 

 
bool_t TMR_IsTimerActive
(
tmrTimerID_t timerID
)
{
  return TMR_GetTimerStatus(timerID) == 0x20;
}                                        

 






 


void TMR_StartTimer
(
tmrTimerID_t timerID,                        
tmrTimerType_t timerType,                    
tmrTimeInMilliseconds_t timeInMilliseconds,  
void (*pfTimerCallBack)(tmrTimerID_t)        
)
{
  tmrTimerTicks32_t intervalInTicks;
  
   
  TMR_StopTimer(timerID);
  
  intervalInTicks = TmrTicksFromMilliseconds(timeInMilliseconds);
  if (!intervalInTicks) {
    intervalInTicks = 1;
  }
  
  TMR_SetTimerType(timerID, timerType);
  maTmrTimerTable[timerID].intervalInTicks = intervalInTicks;
  maTmrTimerTable[timerID].remainingTicks = intervalInTicks;
  maTmrTimerTable[timerID].pfCallBack = pfTimerCallBack;
 
   
  TMR_EnableTimer(timerID);
}                                        

 
 
 





 
 
void TMR_StartLowPowerTimer
(
tmrTimerID_t timerId,
tmrTimerType_t timerType,
uint32_t timeIn,
void (*pfTmrCallBack)(tmrTimerID_t)
) 
{
  TMR_StartTimer(timerId, timerType | 0x10, timeIn, pfTmrCallBack);
}


 
 
void TMR_StartMinuteTimer
(
tmrTimerID_t timerId, 
tmrTimeInMinutes_t timeInMinutes, 
void (*pfTmrCallBack)(tmrTimerID_t)
)
{
TMR_StartTimer(timerId, ( 0x04 ), ((tmrTimeInMilliseconds_t)(((tmrTimeInMilliseconds_t)(((tmrTimeInMilliseconds_t)(timeInMinutes)) * 1000)) * 60)), pfTmrCallBack);
}
  
 
 
void TMR_StartSecondTimer
(
tmrTimerID_t timerId, 
tmrTimeInSeconds_t timeInSeconds, 
void (*pfTmrCallBack)(tmrTimerID_t)
) 
{
TMR_StartTimer(timerId, ( 0x08 ), ((tmrTimeInMilliseconds_t)(((tmrTimeInMilliseconds_t)(timeInSeconds)) * 1000)), pfTmrCallBack);
}
 
 

void TMR_StartIntervalTimer
(
tmrTimerID_t timerID,
tmrTimeInMilliseconds_t timeInMilliseconds,
void (*pfTimerCallBack)(tmrTimerID_t)
)
{
  TMR_StartTimer(timerID, 0x02, timeInMilliseconds, pfTimerCallBack);
}

void TMR_StartSingleShotTimer
(
tmrTimerID_t timerID,
tmrTimeInMilliseconds_t timeInMilliseconds,
void (*pfTimerCallBack)(tmrTimerID_t)
)
{
  TMR_StartTimer(timerID, 0x01, timeInMilliseconds, pfTimerCallBack);
}

 





 
void TMR_StopTimer
(
tmrTimerID_t timerID
)
{
  tmrStatus_t status;
  unsigned int saveInt;
  saveInt = IntDisableAll();
  status = TMR_GetTimerStatus(timerID);
  if (   status == 0x20
      || status == 0x40) {
        TMR_SetTimerStatus(timerID, 0x80);
        (((TMR_GetTimerType(timerID)) & 0x10) ?(--numberOfLowPowerActiveTimers) :(--numberOfActiveTimers) );
         
         
    		if (!numberOfActiveTimers && !numberOfLowPowerActiveTimers) 
           TS_SendEvent(mTimerTaskID, ( 1 << 0 ));
      }
  IntRestoreAll(saveInt);    
}                                        

 



 
void TMR_Task
(
event_t events
)
{
  static bool_t timerHardwareIsRunning = 0;
  tmrTimerTicks16_t nextInterruptTime;
  pfTmrCallBack_t pfCallBack;
  tmrTimerTicks16_t currentTimeInTicks;
  tmrTimerStatus_t status;
  tmrTimerTicks16_t ticksSinceLastHere, ticksdiff; 
  uint8_t timerID;
  unsigned int saveInt;
  tmrTimerType_t timerType;
  (void)events;
  
  TmrReadValue(gTmr0_c,&currentTimeInTicks);
   
  ticksSinceLastHere = (currentTimeInTicks - previousTimeInTicks);
   
  previousTimeInTicks = currentTimeInTicks;
  
  for (timerID = 0; timerID < ((sizeof(maTmrTimerTable) / (sizeof(maTmrTimerTable[0])))); ++timerID) {
    saveInt = IntDisableAll();
    status = TMR_GetTimerStatus(timerID);
     
     
    if (status == 0x40) {
      TMR_SetTimerStatus(timerID, 0x20);
      IntRestoreAll(saveInt);
      continue;
    }
    IntRestoreAll(saveInt);
    
     
    if (status != 0x20) {
      continue;
    }
    
     
    if (maTmrTimerTable[timerID].remainingTicks > ticksSinceLastHere) {
      maTmrTimerTable[timerID].remainingTicks -= ticksSinceLastHere;
      continue;
    }
    
    timerType = TMR_GetTimerType(timerID);
     
    if ( (timerType & 0x01) ||
         (timerType & 0x04) ||
         (timerType & 0x08)  ) {
      TMR_StopTimer(timerID);
    } else {
      maTmrTimerTable[timerID].remainingTicks = maTmrTimerTable[timerID].intervalInTicks;
    }
     
    pfCallBack = maTmrTimerTable[timerID].pfCallBack;
    

 
    if (pfCallBack) {
      pfCallBack(timerID);
    }
    
  }   
  
   
  nextInterruptTime = mMaxToCountDown_c;
  for (timerID = 0; timerID < ((sizeof(maTmrTimerTable) / (sizeof(maTmrTimerTable[0])))); ++timerID) {
    if (TMR_GetTimerStatus(timerID) == 0x20) {
      if (nextInterruptTime > maTmrTimerTable[timerID].remainingTicks) {
        nextInterruptTime = maTmrTimerTable[timerID].remainingTicks;
      }
    }
  }
  
       
  saveInt = IntDisableAll();
  TmrReadValue(gTmr0_c,&ticksdiff);
   
  ticksdiff = (uint16_t)(ticksdiff - currentTimeInTicks); 
    
  if(ticksdiff >= nextInterruptTime)
  {  
    
 
    nextInterruptTime = ticksdiff + mTicksFor4ms;
  } 
  else 
  {
    

 
     if((nextInterruptTime - ticksdiff) < mTicksFor4ms) 
     {
       nextInterruptTime = ticksdiff + mTicksFor4ms;
     }
  
  }
   
  nextInterruptTime += currentTimeInTicks;
  ((TmrRegs_t *)(0x80007000 + (((gTmr0_c) & 0x03) << 0x05)))->Comp1 = (nextInterruptTime);
  IntRestoreAll(saveInt);
  
  if (!numberOfActiveTimers && !numberOfLowPowerActiveTimers)
  {
    TmrSetMode(gTmr0_c, gTmrNoOperation_c);
    timerHardwareIsRunning = 0;
  } 
  else 
    if (!timerHardwareIsRunning) 
    {
      TmrSetMode(gTmr0_c, gTmrCntRiseEdgPriSrc_c);
      timerHardwareIsRunning = 1;
    }
}                                        


 




 
void TMR_EnableTimer(tmrTimerID_t tmrID)
{    
  unsigned int saveInt;
  saveInt = IntDisableAll();
  if (TMR_GetTimerStatus(tmrID) == 0x80)
  {      
    (((TMR_GetTimerType(tmrID)) & 0x10) ?(++numberOfLowPowerActiveTimers) :(++numberOfActiveTimers) );    
    TMR_SetTimerStatus(tmrID, 0x40);
    TS_SendEvent(mTimerTaskID, ( 1 << 0 ));
  }  
 IntRestoreAll(saveInt);
}


 





 
uint16_t TMR_NotCountedTicksBeforeSleep(void)
{
  uint16_t currentTimeInTicks;
  
  if (!numberOfLowPowerActiveTimers)
    return 0;

  TmrReadValue(gTmr0_c,&currentTimeInTicks);
  TmrSetMode(gTmr0_c, gTmrNoOperation_c);

   
  
   
     
  return  (uint16_t)(currentTimeInTicks - previousTimeInTicks);
} 

 

      
 
  
                               
void TMR_SyncLpmTimers(uint32_t sleepDurationTmrTicks)
{
 index_t  timerID;
 tmrTimerType_t timerType;

  
 if (!numberOfLowPowerActiveTimers)
    return;          

    
 for (timerID = 0; timerID < ((sizeof(maTmrTimerTable) / (sizeof(maTmrTimerTable[0])))); ++timerID) 
 {

   
  timerType = TMR_GetTimerType(timerID);
  
   
  if ( (TMR_GetTimerStatus(timerID) == 0x20)
        && (((timerType) & 0x10)) ) 
  {
            
           if( maTmrTimerTable[timerID].remainingTicks > sleepDurationTmrTicks) 
           {
             maTmrTimerTable[timerID].remainingTicks -= sleepDurationTmrTicks;
 
           } 
           else 
           {
             maTmrTimerTable[timerID].remainingTicks = 0;           
           }
        
   }

 } 

 TmrSetMode(gTmr0_c, gTmrCntRiseEdgPriSrc_c);
 TmrReadValue(gTmr0_c, &previousTimeInTicks);

 TS_SendEvent(mTimerTaskID, ( 1 << 0 ));
}



 



 


 
bool_t TMR_SetReg(TmrNumber_t tmrNumber)
{
  
  TmrConfig_t regConfig;
  TmrStatusCtrl_t regStatusCtrl;
  TmrComparatorStatusCtrl_t regComStatusCtrl;
  
   
  if(gTmrErrNoError_c != TmrSetCallbackFunction(tmrNumber, gTmrComp1Event_c, &TmrCompEvCallBack))
  {
    return 0;
  }
   
  if (gTmrErrNoError_c != TmrSetMode(gTmr0_c, gTmrNoOperation_c))  
  {
    return 0;
  }
  
  if(gTmrErrNoError_c != TmrWriteValue(tmrNumber, 0x0000))     
  {
    return 0;
  }  
  
  regStatusCtrl.uintValue = 0x0000;
  if (gTmrErrNoError_c != TmrSetStatusControl(tmrNumber, &regStatusCtrl))
  {
    return 0;
  }  
  
  regComStatusCtrl.uintValue = 0x0000;
  regComStatusCtrl.bitFields.TCF1EN = 1;  
  if (gTmrErrNoError_c != TmrSetCompStatusControl(tmrNumber, &regComStatusCtrl))
  {
    return 0;
  }
  
  ((TmrRegs_t *)(0x80007000 + (((tmrNumber) & 0x03) << 0x05)))->Comp1 = (0x0000);   
  regConfig.tmrOutputMode = gTmrAssert_c; 
  regConfig.tmrCoInit = 0;   
  regConfig.tmrCntDir = 0;   
  regConfig.tmrCntLen = 0;   
  regConfig.tmrCntOnce = 0;    
  regConfig.tmrSecondaryCntSrc = gTmrSecondaryCnt0Input_c;     
  regConfig.tmrPrimaryCntSrc = gTmrPrimaryClkDiv128_c;     
  if (gTmrErrNoError_c != TmrSetConfig(tmrNumber, &regConfig))   
  {
    return 0;
  }
  
  return 1;
}


 
static tmrTimerTicks32_t TmrTicksFromMilliseconds(tmrTimeInMilliseconds_t milliseconds)
{
  return (milliseconds * (mClkSourceKhz/(uint32_t)128));
}

static tmrStatus_t TMR_GetTimerStatus
(
tmrTimerID_t timerID
)
{
  return maTmrTimerStatusTable[timerID] & ( 0x20 | 0x40 | 0x80);
}

static void TMR_SetTimerStatus
(
tmrTimerID_t timerID, 
tmrStatus_t status
)
{
  maTmrTimerStatusTable[timerID] = (maTmrTimerStatusTable[timerID] & ~( 0x20 | 0x40 | 0x80)) | status;
}

 

static tmrTimerType_t TMR_GetTimerType
(
tmrTimerID_t timerID
)
{
  return maTmrTimerStatusTable[timerID] & ( 0x01 | 0x08 | 0x04 | 0x02 | 0x10 );
}

static void TMR_SetTimerType
(
tmrTimerID_t timerID, 
tmrTimerType_t type
)
{
  maTmrTimerStatusTable[timerID] = (maTmrTimerStatusTable[timerID] & ~( 0x01 | 0x08 | 0x04 | 0x02 | 0x10 )) | type;
}

