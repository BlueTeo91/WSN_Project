









 

















 














 






 

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


















 

















 















 










 







 





 

 


 

 


 
 
 

 










 




 





 

 
 
typedef uint8_t ztcSAPHandlerStatus_t;

 
 



 



typedef uint8_t ztcOpcodeGroup_t;

 
 
 
 
typedef uint8_t ztcIntSAPId_t;







 
typedef uint8_t ztcMsgType_t;

typedef struct ZTCMessage_tag {
  ztcOpcodeGroup_t opCode;
  ztcMsgType_t opCodeId;
  uint8_t length;
  uint8_t data[1];                       
} ZTCMessage_t;




 
typedef void (*gpfTestClientToApplication_t)(void *pMsg);
extern gpfTestClientToApplication_t gpfTestClientToApplicationFuncPtr;

 
extern tsTaskID_t gZTCTaskID;





 

 
extern tsTaskID_t gZTCTaskID;





 

extern void Ztc_TaskInit(void);
extern void Ztc_Task(event_t events);
extern void ZTC_TaskEventMonitor(const ztcIntSAPId_t SAPId,
                                 uint8_t *pMsg,
                                 const uint8_t status);
extern void ZTC_FragEventMonitor(const ztcIntSAPId_t SAPId, uint8_t *pMsg);

 
extern void ZTCQueue_QueueToTestClient(uint8_t const *const pData,
                                       uint8_t const opCodeGrp,
                                       uint8_t const msgType,
                                       uint8_t const lengthOfData);



