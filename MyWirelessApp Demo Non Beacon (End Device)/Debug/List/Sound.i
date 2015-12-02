









 













 






 

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


 














 





 

 

 





 
















 



 





 

extern bool_t BuzzerInit(void);  
extern bool_t BuzzerBeep (void);


 

 












 












 










 





 







 





 
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











 





 

    





 





 





 

typedef enum {
  gI2cErrNoError_c = 0,
  gI2cErrModuleIsEn_c,
  gI2cErrModuleIsDis_c,
  gI2cErrNullPointer_c,
  gI2cErrInvalidOp_c,
  gI2cErrBusBusy_c,
  gI2cErrNoDevResp_c,
  gI2CErrNoAckResp_c,
  gI2CErrTransferInProgress_c,
  gI2cErrModuleBusy_c,
  gI2cErrArbLost_c,
  gI2cErrMax_c
}I2cErr_t;

typedef enum {
  gI2cAckResponse_c = 0,
  gI2cNoAckResponse_c
}I2cResponse_t;

typedef enum {
  gI2cWrite_c = 0,
  gI2cRead_c
}I2cOperation_t;

typedef enum {
  gI2cBusIdle_c = 0,
  gI2cBusBusy_c
}I2cBusStatus_t;

typedef enum {
  gI2cSlvTransfer_c = 0,
  gI2cMstrReleaseBus_c,
  gI2cMstrHoldBus_c,
  gI2cTransferModeMax_c
}I2cTransferMode_t;

typedef enum {
  gI2cTransmitData_c = 0,
  gI2cReceiveData_c
}I2cTransferType_t;

typedef struct I2cConfig_tag{
  uint8_t  slaveAddress;
  uint8_t  freqDivider;
  uint8_t  saplingRate;
  bool_t   i2cInterruptEn;
  bool_t   i2cBroadcastEn;
}I2cConfig_t;

typedef  void (*I2cCallbackFunction_t)(uint16_t transfBytesNo, uint16_t status);





 





 

 
 







 
 
extern void I2c_Init(void);

 
 










 
 
extern I2cErr_t I2c_Enable(void);

 
 











 
 
extern I2cErr_t I2c_Disable(void);

 
 












 
 
extern I2cErr_t I2c_RecoverBus(void);

 
 










 
 
extern I2cErr_t I2c_SetCallbackFunction(I2cCallbackFunction_t pI2cCallback);

 
 













 
 
extern I2cErr_t I2c_SetConfig(I2cConfig_t* pI2cConfig);

 
 










 
 
extern I2cErr_t I2c_GetStatus(uint8_t* status);

 
 












 
 
extern I2cErr_t I2c_CancelTransfer(I2cTransferType_t transferType);

 
 

























 
 
extern I2cErr_t I2c_SendData(uint8_t slaveDestAddr, uint8_t* i2cBuffData, uint16_t dataLength, I2cTransferMode_t transferMode);


 
 























 
 
extern I2cErr_t I2c_ReceiveData(uint8_t slaveDestAddr, uint8_t* i2cBuffData, uint16_t dataLength, I2cTransferMode_t transferMode);

 
 







 
 
extern void I2c_Isr(void);











 






 





 

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





 





 





 

static void BuzzerTimerCallBack(TmrNumber_t tmrNumber);
static void Llc_VolumeInit(void);
static void Llc_VolumeSet(uint8_t volume);




 





 
uint32_t mMsCounter;
uint32_t mBeepDuration;





 

bool_t BuzzerInit(void)
{
  TmrConfig_t tmrConfig;
  TmrStatusCtrl_t tmrStatusCtrl;
  TmrComparatorStatusCtrl_t tmrComparatorStatusCtrl;
   
  TmrEnable(gTmr3_c);
    
  if (gTmrErrNoError_c != TmrSetMode(gTmr3_c, gTmrNoOperation_c))  
  {
    return 0;
  }
   
  if(gTmrErrNoError_c != TmrSetCallbackFunction(gTmr3_c, gTmrComp1Event_c, BuzzerTimerCallBack))
  {
    return 0;
  }
  tmrStatusCtrl.uintValue = 0x0000;
  tmrStatusCtrl.bitFields.OEN = 1;    
  if (gTmrErrNoError_c != TmrSetStatusControl(gTmr3_c, &tmrStatusCtrl))
  {
    return 0;
  }  
  tmrComparatorStatusCtrl.uintValue = 0x0000;
  tmrComparatorStatusCtrl.bitFields.TCF1EN = 1;  
  if (gTmrErrNoError_c != TmrSetCompStatusControl(gTmr3_c, &tmrComparatorStatusCtrl))
  {
    return 0;
  }
  tmrConfig.tmrOutputMode = gTmrToggleOF_c; 
  tmrConfig.tmrCoInit = 0;   
  tmrConfig.tmrCntDir = 0;   
  tmrConfig.tmrCntLen = 1;   
  tmrConfig.tmrCntOnce = 0;    
  tmrConfig.tmrSecondaryCntSrc = gTmrSecondaryCnt0Input_c;     
  tmrConfig.tmrPrimaryCntSrc = gTmrPrimaryClkDiv1_c;     
  if (gTmrErrNoError_c != TmrSetConfig(gTmr3_c, &tmrConfig))   
  {
    return 0;
  }
   
  ((TmrRegs_t *)(0x80007000 + (((gTmr3_c) & 0x03) << 0x05)))->Comp1 = ((24000/(4 * 2)));
   
  ((TmrRegs_t *)(0x80007000 + (((gTmr3_c) & 0x03) << 0x05)))->Load = (0);
  I2c_Init();
  Gpio_SetPinFunction(((GpioPin_t)((uint8_t)gGpioPin8_c + (uint8_t)gTmr3_c)), gGpioAlternate1Mode_c); 
  Gpio_SetPinFunction(gGpioPin12_c, gGpioAlternate1Mode_c);
  Gpio_SetPinFunction(gGpioPin13_c, gGpioAlternate1Mode_c);
  return 1;
}

 

bool_t BuzzerBeep (void) 
{
  if( 250 == 0 )
    return 0;
  if (gTmrErrNoError_c != TmrSetMode(gTmr3_c, gTmrNoOperation_c))  
  {
    return 0;
  }
  mMsCounter = 0;
  mBeepDuration = 250;
  ((TmrRegs_t *)(0x80007000 + (((gTmr3_c) & 0x03) << 0x05)))->Cntr = (0) ;  
  Llc_VolumeInit();
  Llc_VolumeSet(30);   
  if (gTmrErrNoError_c != TmrSetMode(gTmr3_c, gTmrCntRiseEdgPriSrc_c))
  {
    return 0;
  }
  return 1;
}





 

static void BuzzerTimerCallBack(TmrNumber_t tmrNumber)
{
  mMsCounter++;
  if(mMsCounter >= 4<<1)
  {
    mMsCounter = 0;
    mBeepDuration --;
    if(mBeepDuration == 0)
    {
      TmrSetMode(gTmr3_c, gTmrNoOperation_c);    
    }
  }
}

 

static void Llc_VolumeInit(void)
{
  I2cConfig_t i2cConfig;
  I2c_Enable();
  i2cConfig.i2cBroadcastEn = 0;
  i2cConfig.freqDivider   = 0x20;
  i2cConfig.saplingRate   = 0x01;
  i2cConfig.slaveAddress   = 0x00;
  i2cConfig.i2cInterruptEn = 0; 
  I2c_SetConfig(&i2cConfig);
}

 

static void Llc_VolumeSet(uint8_t volume)
{
  uint8_t buffer[2];
  if(volume > (uint8_t)100)
  {
    volume = 100;  
  }
   
  volume = (volume * 31) / 100;
  buffer[0] = 0x11;
  buffer[1] = (volume & 0xFF) << 3;
  I2c_SendData(0x50, &buffer[0], 2, gI2cMstrReleaseBus_c);
}

 
 
