










 




 











 










 














 






 

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






 

 

 
 

 




 


 
 

 

 





 

 

 

 
 
 
 

 
 
 
 

 
 





 

 

typedef uint32_t UartBaudRate_t;




 






 



extern bool_t Uart2_TxCompleteFlag;
extern index_t mSci2RxBufferByteCount;       

 
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











 






 

 

 
   
extern  tsTaskID_t gUartTaskId;

 











 





 







 





 

 
typedef enum {
    gUartErrNoError_c = 0,                 
    gUartErrUartAlreadyOpen_c,                 
    gUartErrUartNotOpen_c,
    gUartErrNoCallbackDefined_c,
    gUartErrReadOngoing_c,
    gUartErrWriteOngoing_c,
    gUartErrInvalidClock_c,
    gUartErrNullPointer_c,
    gUartErrInvalidNrBytes_c,
    gUartErrInvalidBaudrate_c,
    gUartErrInvalidParity_c,
    gUartErrInvalidStop_c,
    gUartErrInvalidCTS_c,
    gUartErrInvalidThreshold_c,
    gUartErrWrongUartNumber_c,
    gUartErrMax_c
} UartErr_t;

 
typedef enum {
    gUartReadStatusComplete_c = 0,
    gUartReadStatusCanceled_c ,
    gUartReadStatusError_c,
    gUartReadStatusMax_c
} UartReadStatus_t;

 
typedef enum {
    gUartWriteStatusComplete_c = 0,
    gUartWriteStatusCanceled_c,
    gUartWriteStatusMax_c
} UartWriteStatus_t;

 
typedef enum {
    gUartParityNone_c = 0,
    gUartParityEven_c,
    gUartParityOdd_c,
    gUartParityMax_c
} UartParityMode_t;

 
typedef enum {
    gUartStopBits1_c = 0,
    gUartStopBits2_c,
    gUartStopBitsMax_c
} UartStopBits_t;

 
typedef struct {
    uint32_t         UartBaudrate;
    UartParityMode_t UartParity;
    UartStopBits_t   UartStopBits;
    bool_t           UartFlowControlEnabled;
    bool_t           UartRTSActiveHigh;
} UartConfig_t;

 
typedef struct {
    uint32_t   UartReadOverrunError:1;
    uint32_t   UartParityError:1;
    uint32_t   UartFrameError:1;
    uint32_t   UartStartBitError:1;
    uint32_t   Reserved:4;
} UartReadErrorFlags_t;

 
 
typedef struct {
    UartReadStatus_t            UartStatus;
    uint16_t                    UartNumberBytesReceived;    
    UartReadErrorFlags_t        UartReadError;
} UartReadCallbackArgs_t;

 
typedef struct {
    UartWriteStatus_t       UartStatus;
    uint16_t                UartNumberBytesSent;
} UartWriteCallbackArgs_t;

 
typedef struct {
    void (*pfUartReadCallback)(UartReadCallbackArgs_t* args);
    void (*pfUartWriteCallback)(UartWriteCallbackArgs_t* args);
} UartCallbackFunctions_t;





 





 
 
 







 
extern void UartInit(void);

 
 













 
extern UartErr_t UartOpen(uint8_t UartNumber, uint32_t PlatformClock);


 
 


















 
 
extern UartErr_t UartSetConfig(uint8_t UartNumber, UartConfig_t* pConfig);


 
 














 
 
extern UartErr_t UartSetReceiverThreshold(uint8_t UartNumber, uint8_t Threshold);


 
 














 
 
extern UartErr_t UartSetTransmitterThreshold(uint8_t UartNumber, uint8_t Threshold);

 
 














 
 
extern UartErr_t UartSetCTSThreshold(uint8_t UartNumber, uint8_t Threshold);

 
 













 
 
extern UartErr_t UartSetCallbackFunctions(uint8_t UartNumber, UartCallbackFunctions_t* pConfig);


 
 


















 
 
extern UartErr_t UartReadData(uint8_t UartNumber,  uint8_t* pBuf, uint16_t BufferSize, bool_t UartDirectFifoMode);


 
 











 
 
extern bool_t UartGetByteFromRxBuffer(uint8_t UartNumber, uint8_t *pDst);


 
 









 
 
extern void UartOpenCloseTransceiver(uint8_t UartNumber, uint8_t Pin, bool_t Open);


 
 







 
 
extern void UartClearErrors(uint8_t UartNumber);


 
 











 
 
extern UartErr_t UartCancelReadData(uint8_t UartNumber);


 
 



















 
 
extern UartErr_t UartWriteData( uint8_t UartNumber, uint8_t* pBuf, uint16_t NumberBytes);


 
 












 
 
extern UartErr_t UartCancelWriteData(uint8_t UartNumber);


 
 














 
 
extern UartErr_t UartGetStatus(uint8_t UartNumber);


 
 













 
 
extern UartErr_t UartGetConfig(uint8_t UartNumber, UartConfig_t* pConfig);



extern uint32_t UartGetUnreadBytesNumber(uint8_t UartNumber);


 
 












 
 
extern UartErr_t UartClose(uint8_t UartNumber);

 
 







 
 
extern void UartSetHalfFlowControl(uint8_t uartNumber, bool_t bHalfFlowControl);


 
 








 
 
extern void UartIsr1(void);


 
 







 
 
extern void UartIsr2(void);











 











 







 
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




void Uart1_TxIsr(UartWriteCallbackArgs_t* args);
void Uart2_TxIsr(UartWriteCallbackArgs_t* args);
void Uart1_RxIsr(UartReadCallbackArgs_t* args);
void Uart2_RxIsr(UartReadCallbackArgs_t* args);

void GpioUart1Init(void);
void GpioUart2Init(void);







 

 

 
tsTaskID_t gUartTaskId;

 

static bool_t uart2_ungetFlag = 0;
static unsigned char uart2_ungetByte;
bool_t Uart2_TxInProgress = 0;

 
 
typedef struct SciTxBufRef_tag {
  unsigned char const *pBuf;
  void (*pfCallBack)(unsigned char const *pBuf);
} SciTxBufRef_t;

 
 
 

static SciTxBufRef_t maSci2TxBufRefTable[3];
static index_t maSci2TxBufLenTable[3];
static index_t mSci2TxBufRefLeadingIndex;    
static index_t mSci2TxBufRefTrailingIndex;   
 
static SciTxBufRef_t maSci2TxCallbackTable[3];
static index_t maSci2TxCallbackLeadingIndex = 0; 
static index_t maSci2TxCallbackTrailingIndex = 0; 

 
 
 

static unsigned char maSci2RxBuf[32];
static void (*pfSci2RxCallBack)(void);





 

 





 

void Uart_ClearErrors(void) {


  UartClearErrors(1);

}                                        


 

 
 
bool_t Uart1_GetByteFromRxBuffer(unsigned char *pDst) {
  (void) pDst;
  return 0;
}                                        

 

bool_t Uart2_GetByteFromRxBuffer(unsigned char *pDst) {
  

  if (uart2_ungetFlag) {
    uart2_ungetFlag = 0;
    *pDst = uart2_ungetByte;
    return 1;
  } else
  return UartGetByteFromRxBuffer(1, pDst);
  
}                                        

 

 
bool_t Uart1_IsTxActive(void) {
  return 0;
}                                                   

 
 
bool_t Uart2_IsTxActive(void) {
  return ((Uart2_TxInProgress) || (((UartRegs_t *)0x8000B000)->Utxcon != 32));
}                                             

 

 
void Uart_ModuleInit(void) {
  
  uint8_t res;
  UartConfig_t pConfig;
  UartCallbackFunctions_t pCallback;
  


  
  GpioUart2Init();  

  
  pConfig.UartParity = gUartParityNone_c;
  pConfig.UartStopBits = gUartStopBits1_c;
  pConfig.UartBaudrate = ((UartBaudRate_t) 19200);
  pConfig.UartFlowControlEnabled = 0;
  pConfig.UartRTSActiveHigh = 0;
  
  
  UartOpen(1,24000);

  UartSetConfig(1,&pConfig);
  UartSetCTSThreshold(1, 8);

  
  UartSetTransmitterThreshold(1,5);
  UartSetReceiverThreshold(1,5);

  
  pCallback.pfUartWriteCallback = Uart2_TxIsr;
  pCallback.pfUartReadCallback = Uart2_RxIsr;
  UartSetCallbackFunctions(1,&pCallback);

   
    
  IntAssignHandler(gUart2Int_c, (IntHandlerFunc_t)UartIsr2);
  ITC_SetPriority(gUart2Int_c, gItcNormalPriority_c);
  
  ITC_EnableInterrupt(gUart2Int_c);

   
  UartOpenCloseTransceiver(1, 0x00000002UL, 0); 
  
  UartReadData(1, maSci2RxBuf, sizeof(maSci2RxBuf), 1);


  
  IntRestoreIRQ(0);
  
  Uart_TaskInit();
}                                        

 

 

 

void Uart2_RxIsr(UartReadCallbackArgs_t* args) {

 
  if (gUartReadStatusComplete_c == args->UartStatus) {  
  TS_SendEvent(gUartTaskId, (1<<1));  
  }
  
}                                        

 

 
 
 
void Uart1_SetRxCallBack(void (*pfCallBack)(void)) {
  (void) pfCallBack;
}       

 

void Uart2_SetRxCallBack(void (*pfCallBack)(void)) {
  pfSci2RxCallBack = pfCallBack;  
  UartOpenCloseTransceiver(1, 0x00000002UL, (( void * )( 0 )) != pfSci2RxCallBack);  
}                                        

 

 
void Uart1_SetBaud(UartBaudRate_t baudRate) {  
  (void) baudRate;
}                                        

 

void Uart2_SetBaud(UartBaudRate_t baudRate) {
  UartConfig_t Cfg;
  bool_t readStopped = 0;
  register uint32_t i;

  UartErr_t err = UartGetStatus(1);  
  if(err != gUartErrUartNotOpen_c)
  {  
   for (i = 0; i < 2; i++)
   {  
      if(err == gUartErrReadOngoing_c) 
      {  
        UartCancelReadData(1);
        readStopped = 1;
      }
      else
      {  
       if(err == gUartErrWriteOngoing_c)
       {  
         UartCancelWriteData(1);
       }  
       else
       {
        break;
       }
      }
       
      err = UartGetStatus(1);
    }
  }  
  
  UartGetConfig(1, &Cfg);
  Cfg.UartBaudrate = baudRate;
  UartSetConfig(1, &Cfg);  
    
  if(1 == readStopped)
  {
    UartReadData(1, maSci2RxBuf, sizeof(maSci2RxBuf), 1);
  } 
}                                        

 

 
 
bool_t Uart1_Transmit(unsigned char const *pBuf, index_t bufLen, void (*pfCallBack)(unsigned char const *pBuf)) {
  (void) pBuf;
  (void) bufLen;
  (void) pfCallBack;
  return 0;
}                                        

 

bool_t Uart2_Transmit(unsigned char const *pBuf, index_t bufLen, void (*pfCallBack)(unsigned char const *pBuf)) {
   
  if (!bufLen) {
    (*pfCallBack)(pBuf);
    return 1;
  }

   
  if (maSci2TxBufLenTable[mSci2TxBufRefLeadingIndex]) {
    return 0;
  }

  maSci2TxBufRefTable[mSci2TxBufRefLeadingIndex].pBuf = pBuf;
  maSci2TxBufRefTable[mSci2TxBufRefLeadingIndex].pfCallBack = pfCallBack;
   
   
  maSci2TxBufLenTable[mSci2TxBufRefLeadingIndex] = bufLen;

  if (++mSci2TxBufRefLeadingIndex >= ((sizeof(maSci2TxBufRefTable) / (sizeof(maSci2TxBufRefTable[0]))))) 
  {
    mSci2TxBufRefLeadingIndex = 0;
  }

  if(!Uart2_TxInProgress)
  {
     
    
    
    
   Uart2_TxInProgress = 1; 
   UartOpenCloseTransceiver((1), 0x00000001UL, 1);    
   UartWriteData(1, (uint8_t*) pBuf, bufLen);
  }
  
  return 1;
}                                        

 

 

 

void Uart2_TxIsr(UartWriteCallbackArgs_t* args) {
  void (*pfCallBack)(unsigned char const *pBuf);

   

   
  maSci2TxBufLenTable[mSci2TxBufRefTrailingIndex] = 0;
  pfCallBack = *maSci2TxBufRefTable[mSci2TxBufRefTrailingIndex].pfCallBack;

  if (pfCallBack)
  {
       
      TS_SendEvent(gUartTaskId, (1<<3));
       
      maSci2TxCallbackTable[maSci2TxCallbackLeadingIndex].pfCallBack = pfCallBack;
      maSci2TxCallbackTable[maSci2TxCallbackLeadingIndex].pBuf = maSci2TxBufRefTable[mSci2TxBufRefTrailingIndex].pBuf;
         
      if (++maSci2TxCallbackLeadingIndex >= ((sizeof(maSci2TxBufRefTable) / (sizeof(maSci2TxBufRefTable[0])))))
      {
        maSci2TxCallbackLeadingIndex = 0;
      }    
  }
    
   

  if (++mSci2TxBufRefTrailingIndex >= ((sizeof(maSci2TxBufRefTable) / (sizeof(maSci2TxBufRefTable[0])))))
  {
      mSci2TxBufRefTrailingIndex = 0;
  }
    
  if(maSci2TxBufLenTable[mSci2TxBufRefTrailingIndex] != 0)
  {
               
       UartWriteData(1, (uint8_t*)maSci2TxBufRefTable[mSci2TxBufRefTrailingIndex].pBuf, maSci2TxBufLenTable[mSci2TxBufRefTrailingIndex]);
  }
  else
  {
     Uart2_TxInProgress = 0;
  }  
}                                        

 

 
void Uart_ModuleUninit(void) {

  UartClose(1);
}                                        

 

 
 

void Uart1_UngetByte(unsigned char byte) {
  (void) byte;
}                                        

void Uart2_UngetByte(unsigned char byte) {
  uart2_ungetFlag = 1;
  uart2_ungetByte = byte;
  if(pfSci2RxCallBack != (( void * )( 0 )))
  {  
   pfSci2RxCallBack();
  } 
}                                        




uint32_t Uart1_RxBufferByteCount() {
  return UartGetUnreadBytesNumber(0);
  
}

uint32_t Uart2_RxBufferByteCount() {
  return UartGetUnreadBytesNumber(1);
  
}


void Uart_Task(event_t events)
{
  void (*pfCallBack)(unsigned char const *pBuf);
  

  
  

  if( events & (1<<1) ) {
    if(pfSci2RxCallBack != (( void * )( 0 )))
    {  
     pfSci2RxCallBack();
    } 
  } 

  if( events & (1<<3) ) {
    

 
    while (maSci2TxCallbackLeadingIndex != maSci2TxCallbackTrailingIndex) {    
      pfCallBack = maSci2TxCallbackTable[maSci2TxCallbackTrailingIndex].pfCallBack;
      if(pfCallBack != (( void * )( 0 )))
      {  
        
       (*pfCallBack)(maSci2TxCallbackTable[maSci2TxCallbackTrailingIndex].pBuf);
      } 
            
      if (++maSci2TxCallbackTrailingIndex >= ((sizeof(maSci2TxCallbackTable) / (sizeof(maSci2TxCallbackTable[0]))))) {
        maSci2TxCallbackTrailingIndex = 0;    
      }
    }  
  }  

  
}





 
void Uart_TaskInit(void)
{
  gUartTaskId = TS_CreateTask(0x2A, Uart_Task);
}



 
void GpioUart1Init(void)
{
  register uint32_t tmpReg;

  (*((GpioRegs_t *)0x80000000)).PuSelLo |= (0x00020000UL | 0x00008000UL);  
  (*((GpioRegs_t *)0x80000000)).PuEnLo  |= (0x00020000UL | 0x00008000UL);  
        
  tmpReg = (*((GpioRegs_t *)0x80000000)).FuncSel0 & ~((3UL << (15*2)) | (3UL << (14*2)));
  (*((GpioRegs_t *)0x80000000)).FuncSel0 = tmpReg | ((1 << (15*2)) | (1 << (14*2)));
  tmpReg = (*((GpioRegs_t *)0x80000000)).FuncSel1 & ~((3UL << (16*2-32)) | (3UL << (17*2-32)));
  (*((GpioRegs_t *)0x80000000)).FuncSel1 = tmpReg | ((1 << (16*2-32)) | (1 << (17*2-32)));
}




 
void GpioUart2Init(void)
{
  register uint32_t tmpReg;

  (*((GpioRegs_t *)0x80000000)).PuSelLo |= (0x00200000UL | 0x00080000UL);  
  (*((GpioRegs_t *)0x80000000)).PuEnLo  |= (0x00200000UL | 0x00080000UL);  

  tmpReg = (*((GpioRegs_t *)0x80000000)).FuncSel1 & ~((3UL << (20*2-32)) | (3UL << (21*2-32))  | (3UL << (19*2-32)) | (3UL << (18*2-32)));
  (*((GpioRegs_t *)0x80000000)).FuncSel1 = tmpReg | ((1 << (20*2-32)) | (1 << (21*2-32))  | (1 << (19*2-32)) | (1 << (18*2-32)));
}
