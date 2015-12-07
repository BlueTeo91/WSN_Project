///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      12/Oct/2015  10:21:26 /
// IAR ANSI C/C++ Compiler V5.50.7.22081/W32 EVALUATION for ARM               /
// Copyright (C) 1999-2010 IAR Systems AB.                                    /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Documents and Settings\Administrator\Desktop\MyWirel /
//                    essApp Demo Non Beacon (End Device)\MyWirelessApp Demo  /
//                    Non Beacon (End Device)\PLM\Source\Keyboard\KeyboardHAL /
//                    .c                                                      /
//    Command line =  "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\PLM\Source\Keyboard\Keyboa /
//                    rdHAL.c" -D gMacStandAlone_d=1 -D                       /
//                    gSAPMessagesEnableLlc_d=0 -D gZtcIncluded_d=0 -D        /
//                    gTargetMC1322xSRB=1 --preprocess "C:\Documents and      /
//                    Settings\Administrator\Desktop\MyWirelessApp Demo Non   /
//                    Beacon (End Device)\MyWirelessApp Demo Non Beacon (End  /
//                    Device)\Debug\List\" -lC "C:\Documents and              /
//                    Settings\Administrator\Desktop\MyWirelessApp Demo Non   /
//                    Beacon (End Device)\MyWirelessApp Demo Non Beacon (End  /
//                    Device)\Debug\List\" -lB "C:\Documents and              /
//                    Settings\Administrator\Desktop\MyWirelessApp Demo Non   /
//                    Beacon (End Device)\MyWirelessApp Demo Non Beacon (End  /
//                    Device)\Debug\List\" --diag_suppress                    /
//                    Pe014,Pe001,Pe991,Pa039,Pe520 -o "C:\Documents and      /
//                    Settings\Administrator\Desktop\MyWirelessApp Demo Non   /
//                    Beacon (End Device)\MyWirelessApp Demo Non Beacon (End  /
//                    Device)\Debug\Obj\" --no_cse --no_unroll --no_inline    /
//                    --no_code_motion --no_tbaa --no_clustering              /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=ARM7TDMI-S --fpu=None --dlib_config "C:\Program   /
//                    Files\IAR Systems\Embedded Workbench 5.4                /
//                    Evaluation\arm\INC\DLib_Config_Normal.h" -I             /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\MacPhy\Interface\" -I      /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\Application\Init\" -I      /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\Application\Interface\"    /
//                    -I "C:\Documents and Settings\Administrator\Desktop\MyW /
//                    irelessApp Demo Non Beacon (End Device)\MyWirelessApp   /
//                    Demo Non Beacon (End Device)\Application\Configure\"    /
//                    -I "C:\Documents and Settings\Administrator\Desktop\MyW /
//                    irelessApp Demo Non Beacon (End Device)\MyWirelessApp   /
//                    Demo Non Beacon (End Device)\Application\UartUtil\" -I  /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\Application\Source\" -I    /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\SSM\TS\Interface\" -I      /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\SSM\TS\Source\" -I         /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\SSM\ZTC\Interface\" -I     /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\SSM\ZTC\Source\" -I        /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\PLM\Interface\" -I         /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\PLM\LibInterface\" -I      /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\PLM\Source\Display\" -I    /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\PLM\Source\Keyboard\" -I   /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\PLM\Source\NVM\" -I        /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\PLM\Source\TMR\" -I        /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\PLM\Source\UART\" -I       /
//                    "C:\Program Files\IAR Systems\Embedded Workbench 5.4    /
//                    Evaluation\arm\INC\" --interwork --cpu_mode thumb -On   /
//    List file    =  C:\Documents and Settings\Administrator\Desktop\MyWirel /
//                    essApp Demo Non Beacon (End Device)\MyWirelessApp Demo  /
//                    Non Beacon (End Device)\Debug\List\KeyboardHAL.s        /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME KeyboardHAL

        EXTERN CRM_RegisterISR
        EXTERN CRM_WuCntl
        EXTERN CrmKBDIsr
        EXTERN Gpio_EnPinPullup
        EXTERN Gpio_GetPinData
        EXTERN Gpio_GetPortData
        EXTERN Gpio_SelectPinPullup
        EXTERN Gpio_SetPinDir
        EXTERN Gpio_SetPinReadSource
        EXTERN Gpio_SetPortDir
        EXTERN Gpio_WrPortSetting

        PUBLIC KbCrmInit
        PUBLIC KbGpioInit
        PUBLIC KbReadCenterKey
        PUBLIC KbReadPins

// C:\Documents and Settings\Administrator\Desktop\MyWirelessApp Demo Non Beacon (End Device)\MyWirelessApp Demo Non Beacon (End Device)\PLM\Source\Keyboard\KeyboardHAL.c
//    1 /************************************************************************************
//    2 * Source file for keyboard driver.
//    3 *
//    4 * Copyright (c) 2006, Freescale, Inc. All rights reserved.
//    5 *
//    6 *
//    7 * No part of this document must be reproduced in any form - including copied,
//    8 * transcribed, printed or by any electronic means - without specific written
//    9 * permission from Freescale Semiconductor.
//   10 *
//   11 * This keyboard driver has the concept of short keys and long keys. A long key is
//   12 * press and hold on a key. 
//   13 *
//   14 * The keyboard handling logic can only understand one key at a time (pressing
//   15 * two keys at once will indicate only the first key).
//   16 *
//   17 ******************************************************************************/
//   18 #include "KeyboardHAL.h"
//   19 #include "Keyboard.h"
//   20 
//   21 
//   22 /******************************************************************************
//   23 *******************************************************************************
//   24 * Private macros
//   25 *******************************************************************************
//   26 ******************************************************************************/
//   27 
//   28 
//   29 
//   30 
//   31 /******************************************************************************
//   32 *******************************************************************************
//   33 * Private prototypes
//   34 *******************************************************************************
//   35 ******************************************************************************/
//   36 
//   37 
//   38 /******************************************************************************
//   39 *******************************************************************************
//   40 * Private type definitions
//   41 *******************************************************************************
//   42 ******************************************************************************/
//   43 
//   44 /******************************************************************************
//   45 *******************************************************************************
//   46 * Private memory declarations
//   47 *******************************************************************************
//   48 ******************************************************************************/
//   49 
//   50 
//   51 /******************************************************************************
//   52 *******************************************************************************
//   53 * Public functions
//   54 *******************************************************************************/
//   55 #if gSwitchModule_d  
//   56 /*Init the GPIO as input, normal functin mode, pull up enable and read from pads */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   57 void KbGpioInit(void)
//   58 {
KbGpioInit:
        PUSH     {R7,LR}
//   59   /* Configure the the Switch Pins */
//   60   
//   61   /* Set as input*/
//   62   (void)Gpio_SetPortDir(gKbGpioPort_c, gKbGpioAllZeros_c, gKbGpioMask_c);
        MOVS     R2,#+240
        LSLS     R2,R2,#+22       ;; #+1006632960
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       Gpio_SetPortDir
//   63   /* Pullup enable and select pullup*/
//   64   (void)Gpio_WrPortSetting(gKbGpioPort_c, gGpioPullUpEnAttr_c, gKbGpioAllOnes_c, gKbGpioMask_c);
        MOVS     R3,#+240
        LSLS     R3,R3,#+22       ;; #+1006632960
        MOVS     R2,#+0
        MVNS     R2,R2            ;; #-1
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       Gpio_WrPortSetting
//   65   (void)Gpio_WrPortSetting(gKbGpioPort_c, gGpioPullUpSelAttr_c, gKbGpioAllOnes_c, gKbGpioMask_c);
        MOVS     R3,#+240
        LSLS     R3,R3,#+22       ;; #+1006632960
        MOVS     R2,#+0
        MVNS     R2,R2            ;; #-1
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       Gpio_WrPortSetting
//   66   /*Read from pads*/
//   67   (void)Gpio_WrPortSetting(gKbGpioPort_c, gGpioInputDataSelAttr_c, gKbGpioAllZeros_c, gKbGpioMask_c); 
        MOVS     R3,#+240
        LSLS     R3,R3,#+22       ;; #+1006632960
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       Gpio_WrPortSetting
//   68   
//   69   Gpio_SetPinDir(gCenterKey_c, gGpioDirIn_c);
        MOVS     R1,#+0
        MOVS     R0,#+22
        BL       Gpio_SetPinDir
//   70   Gpio_EnPinPullup(gCenterKey_c, TRUE);
        MOVS     R1,#+1
        MOVS     R0,#+22
        BL       Gpio_EnPinPullup
//   71   Gpio_SelectPinPullup(gCenterKey_c, gGpioPinPullup_c);
        MOVS     R1,#+1
        MOVS     R0,#+22
        BL       Gpio_SelectPinPullup
//   72   Gpio_SetPinReadSource(gCenterKey_c, gGpioPinReadPad_c);
        MOVS     R1,#+0
        MOVS     R0,#+22
        BL       Gpio_SetPinReadSource
//   73 }
        POP      {R0,R3}
        BX       R3               ;; return
//   74 
//   75 /* Enable ext. interrupt,  low level sense, wake up polarity to be negative edge,
//   76 enable interrupts for all keys and register the Crm callback to handle interrupts */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   77 void KbCrmInit(void)
//   78 {
KbCrmInit:
        PUSH     {R5-R7,LR}
//   79   crmWuCtrl_t WuCtrl;
//   80   
//   81   /* Enable ext. interrupt,  low level sense, wake up polarity to be negative edge, enable interrupts for all keys*/
//   82   WuCtrl.wuSource = gExtWu_c;
        MOV      R0,SP
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//   83   WuCtrl.KBI_WU_EN = gKbiWuEN_c;
        LDR      R0,[SP, #+4]
        MOVS     R1,#+15
        ORRS     R1,R1,R0
        STR      R1,[SP, #+4]
//   84   WuCtrl.KBI_WU_EVENT = gKbiWuEVENT_c;
        LDR      R0,[SP, #+4]
        MOVS     R1,#+240
        ORRS     R1,R1,R0
        STR      R1,[SP, #+4]
//   85   WuCtrl.KBI_WU_POL = gKbiWuPOL_c;
        LDR      R0,[SP, #+4]
        LDR      R1,??DataTable0  ;; 0xfffff0ff
        ANDS     R1,R1,R0
        STR      R1,[SP, #+4]
//   86   WuCtrl.KBI_INT_EN = gKbiIntEN_c;
        LDR      R0,[SP, #+4]
        MOVS     R1,#+240
        LSLS     R1,R1,#+8        ;; #+61440
        ORRS     R1,R1,R0
        STR      R1,[SP, #+4]
//   87   CRM_WuCntl(&WuCtrl);
        MOV      R0,SP
        BL       CRM_WuCntl
//   88   
//   89   /*Register call back*/
//   90   CRM_RegisterISR(gCrmKB4WuEvent_c,CrmKBDIsr);
        LDR      R1,??DataTable0_1
        MOVS     R0,#+2
        BL       CRM_RegisterISR
//   91   CRM_RegisterISR(gCrmKB5WuEvent_c,CrmKBDIsr);
        LDR      R1,??DataTable0_1
        MOVS     R0,#+3
        BL       CRM_RegisterISR
//   92   CRM_RegisterISR(gCrmKB6WuEvent_c,CrmKBDIsr);
        LDR      R1,??DataTable0_1
        MOVS     R0,#+4
        BL       CRM_RegisterISR
//   93   CRM_RegisterISR(gCrmKB7WuEvent_c,CrmKBDIsr);
        LDR      R1,??DataTable0_1
        MOVS     R0,#+5
        BL       CRM_RegisterISR
//   94 }
        POP      {R0-R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable0:
        DC32     0xfffff0ff

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable0_1:
        DC32     CrmKBDIsr
//   95 
//   96 
//   97 /* Read the port and shift it with 26 for better use */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   98 uint8_t KbReadPins(void)
//   99 {
KbReadPins:
        PUSH     {R7,LR}
//  100   uint32_t portData;
//  101   (void)Gpio_GetPortData(gKbGpioPort_c, &portData);
        MOV      R1,SP
        MOVS     R0,#+0
        BL       Gpio_GetPortData
//  102   return (uint8_t)(portData >> 26);
        LDR      R0,[SP, #+0]
        LSRS     R0,R0,#+26
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        POP      {R1,R3}
        BX       R3               ;; return
//  103 }
//  104 
//  105 /*Read the joystick's center key pin*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  106 uint8_t KbReadCenterKey(void) 
//  107 {
KbReadCenterKey:
        PUSH     {R7,LR}
//  108   GpioPinState_t pioPinState;
//  109   
//  110   Gpio_GetPinData (gCenterKey_c,&pioPinState);
        MOV      R1,SP
        MOVS     R0,#+22
        BL       Gpio_GetPinData
//  111   
//  112   return pioPinState;
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        POP      {R1,R3}
        BX       R3               ;; return
//  113   
//  114 }

        END
//  115 #endif
//  116 
//  117 /******************************************************************************
//  118 *******************************************************************************
//  119 * Private functions
//  120 *******************************************************************************
//  121 ******************************************************************************/
// 
// 228 bytes in section .text
// 
// 228 bytes of CODE memory
//
//Errors: none
//Warnings: none
