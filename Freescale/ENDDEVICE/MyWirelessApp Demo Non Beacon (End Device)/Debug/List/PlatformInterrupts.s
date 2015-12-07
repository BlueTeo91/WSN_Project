///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      12/Oct/2015  10:21:27 /
// IAR ANSI C/C++ Compiler V5.50.7.22081/W32 EVALUATION for ARM               /
// Copyright (C) 1999-2010 IAR Systems AB.                                    /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Documents and Settings\Administrator\Desktop\MyWirel /
//                    essApp Demo Non Beacon (End Device)\MyWirelessApp Demo  /
//                    Non Beacon (End Device)\PLM\Source\Common\Sys\PlatformI /
//                    nterrupts.c                                             /
//    Command line =  "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\PLM\Source\Common\Sys\Plat /
//                    formInterrupts.c" -D gMacStandAlone_d=1 -D              /
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
//                    Non Beacon (End Device)\Debug\List\PlatformInterrupts.s /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME PlatformInterrupts

        EXTERN CRM_Isr
        EXTERN ITC_DisableInterrupt
        EXTERN ITC_EnableInterrupt
        EXTERN ITC_SetPriority
        EXTERN IntAssignHandler
        EXTERN IntDisableAll
        EXTERN IntRestoreAll
        EXTERN MACA_Interrupt
        EXTERN TmrIsr
        EXTERN pfDisableMacaInt
        EXTERN pfDisableProccessorIrqs
        EXTERN pfEnableMacaInt
        EXTERN pfEnableProccessorIrqs
        EXTERN pfIsMacaIntAsserted
        EXTERN pfIsMacaIntEnabled

        PUBLIC AppInterruptsInit
        PUBLIC DisableMacaInt
        PUBLIC EnableMacaInt
        PUBLIC IsMacaIntAsserted
        PUBLIC IsMacaIntEnabled

// C:\Documents and Settings\Administrator\Desktop\MyWirelessApp Demo Non Beacon (End Device)\MyWirelessApp Demo Non Beacon (End Device)\PLM\Source\Common\Sys\PlatformInterrupts.c
//    1 /************************************************************************************
//    2 *
//    3 * (c) Copyright 2004, Freescale, Inc.  All rights reserved.
//    4 *
//    5 * No part of this document must be reproduced in any form - including copied,
//    6 * transcribed, printed or by any electronic means - without specific written
//    7 * permission from Freescale.
//    8 *
//    9 ************************************************************************************/
//   10 #include "EmbeddedTypes.h"
//   11 #include "Interrupt.h"
//   12 #include "AppMacInterrupt.h"
//   13 
//   14 extern void  CRM_Isr(void);
//   15 extern void  TmrIsr(void);
//   16 
//   17 void EnableMacaInt(void);
//   18 void DisableMacaInt(void);
//   19 unsigned int IsMacaIntEnabled(void);
//   20 unsigned int IsMacaIntAsserted(void);
//   21 
//   22 /***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   23 void AppInterruptsInit(void)
//   24 {
AppInterruptsInit:
        PUSH     {R7,LR}
//   25   
//   26   pfEnableMacaInt     = (void(*)(void))EnableMacaInt;
        LDR      R0,??DataTable2
        LDR      R1,??DataTable2_1
        STR      R1,[R0, #+0]
//   27   pfDisableMacaInt    = (void(*)(void))DisableMacaInt;
        LDR      R0,??DataTable2_2
        LDR      R1,??DataTable2_3
        STR      R1,[R0, #+0]
//   28   pfIsMacaIntEnabled  = (unsigned int(*)(void))IsMacaIntEnabled;
        LDR      R0,??DataTable2_4
        LDR      R1,??DataTable2_5
        STR      R1,[R0, #+0]
//   29   pfIsMacaIntAsserted = (unsigned int(*)(void))IsMacaIntAsserted;
        LDR      R0,??DataTable2_6
        LDR      R1,??DataTable2_7
        STR      R1,[R0, #+0]
//   30 
//   31   pfDisableProccessorIrqs = (int(*)(void))IntDisableAll;
        LDR      R0,??DataTable2_8
        LDR      R1,??DataTable2_9
        STR      R1,[R0, #+0]
//   32   pfEnableProccessorIrqs = (void(*)(int))IntRestoreAll;
        LDR      R0,??DataTable2_10
        LDR      R1,??DataTable2_11
        STR      R1,[R0, #+0]
//   33 
//   34   /* Set priority and handler for Crm, timer, and maca*/
//   35 
//   36   IntAssignHandler(gTmrInt_c, (IntHandlerFunc_t)TmrIsr);  
        LDR      R1,??DataTable2_12
        MOVS     R0,#+5
        BL       IntAssignHandler
//   37   ITC_SetPriority(gTmrInt_c, gItcFastPriority_c);
        MOVS     R1,#+1
        MOVS     R0,#+5
        BL       ITC_SetPriority
//   38   ITC_EnableInterrupt(gTmrInt_c);
        MOVS     R0,#+5
        BL       ITC_EnableInterrupt
//   39   
//   40   IntAssignHandler(gCrmInt_c, (IntHandlerFunc_t)CRM_Isr);
        LDR      R1,??DataTable2_13
        MOVS     R0,#+3
        BL       IntAssignHandler
//   41   ITC_SetPriority(gCrmInt_c, gItcFastPriority_c);
        MOVS     R1,#+1
        MOVS     R0,#+3
        BL       ITC_SetPriority
//   42   ITC_EnableInterrupt(gCrmInt_c);
        MOVS     R0,#+3
        BL       ITC_EnableInterrupt
//   43     
//   44   IntAssignHandler(gMacaInt_c, MACA_Interrupt);
        LDR      R1,??DataTable2_14
        MOVS     R0,#+7
        BL       IntAssignHandler
//   45   ITC_SetPriority(gMacaInt_c, gItcFastPriority_c);
        MOVS     R1,#+1
        MOVS     R0,#+7
        BL       ITC_SetPriority
//   46   ITC_EnableInterrupt(gMacaInt_c);
        MOVS     R0,#+7
        BL       ITC_EnableInterrupt
//   47 
//   48 }
        POP      {R0,R3}
        BX       R3               ;; return
//   49 
//   50 /***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   51 void EnableMacaInt(void)
//   52 {
EnableMacaInt:
        PUSH     {R7,LR}
//   53   ITC_EnableInterrupt(gMacaInt_c);
        MOVS     R0,#+7
        BL       ITC_EnableInterrupt
//   54 }
        POP      {R0,R3}
        BX       R3               ;; return
//   55 
//   56 /***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   57 void DisableMacaInt(void)
//   58 {
DisableMacaInt:
        PUSH     {R7,LR}
//   59   ITC_DisableInterrupt(gMacaInt_c);
        MOVS     R0,#+7
        BL       ITC_DisableInterrupt
//   60 }
        POP      {R0,R3}
        BX       R3               ;; return
//   61 
//   62 /***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   63 unsigned int IsMacaIntEnabled(void)
//   64 {
//   65   return ITC_GetIntEnable(gMacaInt_c);
IsMacaIntEnabled:
        LDR      R0,??DataTable2_15  ;; 0x80020010
        LDR      R1,[R0, #+0]
        MOVS     R0,R1
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+31
        LSRS     R0,R0,#+31
        BX       LR               ;; return
//   66 }
//   67 
//   68 /***********************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   69 unsigned int IsMacaIntAsserted(void)
//   70 {
//   71   return ITC_GetIntSrc(gMacaInt_c);
IsMacaIntAsserted:
        LDR      R0,??DataTable2_16  ;; 0x80020030
        LDR      R1,[R0, #+0]
        MOVS     R0,R1
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+31
        LSRS     R0,R0,#+31
        BX       LR               ;; return
//   72 }

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2:
        DC32     pfEnableMacaInt

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_1:
        DC32     EnableMacaInt

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_2:
        DC32     pfDisableMacaInt

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_3:
        DC32     DisableMacaInt

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_4:
        DC32     pfIsMacaIntEnabled

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_5:
        DC32     IsMacaIntEnabled

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_6:
        DC32     pfIsMacaIntAsserted

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_7:
        DC32     IsMacaIntAsserted

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_8:
        DC32     pfDisableProccessorIrqs

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_9:
        DC32     IntDisableAll

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_10:
        DC32     pfEnableProccessorIrqs

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_11:
        DC32     IntRestoreAll

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_12:
        DC32     TmrIsr

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_13:
        DC32     CRM_Isr

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_14:
        DC32     MACA_Interrupt

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_15:
        DC32     0x80020010

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_16:
        DC32     0x80020030

        END
//   73 /***********************************************************************************/
// 
// 224 bytes in section .text
// 
// 224 bytes of CODE memory
//
//Errors: none
//Warnings: none
