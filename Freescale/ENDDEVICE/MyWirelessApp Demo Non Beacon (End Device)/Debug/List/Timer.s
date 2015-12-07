///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      12/Oct/2015  10:21:28 /
// IAR ANSI C/C++ Compiler V5.50.7.22081/W32 EVALUATION for ARM               /
// Copyright (C) 1999-2010 IAR Systems AB.                                    /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Documents and Settings\Administrator\Desktop\MyWirel /
//                    essApp Demo Non Beacon (End Device)\MyWirelessApp Demo  /
//                    Non Beacon (End Device)\PLM\Source\TMR\Timer.c          /
//    Command line =  "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\PLM\Source\TMR\Timer.c"    /
//                    -D gMacStandAlone_d=1 -D gSAPMessagesEnableLlc_d=0 -D   /
//                    gZtcIncluded_d=0 -D gTargetMC1322xSRB=1 --preprocess    /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\Debug\List\" -lC           /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\Debug\List\" -lB           /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\Debug\List\"               /
//                    --diag_suppress Pe014,Pe001,Pe991,Pa039,Pe520 -o        /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\Debug\Obj\" --no_cse       /
//                    --no_unroll --no_inline --no_code_motion --no_tbaa      /
//                    --no_clustering --no_scheduling --debug                 /
//                    --endian=little --cpu=ARM7TDMI-S --fpu=None             /
//                    --dlib_config "C:\Program Files\IAR Systems\Embedded    /
//                    Workbench 5.4 Evaluation\arm\INC\DLib_Config_Normal.h"  /
//                    -I "C:\Documents and Settings\Administrator\Desktop\MyW /
//                    irelessApp Demo Non Beacon (End Device)\MyWirelessApp   /
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
//                    Non Beacon (End Device)\Debug\List\Timer.s              /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME Timer

        EXTERN IntDisableAll
        EXTERN IntRestoreAll
        EXTERN TS_CreateTask
        EXTERN TS_SendEvent
        EXTERN TmrEnable
        EXTERN TmrInit
        EXTERN TmrReadValue
        EXTERN TmrSetCallbackFunction
        EXTERN TmrSetCompStatusControl
        EXTERN TmrSetConfig
        EXTERN TmrSetMode
        EXTERN TmrSetStatusControl
        EXTERN TmrWriteValue

        PUBLIC TMR_AllocateTimer
        PUBLIC TMR_AreAllTimersOff
        PUBLIC TMR_EnableTimer
        PUBLIC TMR_FreeTimer
        PUBLIC TMR_Init
        PUBLIC TMR_IsTimerActive
        PUBLIC TMR_NotCountedTicksBeforeSleep
        PUBLIC TMR_NotifyClkChanged
        PUBLIC TMR_StartIntervalTimer
        PUBLIC TMR_StartLowPowerTimer
        PUBLIC TMR_StartMinuteTimer
        PUBLIC TMR_StartSecondTimer
        PUBLIC TMR_StartSingleShotTimer
        PUBLIC TMR_StartTimer
        PUBLIC TMR_StopTimer
        PUBLIC TMR_SyncLpmTimers
        PUBLIC TMR_Task
        PUBLIC TmrCompEvCallBack
        PUBWEAK __iar_via_R7

// C:\Documents and Settings\Administrator\Desktop\MyWirelessApp Demo Non Beacon (End Device)\MyWirelessApp Demo Non Beacon (End Device)\PLM\Source\TMR\Timer.c
//    1 /*****************************************************************************
//    2 * Timer implementation.
//    3 *
//    4 * Copyright (c) 2007, Freescale, Inc. All rights reserved.
//    5 *
//    6 *
//    7 * No part of this document must be reproduced in any form - including copied,
//    8 * transcribed, printed or by any electronic means - without specific written
//    9 * permission from Freescale Semiconductor.
//   10 *
//   11 *****************************************************************************/
//   12 #include "EmbeddedTypes.h"
//   13 #include "TS_Interface.h"
//   14 #include "TMR_Interface.h"
//   15 #include "Timer.h"
//   16 #include "TMR.h"
//   17 #include "Platform.h"
//   18 #include "Interrupt.h"
//   19 
//   20 /*****************************************************************************
//   21 ******************************************************************************
//   22 * Private macros
//   23 ******************************************************************************
//   24 *****************************************************************************/
//   25 
//   26 /* Number of elements in an array. */
//   27 #define NumberOfElements(array)   ((sizeof(array) / (sizeof(array[0]))))
//   28 
//   29 /* Timer status. If none of these flags are on, the timer is not allocated.
//   30 * For allocated timers, exactly one of these flags will be set.
//   31 * mTmrStatusActive_c   Timer has been started and has not yet expired.
//   32 * mTmrStatusReady_c    TMR_StartTimer() has been called for this timer, but
//   33 *                      the timer task has not yet actually started it. The
//   34 *                      timer is considered to be active.
//   35 * mTmrStatusInactive_c Timer is allocated, but is not active.
//   36 */
//   37 #define mTmrStatusFree_c        0
//   38 #define mTmrStatusActive_c      0x20
//   39 #define mTmrStatusReady_c       0x40
//   40 #define mTmrStatusInactive_c    0x80
//   41 
//   42 #define mTimerStatusMask_c      (  mTmrStatusActive_c \ 
//   43                                    | mTmrStatusReady_c \ 
//   44                                    | mTmrStatusInactive_c)
//   45 
//   46 /* If all bits in the status byte are zero, the timer is free. */
//   47 #define TMR_IsTimerAllocated(timerID)   (maTmrTimerStatusTable[(timerID)])
//   48 #define TMR_MarkTimerFree(timerID)       maTmrTimerStatusTable[(timerID)] = 0
//   49 #define IsLowPowerTimer(type)           ((type) & gTmrLowPowerTimer_c)
//   50 
//   51 #define mTimerType_c            ( gTmrSingleShotTimer_c \ 
//   52                                  | gTmrSetSecondTimer_c \ 
//   53                                  | gTmrSetMinuteTimer_c \ 
//   54                                  | gTmrIntervalTimer_c \ 
//   55                                  | gTmrLowPowerTimer_c )
//   56 
//   57 
//   58 /* TMR_Task() event flag. Only one event is needed. */
//   59 #define mTMR_Event_c    ( 1 << 0 )
//   60 
//   61 /*****************************************************************************
//   62 ******************************************************************************
//   63 * Private type definitions
//   64 ******************************************************************************
//   65 *****************************************************************************/
//   66 
//   67 /* One entry in the main timer table.
//   68 * intervalInTicks      The timer's original duration, in ticks. Used to reset
//   69 *                            intervnal timers.
//   70 *
//   71 *remainingTicks      Number of ticks until the timer expire.
//   72 *
//   73 
//   74 */
//   75 typedef struct tmrTimerTableEntry_tag {
//   76   tmrTimerTicks32_t intervalInTicks;
//   77   tmrTimerTicks32_t remainingTicks;
//   78   pfTmrCallBack_t pfCallBack;
//   79 } tmrTimerTableEntry_t;
//   80 
//   81 /* The status and type are bitfields, to save RAM. This costs some code */
//   82 /* space, though. */
//   83 typedef uint8_t tmrTimerStatus_t;
//   84 
//   85 typedef uint8_t tmrStatus_t;
//   86 
//   87 /*****************************************************************************
//   88 ******************************************************************************
//   89 * Private prototypes
//   90 ******************************************************************************
//   91 *****************************************************************************/
//   92 static tmrStatus_t TMR_GetTimerStatus(tmrTimerID_t timerID);
//   93 static void TMR_SetTimerStatus(tmrTimerID_t timerID, tmrStatus_t status);
//   94 static tmrTimerType_t TMR_GetTimerType(tmrTimerID_t timerID);
//   95 static void TMR_SetTimerType(tmrTimerID_t timerID, tmrTimerType_t type);
//   96 static bool_t TMR_SetReg(TmrNumber_t tmrNumber);
//   97 /* Convert milliseconds to ticks*/
//   98 static tmrTimerTicks32_t TmrTicksFromMilliseconds(tmrTimeInMilliseconds_t milliseconds);
//   99 
//  100 /* Call Backs for timer module to handle interrupts*/
//  101 void TmrCompEvCallBack(TmrNumber_t tmrNumber);
//  102 
//  103 /*****************************************************************************
//  104 ******************************************************************************
//  105 * Private memory declarations
//  106 ******************************************************************************
//  107 *****************************************************************************/

        SECTION `.bss`:DATA:NOROOT(1)
//  108 static tmrTimerTicks16_t previousTimeInTicks;
previousTimeInTicks:
        DS8 2
//  109 /* Count to maximum (0xffff - 2*4ms(in ticks)), to be sure that the currentTimeInTicks 
//  110 will never roll over previousTimeInTicks in the TMR_Task();
//  111 A task have to be executed at most in 4ms */

        SECTION `.bss`:DATA:NOROOT(1)
//  112 static uint16_t mMaxToCountDown_c; 
mMaxToCountDown_c:
        DS8 2
//  113 /* The TMR_Task()event will not be issued faster than 4ms*/

        SECTION `.bss`:DATA:NOROOT(2)
//  114 static uint32_t mTicksFor4ms;
mTicksFor4ms:
        DS8 4
//  115 /* The source clock in Khz*/

        SECTION `.data`:DATA:NOROOT(2)
//  116 static uint32_t mClkSourceKhz = gTmrDefaultClkSourceKhz_c;
mClkSourceKhz:
        DATA
        DC32 24000
//  117 /* Main timer table. All allocated timers are stored here. A timer's ID */
//  118 /* is it's index in this table. */

        SECTION `.bss`:DATA:NOROOT(2)
//  119 static tmrTimerTableEntry_t maTmrTimerTable[gTmrTotalTimers_c];
maTmrTimerTable:
        DS8 408
//  120 
//  121 /* Making the single-byte-per-timer status table a separate array saves */
//  122 /* a bit of code space. If an entry is == 0, the timer is not allocated. */

        SECTION `.bss`:DATA:NOROOT(2)
//  123 static tmrStatus_t maTmrTimerStatusTable[gTmrTotalTimers_c];
maTmrTimerStatusTable:
        DS8 36
//  124 
//  125 /* Number of Active timers (without low power capability)
//  126    the MCU can not enter low power if numberOfActiveTimers!=0 */

        SECTION `.bss`:DATA:NOROOT(0)
//  127 static uint8_t numberOfActiveTimers = 0;
numberOfActiveTimers:
        DS8 1
//  128 /* Number of low power active timer 
//  129    The MCU can enter in low power if more low power timers are active */

        SECTION `.bss`:DATA:NOROOT(0)
//  130 static uint8_t numberOfLowPowerActiveTimers = 0;
numberOfLowPowerActiveTimers:
        DS8 1
//  131 
//  132 #define IncrementActiveTimerNumber(type)  (((type) & gTmrLowPowerTimer_c) \ 
//  133                                           ?(++numberOfLowPowerActiveTimers) \ 
//  134                                           :(++numberOfActiveTimers) )                                   
//  135 #define DecrementActiveTimerNumber(type)  (((type) & gTmrLowPowerTimer_c) \ 
//  136                                           ?(--numberOfLowPowerActiveTimers) \ 
//  137                                           :(--numberOfActiveTimers) ) 
//  138 
//  139 /* No other code should ever post an event to the timer task. */

        SECTION `.bss`:DATA:NOROOT(0)
//  140 static tsTaskID_t mTimerTaskID;
mTimerTaskID:
        DS8 1
//  141 
//  142 /*****************************************************************************
//  143 ******************************************************************************
//  144 * Public functions
//  145 ******************************************************************************
//  146 *****************************************************************************/
//  147 
//  148 /* Initialize the timer module. */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  149 void TMR_Init(void)
//  150 {
TMR_Init:
        PUSH     {R4,LR}
//  151   
//  152   TmrInit();
        BL       TmrInit
//  153   TmrEnable(gTmrNumber_d);  /*enable timer*/
        MOVS     R0,#+0
        BL       TmrEnable
//  154   TMR_SetReg(gTmrNumber_d);
        MOVS     R0,#+0
        BL       TMR_SetReg
//  155   /*Create the timer task */
//  156   mTimerTaskID = TS_CreateTask(gTsTimerTaskPriority_c, TMR_Task);
        LDR      R1,??DataTable8
        MOVS     R0,#+254
        BL       TS_CreateTask
        LDR      R1,??DataTable8_1
        STRB     R0,[R1, #+0]
//  157   /* Count to maximum (0xffff - 2*4ms(in ticks)), to be sure that the currentTimeInTicks 
//  158   will never roll over previousTimeInTicks in the TMR_Task() */
//  159   mMaxToCountDown_c = 0xFFFF - TmrTicksFromMilliseconds(8); 
        LDR      R4,??DataTable8_2  ;; 0xffff
        MOVS     R0,#+8
        BL       TmrTicksFromMilliseconds
        SUBS     R0,R4,R0
        LDR      R1,??DataTable8_3
        STRH     R0,[R1, #+0]
//  160   /* The TMR_Task()event will not be issued faster than 4ms*/
//  161   mTicksFor4ms = TmrTicksFromMilliseconds(4);
        MOVS     R0,#+4
        BL       TmrTicksFromMilliseconds
        LDR      R1,??DataTable8_4
        STR      R0,[R1, #+0]
//  162   
//  163 }
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  164 
//  165 /****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  166 void TMR_NotifyClkChanged(uint32_t clkKhz)
//  167 {
TMR_NotifyClkChanged:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  168   mClkSourceKhz = clkKhz;
        LDR      R0,??DataTable8_5
        STR      R4,[R0, #+0]
//  169   /* Clock was changed, so calculate again  mMaxToCountDown_c.
//  170   Count to maximum (0xffff - 2*4ms(in ticks)), to be sure that the currentTimeInTicks 
//  171   will never roll over previousTimeInTicks in the TMR_Task() */
//  172   mMaxToCountDown_c = 0xFFFF - TmrTicksFromMilliseconds(8); 
        LDR      R5,??DataTable8_2  ;; 0xffff
        MOVS     R0,#+8
        BL       TmrTicksFromMilliseconds
        SUBS     R0,R5,R0
        LDR      R1,??DataTable8_3
        STRH     R0,[R1, #+0]
//  173   /* The TMR_Task()event will not be issued faster than 4ms*/
//  174   mTicksFor4ms = TmrTicksFromMilliseconds(4);  
        MOVS     R0,#+4
        BL       TmrTicksFromMilliseconds
        LDR      R1,??DataTable8_4
        STR      R0,[R1, #+0]
//  175 }
        POP      {R0,R4,R5}
        POP      {R3}
        BX       R3               ;; return
//  176 /****************************************************************************/
//  177 
//  178 /* Allocate a timer.
//  179 * Returns the timer id, or gTmrInvalidTimerID_c if the timer table is full.
//  180 */
//  181 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  182 tmrTimerID_t TMR_AllocateTimer
//  183 (
//  184 void
//  185 )
//  186 {
TMR_AllocateTimer:
        PUSH     {R4,LR}
//  187   uint32_t i;
//  188   
//  189   for (i = 0; i < NumberOfElements(maTmrTimerTable); ++i) {
        MOVS     R0,#+0
        MOVS     R4,R0
??TMR_AllocateTimer_0:
        CMP      R4,#+34
        BCS      ??TMR_AllocateTimer_1
//  190     if (!TMR_IsTimerAllocated(i)) {
        LDR      R0,??DataTable8_6
        LDRB     R0,[R0, R4]
        CMP      R0,#+0
        BNE      ??TMR_AllocateTimer_2
//  191       TMR_SetTimerStatus(i, mTmrStatusInactive_c);
        MOVS     R1,#+128
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       TMR_SetTimerStatus
//  192       return i;
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        B        ??TMR_AllocateTimer_3
//  193     }
//  194   }
??TMR_AllocateTimer_2:
        ADDS     R4,R4,#+1
        B        ??TMR_AllocateTimer_0
//  195   
//  196   return gTmrInvalidTimerID_c;
??TMR_AllocateTimer_1:
        MOVS     R0,#+255
??TMR_AllocateTimer_3:
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  197 }                                       /* TMR_AllocateTimer() */
//  198 
//  199 /*****************************************************************************/
//  200 
//  201 /* Return true if there are no active timers; return FALSE otherwise. */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  202 bool_t TMR_AreAllTimersOff
//  203 (
//  204 void
//  205 )
//  206 {
TMR_AreAllTimersOff:
        PUSH     {LR}
//  207   return !numberOfActiveTimers;
        LDR      R0,??DataTable8_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??TMR_AreAllTimersOff_0
        MOVS     R0,#+1
        B        ??TMR_AreAllTimersOff_1
??TMR_AreAllTimersOff_0:
        MOVS     R0,#+0
??TMR_AreAllTimersOff_1:
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        POP      {R3}
        BX       R3               ;; return
//  208 }                                       /* TMR_AreAllTimersOff() */
//  209 
//  210 /****************************************************************************/
//  211 
//  212 /* Free any timer. Harmless if the timer is already free. */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  213 void TMR_FreeTimer
//  214 (
//  215 tmrTimerID_t timerID
//  216 )
//  217 {
TMR_FreeTimer:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  218   TMR_StopTimer(timerID);
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       TMR_StopTimer
//  219   TMR_MarkTimerFree(timerID);
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        LDR      R0,??DataTable8_6
        MOVS     R1,#+0
        STRB     R1,[R0, R4]
//  220 }                                       /* TMR_FreeTimer() */
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  221 
//  222 /****************************************************************************/
//  223 
//  224 /*Call Back function when the interrupt occurs*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  225 void TmrCompEvCallBack(TmrNumber_t tmrNumber)
//  226 {
TmrCompEvCallBack:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  227   
//  228   TS_SendEvent(mTimerTaskID, mTMR_Event_c);
        MOVS     R1,#+1
        LDR      R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
//  229   
//  230 }
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  231 
//  232 /*****************************************************************************/
//  233 
//  234 /* Return TRUE if the timer is active. */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  235 bool_t TMR_IsTimerActive
//  236 (
//  237 tmrTimerID_t timerID
//  238 )
//  239 {
TMR_IsTimerActive:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  240   return TMR_GetTimerStatus(timerID) == mTmrStatusActive_c;
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       TMR_GetTimerStatus
        CMP      R0,#+32
        BNE      ??TMR_IsTimerActive_0
        MOVS     R0,#+1
        B        ??TMR_IsTimerActive_1
??TMR_IsTimerActive_0:
        MOVS     R0,#+0
??TMR_IsTimerActive_1:
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  241 }                                       /* TMR_IsTimerActive() */
//  242 
//  243 /****************************************************************************/
//  244 
//  245 /****************************************************************************
//  246 *
//  247 * Start a timer (BeeStack or application). When the timer goes off, call
//  248 * the callback function in non-interrupt context.
//  249 *
//  250 *****************************************************************************/
//  251 
//  252 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  253 void TMR_StartTimer
//  254 (
//  255 tmrTimerID_t timerID,                       /* IN: */
//  256 tmrTimerType_t timerType,                   /* IN: */
//  257 tmrTimeInMilliseconds_t timeInMilliseconds, /* IN: */
//  258 void (*pfTimerCallBack)(tmrTimerID_t)       /* IN: */
//  259 )
//  260 {
TMR_StartTimer:
        PUSH     {R1,R4-R7,LR}
        MOVS     R4,R0
        MOVS     R7,R2
        MOVS     R6,R3
//  261   tmrTimerTicks32_t intervalInTicks;
//  262   
//  263   /* Stopping an already stopped timer is harmless. */
//  264   TMR_StopTimer(timerID);
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       TMR_StopTimer
//  265   
//  266   intervalInTicks = TmrTicksFromMilliseconds(timeInMilliseconds);
        MOVS     R0,R7
        BL       TmrTicksFromMilliseconds
        MOVS     R5,R0
//  267   if (!intervalInTicks) {
        CMP      R5,#+0
        BNE      ??TMR_StartTimer_0
//  268     intervalInTicks = 1;
        MOVS     R0,#+1
        MOVS     R5,R0
//  269   }
//  270   
//  271   TMR_SetTimerType(timerID, timerType);
??TMR_StartTimer_0:
        MOV      R0,SP
        LDRB     R1,[R0, #+0]
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       TMR_SetTimerType
//  272   maTmrTimerTable[timerID].intervalInTicks = intervalInTicks;
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        MOVS     R0,#+12
        MULS     R0,R4,R0
        LDR      R1,??DataTable8_8
        STR      R5,[R1, R0]
//  273   maTmrTimerTable[timerID].remainingTicks = intervalInTicks;
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        MOVS     R0,#+12
        MULS     R0,R4,R0
        LDR      R1,??DataTable8_8
        ADDS     R0,R1,R0
        STR      R5,[R0, #+4]
//  274   maTmrTimerTable[timerID].pfCallBack = pfTimerCallBack;
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        MOVS     R0,#+12
        MULS     R0,R4,R0
        LDR      R1,??DataTable8_8
        ADDS     R0,R1,R0
        STR      R6,[R0, #+8]
//  275  
//  276   /* Enable timer, the timer task will do the rest of the work. */
//  277   TMR_EnableTimer(timerID);
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       TMR_EnableTimer
//  278 }                                       /* TMR_StartTimer() */
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return
//  279 
//  280 /* Start a low power timer. When the timer goes off, call the callback function */
//  281 /* in non-interrupt context. If the timer is running when this function */
//  282 /* is called, it will be stopped and restarted. */
//  283 /* Start the timer with the following timer types:
//  284    gTmrLowPowerMinuteTimer_c
//  285    gTmrLowPowerSecondTimer_c
//  286    gTmrLowPowerSingleShotMillisTimer_c
//  287    gTmrLowPowerIntervalMillisTimer_c
//  288 */
//  289 /* The MCU can enter in low power if there are only active low power timers */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  290 void TMR_StartLowPowerTimer
//  291 (
//  292 tmrTimerID_t timerId,
//  293 tmrTimerType_t timerType,
//  294 uint32_t timeIn,
//  295 void (*pfTmrCallBack)(tmrTimerID_t)
//  296 ) 
//  297 {
TMR_StartLowPowerTimer:
        PUSH     {R3-R7,LR}
        MOVS     R5,R0
        MOVS     R4,R1
        MOVS     R7,R2
        MOVS     R6,R3
//  298 #if(gTMR_EnableLowPowerTimers_d)
//  299   TMR_StartTimer(timerId, timerType | gTmrLowPowerTimer_c, timeIn, pfTmrCallBack);
        MOVS     R3,R6
        MOVS     R2,R7
        MOVS     R1,#+16
        ORRS     R1,R1,R4
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        MOVS     R0,R5
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       TMR_StartTimer
//  300 #else
//  301 (void)timerId;
//  302 (void)timerType;
//  303 (void)timeIn;
//  304 (void)pfTmrCallBack;
//  305 #endif
//  306 }
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return
//  307 
//  308 
//  309 /* Start a minute timer. */
//  310 /* Note: this is a single shot timer. There are no interval minute timers. */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  311 void TMR_StartMinuteTimer
//  312 (
//  313 tmrTimerID_t timerId, 
//  314 tmrTimeInMinutes_t timeInMinutes, 
//  315 void (*pfTmrCallBack)(tmrTimerID_t)
//  316 )
//  317 {
TMR_StartMinuteTimer:
        PUSH     {R4-R6,LR}
        MOVS     R6,R0
        MOVS     R5,R1
        MOVS     R4,R2
//  318 TMR_StartTimer(timerId, gTmrMinuteTimer_c, TmrMinutes(timeInMinutes), pfTmrCallBack);
        MOVS     R3,R4
        LSLS     R5,R5,#+16       ;; ZeroExtS R5,R5,#+16,#+16
        LSRS     R5,R5,#+16
        LDR      R2,??DataTable9  ;; 0xea60
        MULS     R2,R5,R2
        MOVS     R1,#+4
        MOVS     R0,R6
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       TMR_StartTimer
//  319 }
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return
//  320   
//  321 /* Start a second timer. */
//  322 /* Note: this is a single shot timer. There are no interval second timers. */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  323 void TMR_StartSecondTimer
//  324 (
//  325 tmrTimerID_t timerId, 
//  326 tmrTimeInSeconds_t timeInSeconds, 
//  327 void (*pfTmrCallBack)(tmrTimerID_t)
//  328 ) 
//  329 {
TMR_StartSecondTimer:
        PUSH     {R4-R6,LR}
        MOVS     R6,R0
        MOVS     R5,R1
        MOVS     R4,R2
//  330 TMR_StartTimer(timerId, gTmrSecondTimer_c, TmrSeconds(timeInSeconds), pfTmrCallBack);
        MOVS     R3,R4
        LSLS     R5,R5,#+16       ;; ZeroExtS R5,R5,#+16,#+16
        LSRS     R5,R5,#+16
        MOVS     R2,#+250
        LSLS     R2,R2,#+2        ;; #+1000
        MULS     R2,R5,R2
        MOVS     R1,#+8
        MOVS     R0,R6
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       TMR_StartTimer
//  331 }
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return
//  332  
//  333 /****************************************************************************/
//  334 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  335 void TMR_StartIntervalTimer
//  336 (
//  337 tmrTimerID_t timerID,
//  338 tmrTimeInMilliseconds_t timeInMilliseconds,
//  339 void (*pfTimerCallBack)(tmrTimerID_t)
//  340 )
//  341 {
TMR_StartIntervalTimer:
        PUSH     {R4-R6,LR}
        MOVS     R6,R0
        MOVS     R5,R1
        MOVS     R4,R2
//  342   TMR_StartTimer(timerID, gTmrIntervalTimer_c, timeInMilliseconds, pfTimerCallBack);
        MOVS     R3,R4
        MOVS     R2,R5
        MOVS     R1,#+2
        MOVS     R0,R6
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       TMR_StartTimer
//  343 }
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return
//  344 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  345 void TMR_StartSingleShotTimer
//  346 (
//  347 tmrTimerID_t timerID,
//  348 tmrTimeInMilliseconds_t timeInMilliseconds,
//  349 void (*pfTimerCallBack)(tmrTimerID_t)
//  350 )
//  351 {
TMR_StartSingleShotTimer:
        PUSH     {R4-R6,LR}
        MOVS     R6,R0
        MOVS     R5,R1
        MOVS     R4,R2
//  352   TMR_StartTimer(timerID, gTmrSingleShotTimer_c, timeInMilliseconds, pfTimerCallBack);
        MOVS     R3,R4
        MOVS     R2,R5
        MOVS     R1,#+1
        MOVS     R0,R6
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       TMR_StartTimer
//  353 }
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return
//  354 
//  355 /****************************************************************************/
//  356 
//  357 /* Stop a timer. Does not free the timer; does not call the timer's callback
//  358 * function.
//  359 *
//  360 * Harmless if the timer is already inactive.
//  361 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  362 void TMR_StopTimer
//  363 (
//  364 tmrTimerID_t timerID
//  365 )
//  366 {
TMR_StopTimer:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//  367   tmrStatus_t status;
//  368   unsigned int saveInt;
//  369   saveInt = IntDisableAll();
        BL       IntDisableAll
        MOVS     R6,R0
//  370   status = TMR_GetTimerStatus(timerID);
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       TMR_GetTimerStatus
        MOVS     R5,R0
//  371   if (   status == mTmrStatusActive_c
//  372       || status == mTmrStatusReady_c) {
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        CMP      R5,#+32
        BEQ      ??TMR_StopTimer_0
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        CMP      R5,#+64
        BNE      ??TMR_StopTimer_1
//  373         TMR_SetTimerStatus(timerID, mTmrStatusInactive_c);
??TMR_StopTimer_0:
        MOVS     R1,#+128
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       TMR_SetTimerStatus
//  374         DecrementActiveTimerNumber(TMR_GetTimerType(timerID));
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       TMR_GetTimerType
        LSLS     R0,R0,#+27
        BPL      ??TMR_StopTimer_2
        LDR      R0,??DataTable11
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR      R1,??DataTable11
        STRB     R0,[R1, #+0]
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        B        ??TMR_StopTimer_3
??TMR_StopTimer_2:
        LDR      R0,??DataTable8_7
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR      R1,??DataTable8_7
        STRB     R0,[R1, #+0]
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
//  375         /* if no sw active timers are enabled, */
//  376         /* call the TMR_Task() to countdown the ticks and stop the hw timer*/
//  377     		if (!numberOfActiveTimers && !numberOfLowPowerActiveTimers) 
??TMR_StopTimer_3:
        LDR      R0,??DataTable8_7
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable11
        LDRB     R1,[R1, #+0]
        ORRS     R1,R1,R0
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        CMP      R1,#+0
        BNE      ??TMR_StopTimer_1
//  378            TS_SendEvent(mTimerTaskID, mTMR_Event_c);
        MOVS     R1,#+1
        LDR      R0,??DataTable8_1
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
//  379       }
//  380   IntRestoreAll(saveInt);    
??TMR_StopTimer_1:
        MOVS     R0,R6
        BL       IntRestoreAll
//  381 }                                       /* TMR_StopTimer() */
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8:
        DC32     TMR_Task

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8_1:
        DC32     mTimerTaskID

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8_2:
        DC32     0xffff

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8_3:
        DC32     mMaxToCountDown_c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8_4:
        DC32     mTicksFor4ms

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8_5:
        DC32     mClkSourceKhz

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8_6:
        DC32     maTmrTimerStatusTable

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8_7:
        DC32     numberOfActiveTimers

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8_8:
        DC32     maTmrTimerTable
//  382 
//  383 /*****************************************************************************/
//  384 
//  385 /*****************************************************************************
//  386 * Timer task. Called by the kernel when the timer ISR posts a timer event.
//  387 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  388 void TMR_Task
//  389 (
//  390 event_t events
//  391 )
//  392 {
TMR_Task:
        PUSH     {R0,R4-R7,LR}
        SUB      SP,SP,#+8
//  393   static bool_t timerHardwareIsRunning = FALSE;
//  394   tmrTimerTicks16_t nextInterruptTime;
//  395   pfTmrCallBack_t pfCallBack;
//  396   tmrTimerTicks16_t currentTimeInTicks;
//  397   tmrTimerStatus_t status;
//  398   tmrTimerTicks16_t ticksSinceLastHere, ticksdiff; 
//  399   uint8_t timerID;
//  400   unsigned int saveInt;
//  401   tmrTimerType_t timerType;
//  402   (void)events;
//  403   
//  404   TmrReadValue(gTmrNumber_d,&currentTimeInTicks);
        ADD      R1,SP,#+4
        MOVS     R0,#+0
        BL       TmrReadValue
//  405   /* calculate difference between current and previous.  */
//  406   ticksSinceLastHere = (currentTimeInTicks - previousTimeInTicks);
        MOV      R0,SP
        MOV      R1,SP
        LDRH     R1,[R1, #+4]
        LDR      R2,??DataTable11_1
        LDRH     R2,[R2, #+0]
        SUBS     R1,R1,R2
        STRH     R1,[R0, #+6]
//  407   /* remember for next time */
//  408   previousTimeInTicks = currentTimeInTicks;
        LDR      R0,??DataTable11_1
        MOV      R1,SP
        LDRH     R1,[R1, #+4]
        STRH     R1,[R0, #+0]
//  409   
//  410   for (timerID = 0; timerID < NumberOfElements(maTmrTimerTable); ++timerID) {
        MOVS     R0,#+0
        MOVS     R5,R0
??TMR_Task_0:
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        CMP      R5,#+34
        BCS      ??TMR_Task_1
//  411     saveInt = IntDisableAll();
        BL       IntDisableAll
        MOVS     R6,R0
//  412     status = TMR_GetTimerStatus(timerID);
        MOVS     R0,R5
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       TMR_GetTimerStatus
        MOV      R1,SP
        STRB     R0,[R1, #+2]
//  413     /* If TMR_StartTimer() has been called for this timer, start it's count */
//  414     /* down as of now. */
//  415     if (status == mTmrStatusReady_c) {
        MOV      R0,SP
        LDRB     R0,[R0, #+2]
        CMP      R0,#+64
        BNE      ??TMR_Task_2
//  416       TMR_SetTimerStatus(timerID, mTmrStatusActive_c);
        MOVS     R1,#+32
        MOVS     R0,R5
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       TMR_SetTimerStatus
//  417       IntRestoreAll(saveInt);
        MOVS     R0,R6
        BL       IntRestoreAll
//  418       continue;
        B        ??TMR_Task_3
//  419     }
//  420     IntRestoreAll(saveInt);
??TMR_Task_2:
        MOVS     R0,R6
        BL       IntRestoreAll
//  421     
//  422     /* Ignore any timer that is not active. */
//  423     if (status != mTmrStatusActive_c) {
        MOV      R0,SP
        LDRB     R0,[R0, #+2]
        CMP      R0,#+32
        BNE      ??TMR_Task_3
//  424       continue;
//  425     }
//  426     
//  427     /* This timer is active. Decrement it's countdown.. */
//  428     if (maTmrTimerTable[timerID].remainingTicks > ticksSinceLastHere) {
??TMR_Task_4:
        MOV      R0,SP
        LDRH     R0,[R0, #+6]
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        MOVS     R1,#+12
        MULS     R1,R5,R1
        LDR      R2,??DataTable12
        ADDS     R1,R2,R1
        LDR      R1,[R1, #+4]
        CMP      R0,R1
        BCS      ??TMR_Task_5
//  429       maTmrTimerTable[timerID].remainingTicks -= ticksSinceLastHere;
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        MOVS     R0,#+12
        MULS     R0,R5,R0
        LDR      R1,??DataTable12
        ADDS     R0,R1,R0
        LDR      R0,[R0, #+4]
        MOV      R1,SP
        LDRH     R1,[R1, #+6]
        SUBS     R0,R0,R1
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        MOVS     R1,#+12
        MULS     R1,R5,R1
        LDR      R2,??DataTable12
        ADDS     R1,R2,R1
        STR      R0,[R1, #+4]
//  430       continue;
        B        ??TMR_Task_3
//  431     }
//  432     
//  433     timerType = TMR_GetTimerType(timerID);
??TMR_Task_5:
        MOVS     R0,R5
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       TMR_GetTimerType
        MOV      R1,SP
        STRB     R0,[R1, #+3]
//  434     /* If this is an interval timer, restart it. Otherwise, mark it as inactive. */
//  435     if ( (timerType & gTmrSingleShotTimer_c) ||
//  436          (timerType & gTmrSetMinuteTimer_c) ||
//  437          (timerType & gTmrSetSecondTimer_c)  ) {
        MOV      R0,SP
        LDRB     R0,[R0, #+3]
        MOVS     R1,#+13
        TST      R0,R1
        BEQ      ??TMR_Task_6
//  438       TMR_StopTimer(timerID);
        MOVS     R0,R5
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       TMR_StopTimer
        B        ??TMR_Task_7
//  439     } else {
//  440       maTmrTimerTable[timerID].remainingTicks = maTmrTimerTable[timerID].intervalInTicks;
??TMR_Task_6:
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        MOVS     R0,#+12
        MULS     R0,R5,R0
        LDR      R1,??DataTable12
        ADDS     R0,R1,R0
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        MOVS     R1,#+12
        MULS     R1,R5,R1
        LDR      R2,??DataTable12
        LDR      R1,[R2, R1]
        STR      R1,[R0, #+4]
//  441     }
//  442     /* This timer has expired. */
//  443     pfCallBack = maTmrTimerTable[timerID].pfCallBack;
??TMR_Task_7:
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        MOVS     R0,#+12
        MULS     R0,R5,R0
        LDR      R1,??DataTable12
        ADDS     R0,R1,R0
        LDR      R0,[R0, #+8]
        MOVS     R7,R0
//  444     /*Call callback if it is not NULL
//  445     This is done after the timer got updated,
//  446     in case the timer gets stopped or restarted in the callback*/
//  447     if (pfCallBack) {
        MOVS     R0,R7
        CMP      R0,#+0
        BEQ      ??TMR_Task_3
//  448       pfCallBack(timerID);
        MOVS     R0,R5
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       __iar_via_R7
//  449     }
//  450     
//  451   }  /* for (timerID = 0; timerID < ... */
??TMR_Task_3:
        ADDS     R5,R5,#+1
        B        ??TMR_Task_0
//  452   
//  453   /* Find the shortest active timer. */
//  454   nextInterruptTime = mMaxToCountDown_c;
??TMR_Task_1:
        LDR      R0,??DataTable12_1
        LDRH     R0,[R0, #+0]
        MOVS     R4,R0
//  455   for (timerID = 0; timerID < NumberOfElements(maTmrTimerTable); ++timerID) {
        MOVS     R0,#+0
        MOVS     R5,R0
??TMR_Task_8:
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        CMP      R5,#+34
        BCS      ??TMR_Task_9
//  456     if (TMR_GetTimerStatus(timerID) == mTmrStatusActive_c) {
        MOVS     R0,R5
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       TMR_GetTimerStatus
        CMP      R0,#+32
        BNE      ??TMR_Task_10
//  457       if (nextInterruptTime > maTmrTimerTable[timerID].remainingTicks) {
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        MOVS     R0,#+12
        MULS     R0,R5,R0
        LDR      R1,??DataTable12
        ADDS     R0,R1,R0
        LDR      R0,[R0, #+4]
        LSLS     R4,R4,#+16       ;; ZeroExtS R4,R4,#+16,#+16
        LSRS     R4,R4,#+16
        CMP      R0,R4
        BCS      ??TMR_Task_10
//  458         nextInterruptTime = maTmrTimerTable[timerID].remainingTicks;
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        MOVS     R0,#+12
        MULS     R0,R5,R0
        LDR      R1,??DataTable12
        ADDS     R0,R1,R0
        LDR      R0,[R0, #+4]
        MOVS     R4,R0
//  459       }
//  460     }
//  461   }
??TMR_Task_10:
        ADDS     R5,R5,#+1
        B        ??TMR_Task_8
//  462   
//  463   /* Check to be sure that the timer is not programmed in the past */    
//  464   saveInt = IntDisableAll();
??TMR_Task_9:
        BL       IntDisableAll
        MOVS     R6,R0
//  465   TmrReadValue(gTmrNumber_d,&ticksdiff);
        MOV      R1,SP
        MOVS     R0,#+0
        BL       TmrReadValue
//  466   /* Number of ticks to be here */
//  467   ticksdiff = (uint16_t)(ticksdiff - currentTimeInTicks); 
        MOV      R0,SP
        LDRH     R0,[R0, #+0]
        MOV      R1,SP
        LDRH     R1,[R1, #+4]
        SUBS     R0,R0,R1
        MOV      R1,SP
        STRH     R0,[R1, #+0]
//  468    /* Next ticks to count already expired?? */
//  469   if(ticksdiff >= nextInterruptTime)
        MOV      R0,SP
        LDRH     R0,[R0, #+0]
        LSLS     R4,R4,#+16       ;; ZeroExtS R4,R4,#+16,#+16
        LSRS     R4,R4,#+16
        CMP      R0,R4
        BCC      ??TMR_Task_11
//  470   {  
//  471     /* Is assumed that a task has to be executed in 4ms...
//  472        so if the ticks already expired enter in TMR_Task() after 4ms*/
//  473     nextInterruptTime = ticksdiff + mTicksFor4ms;
        MOV      R0,SP
        LDRH     R0,[R0, #+0]
        LDR      R1,??DataTable17
        LDR      R1,[R1, #+0]
        ADDS     R0,R0,R1
        MOVS     R4,R0
        B        ??TMR_Task_12
//  474   } 
//  475   else 
//  476   {
//  477     /* Time reference is 4ms...
//  478        so be sure that won't be loaded in Cmp Reg. less that 4ms in ticks 
//  479     */
//  480      if((nextInterruptTime - ticksdiff) < mTicksFor4ms) 
??TMR_Task_11:
        LSLS     R4,R4,#+16       ;; ZeroExtS R4,R4,#+16,#+16
        LSRS     R4,R4,#+16
        MOV      R0,SP
        LDRH     R0,[R0, #+0]
        SUBS     R0,R4,R0
        LDR      R1,??DataTable17
        LDR      R1,[R1, #+0]
        CMP      R0,R1
        BCS      ??TMR_Task_12
//  481      {
//  482        nextInterruptTime = ticksdiff + mTicksFor4ms;
        MOV      R0,SP
        LDRH     R0,[R0, #+0]
        LDR      R1,??DataTable17
        LDR      R1,[R1, #+0]
        ADDS     R0,R0,R1
        MOVS     R4,R0
//  483      }
//  484   
//  485   }
//  486   /* Update the compare register */
//  487   nextInterruptTime += currentTimeInTicks;
??TMR_Task_12:
        MOV      R0,SP
        LDRH     R0,[R0, #+4]
        ADDS     R4,R4,R0
//  488   SetComp1Val(gTmrNumber_d, nextInterruptTime);
        LDR      R0,??DataTable18  ;; 0x80007000
        STRH     R4,[R0, #+0]
//  489   IntRestoreAll(saveInt);
        MOVS     R0,R6
        BL       IntRestoreAll
//  490   
//  491   if (!numberOfActiveTimers && !numberOfLowPowerActiveTimers)
        LDR      R0,??DataTable11_2
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable11
        LDRB     R1,[R1, #+0]
        ORRS     R1,R1,R0
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        CMP      R1,#+0
        BNE      ??TMR_Task_13
//  492   {
//  493     TmrStopTimerHardware();
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       TmrSetMode
//  494     timerHardwareIsRunning = FALSE;
        LDR      R0,??DataTable18_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B        ??TMR_Task_14
//  495   } 
//  496   else 
//  497     if (!timerHardwareIsRunning) 
??TMR_Task_13:
        LDR      R0,??DataTable18_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??TMR_Task_14
//  498     {
//  499       TmrStartTimerHardware();
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       TmrSetMode
//  500       timerHardwareIsRunning = TRUE;
        LDR      R0,??DataTable18_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  501     }
//  502 }                                       /* TMR_Task() */
??TMR_Task_14:
        POP      {R0-R2,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable9:
        DC32     0xea60

        SECTION `.bss`:DATA:NOROOT(0)
??timerHardwareIsRunning:
        DS8 1
//  503 
//  504 /*****************************************************************************
//  505 ******************************************************************************/
//  506 
//  507 /* Enable or disable the timer tmrID
//  508    If enable = TRUE timer is active
//  509    Else timer is inactive 
//  510 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  511 void TMR_EnableTimer(tmrTimerID_t tmrID)
//  512 {    
TMR_EnableTimer:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  513   unsigned int saveInt;
//  514   saveInt = IntDisableAll();
        BL       IntDisableAll
        MOVS     R5,R0
//  515   if (TMR_GetTimerStatus(tmrID) == mTmrStatusInactive_c)
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       TMR_GetTimerStatus
        CMP      R0,#+128
        BNE      ??TMR_EnableTimer_0
//  516   {      
//  517     IncrementActiveTimerNumber(TMR_GetTimerType(tmrID));    
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       TMR_GetTimerType
        LSLS     R0,R0,#+27
        BPL      ??TMR_EnableTimer_1
        LDR      R0,??DataTable11
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable11
        STRB     R0,[R1, #+0]
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        B        ??TMR_EnableTimer_2
??TMR_EnableTimer_1:
        LDR      R0,??DataTable11_2
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable11_2
        STRB     R0,[R1, #+0]
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
//  518     TMR_SetTimerStatus(tmrID, mTmrStatusReady_c);
??TMR_EnableTimer_2:
        MOVS     R1,#+64
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       TMR_SetTimerStatus
//  519     TS_SendEvent(mTimerTaskID, mTMR_Event_c);
        MOVS     R1,#+1
        LDR      R0,??DataTable18_2
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
//  520   }  
//  521  IntRestoreAll(saveInt);
??TMR_EnableTimer_0:
        MOVS     R0,R5
        BL       IntRestoreAll
//  522 }
        POP      {R0,R4,R5}
        POP      {R3}
        BX       R3               ;; return
//  523 
//  524 
//  525 /*****************************************************************************/
//  526 
//  527 /*
//  528 This function is called by Low Power module; Also this function stops the 
//  529 harware timer.
//  530 Return: time in millisecond that wasn't counted before entering in sleep  
//  531 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  532 uint16_t TMR_NotCountedTicksBeforeSleep(void)
//  533 {
TMR_NotCountedTicksBeforeSleep:
        PUSH     {R7,LR}
//  534 #if (gTMR_EnableLowPowerTimers_d)  
//  535   uint16_t currentTimeInTicks;
//  536   
//  537   if (!numberOfLowPowerActiveTimers)
        LDR      R0,??DataTable11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??TMR_NotCountedTicksBeforeSleep_0
//  538     return 0;
        MOVS     R0,#+0
        B        ??TMR_NotCountedTicksBeforeSleep_1
//  539 
//  540   TmrReadValue(gTmrNumber_d,&currentTimeInTicks);
??TMR_NotCountedTicksBeforeSleep_0:
        MOV      R1,SP
        MOVS     R0,#+0
        BL       TmrReadValue
//  541   TmrStopTimerHardware();
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       TmrSetMode
//  542 
//  543  /* The hw timer is stopped but keep timerHardwareIsRunning = TRUE...*/ 
//  544  /* The Lpm timers are considered as being in running mode, so that  */
//  545  /* not to start the hw timer if a TMR event occurs (this shouldn't happen) */ 
//  546      
//  547   return  (uint16_t)(currentTimeInTicks - previousTimeInTicks);
        MOV      R0,SP
        LDRH     R0,[R0, #+0]
        LDR      R1,??DataTable18_3
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LSLS     R0,R0,#+16       ;; ZeroExtS R0,R0,#+16,#+16
        LSRS     R0,R0,#+16
??TMR_NotCountedTicksBeforeSleep_1:
        POP      {R1,R3}
        BX       R3               ;; return
//  548 #else  
//  549    return 0;
//  550 #endif /* #if (gTMR_EnableLowPowerTimers_d) */   
//  551 } 

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable11:
        DC32     numberOfLowPowerActiveTimers

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable11_1:
        DC32     previousTimeInTicks

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable11_2:
        DC32     numberOfActiveTimers
//  552 
//  553 /*****************************************************************************/
//  554 
//  555       
//  556 /* This function is called by the Low Power Module */
//  557 /* each time the MCU wakes up */ 
//  558 /* The function make an approximate sync. the active low power timers. */                              

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  559 void TMR_SyncLpmTimers(uint32_t sleepDurationTmrTicks)
//  560 {
TMR_SyncLpmTimers:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
//  561 #if (gTMR_EnableLowPowerTimers_d) 
//  562  index_t  timerID;
//  563  tmrTimerType_t timerType;
//  564 
//  565  /* Check if there are low power active timer */
//  566  if (!numberOfLowPowerActiveTimers)
        LDR      R0,??DataTable18_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??TMR_SyncLpmTimers_0
//  567     return;          
//  568 
//  569  /* For each timer, detect the timer type and count down the spent duration in sleep */  
//  570  for (timerID = 0; timerID < NumberOfElements(maTmrTimerTable); ++timerID) 
??TMR_SyncLpmTimers_1:
        MOVS     R0,#+0
        MOVS     R5,R0
??TMR_SyncLpmTimers_2:
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        CMP      R5,#+34
        BCS      ??TMR_SyncLpmTimers_3
//  571  {
//  572 
//  573   /* Detect the timer type and count down the spent duration in sleep */
//  574   timerType = TMR_GetTimerType(timerID);
        MOVS     R0,R5
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       TMR_GetTimerType
        MOVS     R6,R0
//  575   
//  576   /* Sync. only the low power timers that are active */
//  577   if ( (TMR_GetTimerStatus(timerID) == mTmrStatusActive_c)
//  578         && (IsLowPowerTimer(timerType)) ) 
        MOVS     R0,R5
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       TMR_GetTimerStatus
        CMP      R0,#+32
        BNE      ??TMR_SyncLpmTimers_4
        LSLS     R0,R6,#+27
        BPL      ??TMR_SyncLpmTimers_4
//  579   {
//  580            /* Timer expired when MCU was in sleep mode??? */
//  581            if( maTmrTimerTable[timerID].remainingTicks > sleepDurationTmrTicks) 
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        MOVS     R0,#+12
        MULS     R0,R5,R0
        LDR      R1,??DataTable12
        ADDS     R0,R1,R0
        LDR      R0,[R0, #+4]
        CMP      R4,R0
        BCS      ??TMR_SyncLpmTimers_5
//  582            {
//  583              maTmrTimerTable[timerID].remainingTicks -= sleepDurationTmrTicks;
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        MOVS     R0,#+12
        MULS     R0,R5,R0
        LDR      R1,??DataTable12
        ADDS     R0,R1,R0
        LDR      R0,[R0, #+4]
        SUBS     R0,R0,R4
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        MOVS     R1,#+12
        MULS     R1,R5,R1
        LDR      R2,??DataTable12
        ADDS     R1,R2,R1
        STR      R0,[R1, #+4]
        B        ??TMR_SyncLpmTimers_4
//  584  
//  585            } 
//  586            else 
//  587            {
//  588              maTmrTimerTable[timerID].remainingTicks = 0;           
??TMR_SyncLpmTimers_5:
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        MOVS     R0,#+12
        MULS     R0,R5,R0
        LDR      R1,??DataTable12
        ADDS     R0,R1,R0
        MOVS     R1,#+0
        STR      R1,[R0, #+4]
//  589            }
//  590         
//  591    }
//  592 
//  593  }/* end for (timerID = 0;.... */
??TMR_SyncLpmTimers_4:
        ADDS     R5,R5,#+1
        B        ??TMR_SyncLpmTimers_2
//  594 
//  595  TmrStartTimerHardware();
??TMR_SyncLpmTimers_3:
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       TmrSetMode
//  596  TmrReadValue(gTmrNumber_d, &previousTimeInTicks);
        LDR      R1,??DataTable18_3
        MOVS     R0,#+0
        BL       TmrReadValue
//  597 
//  598  TS_SendEvent(mTimerTaskID, mTMR_Event_c);
        MOVS     R1,#+1
        LDR      R0,??DataTable18_2
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
//  599 #else
//  600  (void)sleepDurationTmrTicks;
//  601 #endif /* #if (gTMR_EnableLowPowerTimers_d) */ 
//  602 }
??TMR_SyncLpmTimers_0:
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12:
        DC32     maTmrTimerTable

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_1:
        DC32     mMaxToCountDown_c
//  603 
//  604 
//  605 
//  606 /*****************************************************************************/
//  607 
//  608 /* Private functions
//  609 ******************************************************************************
//  610 *****************************************************************************/
//  611 
//  612 /* Configure the timer registers to work in compare mode, to count repeatedly (roll over)
//  613 and register the callbacks to handle interrupts*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  614 bool_t TMR_SetReg(TmrNumber_t tmrNumber)
//  615 {
TMR_SetReg:
        PUSH     {R0-R4,LR}
        MOVS     R4,R0
//  616   
//  617   TmrConfig_t regConfig;
//  618   TmrStatusCtrl_t regStatusCtrl;
//  619   TmrComparatorStatusCtrl_t regComStatusCtrl;
//  620   
//  621   /* Register the callback executed when an interrupt occur */
//  622   if(gTmrErrNoError_c != TmrSetCallbackFunction(tmrNumber, gTmrComp1Event_c, &TmrCompEvCallBack))
        LDR      R2,??DataTable18_5
        MOVS     R1,#+0
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       TmrSetCallbackFunction
        CMP      R0,#+0
        BEQ      ??TMR_SetReg_0
//  623   {
//  624     return FALSE;
        MOVS     R0,#+0
        B        ??TMR_SetReg_1
//  625   }
//  626   /* Don't stat the timer yet */
//  627   if (gTmrErrNoError_c != TmrStopTimerHardware()) /*set timer mode no operation*/
??TMR_SetReg_0:
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       TmrSetMode
        CMP      R0,#+0
        BEQ      ??TMR_SetReg_2
//  628   {
//  629     return FALSE;
        MOVS     R0,#+0
        B        ??TMR_SetReg_1
//  630   }
//  631   
//  632   if(gTmrErrNoError_c != TmrWriteValue(tmrNumber, 0x0000))    /*clear counter*/
??TMR_SetReg_2:
        MOVS     R1,#+0
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       TmrWriteValue
        CMP      R0,#+0
        BEQ      ??TMR_SetReg_3
//  633   {
//  634     return FALSE;
        MOVS     R0,#+0
        B        ??TMR_SetReg_1
//  635   }  
//  636   
//  637   regStatusCtrl.uintValue = 0x0000;
??TMR_SetReg_3:
        MOV      R0,SP
        MOVS     R1,#+0
        STRH     R1,[R0, #+12]
//  638   if (gTmrErrNoError_c != TmrSetStatusControl(tmrNumber, &regStatusCtrl))
        ADD      R1,SP,#+12
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       TmrSetStatusControl
        CMP      R0,#+0
        BEQ      ??TMR_SetReg_4
//  639   {
//  640     return FALSE;
        MOVS     R0,#+0
        B        ??TMR_SetReg_1
//  641   }  
//  642   
//  643   regComStatusCtrl.uintValue = 0x0000;
??TMR_SetReg_4:
        MOV      R0,SP
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  644   regComStatusCtrl.bitFields.TCF1EN = TRUE; /* Enable Compare 1 interrupt */
        MOV      R0,SP
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+64
        ORRS     R1,R1,R0
        MOV      R0,SP
        STRH     R1,[R0, #+0]
//  645   if (gTmrErrNoError_c != TmrSetCompStatusControl(tmrNumber, &regComStatusCtrl))
        MOV      R1,SP
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       TmrSetCompStatusControl
        CMP      R0,#+0
        BEQ      ??TMR_SetReg_5
//  646   {
//  647     return FALSE;
        MOVS     R0,#+0
        B        ??TMR_SetReg_1
//  648   }
//  649   
//  650   SetComp1Val(tmrNumber, 0x0000); /*clear comparator 1 value*/ 
??TMR_SetReg_5:
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        LSLS     R0,R4,#+30       ;; ZeroExtS R0,R4,#+30,#+30
        LSRS     R0,R0,#+30
        LSLS     R0,R0,#+5
        LDR      R1,??DataTable18  ;; 0x80007000
        MOVS     R2,#+0
        STRH     R2,[R0, R1]
//  651   regConfig.tmrOutputMode = gTmrAssert_c; 
        MOV      R0,SP
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
//  652   regConfig.tmrCoInit = FALSE;  /*co-chanel counter/timers can not force a re-initialization of this counter/timer*/
        ADD      R0,SP,#+4
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
//  653   regConfig.tmrCntDir = FALSE;  /*count-up*/
        ADD      R0,SP,#+4
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
//  654   regConfig.tmrCntLen = FALSE;  /*rol over */
        ADD      R0,SP,#+4
        MOVS     R1,#+0
        STRB     R1,[R0, #+3]
//  655   regConfig.tmrCntOnce = FALSE;   /*count repeatedly*/
        ADD      R0,SP,#+4
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
//  656   regConfig.tmrSecondaryCntSrc = gTmrSecondaryCnt0Input_c;    /*secondary count source not needed*/
        ADD      R0,SP,#+4
        MOVS     R1,#+0
        STRB     R1,[R0, #+5]
//  657   regConfig.tmrPrimaryCntSrc = gTmrPrimaryClkDefault_c;    /*primary count source is IP BUS clock divide by 128 prescaler*/
        ADD      R0,SP,#+4
        MOVS     R1,#+15
        STRB     R1,[R0, #+6]
//  658   if (gTmrErrNoError_c != TmrSetConfig(tmrNumber, &regConfig))  /*set timer configuration */
        ADD      R1,SP,#+4
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       TmrSetConfig
        CMP      R0,#+0
        BEQ      ??TMR_SetReg_6
//  659   {
//  660     return FALSE;
        MOVS     R0,#+0
        B        ??TMR_SetReg_1
//  661   }
//  662   
//  663   return TRUE;
??TMR_SetReg_6:
        MOVS     R0,#+1
??TMR_SetReg_1:
        ADD      SP,SP,#+16
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  664 }
//  665 
//  666 
//  667 /* Time from milliseconds in ticks*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  668 static tmrTimerTicks32_t TmrTicksFromMilliseconds(tmrTimeInMilliseconds_t milliseconds)
//  669 {
//  670   return (milliseconds * (mClkSourceKhz/gTmrPrescaler_c));
TmrTicksFromMilliseconds:
        LDR      R1,??DataTable18_6
        LDR      R1,[R1, #+0]
        LSRS     R1,R1,#+7
        MULS     R0,R1,R0
        BX       LR               ;; return
//  671 }
//  672 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  673 static tmrStatus_t TMR_GetTimerStatus
//  674 (
//  675 tmrTimerID_t timerID
//  676 )
//  677 {
//  678   return maTmrTimerStatusTable[timerID] & mTimerStatusMask_c;
TMR_GetTimerStatus:
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        LDR      R1,??DataTable18_7
        LDRB     R1,[R1, R0]
        MOVS     R0,#+224
        ANDS     R0,R0,R1
        BX       LR               ;; return
//  679 }
//  680 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  681 static void TMR_SetTimerStatus
//  682 (
//  683 tmrTimerID_t timerID, 
//  684 tmrStatus_t status
//  685 )
//  686 {
//  687   maTmrTimerStatusTable[timerID] = (maTmrTimerStatusTable[timerID] & ~mTimerStatusMask_c) | status;
TMR_SetTimerStatus:
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        LDR      R2,??DataTable18_7
        LDRB     R2,[R2, R0]
        LSLS     R2,R2,#+27       ;; ZeroExtS R2,R2,#+27,#+27
        LSRS     R2,R2,#+27
        ORRS     R2,R2,R1
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        LDR      R3,??DataTable18_7
        STRB     R2,[R3, R0]
//  688 }
        BX       LR               ;; return
//  689 
//  690 /*****************************************************************************/
//  691 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  692 static tmrTimerType_t TMR_GetTimerType
//  693 (
//  694 tmrTimerID_t timerID
//  695 )
//  696 {
//  697   return maTmrTimerStatusTable[timerID] & mTimerType_c;
TMR_GetTimerType:
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        LDR      R1,??DataTable18_7
        LDRB     R0,[R1, R0]
        LSLS     R0,R0,#+27       ;; ZeroExtS R0,R0,#+27,#+27
        LSRS     R0,R0,#+27
        BX       LR               ;; return
//  698 }

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable17:
        DC32     mTicksFor4ms
//  699 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  700 static void TMR_SetTimerType
//  701 (
//  702 tmrTimerID_t timerID, 
//  703 tmrTimerType_t type
//  704 )
//  705 {
//  706   maTmrTimerStatusTable[timerID] = (maTmrTimerStatusTable[timerID] & ~mTimerType_c) | type;
TMR_SetTimerType:
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        LDR      R2,??DataTable18_7
        LDRB     R2,[R2, R0]
        MOVS     R3,#+224
        ANDS     R3,R3,R2
        ORRS     R3,R3,R1
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        LDR      R2,??DataTable18_7
        STRB     R3,[R2, R0]
//  707 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable18:
        DC32     0x80007000

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable18_1:
        DC32     ??timerHardwareIsRunning

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable18_2:
        DC32     mTimerTaskID

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable18_3:
        DC32     previousTimeInTicks

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable18_4:
        DC32     numberOfLowPowerActiveTimers

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable18_5:
        DC32     TmrCompEvCallBack

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable18_6:
        DC32     mClkSourceKhz

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable18_7:
        DC32     maTmrTimerStatusTable

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
__iar_via_R7:
        BX       R7

        END
//  708 
// 
//   456 bytes in section .bss
//     4 bytes in section .data
// 1 870 bytes in section .text
// 
// 1 868 bytes of CODE memory (+ 2 bytes shared)
//   460 bytes of DATA memory
//
//Errors: none
//Warnings: none
