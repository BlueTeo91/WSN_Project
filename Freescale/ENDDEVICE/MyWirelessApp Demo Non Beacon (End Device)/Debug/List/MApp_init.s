///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      08/Dec/2015  00:24:15 /
// IAR ANSI C/C++ Compiler V5.50.7.22081/W32 EVALUATION for ARM               /
// Copyright (C) 1999-2010 IAR Systems AB.                                    /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Documents and Settings\Administrator\Desktop\WSN_Pro /
//                    ject\ENDDEV\MyWirelessApp Demo Non Beacon (End          /
//                    Device)\Application\Init\MApp_init.c                    /
//    Command line =  "C:\Documents and Settings\Administrator\Desktop\WSN_Pr /
//                    oject\ENDDEV\MyWirelessApp Demo Non Beacon (End         /
//                    Device)\Application\Init\MApp_init.c" -D                /
//                    gMacStandAlone_d=1 -D gSAPMessagesEnableLlc_d=0 -D      /
//                    gZtcIncluded_d=0 -D gTargetMC1322xSRB=1 --preprocess    /
//                    "C:\Documents and Settings\Administrator\Desktop\WSN_Pr /
//                    oject\ENDDEV\MyWirelessApp Demo Non Beacon (End         /
//                    Device)\Debug\List\" -lC "C:\Documents and              /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End Device)\Debug\List\" -lB  /
//                    "C:\Documents and Settings\Administrator\Desktop\WSN_Pr /
//                    oject\ENDDEV\MyWirelessApp Demo Non Beacon (End         /
//                    Device)\Debug\List\" --diag_suppress                    /
//                    Pe014,Pe001,Pe991,Pa039,Pe520 -o "C:\Documents and      /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End Device)\Debug\Obj\"       /
//                    --no_cse --no_unroll --no_inline --no_code_motion       /
//                    --no_tbaa --no_clustering --no_scheduling --debug       /
//                    --endian=little --cpu=ARM7TDMI-S --fpu=None             /
//                    --dlib_config "C:\Program Files\IAR Systems\Embedded    /
//                    Workbench 5.4 Evaluation\arm\INC\DLib_Config_Normal.h"  /
//                    -I "C:\Documents and Settings\Administrator\Desktop\WSN /
//                    _Project\ENDDEV\MyWirelessApp Demo Non Beacon (End      /
//                    Device)\MacPhy\Interface\" -I "C:\Documents and         /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\Application\Init\" -I "C:\Documents and         /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\Application\Interface\" -I "C:\Documents and    /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\Application\Configure\" -I "C:\Documents and    /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\Application\UartUtil\" -I "C:\Documents and     /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\Application\Source\" -I "C:\Documents and       /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\SSM\TS\Interface\" -I "C:\Documents and         /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End Device)\SSM\TS\Source\"   /
//                    -I "C:\Documents and Settings\Administrator\Desktop\WSN /
//                    _Project\ENDDEV\MyWirelessApp Demo Non Beacon (End      /
//                    Device)\SSM\ZTC\Interface\" -I "C:\Documents and        /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End Device)\SSM\ZTC\Source\"  /
//                    -I "C:\Documents and Settings\Administrator\Desktop\WSN /
//                    _Project\ENDDEV\MyWirelessApp Demo Non Beacon (End      /
//                    Device)\PLM\Interface\" -I "C:\Documents and            /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\PLM\LibInterface\" -I "C:\Documents and         /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\PLM\Source\Display\" -I "C:\Documents and       /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\PLM\Source\Keyboard\" -I "C:\Documents and      /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End Device)\PLM\Source\NVM\"  /
//                    -I "C:\Documents and Settings\Administrator\Desktop\WSN /
//                    _Project\ENDDEV\MyWirelessApp Demo Non Beacon (End      /
//                    Device)\PLM\Source\TMR\" -I "C:\Documents and           /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\PLM\Source\UART\" -I "C:\Program Files\IAR      /
//                    Systems\Embedded Workbench 5.4 Evaluation\arm\INC\"     /
//                    --interwork --cpu_mode thumb -On                        /
//    List file    =  C:\Documents and Settings\Administrator\Desktop\WSN_Pro /
//                    ject\ENDDEV\MyWirelessApp Demo Non Beacon (End          /
//                    Device)\Debug\List\MApp_init.s                          /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MApp_init

        EXTERN AppTask
        EXTERN Gpio_SetPinData
        EXTERN Init_802_15_4
        EXTERN IntDisableAll
        EXTERN InterruptInit
        EXTERN MApp_init
        EXTERN MacInit
        EXTERN MacPhyInit_WriteExtAddress
        EXTERN NWK_MLME_SapHandler
        EXTERN NvIdle
        EXTERN NvModuleInit
        EXTERN PWR_CheckIfDeviceCanGoToSleep
        EXTERN PWR_DisallowDeviceToSleep
        EXTERN PWR_EnterLowPower
        EXTERN Platform_Init
        EXTERN TMR_Init
        EXTERN TS_CreateTask
        EXTERN TS_Init
        EXTERN TS_Scheduler
        EXTERN Uart_ModuleInit
        EXTERN __aeabi_uwrite4
        EXTERN gHardwareParameters

        PUBLIC BUtl_SetReceiverOff
        PUBLIC BUtl_SetReceiverOn
        PUBLIC BeeAppAssert
        PUBLIC IdleTask
        PUBLIC Init_MacExtendedAddress
        PUBLIC Main
        PUBLIC Swap2Bytes
        PUBLIC gAppTaskID_c
        PUBLIC gPowerSaveMode

// C:\Documents and Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWirelessApp Demo Non Beacon (End Device)\Application\Init\MApp_init.c
//    1 /*****************************************************************************
//    2 * Applications' initialization module
//    3 *
//    4 * (c) Copyright 2007, Freescale, Inc. All rights reserved.
//    5 *
//    6 *
//    7 * No part of this document must be reproduced in any form - including copied,
//    8 * transcribed, printed or by any electronic means - without specific written
//    9 * permission from Freescale Semiconductor.
//   10 *
//   11 *****************************************************************************/
//   12 
//   13 #include "Mapp_init.h"
//   14 #include "MacPhyInit.h"
//   15 #include "Mac_Globals.h"
//   16 #include "NV_Data.h"
//   17 #include "MacInit.h"
//   18 #include "Interrupt.h"
//   19 #if gZtcIncluded_d
//   20 #include "ZTCInterface.h"
//   21 #endif /* gZtcIncluded_d */
//   22 #include "NVM_Interface.h"
//   23 
//   24 /************************************************************************************
//   25 *************************************************************************************
//   26 * Private macros
//   27 *************************************************************************************
//   28 ************************************************************************************/
//   29 
//   30 
//   31 /************************************************************************************
//   32 *************************************************************************************
//   33 * Private prototypes
//   34 *************************************************************************************
//   35 ************************************************************************************/
//   36 
//   37 void IdleTask(event_t event);
//   38 void AppTask(event_t events);

        SECTION `.bss`:DATA:NOROOT(0)
//   39 tsTaskID_t gAppTaskID_c;
gAppTaskID_c:
        DS8 1

        SECTION `.bss`:DATA:NOROOT(0)
//   40 uint8_t gPowerSaveMode;
gPowerSaveMode:
        DS8 1
//   41 
//   42 /************************************************************************************
//   43 *************************************************************************************
//   44 * Private type definitions
//   45 *************************************************************************************
//   46 ************************************************************************************/
//   47 
//   48 /************************************************************************************
//   49 *************************************************************************************
//   50 * Private memory declarations
//   51 *************************************************************************************
//   52 ************************************************************************************/
//   53 
//   54 extern uint8_t aExtendedAddress[8];
//   55 
//   56 #if gNvStorageIncluded_d

        SECTION `.bss`:DATA:NOROOT(0)
//   57 static bool_t receiverOn;
receiverOn:
        DS8 1
//   58 #endif
//   59 /************************************************************************************
//   60 *************************************************************************************
//   61 * Public functions
//   62 *************************************************************************************
//   63 ************************************************************************************/
//   64 
//   65 /*****************************************************************************
//   66 * main function
//   67 *
//   68 * Interface assumptions:
//   69 * 
//   70 * Return value:
//   71 * None
//   72 *****************************************************************************/
//   73 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   74 void Main(void)
//   75  {
Main:
        PUSH     {R7,LR}
//   76   InterruptInit();
        BL       InterruptInit
//   77   IntDisableAll();
        BL       IntDisableAll
//   78   Platform_Init();
        BL       Platform_Init
//   79   
//   80 
//   81   TS_Init();                            /* Init the kernel. */
        BL       TS_Init
//   82   TMR_Init();                           /* Init the TMR module */							
        BL       TMR_Init
//   83   NvModuleInit();
        BL       NvModuleInit
//   84   Uart_ModuleInit();
        BL       Uart_ModuleInit
//   85   /* This only creates the MAC TS thread. */
//   86   MacInit();
        BL       MacInit
//   87   /* Use TS for MAC  - the MAC TS ID must be known at this step. */
//   88   Init_802_15_4(TRUE);
        MOVS     R0,#+1
        BL       Init_802_15_4
//   89 
//   90   #if gZtcIncluded_d
//   91   Ztc_TaskInit();
//   92   #endif /* gZtcIncluded_d */ 
//   93 
//   94   /*initialize the application*/ 
//   95   gAppTaskID_c = TS_CreateTask(gTsAppTaskPriority_c, AppTask);
        LDR      R1,??DataTable3
        MOVS     R0,#+128
        BL       TS_CreateTask
        LDR      R1,??DataTable3_1
        STRB     R0,[R1, #+0]
//   96  
//   97   MApp_init();
        BL       MApp_init
//   98   #if (gLpmIncluded_d == 1)
//   99     /*do not allow the device to enter sleep mode*/
//  100     PWR_DisallowDeviceToSleep();
        BL       PWR_DisallowDeviceToSleep
//  101   #endif /* gLpmIncluded_d == 1 */
//  102  
//  103   /*All LED's are switched OFF*/
//  104   Led1Off();
        MOVS     R1,#+0
        MOVS     R0,#+23
        BL       Gpio_SetPinData
//  105   Led2Off();
        MOVS     R1,#+0
        MOVS     R0,#+24
        BL       Gpio_SetPinData
//  106   Led3Off();
        MOVS     R1,#+0
        MOVS     R0,#+25
        BL       Gpio_SetPinData
//  107   Led4Off();
        MOVS     R1,#+0
        MOVS     R0,#+44
        BL       Gpio_SetPinData
//  108   
//  109   /* Start the task scheduler. Does not return. */
//  110   TS_Scheduler(); 
        BL       TS_Scheduler
//  111  
//  112 }
        POP      {R0,R3}
        BX       R3               ;; return
//  113 #if gNvStorageIncluded_d
//  114 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  115 void BUtl_SetReceiverOff(void)
//  116 {
BUtl_SetReceiverOff:
        PUSH     {LR}
        SUB      SP,SP,#+20
//  117  /* This function is called by the NVM component at the start of the NV operation */
//  118  mlmeMessage_t msg;	  
//  119  bool_t value; 
//  120  /* get the receiver state */
//  121  
//  122  msg.msgType = gMlmeGetReq_c;
        MOV      R0,SP
        MOVS     R1,#+3
        STRB     R1,[R0, #+4]
//  123  msg.msgData.getReq.pibAttribute = gMPibRxOnWhenIdle_c;
        ADD      R0,SP,#+4
        MOVS     R1,#+82
        STRB     R1,[R0, #+1]
//  124  msg.msgData.getReq.pibAttributeValue = &value; 
        ADD      R1,SP,#+4
        ADDS     R1,R1,#+2
        MOV      R0,SP
        BL       __aeabi_uwrite4
//  125  (void)MSG_Send(NWK_MLME, &msg);
        ADD      R0,SP,#+4
        BL       NWK_MLME_SapHandler
//  126  
//  127  if(value)
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??BUtl_SetReceiverOff_0
//  128  {
//  129   /* Turn off the receiver during NVM operation */
//  130   receiverOn = TRUE;
        LDR      R0,??DataTable3_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  131   
//  132   value = FALSE;
        MOV      R0,SP
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  133   msg.msgType = gMlmeSetReq_c;
        MOV      R0,SP
        MOVS     R1,#+9
        STRB     R1,[R0, #+4]
//  134   msg.msgData.setReq.pibAttribute = gMPibRxOnWhenIdle_c;
        ADD      R0,SP,#+4
        MOVS     R1,#+82
        STRB     R1,[R0, #+1]
//  135   msg.msgData.setReq.pibAttributeValue = &value;
        ADD      R1,SP,#+4
        ADDS     R1,R1,#+2
        MOV      R0,SP
        BL       __aeabi_uwrite4
//  136   (void)MSG_Send(NWK_MLME, &msg);
        ADD      R0,SP,#+4
        BL       NWK_MLME_SapHandler
        B        ??BUtl_SetReceiverOff_1
//  137  }
//  138  else
//  139  {
//  140   /* Receiver already turned off */
//  141   receiverOn = FALSE;
??BUtl_SetReceiverOff_0:
        LDR      R0,??DataTable3_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  142  }
//  143  
//  144 }
??BUtl_SetReceiverOff_1:
        ADD      SP,SP,#+20
        POP      {R3}
        BX       R3               ;; return
//  145 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  146 void BUtl_SetReceiverOn(void)
//  147 {
BUtl_SetReceiverOn:
        PUSH     {LR}
        SUB      SP,SP,#+20
//  148  /* This function is called by the NVM component at the end of the NV operation */
//  149  mlmeMessage_t msg;	  
//  150  bool_t value = TRUE;
        MOV      R0,SP
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  151  if(receiverOn == TRUE)
        LDR      R0,??DataTable3_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE      ??BUtl_SetReceiverOn_0
//  152  {  
//  153   /* Restore receiver state */
//  154   msg.msgType = gMlmeSetReq_c;
        MOV      R0,SP
        MOVS     R1,#+9
        STRB     R1,[R0, #+4]
//  155   msg.msgData.setReq.pibAttribute = gMPibRxOnWhenIdle_c;
        ADD      R0,SP,#+4
        MOVS     R1,#+82
        STRB     R1,[R0, #+1]
//  156   msg.msgData.setReq.pibAttributeValue = &value;
        ADD      R1,SP,#+4
        ADDS     R1,R1,#+2
        MOV      R0,SP
        BL       __aeabi_uwrite4
//  157   (void)MSG_Send(NWK_MLME, &msg);
        ADD      R0,SP,#+4
        BL       NWK_MLME_SapHandler
//  158  } 
//  159 }
??BUtl_SetReceiverOn_0:
        ADD      SP,SP,#+20
        POP      {R3}
        BX       R3               ;; return
//  160 
//  161 #endif
//  162 
//  163 /*****************************************************************************
//  164 * Entry point to the idle task
//  165 *
//  166 * Interface assumptions:
//  167 * Cannot use any call by which this task has to be suspended.This task should
//  168 * always be ready to run if there are no other tasks in the system
//  169 * 
//  170 * Return value:
//  171 * None
//  172 *****************************************************************************/
//  173 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  174 void IdleTask(event_t events)
//  175 {
IdleTask:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  176   /* Just to avoid the compiler warning */
//  177   (void)events;
//  178  #if gNvStorageIncluded_d
//  179   /* Process NV Storage save-on-idle and save-on-count requests. */
//  180   NvIdle();
        BL       NvIdle
//  181  #endif
//  182   #if (gLpmIncluded_d == 1)
//  183   /*Low power management*/
//  184     if(PWR_CheckIfDeviceCanGoToSleep())
        BL       PWR_CheckIfDeviceCanGoToSleep
        CMP      R0,#+0
        BEQ      ??IdleTask_0
//  185       {
//  186       PWR_EnterLowPower();
        BL       PWR_EnterLowPower
//  187       }
//  188   #endif /*gLpmIncluded_d*/ 
//  189 }
??IdleTask_0:
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  190 
//  191 
//  192 /*****************************************************************************
//  193 * Initialize the MAC 64 bit address
//  194 *
//  195 * Interface assumptions:
//  196 * None
//  197 * 
//  198 * Return value:
//  199 * None
//  200 *****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  201 void Init_MacExtendedAddress( void ) 
//  202 {
Init_MacExtendedAddress:
        PUSH     {LR}
        SUB      SP,SP,#+12
//  203   uint8_t tempExtAddress[8]= {mDefaultValueOfExtendedAddress_c};
        MOV      R0,SP
        LDR      R1,??DataTable3_3
        LDM      R1!,{R2,R3}
        STM      R0!,{R2,R3}
        SUBS     R1,R1,#+8
        SUBS     R0,R0,#+8
//  204 
//  205   if((gHardwareParameters.MAC_Address[0] == 0xFF)&&(gHardwareParameters.MAC_Address[1] == 0xFF)&&
//  206      (gHardwareParameters.MAC_Address[2] == 0xFF)&&(gHardwareParameters.MAC_Address[3] == 0xFF)&&
//  207      (gHardwareParameters.MAC_Address[4] == 0xFF)&&(gHardwareParameters.MAC_Address[5] == 0xFF)&&
//  208      (gHardwareParameters.MAC_Address[6] == 0xFF)&&(gHardwareParameters.MAC_Address[7] == 0xFF))
        LDR      R0,??DataTable3_4
        LDRB     R0,[R0, #+7]
        CMP      R0,#+255
        BNE      ??Init_MacExtendedAddress_0
        LDR      R0,??DataTable3_4
        LDRB     R0,[R0, #+8]
        CMP      R0,#+255
        BNE      ??Init_MacExtendedAddress_0
        LDR      R0,??DataTable3_4
        LDRB     R0,[R0, #+9]
        CMP      R0,#+255
        BNE      ??Init_MacExtendedAddress_0
        LDR      R0,??DataTable3_4
        LDRB     R0,[R0, #+10]
        CMP      R0,#+255
        BNE      ??Init_MacExtendedAddress_0
        LDR      R0,??DataTable3_4
        LDRB     R0,[R0, #+11]
        CMP      R0,#+255
        BNE      ??Init_MacExtendedAddress_0
        LDR      R0,??DataTable3_4
        LDRB     R0,[R0, #+12]
        CMP      R0,#+255
        BNE      ??Init_MacExtendedAddress_0
        LDR      R0,??DataTable3_4
        LDRB     R0,[R0, #+13]
        CMP      R0,#+255
        BNE      ??Init_MacExtendedAddress_0
        LDR      R0,??DataTable3_4
        LDRB     R0,[R0, #+14]
        CMP      R0,#+255
        BNE      ??Init_MacExtendedAddress_0
//  209   {
//  210     MacPhyInit_WriteExtAddress(tempExtAddress);
        MOV      R0,SP
        BL       MacPhyInit_WriteExtAddress
        B        ??Init_MacExtendedAddress_1
//  211   }
//  212   else
//  213   {
//  214     MacPhyInit_WriteExtAddress((unsigned char*)gHardwareParameters.MAC_Address);
??Init_MacExtendedAddress_0:
        LDR      R0,??DataTable3_4
        ADDS     R0,R0,#+7
        BL       MacPhyInit_WriteExtAddress
//  215   }
//  216 }
??Init_MacExtendedAddress_1:
        POP      {R0-R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3:
        DC32     AppTask

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3_1:
        DC32     gAppTaskID_c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3_2:
        DC32     receiverOn

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3_3:
        DC32     `?<Constant {255, 255, 255, 255, 255, 255, 255,`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3_4:
        DC32     gHardwareParameters
//  217 
//  218 /******************************************************************************
//  219 * BeeAppAssert
//  220 *
//  221 * Something failed in the stack or app that can't recover. Stop here. Mostly
//  222 * used during debug phase of product. Could be used
//  223 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  224 void BeeAppAssert
//  225   (
//  226   assertCode_t code /* IN: why the assert failed */
//  227   )
//  228 {
BeeAppAssert:
        PUSH     {R7,LR}
//  229   volatile bool_t waitForever = code; /* just set to anything non-zero */
        MOV      R1,SP
        STRB     R0,[R1, #+0]
//  230   
//  231   while (waitForever)
??BeeAppAssert_0:
        MOV      R1,SP
        LDRB     R1,[R1, #+0]
        CMP      R1,#+0
        BNE      ??BeeAppAssert_0
//  232     { }
//  233 }
        POP      {R0,R3}
        BX       R3               ;; return
//  234 
//  235 /******************************************************************************
//  236 * Swap2Bytes
//  237 *
//  238 * Swaps two bytes
//  239 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  240 uint16_t Swap2Bytes(uint16_t iOldValue)
//  241 {
Swap2Bytes:
        PUSH     {R0}
//  242   uint16_t iValue;
//  243 
//  244   iValue = ((uint8_t *)&iOldValue)[0] << 8;
        MOV      R1,SP
        LDRB     R1,[R1, #+0]
        LSLS     R1,R1,#+8
        MOVS     R0,R1
//  245   iValue += ((uint8_t *)&iOldValue)[1];
        MOV      R1,SP
        LDRB     R1,[R1, #+1]
        ADDS     R0,R0,R1
//  246 
//  247   return iValue;
        LSLS     R0,R0,#+16       ;; ZeroExtS R0,R0,#+16,#+16
        LSRS     R0,R0,#+16
        ADD      SP,SP,#+4
        BX       LR               ;; return
//  248 }

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant {255, 255, 255, 255, 255, 255, 255,`:
        DATA
        DC8 255, 255, 255, 255, 255, 255, 255, 255

        END
//  249 
//  250 /*******************************************************************************/
//  251 
//  252 
// 
//   3 bytes in section .bss
//   8 bytes in section .rodata
// 434 bytes in section .text
// 
// 434 bytes of CODE  memory
//   8 bytes of CONST memory
//   3 bytes of DATA  memory
//
//Errors: none
//Warnings: none
