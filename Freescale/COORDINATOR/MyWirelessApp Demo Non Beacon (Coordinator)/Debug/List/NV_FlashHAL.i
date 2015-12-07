









 





 



 














 






 

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


 











 






 





 





 
typedef enum
{
  gNvmType_NoNvm_c,
  gNvmType_SST_c,
  gNvmType_ST_c,
  gNvmType_ATM_c,
  gNvmType_Max_c
} nvmType_t;

typedef enum
{
  gNvmErrNoError_c = 0,
  gNvmErrInvalidInterface_c,
  gNvmErrInvalidNvmType_c,
  gNvmErrInvalidPointer_c,
  gNvmErrWriteProtect_c,
  gNvmErrVerifyError_c,
  gNvmErrAddressSpaceOverflow_c,
  gNvmErrBlankCheckError_c,
  gNvmErrRestrictedArea_c,
  gNvmErrNvmRegOff_c,
  gNvmErrMaxError_c
} nvmErr_t;

typedef enum
{
  gNvmInternalInterface_c,
  gNvmExternalInterface_c, 
  gNvmInterfaceMax_c
} nvmInterface_t;

 







 





 


















 
extern nvmErr_t NVM_Detect(nvmInterface_t nvmInterface,nvmType_t* pNvmType);


















 
extern nvmErr_t NVM_Read(nvmInterface_t nvmInterface , nvmType_t nvmType , void *pDest, uint32_t address, uint32_t numBytes);


















 
extern nvmErr_t NVM_Erase(nvmInterface_t nvmInterface, nvmType_t nvmType ,uint32_t sectorBitfield);

















 
extern nvmErr_t NVM_Write(nvmInterface_t nvmInterface, nvmType_t nvmType ,void *pSrc, uint32_t address, uint32_t numBytes);
















 
extern nvmErr_t NVM_Verify(nvmInterface_t nvmInterface, nvmType_t nvmType ,void *pSrc, uint32_t address, uint32_t numBytes);
















 
extern nvmErr_t NVM_BlankCheck(nvmInterface_t nvmInterface, nvmType_t nvmType , uint32_t address, uint32_t numBytes);














 












 



 


 
 
 











































 





 











 

 
 
 
 

 
 
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






































 





 






 





 


 

 







 



NvRawSectorAddress_t const maNvRawSectorAddressTable[ 2] = {
                                                                                   0x1E000,
                                                                                   0x1D000
                                                                                 };




 




 


void NvHalEraseSector
  (
  NvRawSectorAddress_t NvRawSectorAddress
  )
{
  
  uint32_t sector_bitfield;
  index_t retries = 32;
  sector_bitfield = 1<<(NvRawSectorAddress>>12);  
  
      while ( retries-- ) {

      if(gNvmErrNoError_c == NVM_Erase(gNvmInternalInterface_c, gNvmType_SST_c , sector_bitfield))
         break;
      
    }                                   
                                       
}
 



void NvHalInit ( void )
{
if(gNvmInternalInterface_c == gNvmExternalInterface_c)
 {
 	
 (*((GpioRegs_t *)0x80000000)).FuncSel0 &= (~0xFF00); 
 (*((GpioRegs_t *)0x80000000)).FuncSel0 |= 0x5500;
 }  
}
 

 
void NvHalRead
  (
  NvRawPageAddress_t nvRawPageAddress,
  NvSize_t srcPageOffset,
  unsigned char *pDst,
  NvSize_t dstLen
  )
{

  NVM_Read(gNvmInternalInterface_c , gNvmType_SST_c, (void *)pDst , nvRawPageAddress + srcPageOffset, (uint32_t)dstLen);

  
  
}                                        

 







 



bool_t NvHalWrite
  (
  NvRawPageAddress_t nvRawPageAddress,
  NvSize_t dstPageOffset,
  unsigned char *pSource,
  NvSize_t sourceLen
  )
{

 if(gNvmErrNoError_c ==  NVM_Write(gNvmInternalInterface_c, gNvmType_SST_c ,(void *)pSource, nvRawPageAddress + dstPageOffset, (uint32_t)sourceLen))
   return 1;
 
 return 0;  

}



bool_t NvHalVerify
  (
  NvRawPageAddress_t nvRawPageAddress,
  NvSize_t dstPageOffset,
  unsigned char *pSource,
  NvSize_t sourceLen
  )
{
 
 if(gNvmErrNoError_c ==  NVM_Verify(gNvmInternalInterface_c , gNvmType_SST_c ,(void *)pSource, nvRawPageAddress + dstPageOffset , (uint32_t)sourceLen))
   return 1;
 return 0;  

}


bool_t NvHalIsBlank
  (
  NvRawPageAddress_t nvRawPageAddress,
  NvSize_t dstPageOffset,
  NvSize_t length
  )
{
 
 if(gNvmErrNoError_c == NVM_BlankCheck(gNvmInternalInterface_c, gNvmType_SST_c, nvRawPageAddress + dstPageOffset, length))  
   return 1;
 return 0;  

}
 

















 

