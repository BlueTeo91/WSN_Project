///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      22/Oct/2015  09:24:40 /
// IAR ANSI C/C++ Compiler V5.50.7.22081/W32 EVALUATION for ARM               /
// Copyright (C) 1999-2010 IAR Systems AB.                                    /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Documents and Settings\Administrator\Desktop\SW_2015 /
//                    \MyWirelessApp Demo Non Beacon                          /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\PLM\Source\Common\Sys\PlatformInit.c      /
//    Command line =  "C:\Documents and Settings\Administrator\Desktop\SW_201 /
//                    5\MyWirelessApp Demo Non Beacon                         /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\PLM\Source\Common\Sys\PlatformInit.c" -D  /
//                    gMacStandAlone_d=1 -D gSAPMessagesEnableLlc_d=0 -D      /
//                    gZtcIncluded_d=0 -D gTargetMC1322xNCB=1 --preprocess    /
//                    "C:\Documents and Settings\Administrator\Desktop\SW_201 /
//                    5\MyWirelessApp Demo Non Beacon                         /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\Debug\List\" -lC "C:\Documents and        /
//                    Settings\Administrator\Desktop\SW_2015\MyWirelessApp    /
//                    Demo Non Beacon (Coordinator)\MyWirelessApp Demo Non    /
//                    Beacon (Coordinator)\Debug\List\" -lB "C:\Documents     /
//                    and Settings\Administrator\Desktop\SW_2015\MyWirelessAp /
//                    p Demo Non Beacon (Coordinator)\MyWirelessApp Demo Non  /
//                    Beacon (Coordinator)\Debug\List\" --diag_suppress       /
//                    Pe014,Pe001,Pe991,Pa039,Pe520 -o "C:\Documents and      /
//                    Settings\Administrator\Desktop\SW_2015\MyWirelessApp    /
//                    Demo Non Beacon (Coordinator)\MyWirelessApp Demo Non    /
//                    Beacon (Coordinator)\Debug\Obj\" --no_cse --no_unroll   /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=ARM7TDMI-S --fpu=None --dlib_config "C:\Program   /
//                    Files\IAR Systems\Embedded Workbench 5.4                /
//                    Evaluation\arm\INC\DLib_Config_Normal.h" -I             /
//                    "C:\Documents and Settings\Administrator\Desktop\SW_201 /
//                    5\MyWirelessApp Demo Non Beacon                         /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\MacPhy\Interface\" -I "C:\Documents and   /
//                    Settings\Administrator\Desktop\SW_2015\MyWirelessApp    /
//                    Demo Non Beacon (Coordinator)\MyWirelessApp Demo Non    /
//                    Beacon (Coordinator)\Application\Init\" -I              /
//                    "C:\Documents and Settings\Administrator\Desktop\SW_201 /
//                    5\MyWirelessApp Demo Non Beacon                         /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\Application\Interface\" -I "C:\Documents  /
//                    and Settings\Administrator\Desktop\SW_2015\MyWirelessAp /
//                    p Demo Non Beacon (Coordinator)\MyWirelessApp Demo Non  /
//                    Beacon (Coordinator)\Application\Configure\" -I         /
//                    "C:\Documents and Settings\Administrator\Desktop\SW_201 /
//                    5\MyWirelessApp Demo Non Beacon                         /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\Application\UartUtil\" -I "C:\Documents   /
//                    and Settings\Administrator\Desktop\SW_2015\MyWirelessAp /
//                    p Demo Non Beacon (Coordinator)\MyWirelessApp Demo Non  /
//                    Beacon (Coordinator)\Application\Source\" -I            /
//                    "C:\Documents and Settings\Administrator\Desktop\SW_201 /
//                    5\MyWirelessApp Demo Non Beacon                         /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\SSM\TS\Interface\" -I "C:\Documents and   /
//                    Settings\Administrator\Desktop\SW_2015\MyWirelessApp    /
//                    Demo Non Beacon (Coordinator)\MyWirelessApp Demo Non    /
//                    Beacon (Coordinator)\SSM\TS\Source\" -I "C:\Documents   /
//                    and Settings\Administrator\Desktop\SW_2015\MyWirelessAp /
//                    p Demo Non Beacon (Coordinator)\MyWirelessApp Demo Non  /
//                    Beacon (Coordinator)\SSM\ZTC\Interface\" -I             /
//                    "C:\Documents and Settings\Administrator\Desktop\SW_201 /
//                    5\MyWirelessApp Demo Non Beacon                         /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\SSM\ZTC\Source\" -I "C:\Documents and     /
//                    Settings\Administrator\Desktop\SW_2015\MyWirelessApp    /
//                    Demo Non Beacon (Coordinator)\MyWirelessApp Demo Non    /
//                    Beacon (Coordinator)\PLM\Interface\" -I "C:\Documents   /
//                    and Settings\Administrator\Desktop\SW_2015\MyWirelessAp /
//                    p Demo Non Beacon (Coordinator)\MyWirelessApp Demo Non  /
//                    Beacon (Coordinator)\PLM\LibInterface\" -I              /
//                    "C:\Documents and Settings\Administrator\Desktop\SW_201 /
//                    5\MyWirelessApp Demo Non Beacon                         /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\PLM\Source\Display\" -I "C:\Documents     /
//                    and Settings\Administrator\Desktop\SW_2015\MyWirelessAp /
//                    p Demo Non Beacon (Coordinator)\MyWirelessApp Demo Non  /
//                    Beacon (Coordinator)\PLM\Source\Keyboard\" -I           /
//                    "C:\Documents and Settings\Administrator\Desktop\SW_201 /
//                    5\MyWirelessApp Demo Non Beacon                         /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\PLM\Source\NVM\" -I "C:\Documents and     /
//                    Settings\Administrator\Desktop\SW_2015\MyWirelessApp    /
//                    Demo Non Beacon (Coordinator)\MyWirelessApp Demo Non    /
//                    Beacon (Coordinator)\PLM\Source\TMR\" -I "C:\Documents  /
//                    and Settings\Administrator\Desktop\SW_2015\MyWirelessAp /
//                    p Demo Non Beacon (Coordinator)\MyWirelessApp Demo Non  /
//                    Beacon (Coordinator)\PLM\Source\UART\" -I "C:\Program   /
//                    Files\IAR Systems\Embedded Workbench 5.4                /
//                    Evaluation\arm\INC\" --interwork --cpu_mode thumb -On   /
//    List file    =  C:\Documents and Settings\Administrator\Desktop\SW_2015 /
//                    \MyWirelessApp Demo Non Beacon                          /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\Debug\List\PlatformInit.s                 /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME PlatformInit

        EXTERN AppInterruptsInit
        EXTERN Asp_SetPowerLevel
        EXTERN Asp_TrimReq
        EXTERN MacPhyInit_Initialize
        EXTERN MacPhyInit_WriteExtAddress
        EXTERN gHardwareParameters
        EXTERN gbTaskMode

        PUBLIC Init_802_15_4
        PUBLIC Platform_Init
        PUBLIC StartNvmReg
        PUBLIC StopNvmReg

// C:\Documents and Settings\Administrator\Desktop\SW_2015\MyWirelessApp Demo Non Beacon (Coordinator)\MyWirelessApp Demo Non Beacon (Coordinator)\PLM\Source\Common\Sys\PlatformInit.c
//    1 /************************************************************************************
//    2 *
//    3 * (c) Copyright 2007, Freescale, Inc.  All rights reserved.
//    4 *
//    5 *
//    6 * No part of this document must be reproduced in any form - including copied,
//    7 * transcribed, printed or by any electronic means - without specific written
//    8 * permission from Freescale.
//    9 *
//   10 ************************************************************************************/
//   11 #include "Platform.h"
//   12 #include "PortConfig.h"
//   13 #include "PlatformInterrupts.h"
//   14 #include "Interrupt.h"
//   15 #include "PlatformInit.h"
//   16 #include "MsgSystem.h"
//   17 #include "NwkMacInterface.h"
//   18 #include "AppAspInterface.h"
//   19 #include "NV_Data.h"
//   20 #include "MacPhyInit.h"
//   21 #include "GPIO_Interface.h"
//   22 #include "AppAspInterface.h"
//   23 
//   24 
//   25 /* CRM register containing the control of NVM regulator */
//   26 #define VregCntl            (*((volatile unsigned long*)(0x80003048)))
//   27 #define VREG_1P8V_EN        0x00000080UL
//   28 #define BUCK_BYPASS_EN      0x00000004UL
//   29 #define BUCK_EN             0x00000001UL
//   30 
//   31 
//   32 extern void MacPhyInit_Initialize(void);
//   33 extern bool_t gbTaskMode;
//   34 
//   35 void Init_802_15_4(bool_t mUseTs);
//   36 static void PlatformInitGpio(void);
//   37 
//   38 /**************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   39 void Platform_Init(void)
//   40 {
Platform_Init:
        PUSH     {R7,LR}
//   41   Asp_TrimReq( gHardwareParameters.gXtalFTune_c, gHardwareParameters.gXtalCTune_c );
        LDR      R0,??DataTable4
        ADDS     R0,R0,#+36
        LDRB     R1,[R0, #+0]
        LDR      R0,??DataTable4
        ADDS     R0,R0,#+37
        LDRB     R0,[R0, #+0]
        BL       Asp_TrimReq
//   42 
//   43   PlatformInitGpio();
        BL       PlatformInitGpio
//   44   AppInterruptsInit();  // Initializes interrupts and Itc peripheral
        BL       AppInterruptsInit
//   45 }
        POP      {R0,R3}
        BX       R3               ;; return
//   46 
//   47 /**************************************************************************************/
//   48 /*
//   49   Activates the NVM regulator via CRM
//   50 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   51 void StartNvmReg(void)
//   52 {
StartNvmReg:
        PUSH     {R7,LR}
//   53   volatile uint32_t counter;
//   54 
//   55   VregCntl &= (~BUCK_EN);
        LDR      R0,??DataTable4_1  ;; 0x80003048
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        BICS     R0,R0,R1
        LDR      R1,??DataTable4_1  ;; 0x80003048
        STR      R0,[R1, #+0]
//   56   VregCntl |= BUCK_BYPASS_EN;
        LDR      R0,??DataTable4_1  ;; 0x80003048
        LDR      R0,[R0, #+0]
        MOVS     R1,#+4
        ORRS     R1,R1,R0
        LDR      R0,??DataTable4_1  ;; 0x80003048
        STR      R1,[R0, #+0]
//   57 
//   58   counter = 18200;
        LDR      R0,??DataTable4_2  ;; 0x4718
        STR      R0,[SP, #+0]
//   59   while(counter--);
??StartNvmReg_0:
        LDR      R0,[SP, #+0]
        SUBS     R1,R0,#+1
        STR      R1,[SP, #+0]
        CMP      R0,#+0
        BNE      ??StartNvmReg_0
//   60 
//   61   VregCntl |= VREG_1P8V_EN;
        LDR      R0,??DataTable4_1  ;; 0x80003048
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        ORRS     R1,R1,R0
        LDR      R0,??DataTable4_1  ;; 0x80003048
        STR      R1,[R0, #+0]
//   62   counter = 5200;
        LDR      R0,??DataTable4_3  ;; 0x1450
        STR      R0,[SP, #+0]
//   63   while(counter--);
??StartNvmReg_1:
        LDR      R0,[SP, #+0]
        SUBS     R1,R0,#+1
        STR      R1,[SP, #+0]
        CMP      R0,#+0
        BNE      ??StartNvmReg_1
//   64 }
        POP      {R0,R3}
        BX       R3               ;; return
//   65 
//   66 /**************************************************************************************/
//   67 /*
//   68   Stops the NVM regulator via CRM
//   69 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   70 void StopNvmReg(void)
//   71 {
StopNvmReg:
        PUSH     {R7,LR}
//   72   volatile uint32_t counter;
//   73 
//   74   VregCntl &= ~VREG_1P8V_EN;
        LDR      R0,??DataTable4_1  ;; 0x80003048
        LDR      R0,[R0, #+0]
        MOVS     R1,#+128
        BICS     R0,R0,R1
        LDR      R1,??DataTable4_1  ;; 0x80003048
        STR      R0,[R1, #+0]
//   75   counter = 5200;
        LDR      R0,??DataTable4_3  ;; 0x1450
        STR      R0,[SP, #+0]
//   76   while(counter--);
??StopNvmReg_0:
        LDR      R0,[SP, #+0]
        SUBS     R1,R0,#+1
        STR      R1,[SP, #+0]
        CMP      R0,#+0
        BNE      ??StopNvmReg_0
//   77 }
        POP      {R0,R3}
        BX       R3               ;; return
//   78 
//   79 /************************************************************************************
//   80 * Initialize platform and stack. 
//   81 *
//   82 * This function is the main initialization procedure, which will be called from the 
//   83 * startup code of the project. 
//   84 * If the code is build as a stand-alone application, this function is
//   85 * called from main() below. 
//   86 *
//   87 * Interface assumptions:
//   88 *
//   89 * Return value:
//   90 *   NONE
//   91 *
//   92 *
//   93 ************************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   94 void Init_802_15_4(bool_t mUseTS)
//   95 {
Init_802_15_4:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   96   gbTaskMode = mUseTS;
        LDR      R0,??DataTable4_4
        STRB     R4,[R0, #+0]
//   97 
//   98   MacPhyInit_Initialize();      // Init 802.15.4 MAC/PHY stack
        BL       MacPhyInit_Initialize
//   99 
//  100   MacPhyInit_WriteExtAddress((uint8_t*)(&(gHardwareParameters.MAC_Address[0]))); 
        LDR      R0,??DataTable4
        ADDS     R0,R0,#+7
        BL       MacPhyInit_WriteExtAddress
//  101 
//  102   Asp_SetPowerLevel(gHardwareParameters.defaultPowerLevel);
        LDR      R0,??DataTable4
        LDRB     R0,[R0, #+15]
        BL       Asp_SetPowerLevel
//  103   
//  104   {
//  105    uint32_t reg_value =  *((volatile uint32_t*)0x80009460);
        LDR      R1,??DataTable4_5  ;; 0x80009460
        LDR      R1,[R1, #+0]
        MOVS     R0,R1
//  106    reg_value &= (uint32_t)0xFF00FFFF; /* clear the cca threshold */
        MOVS     R1,R0
        LDR      R0,??DataTable4_6  ;; 0xff00ffff
        ANDS     R0,R0,R1
//  107    reg_value |= (uint32_t) gHardwareParameters.ccaThreshold << 16; /* set the cca threshold */
        MOVS     R1,R0
        LDR      R0,??DataTable4
        ADDS     R0,R0,#+33
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+16
        ORRS     R0,R0,R1
//  108    *((volatile uint32_t*)0x80009460) = reg_value;
        LDR      R1,??DataTable4_5  ;; 0x80009460
        STR      R0,[R1, #+0]
//  109   } 
//  110 }
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  111 
//  112 /**************************************************************************************/
//  113 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  114 static void PlatformInitGpio(void)
//  115 {
//  116   GPIO_REGS_P->DataLo = gDataLoValue_c;                  //MBAR_GPIO + 0x08
PlatformInitGpio:
        LDR      R0,??DataTable4_7  ;; 0x80000008
        MOVS     R1,#+240
        LSLS     R1,R1,#+18       ;; #+62914560
        STR      R1,[R0, #+0]
//  117   GPIO_REGS_P->DataHi = gDataHiValue_c;                  //MBAR_GPIO + 0x0C
        LDR      R0,??DataTable4_8  ;; 0x8000000c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  118 
//  119   GPIO_REGS_P->DirLo =  gDirLoValue_c;                   //MBAR_GPIO + 0x00
        MOVS     R0,#+128
        LSLS     R0,R0,#+24       ;; #-2147483648
        MOVS     R1,#+240
        LSLS     R1,R1,#+18       ;; #+62914560
        STR      R1,[R0, #+0]
//  120   GPIO_REGS_P->DirHi =  gDirHiValue_c;                   //MBAR_GPIO + 0x04
        LDR      R0,??DataTable4_9  ;; 0x80000004
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  121 
//  122   GPIO_REGS_P->PuEnLo = gPuEnLoValue_c;                  //MBAR_GPIO + 0x10
        LDR      R0,??DataTable4_10  ;; 0x80000010
        MOVS     R1,#+0
        MVNS     R1,R1            ;; #-1
        STR      R1,[R0, #+0]
//  123   GPIO_REGS_P->PuEnHi = gPuEnHiValue_c;                  //MBAR_GPIO + 0x14
        LDR      R0,??DataTable4_11  ;; 0x80000014
        MOVS     R1,#+0
        MVNS     R1,R1            ;; #-1
        STR      R1,[R0, #+0]
//  124   GPIO_REGS_P->FuncSel0 = gFuncSel0Value_c;              //MBAR_GPIO + 0x18
        LDR      R0,??DataTable4_12  ;; 0x80000018
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  125   GPIO_REGS_P->FuncSel1 = gFuncSel1Value_c;              //MBAR_GPIO + 0x1C
        LDR      R0,??DataTable4_13  ;; 0x8000001c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  126   GPIO_REGS_P->FuncSel2 = gFuncSel2Value_c;              //MBAR_GPIO + 0x20
        LDR      R0,??DataTable4_14  ;; 0x80000020
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  127   GPIO_REGS_P->FuncSel3 = gFuncSel3Value_c;              //MBAR_GPIO + 0x24
        LDR      R0,??DataTable4_15  ;; 0x80000024
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  128   GPIO_REGS_P->InputDataSelLo = gInputDataSelLoValue_c;  //MBAR_GPIO + 0x28
        LDR      R0,??DataTable4_16  ;; 0x80000028
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  129   GPIO_REGS_P->InputDataSelHi = gInputDataSelHiValue_c;  //MBAR_GPIO + 0x2C
        LDR      R0,??DataTable4_17  ;; 0x8000002c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  130   GPIO_REGS_P->PuSelLo = gPuSelLoValue_c;                //MBAR_GPIO + 0x30
        LDR      R0,??DataTable4_18  ;; 0x80000030
        MOVS     R1,#+192
        LSLS     R1,R1,#+6        ;; #+12288
        STR      R1,[R0, #+0]
//  131   GPIO_REGS_P->PuSelHi = gPuSelHiValue_c;                //MBAR_GPIO + 0x34
        LDR      R0,??DataTable4_19  ;; 0x80000034
        LDR      R1,??DataTable4_20  ;; 0x8001c000
        STR      R1,[R0, #+0]
//  132   GPIO_REGS_P->HystEnLo = gHystEnLoValue_c;              //MBAR_GPIO + 0x38
        LDR      R0,??DataTable4_21  ;; 0x80000038
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  133   GPIO_REGS_P->HystEnHi = gHystEnHiValue_c;              //MBAR_GPIO + 0x3C
        LDR      R0,??DataTable4_22  ;; 0x8000003c
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  134   GPIO_REGS_P->PuKeepLo = gPuKeepLoValue_c;              //MBAR_GPIO + 0x40
        LDR      R0,??DataTable4_23  ;; 0x80000040
        MOVS     R1,#+192
        LSLS     R1,R1,#+24       ;; #-1073741824
        STR      R1,[R0, #+0]
//  135   GPIO_REGS_P->PuKeepHi = gPuKeepHiValue_c;              //MBAR_GPIO + 0x44 
        LDR      R0,??DataTable4_24  ;; 0x80000044
        MOVS     R1,#+223
        STR      R1,[R0, #+0]
//  136 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4:
        DC32     gHardwareParameters

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_1:
        DC32     0x80003048

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_2:
        DC32     0x4718

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_3:
        DC32     0x1450

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_4:
        DC32     gbTaskMode

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_5:
        DC32     0x80009460

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_6:
        DC32     0xff00ffff

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_7:
        DC32     0x80000008

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_8:
        DC32     0x8000000c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_9:
        DC32     0x80000004

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_10:
        DC32     0x80000010

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_11:
        DC32     0x80000014

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_12:
        DC32     0x80000018

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_13:
        DC32     0x8000001c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_14:
        DC32     0x80000020

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_15:
        DC32     0x80000024

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_16:
        DC32     0x80000028

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_17:
        DC32     0x8000002c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_18:
        DC32     0x80000030

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_19:
        DC32     0x80000034

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_20:
        DC32     0x8001c000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_21:
        DC32     0x80000038

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_22:
        DC32     0x8000003c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_23:
        DC32     0x80000040

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_24:
        DC32     0x80000044

        END
// 
// 418 bytes in section .text
// 
// 418 bytes of CODE memory
//
//Errors: none
//Warnings: none
