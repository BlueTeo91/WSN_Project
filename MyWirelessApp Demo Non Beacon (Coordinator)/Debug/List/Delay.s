///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      15/Oct/2012  16:29:11 /
// IAR ANSI C/C++ Compiler V5.50.7.22081/W32 EVALUATION for ARM               /
// Copyright (C) 1999-2010 IAR Systems AB.                                    /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Documents and Settings\Administrator\My              /
//                    Documents\MyWirelessApp Demo Non Beacon                 /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\PLM\Source\Common\Utils\Delay.c           /
//    Command line =  "C:\Documents and Settings\Administrator\My             /
//                    Documents\MyWirelessApp Demo Non Beacon                 /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\PLM\Source\Common\Utils\Delay.c" -D       /
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
//                    (Coordinator)\Debug\List\Delay.s                        /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME Delay

        PUBLIC DelayMs
        PUBLIC DelayUs

// C:\Documents and Settings\Administrator\My Documents\MyWirelessApp Demo Non Beacon (Coordinator)\MyWirelessApp Demo Non Beacon (Coordinator)\PLM\Source\Common\Utils\Delay.c
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
//   11 #include "EmbeddedTypes.h"
//   12 #include "Delay.h"
//   13 #include "AppToPlatformConfig.h"    /* SYSTEM_CLOCK */
//   14 
//   15 #define  __PLACE_CONSTANT_ASM(timebase)   __asm("DC32 "#timebase"\n")
//   16 #define  __PLACE_CONSTANT(timebase)       __PLACE_CONSTANT_ASM(timebase)
//   17 
//   18 /***********************************************************************************/
//   19 #if (__CPU_MODE__ == 1)    /*  Thumb mode */
//   20 
//   21   /***********************************************************************************/
//   22   /* Delay us function for THUMB Mode. Written in assembly to avoid compiler optimizations (speed/size) */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   23   void DelayUs(uint32_t us)
//   24   {
//   25     __asm("cmp r0, #0");
DelayUs:
        cmp r0, #0       
//   26     __asm("beq us_func_end");
        beq us_func_end  
//   27     __asm("push {r0,r1,r2}");
        push {r0,r1,r2}  
//   28     __asm("us_func_start: ldr r2, [PC, #4]");
us_func_start:
        ldr r2, [PC, #4] 
//   29     __asm("b us_loop_start");
        b us_loop_start  
//   30     __asm("nop");
        nop              
//   31     __PLACE_CONSTANT(SYSTEM_CLOCK/6000);
        DC32 24000/6000
        
//   32     
//   33     __asm("us_loop_start: movs r1, r2");
us_loop_start:
        movs r1, r2 
//   34     __asm("us_loop_start_r1: subs r1, r1, #1");
us_loop_start_r1:
        subs r1, r1, #1 
//   35     __asm("cmp r1, #0");
        cmp r1, #0       
//   36     __asm("bne us_loop_start_r1");
        bne us_loop_start_r1 
//   37     
//   38     __asm("subs r0, r0, #1");
        subs r0, r0, #1  
//   39     __asm("cmp r0, #0");
        cmp r0, #0       
//   40     __asm("bne us_loop_start");
        bne us_loop_start 
//   41     
//   42     __asm("us_func_end:  pop{r2} \n pop {r1} \n pop {r0}");
us_func_end:
        pop{r2} 
        pop {r1} 
        pop {r0} 
//   43   }
        BX       LR               ;; return
//   44   /***********************************************************************************/
//   45 
//   46   /* Delay ms function for THUMB Mode. Written in assembly to avoid compiler optimizations (speed/size) */

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//   47   void DelayMs(uint32_t ms)
//   48   {
//   49     __asm("cmp r0, #0");
DelayMs:
        cmp r0, #0       
//   50     __asm("beq ms_func_end");
        beq ms_func_end  
//   51     __asm("push {r0,r1,r2}");
        push {r0,r1,r2}  
//   52     __asm("ms_func_start: ldr r2, [PC, #4]");
ms_func_start:
        ldr r2, [PC, #4] 
//   53     __asm("b ms_loop_start");
        b ms_loop_start  
//   54     __asm("nop");
        nop              
//   55     __PLACE_CONSTANT(SYSTEM_CLOCK/5);
        DC32 24000/5
        
//   56     
//   57     __asm("ms_loop_start: movs r1, r2");
ms_loop_start:
        movs r1, r2 
//   58     __asm("ms_loop_start_r1: subs r1, r1, #1");
ms_loop_start_r1:
        subs r1, r1, #1 
//   59     __asm("cmp r1, #0");
        cmp r1, #0       
//   60     __asm("bne ms_loop_start_r1");
        bne ms_loop_start_r1 
//   61     
//   62     __asm("subs r0, r0, #1");
        subs r0, r0, #1  
//   63     __asm("cmp r0, #0");
        cmp r0, #0       
//   64     __asm("bne ms_loop_start");
        bne ms_loop_start 
//   65     
//   66     __asm("ms_func_end:  pop{r2} \n pop {r1} \n pop {r0}");
ms_func_end:
        pop{r2} 
        pop {r1} 
        pop {r0} 
//   67   }
        BX       LR               ;; return

        END
//   68   /***********************************************************************************/
//   69 #elif (__CPU_MODE__ == 2)   /* ARM mode */
//   70 
//   71   /***********************************************************************************/
//   72   /* Delay us function for ARM Mode. Written in assembly to avoid compiler optimizations (speed/size) */
//   73   void DelayUs(uint32_t us)
//   74   {
//   75     __asm("cmp r0, #0");
//   76     __asm("beq us_func_end");
//   77     __asm("push {r0,r1,r2}");
//   78     __asm("us_func_start: ldr r2, [PC, #4]");
//   79     __asm("b us_loop_start");
//   80     __asm("nop");
//   81     __PLACE_CONSTANT(SYSTEM_CLOCK/5000);
//   82     
//   83     __asm("us_loop_start: mov r1, r2");
//   84     __asm("us_loop_start_r1: sub r1, r1, #1");
//   85     __asm("cmp r1, #0");
//   86     __asm("bne us_loop_start_r1");
//   87     
//   88     __asm("sub r0, r0, #1");
//   89     __asm("cmp r0, #0");
//   90     __asm("bne us_loop_start");
//   91     
//   92     __asm("us_func_end:  pop{r2} \n pop {r1} \n pop {r0}");
//   93   }
//   94   /***********************************************************************************/
//   95   /* Delay ms function for ARM Mode. Written in assembly to avoid compiler optimizations (speed/size) */
//   96   void DelayMs(uint32_t ms)
//   97   {
//   98     __asm("cmp r0, #0");
//   99     __asm("beq ms_func_end");
//  100     __asm("push {r0,r1,r2}");
//  101     __asm("ms_func_start: ldr r2, [PC, #4]");
//  102     __asm("b ms_loop_start");
//  103     __asm("nop");
//  104     __PLACE_CONSTANT(SYSTEM_CLOCK/5);
//  105     
//  106     __asm("ms_loop_start: mov r1, r2");
//  107     __asm("ms_loop_start_r1: subs r1, r1, #1");
//  108     __asm("cmp r1, #0");
//  109     __asm("bne ms_loop_start_r1");
//  110     
//  111     __asm("sub r0, r0, #1");
//  112     __asm("cmp r0, #0");
//  113     __asm("bne ms_loop_start");
//  114     
//  115     __asm("ms_func_end:  pop{r2} \n pop {r1} \n pop {r0}");
//  116   }
//  117   /***********************************************************************************/
//  118 
//  119 #endif /* __CPU_MODE__*/
// 
// 76 bytes in section .text
// 
// 76 bytes of CODE memory
//
//Errors: none
//Warnings: none
