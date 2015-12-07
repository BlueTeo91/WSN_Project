/*****************************************************************************
* Applications' initialization module
*
* (c) Copyright 2007, Freescale, Inc. All rights reserved.
*
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale Semiconductor.
*
*****************************************************************************/

#include "Mapp_init.h"
#include "MacPhyInit.h"
#include "Mac_Globals.h"
#include "NV_Data.h"
#include "MacInit.h"
#include "Interrupt.h"
#if gZtcIncluded_d
#include "ZTCInterface.h"
#endif /* gZtcIncluded_d */
#include "NVM_Interface.h"

/************************************************************************************
*************************************************************************************
* Private macros
*************************************************************************************
************************************************************************************/


/************************************************************************************
*************************************************************************************
* Private prototypes
*************************************************************************************
************************************************************************************/

void IdleTask(event_t event);
void AppTask(event_t events);
tsTaskID_t gAppTaskID_c;
uint8_t gPowerSaveMode;

/************************************************************************************
*************************************************************************************
* Private type definitions
*************************************************************************************
************************************************************************************/

/************************************************************************************
*************************************************************************************
* Private memory declarations
*************************************************************************************
************************************************************************************/

extern uint8_t aExtendedAddress[8];

#if gNvStorageIncluded_d
static bool_t receiverOn;
#endif
/************************************************************************************
*************************************************************************************
* Public functions
*************************************************************************************
************************************************************************************/

/*****************************************************************************
* main function
*
* Interface assumptions:
* 
* Return value:
* None
*****************************************************************************/

void Main(void)
 {
  InterruptInit();
  IntDisableAll();
  Platform_Init();
  

  TS_Init();                            /* Init the kernel. */
  TMR_Init();                           /* Init the TMR module */							
  NvModuleInit();
  Uart_ModuleInit();
  /* This only creates the MAC TS thread. */
  MacInit();
  /* Use TS for MAC  - the MAC TS ID must be known at this step. */
  Init_802_15_4(TRUE);

  #if gZtcIncluded_d
  Ztc_TaskInit();
  #endif /* gZtcIncluded_d */ 

  /*initialize the application*/ 
  gAppTaskID_c = TS_CreateTask(gTsAppTaskPriority_c, AppTask);
 
  MApp_init();
  #if (gLpmIncluded_d == 1)
    /*do not allow the device to enter sleep mode*/
    PWR_DisallowDeviceToSleep();
  #endif /* gLpmIncluded_d == 1 */
 
  /*All LED's are switched OFF*/
  Led1Off();
  Led2Off();
  Led3Off();
  Led4Off();
  
  /* Start the task scheduler. Does not return. */
  TS_Scheduler(); 
 
}
#if gNvStorageIncluded_d

void BUtl_SetReceiverOff(void)
{
 /* This function is called by the NVM component at the start of the NV operation */
 mlmeMessage_t msg;	  
 bool_t value; 
 /* get the receiver state */
 
 msg.msgType = gMlmeGetReq_c;
 msg.msgData.getReq.pibAttribute = gMPibRxOnWhenIdle_c;
 msg.msgData.getReq.pibAttributeValue = &value; 
 (void)MSG_Send(NWK_MLME, &msg);
 
 if(value)
 {
  /* Turn off the receiver during NVM operation */
  receiverOn = TRUE;
  
  value = FALSE;
  msg.msgType = gMlmeSetReq_c;
  msg.msgData.setReq.pibAttribute = gMPibRxOnWhenIdle_c;
  msg.msgData.setReq.pibAttributeValue = &value;
  (void)MSG_Send(NWK_MLME, &msg);
 }
 else
 {
  /* Receiver already turned off */
  receiverOn = FALSE;
 }
 
}

void BUtl_SetReceiverOn(void)
{
 /* This function is called by the NVM component at the end of the NV operation */
 mlmeMessage_t msg;	  
 bool_t value = TRUE;
 if(receiverOn == TRUE)
 {  
  /* Restore receiver state */
  msg.msgType = gMlmeSetReq_c;
  msg.msgData.setReq.pibAttribute = gMPibRxOnWhenIdle_c;
  msg.msgData.setReq.pibAttributeValue = &value;
  (void)MSG_Send(NWK_MLME, &msg);
 } 
}

#endif

/*****************************************************************************
* Entry point to the idle task
*
* Interface assumptions:
* Cannot use any call by which this task has to be suspended.This task should
* always be ready to run if there are no other tasks in the system
* 
* Return value:
* None
*****************************************************************************/

void IdleTask(event_t events)
{
  /* Just to avoid the compiler warning */
  (void)events;
 #if gNvStorageIncluded_d
  /* Process NV Storage save-on-idle and save-on-count requests. */
  NvIdle();
 #endif
  #if (gLpmIncluded_d == 1)
  /*Low power management*/
    if(PWR_CheckIfDeviceCanGoToSleep())
      {
      PWR_EnterLowPower();
      }
  #endif /*gLpmIncluded_d*/ 
}


/*****************************************************************************
* Initialize the MAC 64 bit address
*
* Interface assumptions:
* None
* 
* Return value:
* None
*****************************************************************************/
void Init_MacExtendedAddress( void ) 
{
  uint8_t tempExtAddress[8]= {mDefaultValueOfExtendedAddress_c};

  if((gHardwareParameters.MAC_Address[0] == 0xFF)&&(gHardwareParameters.MAC_Address[1] == 0xFF)&&
     (gHardwareParameters.MAC_Address[2] == 0xFF)&&(gHardwareParameters.MAC_Address[3] == 0xFF)&&
     (gHardwareParameters.MAC_Address[4] == 0xFF)&&(gHardwareParameters.MAC_Address[5] == 0xFF)&&
     (gHardwareParameters.MAC_Address[6] == 0xFF)&&(gHardwareParameters.MAC_Address[7] == 0xFF))
  {
    MacPhyInit_WriteExtAddress(tempExtAddress);
  }
  else
  {
    MacPhyInit_WriteExtAddress((unsigned char*)gHardwareParameters.MAC_Address);
  }
}

/******************************************************************************
* BeeAppAssert
*
* Something failed in the stack or app that can't recover. Stop here. Mostly
* used during debug phase of product. Could be used
******************************************************************************/
void BeeAppAssert
  (
  assertCode_t code /* IN: why the assert failed */
  )
{
  volatile bool_t waitForever = code; /* just set to anything non-zero */
  
  while (waitForever)
    { }
}

/******************************************************************************
* Swap2Bytes
*
* Swaps two bytes
******************************************************************************/
uint16_t Swap2Bytes(uint16_t iOldValue)
{
  uint16_t iValue;

  iValue = ((uint8_t *)&iOldValue)[0] << 8;
  iValue += ((uint8_t *)&iOldValue)[1];

  return iValue;
}

/*******************************************************************************/


