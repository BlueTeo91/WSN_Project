










 













 















 






 

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








 

 






 

 
typedef struct tsTaskTableEntry_tag {
  event_t events;
  tsTaskPriority_t priority;
  pfTsTaskEventHandler_t pfTaskEventHandler;
} tsTaskTableEntry_t;






 

 
tsTaskTableEntry_t maTsTaskTable[14];

 
 
 
tsTaskID_t maTsTaskIDsByPriority[((sizeof(maTsTaskTable) / (sizeof(maTsTaskTable[0]))))];






 





 

tsTaskID_t gIdleTaskID;





 

 
void TS_ClearEvent
  (
  tsTaskID_t taskID,
  event_t events
  )
{
  uint8_t ret;
  
  ret = IntDisableAll();
  maTsTaskTable[taskID].events &= ~events;
  IntRestoreAll(ret);
}

 














 
tsTaskID_t TS_CreateTask
  (
  tsTaskPriority_t taskPriority,
  pfTsTaskEventHandler_t pfTaskEventHandler
  )
{
  index_t i;
  index_t freeSlot;
  index_t sizeofTaskId = sizeof(maTsTaskIDsByPriority[0]);

   
  for (i = 0, freeSlot = (( tsTaskID_t ) -1 );
       (i < ((sizeof(maTsTaskTable) / (sizeof(maTsTaskTable[0])))));
       ++i) {
    if (maTsTaskTable[i].priority == (( tsTaskPriority_t ) -1 )) {
      freeSlot = i;
      break;
    }
  }                                      

  if (freeSlot == (( tsTaskID_t ) -1 )) {
    return (( tsTaskID_t ) -1 );
  }

  maTsTaskTable[freeSlot].events = 0;
  maTsTaskTable[freeSlot].pfTaskEventHandler = pfTaskEventHandler;
  maTsTaskTable[freeSlot].priority = taskPriority;

   
   
   
  for (i = 0; i < ((sizeof(maTsTaskIDsByPriority) / (sizeof(maTsTaskIDsByPriority[0])))); i++) {
     
    if (maTsTaskIDsByPriority[i] == (( tsTaskPriority_t ) -1 )) {
      break;
    }

     
     
    if (maTsTaskTable[maTsTaskIDsByPriority[i]].priority < taskPriority) {
      FLib_MemInPlaceCpy(&maTsTaskIDsByPriority[i + 1],
                         &maTsTaskIDsByPriority[i],
                         (((sizeof(maTsTaskIDsByPriority) / (sizeof(maTsTaskIDsByPriority[0])))) - i - 1) * sizeofTaskId);
      break;
    }
  }                                      
  maTsTaskIDsByPriority[i] = freeSlot;

  return freeSlot;
}                                        

 

 
void TS_DestroyTask
  (
  tsTaskID_t taskID
  )
{
  index_t i;
  index_t sizeofTaskId = sizeof(maTsTaskIDsByPriority[0]);

  if (maTsTaskTable[taskID].priority == (( tsTaskPriority_t ) -1 )) {
    return;
  }

   
  maTsTaskTable[taskID].priority = (( tsTaskPriority_t ) -1 );

   
   
  for (i = 0; i < ((sizeof(maTsTaskIDsByPriority) / (sizeof(maTsTaskIDsByPriority[0])))); i++) {
    if (maTsTaskIDsByPriority[i] == taskID) {

      FLib_MemCpy(&maTsTaskIDsByPriority[i],
                  &maTsTaskIDsByPriority[i + 1],
                  (((sizeof(maTsTaskIDsByPriority) / (sizeof(maTsTaskIDsByPriority[0])))) - i - 1) * sizeofTaskId);

       
      maTsTaskIDsByPriority[((sizeof(maTsTaskIDsByPriority) / (sizeof(maTsTaskIDsByPriority[0])))) - 1] = (( tsTaskID_t ) -1 );
      break;
    }
  }

  return;
}                                        

 

 
void TS_Init(void) {
  FLib_MemSet(maTsTaskTable, (( tsTaskPriority_t ) -1 ), sizeof(maTsTaskTable));
  FLib_MemSet(maTsTaskIDsByPriority, (( tsTaskID_t ) -1 ), sizeof(maTsTaskIDsByPriority));

  gIdleTaskID = TS_CreateTask((( tsTaskPriority_t ) 0 ), IdleTask);
}                                        

 

 
 
 
 
 
bool_t TS_PendingEvents(void) {
  index_t i;

  for (i = 0; i < ((sizeof(maTsTaskTable) / (sizeof(maTsTaskTable[0])))); i++) {
    if (( maTsTaskTable[i].priority != (( tsTaskPriority_t ) -1 ))
        && maTsTaskTable[i].events) {
      return 1;
    }
  }

  return 0;
}

 

 
void TS_SendEvent
  (
  tsTaskID_t taskID,
  event_t events
  )
{
  uint8_t ret;  
  ret = IntDisableAll();
  maTsTaskTable[taskID].events |= events;
  IntRestoreAll(ret);
}                                        

 



 
void TS_Scheduler(void) {
  index_t activeTask;
  uint8_t ret;
  event_t events;
  index_t i;
  index_t taskID;

   
   
   
  for (;;) {
     
    activeTask = (( tsTaskID_t ) 0 );
    for (i = 0; i < ((sizeof(maTsTaskIDsByPriority) / (sizeof(maTsTaskIDsByPriority[0])))); ++i) {
      taskID = maTsTaskIDsByPriority[i];
      if (taskID == (( tsTaskID_t ) -1 )) {
        break;
      }

      if (maTsTaskTable[taskID].events) {
        activeTask = taskID;
        break;
      }
    }


     
  ret = IntDisableAll();
    events = maTsTaskTable[activeTask].events;
    maTsTaskTable[activeTask].events = 0;
    IntRestoreAll(ret);

    (*maTsTaskTable[activeTask].pfTaskEventHandler)(events);
  }                                      
}                                        
