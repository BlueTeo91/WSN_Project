















 










 











 












 










 














 






 

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






 















 






 
 

 

 

 








 
 





 
 





 
 





 
 






 
 
 
 







 




 
 

 






 

 
extern void KbGpioInit(void);


 
extern void KbCrmInit(void);

 
extern uint8_t KbReadPins(void);

 
extern uint8_t KbReadCenterKey(void);





 










 











 







 

 






 

 
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






 








 






 





 





 
 
void KbGpioInit(void)
{
   
  
   
  (void)Gpio_SetPortDir(gGpioPort0_c, 0x00000000, 0x3C000000);
   
  (void)Gpio_WrPortSetting(gGpioPort0_c, gGpioPullUpEnAttr_c, 0xFFFFFFFF, 0x3C000000);
  (void)Gpio_WrPortSetting(gGpioPort0_c, gGpioPullUpSelAttr_c, 0xFFFFFFFF, 0x3C000000);
   
  (void)Gpio_WrPortSetting(gGpioPort0_c, gGpioInputDataSelAttr_c, 0x00000000, 0x3C000000); 
  
  Gpio_SetPinDir(gGpioPin22_c, gGpioDirIn_c);
  Gpio_EnPinPullup(gGpioPin22_c, 1);
  Gpio_SelectPinPullup(gGpioPin22_c, gGpioPinPullup_c);
  Gpio_SetPinReadSource(gGpioPin22_c, gGpioPinReadPad_c);
}


 
void KbCrmInit(void)
{
  crmWuCtrl_t WuCtrl;
  
   
  WuCtrl.wuSource = gExtWu_c;
  WuCtrl. ctrl . ext . nibble . kbiWuEn = 0x0f;
  WuCtrl. ctrl . ext . nibble . kbiWuEvent = 0x0f;
  WuCtrl. ctrl . ext . nibble . kbiWuPol = 0x00;
  WuCtrl. ctrl . ext . nibble . kbiIntEn = 0x0f;
  CRM_WuCntl(&WuCtrl);
  
   
  CRM_RegisterISR(gCrmKB4WuEvent_c,CrmKBDIsr);
  CRM_RegisterISR(gCrmKB5WuEvent_c,CrmKBDIsr);
  CRM_RegisterISR(gCrmKB6WuEvent_c,CrmKBDIsr);
  CRM_RegisterISR(gCrmKB7WuEvent_c,CrmKBDIsr);
}


 
uint8_t KbReadPins(void)
{
  uint32_t portData;
  (void)Gpio_GetPortData(gGpioPort0_c, &portData);
  return (uint8_t)(portData >> 26);
}

 
uint8_t KbReadCenterKey(void) 
{
  GpioPinState_t pioPinState;
  
  Gpio_GetPinData (gGpioPin22_c,&pioPinState);
  
  return pioPinState;
  
}





 
