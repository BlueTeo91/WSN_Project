///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      15/Oct/2012  16:29:13 /
// IAR ANSI C/C++ Compiler V5.50.7.22081/W32 EVALUATION for ARM               /
// Copyright (C) 1999-2010 IAR Systems AB.                                    /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Documents and Settings\Administrator\My              /
//                    Documents\MyWirelessApp Demo Non Beacon                 /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\Application\Init\MacInit.c                /
//    Command line =  "C:\Documents and Settings\Administrator\My             /
//                    Documents\MyWirelessApp Demo Non Beacon                 /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\Application\Init\MacInit.c" -D            /
//                    gMacStandAlone_d=1 -D gSAPMessagesEnableLlc_d=0 -D      /
//                    gZtcIncluded_d=0 -D gTargetMC1322xNCB=1 --preprocess    /
//                    "C:\Documents and Settings\Administrator\My             /
//                    Documents\MyWirelessApp Demo Non Beacon                 /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\Debug\List\" -lC "C:\Documents and        /
//                    Settings\Administrator\My Documents\MyWirelessApp Demo  /
//                    Non Beacon (Coordinator)\MyWirelessApp Demo Non Beacon  /
//                    (Coordinator)\Debug\List\" -lB "C:\Documents and        /
//                    Settings\Administrator\My Documents\MyWirelessApp Demo  /
//                    Non Beacon (Coordinator)\MyWirelessApp Demo Non Beacon  /
//                    (Coordinator)\Debug\List\" --diag_suppress              /
//                    Pe014,Pe001,Pe991,Pa039,Pe520 -o "C:\Documents and      /
//                    Settings\Administrator\My Documents\MyWirelessApp Demo  /
//                    Non Beacon (Coordinator)\MyWirelessApp Demo Non Beacon  /
//                    (Coordinator)\Debug\Obj\" --no_cse --no_unroll          /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=ARM7TDMI-S --fpu=None --dlib_config "C:\Program   /
//                    Files\IAR Systems\Embedded Workbench 5.4                /
//                    Evaluation\arm\INC\DLib_Config_Normal.h" -I             /
//                    "C:\Documents and Settings\Administrator\My             /
//                    Documents\MyWirelessApp Demo Non Beacon                 /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\MacPhy\Interface\" -I "C:\Documents and   /
//                    Settings\Administrator\My Documents\MyWirelessApp Demo  /
//                    Non Beacon (Coordinator)\MyWirelessApp Demo Non Beacon  /
//                    (Coordinator)\Application\Init\" -I "C:\Documents and   /
//                    Settings\Administrator\My Documents\MyWirelessApp Demo  /
//                    Non Beacon (Coordinator)\MyWirelessApp Demo Non Beacon  /
//                    (Coordinator)\Application\Interface\" -I "C:\Documents  /
//                    and Settings\Administrator\My Documents\MyWirelessApp   /
//                    Demo Non Beacon (Coordinator)\MyWirelessApp Demo Non    /
//                    Beacon (Coordinator)\Application\Configure\" -I         /
//                    "C:\Documents and Settings\Administrator\My             /
//                    Documents\MyWirelessApp Demo Non Beacon                 /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\Application\UartUtil\" -I "C:\Documents   /
//                    and Settings\Administrator\My Documents\MyWirelessApp   /
//                    Demo Non Beacon (Coordinator)\MyWirelessApp Demo Non    /
//                    Beacon (Coordinator)\Application\Source\" -I            /
//                    "C:\Documents and Settings\Administrator\My             /
//                    Documents\MyWirelessApp Demo Non Beacon                 /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\SSM\TS\Interface\" -I "C:\Documents and   /
//                    Settings\Administrator\My Documents\MyWirelessApp Demo  /
//                    Non Beacon (Coordinator)\MyWirelessApp Demo Non Beacon  /
//                    (Coordinator)\SSM\TS\Source\" -I "C:\Documents and      /
//                    Settings\Administrator\My Documents\MyWirelessApp Demo  /
//                    Non Beacon (Coordinator)\MyWirelessApp Demo Non Beacon  /
//                    (Coordinator)\SSM\ZTC\Interface\" -I "C:\Documents and  /
//                    Settings\Administrator\My Documents\MyWirelessApp Demo  /
//                    Non Beacon (Coordinator)\MyWirelessApp Demo Non Beacon  /
//                    (Coordinator)\SSM\ZTC\Source\" -I "C:\Documents and     /
//                    Settings\Administrator\My Documents\MyWirelessApp Demo  /
//                    Non Beacon (Coordinator)\MyWirelessApp Demo Non Beacon  /
//                    (Coordinator)\PLM\Interface\" -I "C:\Documents and      /
//                    Settings\Administrator\My Documents\MyWirelessApp Demo  /
//                    Non Beacon (Coordinator)\MyWirelessApp Demo Non Beacon  /
//                    (Coordinator)\PLM\LibInterface\" -I "C:\Documents and   /
//                    Settings\Administrator\My Documents\MyWirelessApp Demo  /
//                    Non Beacon (Coordinator)\MyWirelessApp Demo Non Beacon  /
//                    (Coordinator)\PLM\Source\Display\" -I "C:\Documents     /
//                    and Settings\Administrator\My Documents\MyWirelessApp   /
//                    Demo Non Beacon (Coordinator)\MyWirelessApp Demo Non    /
//                    Beacon (Coordinator)\PLM\Source\Keyboard\" -I           /
//                    "C:\Documents and Settings\Administrator\My             /
//                    Documents\MyWirelessApp Demo Non Beacon                 /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\PLM\Source\NVM\" -I "C:\Documents and     /
//                    Settings\Administrator\My Documents\MyWirelessApp Demo  /
//                    Non Beacon (Coordinator)\MyWirelessApp Demo Non Beacon  /
//                    (Coordinator)\PLM\Source\TMR\" -I "C:\Documents and     /
//                    Settings\Administrator\My Documents\MyWirelessApp Demo  /
//                    Non Beacon (Coordinator)\MyWirelessApp Demo Non Beacon  /
//                    (Coordinator)\PLM\Source\UART\" -I "C:\Program          /
//                    Files\IAR Systems\Embedded Workbench 5.4                /
//                    Evaluation\arm\INC\" --interwork --cpu_mode thumb -On   /
//    List file    =  C:\Documents and Settings\Administrator\My              /
//                    Documents\MyWirelessApp Demo Non Beacon                 /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\Debug\List\MacInit.s                      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MacInit

        EXTERN Mlme_Main
        EXTERN TS_CreateTask

        PUBLIC MacInit
        PUBLIC MacTaskInit
        PUBLIC MacTaskTable
        PUBLIC TS_PlaceHolderTaskInit
        PUBWEAK __iar_via_R0
        PUBLIC gMacTaskID_c

// C:\Documents and Settings\Administrator\My Documents\MyWirelessApp Demo Non Beacon (Coordinator)\MyWirelessApp Demo Non Beacon (Coordinator)\Application\Init\MacInit.c
//    1 /******************************************************************************
//    2 *  This file is to Initialize the entire MAC.
//    3 *
//    4 * (c) Copyright 2007, Freescale, Inc. All rights reserved.
//    5 *
//    6 *
//    7 * No part of this document must be reproduced in any form - including copied,
//    8 * transcribed, printed or by any electronic means - without specific written
//    9 * permission from Freescale Semiconductor.
//   10 *
//   11 ******************************************************************************/
//   12 
//   13 #include "EmbeddedTypes.h"
//   14 #include "MacInit.h"
//   15 #include "TS_Interface.h"
//   16 #include "Mac_Globals.h"
//   17 
//   18 
//   19 /******************************************************************************
//   20 *******************************************************************************
//   21 * Private macros
//   22 *******************************************************************************
//   23 ******************************************************************************/
//   24 /* Number of elements in an array. */
//   25 #ifndef NumberOfElements
//   26 #define NumberOfElements(array)             ((sizeof(array) / (sizeof(array[0]))))
//   27 #endif
//   28 
//   29 /******************************************************************************
//   30 *******************************************************************************
//   31 * Private prototypes
//   32 *******************************************************************************
//   33 ******************************************************************************/
//   34 
//   35 void MacTaskInit(void);
//   36 void TS_PlaceHolderTaskInit(void);
//   37 
//   38 /******************************************************************************
//   39 *******************************************************************************
//   40 * Private type definitions
//   41 *******************************************************************************
//   42 ******************************************************************************/
//   43 
//   44 typedef struct macTaskEntry_tag {
//   45   tsTaskID_t *pTaskID;
//   46   void (*pInitFunction)(void);
//   47   void (*pEventHandler)(event_t);
//   48   tsTaskPriority_t priority;
//   49 } macTaskEntry_t;
//   50 
//   51 /******************************************************************************
//   52 *******************************************************************************
//   53 * Private memory declarations
//   54 *******************************************************************************
//   55 ******************************************************************************/
//   56 
//   57 #define Task(taskIdGlobal, taskInitFunc, taskMainFunc, priority) \ 
//   58   { &taskIdGlobal, taskInitFunc, taskMainFunc, priority },
//   59   

        SECTION `.rodata`:CONST:NOROOT(2)
//   60 macTaskEntry_t const MacTaskTable[] = {
MacTaskTable:
        DATA
        DC32 gMacTaskID_c, TS_PlaceHolderTaskInit, Mlme_Main
        DC8 198, 0, 0, 0
//   61 #include "MacTaskTbl.h"
//   62 };
//   63 
//   64 /******************************************************************************
//   65 *******************************************************************************
//   66 * Public memory declarations
//   67 *******************************************************************************
//   68 ******************************************************************************/
//   69 

        SECTION `.bss`:DATA:NOROOT(0)
//   70 tsTaskID_t gMacTaskID_c;
gMacTaskID_c:
        DS8 1
//   71 
//   72 
//   73 /******************************************************************************
//   74 *******************************************************************************
//   75 * Public functions
//   76 *******************************************************************************
//   77 ******************************************************************************/
//   78 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   79 void MacInit(void) {
MacInit:
        PUSH     {R7,LR}
//   80   MacTaskInit();
        BL       MacTaskInit
//   81 }
        POP      {R0,R3}
        BX       R3               ;; return
//   82 
//   83 /******************************************************************************
//   84 *******************************************************************************
//   85 * Private functions
//   86 *******************************************************************************
//   87 ******************************************************************************/
//   88 
//   89 /* This function can be used in the table in MacTaskTbl.h for any task */
//   90 /* that does not have it's own init function. */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   91 void TS_PlaceHolderTaskInit(void) {
//   92 }
TS_PlaceHolderTaskInit:
        BX       LR               ;; return
//   93 
//   94 /*****************************************************************************/
//   95 
//   96 /* Init the MAC task. Add all of them to the kernel's task table, and */
//   97 /* call of the init functions. */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   98 void MacTaskInit(void) {
MacTaskInit:
        PUSH     {R4,LR}
//   99   index_t i;
//  100 
//  101   /* Add the tasks to the kernel's task table first. That way, if any of the */
//  102   /* init functions want to set events, all of the task ids will be defined. */
//  103   for (i = 0; i < NumberOfElements(MacTaskTable); ++i) {
        MOVS     R0,#+0
        MOVS     R4,R0
??MacTaskInit_0:
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+0
        BNE      ??MacTaskInit_1
//  104     *MacTaskTable[i].pTaskID = TS_CreateTask(MacTaskTable[i].priority,
//  105                                              MacTaskTable[i].pEventHandler);
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        MOVS     R0,#+16
        MULS     R0,R4,R0
        LDR      R1,??DataTable0
        ADDS     R0,R1,R0
        LDR      R1,[R0, #+8]
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        MOVS     R0,#+16
        MULS     R0,R4,R0
        LDR      R2,??DataTable0
        ADDS     R0,R2,R0
        LDRB     R0,[R0, #+12]
        BL       TS_CreateTask
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        MOVS     R1,#+16
        MULS     R1,R4,R1
        LDR      R2,??DataTable0
        LDR      R1,[R2, R1]
        STRB     R0,[R1, #+0]
//  106   }
        ADDS     R4,R4,#+1
        B        ??MacTaskInit_0
//  107 
//  108   for (i = 0; i < NumberOfElements(MacTaskTable); ++i) {
??MacTaskInit_1:
        MOVS     R0,#+0
        MOVS     R4,R0
??MacTaskInit_2:
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+0
        BNE      ??MacTaskInit_3
//  109     (*MacTaskTable[i].pInitFunction)();
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        MOVS     R0,#+16
        MULS     R0,R4,R0
        LDR      R1,??DataTable0
        ADDS     R0,R1,R0
        LDR      R0,[R0, #+4]
        BL       __iar_via_R0
//  110   }
        ADDS     R4,R4,#+1
        B        ??MacTaskInit_2
//  111 }                                       /* MacTaskInit() */
??MacTaskInit_3:
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable0:
        DC32     MacTaskTable

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
__iar_via_R0:
        BX       R0

        END
// 
//   1 byte  in section .bss
//  16 bytes in section .rodata
// 122 bytes in section .text
// 
// 120 bytes of CODE  memory (+ 2 bytes shared)
//  16 bytes of CONST memory
//   1 byte  of DATA  memory
//
//Errors: none
//Warnings: none
