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
//                    Non Beacon (End Device)\PLM\Source\Keyboard\Keyboard.c  /
//    Command line =  "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\PLM\Source\Keyboard\Keyboa /
//                    rd.c" -D gMacStandAlone_d=1 -D                          /
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
//                    Non Beacon (End Device)\Debug\List\Keyboard.s           /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME Keyboard

        EXTERN KbCrmInit
        EXTERN KbGpioInit
        EXTERN KbReadCenterKey
        EXTERN KbReadPins
        EXTERN TMR_AllocateTimer
        EXTERN TMR_EnableTimer
        EXTERN TMR_StartIntervalTimer
        EXTERN TMR_StopTimer
        EXTERN TS_CreateTask
        EXTERN TS_SendEvent

        PUBLIC CrmKBDIsr
        PUBLIC KBD_EnableDisableKeyScan
        PUBLIC KBD_Init
        PUBLIC KBD_Task
        PUBWEAK __iar_via_R1
        PUBLIC mKeyScanTimerID

// C:\Documents and Settings\Administrator\Desktop\MyWirelessApp Demo Non Beacon (End Device)\MyWirelessApp Demo Non Beacon (End Device)\PLM\Source\Keyboard\Keyboard.c
//    1 /************************************************************************************
//    2 * Source file for keyboard driver.
//    3 *
//    4 * Copyright (c) 2007, Freescale, Inc. All rights reserved.
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
//   18 #include "EmbeddedTypes.h"
//   19 #include "TMR_Interface.h"
//   20 #include "KeyboardHAL.h"
//   21 #include "Keyboard.h"
//   22 
//   23 #if (gSwitchModule_d == TRUE)
//   24 
//   25 /******************************************************************************
//   26 *******************************************************************************
//   27 * Private macros
//   28 *******************************************************************************
//   29 ******************************************************************************/
//   30 
//   31 /* Keyboard State */
//   32 enum {
//   33   mStateKeyIdle,        /* coming in for first time */
//   34   mStateKeyDetected,    /* got a key, waiting to see if it's a long key */
//   35   mStateKeyCheckRelease  /* got the long key, waiting for the release to go back to idle */
//   36 };
//   37 
//   38 /* The Switch task has a single event*/
//   39 #define mEventSW_c 0x01
//   40 #define mNoKey_c 0xFF
//   41 
//   42 
//   43 /******************************************************************************
//   44 *******************************************************************************
//   45 * Private prototypes
//   46 *******************************************************************************
//   47 ******************************************************************************/
//   48 static void KeyScan(uint8_t timerId);
//   49 static uint8_t KeySwitchPortGet(void);
//   50 
//   51 /******************************************************************************
//   52 *******************************************************************************
//   53 * Private type definitions
//   54 *******************************************************************************
//   55 ******************************************************************************/
//   56 /*None*/
//   57 
//   58 /******************************************************************************
//   59 *******************************************************************************
//   60 * Private memory declarations
//   61 *******************************************************************************
//   62 ******************************************************************************/

        SECTION `.bss`:DATA:NOROOT(0)
//   63 static uint8_t mKeyState = mStateKeyIdle;
mKeyState:
        DS8 1

        SECTION `.bss`:DATA:NOROOT(0)
//   64 static uint8_t mSwitch_SCAN;
mSwitch_SCAN:
        DS8 1

        SECTION `.bss`:DATA:NOROOT(0)
//   65 static uint8_t mLongKeyCount;
mLongKeyCount:
        DS8 1
//   66 #if (gJoystickSupported_d == TRUE) 

        SECTION `.data`:DATA:NOROOT(0)
//   67  static bool_t  mPollTimerState = TRUE;
mPollTimerState:
        DATA
        DC8 1
//   68 #endif 
//   69 
//   70 #if gJoystickSupported_d

        SECTION `.bss`:DATA:NOROOT(0)
//   71 static uint8_t mLongCenterKeyCount;
mLongCenterKeyCount:
        DS8 1
//   72 #endif /* gJoystickSupported_d */
//   73 

        SECTION `.bss`:DATA:NOROOT(2)
//   74 static KBDFunction_t mpfKeyFunction;
mpfKeyFunction:
        DS8 4

        SECTION `.bss`:DATA:NOROOT(0)
//   75 static uint8_t mKeysStillPressed = 0;
mKeysStillPressed:
        DS8 1

        SECTION `.data`:DATA:NOROOT(0)
//   76 tmrTimerID_t mKeyScanTimerID = gTmrInvalidTimerID_c;
mKeyScanTimerID:
        DATA
        DC8 255
//   77 
//   78 /* No other code should ever post an event to the timer task. */

        SECTION `.bss`:DATA:NOROOT(0)
//   79 static tsTaskID_t mSwTaskID;
mSwTaskID:
        DS8 1
//   80 
//   81 
//   82 /******************************************************************************
//   83 *******************************************************************************
//   84 * Public functions
//   85 *******************************************************************************/
//   86 
//   87 /******************************************************************************
//   88 * Initialize the keyboard handling. Works on on Freescale demo boards.
//   89 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   90 void KBD_Init
//   91 (
//   92 KBDFunction_t pfCallBackAdr /* IN: Pointer to callback function */
//   93 )
//   94 {
KBD_Init:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   95   /* timer is used to determine short or long key press */
//   96   mKeyScanTimerID = TMR_AllocateTimer();
        BL       TMR_AllocateTimer
        LDR      R1,??DataTable4
        STRB     R0,[R1, #+0]
//   97   
//   98   /* where to send the data */
//   99   mpfKeyFunction = pfCallBackAdr;
        LDR      R0,??DataTable3
        STR      R4,[R0, #+0]
//  100   /* Init all the Gpio pins for keyboard*/
//  101   KbGpioInit();
        BL       KbGpioInit
//  102   /*Init the CRM module for external interrupt capability*/
//  103   KbCrmInit();
        BL       KbCrmInit
//  104   /* Create a task for switches */
//  105   mSwTaskID = TS_CreateTask(gTsSwitchTaskPriority_c, KBD_Task);
        LDR      R1,??DataTable3_1
        MOVS     R0,#+31
        BL       TS_CreateTask
        LDR      R1,??DataTable3_2
        STRB     R0,[R1, #+0]
//  106   
//  107   /*Start the timer to detect the center key for joystick*/
//  108 #if gJoystickSupported_d
//  109   TMR_StartIntervalTimer(mKeyScanTimerID, gKeyScanInterval_c, KeyScan);  
        LDR      R2,??DataTable4_1
        MOVS     R1,#+50
        LDR      R0,??DataTable4
        LDRB     R0,[R0, #+0]
        BL       TMR_StartIntervalTimer
//  110 #endif /* gJoystickSupported_d */
//  111   
//  112 }
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  113 
//  114 /******************************************************************************
//  115 * Keyboard ISR. 
//  116 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  117 void CrmKBDIsr(void)
//  118 {
CrmKBDIsr:
        PUSH     {R7,LR}
//  119   /*Disable all external interrupts and send the SW event to handle the key detection*/
//  120   KbDisableAllIrq();
        LDR      R0,??DataTable4_2  ;; 0x80003004
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable4_3  ;; 0xff0fffff
        ANDS     R1,R1,R0
        LDR      R0,??DataTable4_2  ;; 0x80003004
        STR      R1,[R0, #+0]
//  121   TS_SendEvent(mSwTaskID, mEventSW_c);
        MOVS     R1,#+1
        LDR      R0,??DataTable3_2
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
//  122   
//  123 }
        POP      {R0,R3}
        BX       R3               ;; return
//  124 
//  125 /******************************************************************************
//  126 * Keyboard Enable/Disable key scanning timer. 
//  127 * Used for Low Power mode
//  128 *
//  129 * Parameters:
//  130 *   bool_t enable: TRUE  - The Key Scan is enabled
//  131 *                  FALSE - The Key Scan is disabled
//  132 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  133 void KBD_EnableDisableKeyScan(bool_t enable)
//  134 {
KBD_EnableDisableKeyScan:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  135 
//  136  if(mKeyScanTimerID != gTmrInvalidTimerID_c)
        LDR      R0,??DataTable4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ      ??KBD_EnableDisableKeyScan_0
//  137  {  
//  138   if(enable == TRUE) 
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+1
        BNE      ??KBD_EnableDisableKeyScan_1
//  139   {     
//  140     TMR_EnableTimer(mKeyScanTimerID);   
        LDR      R0,??DataTable4
        LDRB     R0,[R0, #+0]
        BL       TMR_EnableTimer
        B        ??KBD_EnableDisableKeyScan_0
//  141   }
//  142   else
//  143   {
//  144     if(CRM_WU_CNTL.extWuIEn  == gSWITCH_MASK_c)
??KBD_EnableDisableKeyScan_1:
        LDR      R0,??DataTable4_2  ;; 0x80003004
        LDR      R0,[R0, #+0]
        LSRS     R0,R0,#+20
        LSLS     R0,R0,#+28       ;; ZeroExtS R0,R0,#+28,#+28
        LSRS     R0,R0,#+28
        CMP      R0,#+15
        BNE      ??KBD_EnableDisableKeyScan_0
//  145     {
//  146      /* disable scan timer here only if the KBD interrupts are all enabled.
//  147       * With this timer disabled, the low power mode can be enetered. 
//  148       * with the KBD interrupts disabled, the callback won't be called at the exist from low power
//  149       */
//  150      TMR_StopTimer(mKeyScanTimerID);
        LDR      R0,??DataTable4
        LDRB     R0,[R0, #+0]
        BL       TMR_StopTimer
//  151     }
//  152   }
//  153  }
//  154  #if (gJoystickSupported_d == TRUE) 
//  155   mPollTimerState = enable;
??KBD_EnableDisableKeyScan_0:
        LDR      R0,??DataTable4_4
        STRB     R4,[R0, #+0]
//  156  #endif 
//  157 }
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  158 
//  159 /******************************************************************************
//  160 *******************************************************************************
//  161 * Private functions
//  162 *******************************************************************************
//  163 ******************************************************************************/
//  164 
//  165 /******************************************************************************
//  166 * Keyboard task executed when an interrupt occur
//  167 ******************************************************************************/
//  168 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  169 void KBD_Task(event_t events)
//  170 {
KBD_Task:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  171   
//  172   mKeyState = mStateKeyIdle;
        LDR      R0,??DataTable4_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  173   /*Start the timer;*/
//  174   TMR_StartIntervalTimer(mKeyScanTimerID, gKeyScanInterval_c, KeyScan);  
        LDR      R2,??DataTable4_1
        MOVS     R1,#+50
        LDR      R0,??DataTable4
        LDRB     R0,[R0, #+0]
        BL       TMR_StartIntervalTimer
//  175 }
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3:
        DC32     mpfKeyFunction

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3_1:
        DC32     KBD_Task

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3_2:
        DC32     mSwTaskID
//  176 
//  177 
//  178 /******************************************************************************
//  179 * Called to get state of keyboard
//  180 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  181 static uint8_t KeySwitchPortGet
//  182 (
//  183 void
//  184 )
//  185 {
KeySwitchPortGet:
        PUSH     {R3-R5,LR}
//  186   return (uint8_t)SwitchGet;
        BL       KbReadPins
        MOVS     R5,R0
        BL       KbReadPins
        MOVS     R4,R0
        BL       KbReadPins
        MOVS     R1,R5
        LSLS     R1,R1,#+31       ;; ZeroExtS R1,R1,#+31,#+31
        LSRS     R1,R1,#+31
        MOVS     R2,#+1
        EORS     R2,R2,R1
        MOVS     R1,#+2
        ANDS     R1,R1,R4
        MOVS     R3,#+2
        EORS     R3,R3,R1
        ORRS     R3,R3,R2
        MOVS     R1,#+4
        ANDS     R1,R1,R0
        MOVS     R4,#+4
        EORS     R4,R4,R1
        ORRS     R4,R4,R3
        BL       KbReadPins
        MOVS     R1,#+8
        ANDS     R1,R1,R0
        MOVS     R0,#+8
        EORS     R0,R0,R1
        ORRS     R0,R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        POP      {R1,R4,R5}
        POP      {R3}
        BX       R3               ;; return
//  187 }
//  188 
//  189 /******************************************************************************
//  190 * Called when a key is pressed. Determines when the key is up (lifted).
//  191 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  192 static void KeyScan
//  193 (
//  194 uint8_t timerId
//  195 )
//  196 {
KeyScan:
        PUSH     {R0,R4-R7,LR}
//  197   uint8_t nowScan;
//  198   uint8_t keyBase = 0;
        MOVS     R0,#+0
        MOVS     R4,R0
//  199   uint8_t changedScan;
//  200   
//  201   /* Detect the center key from joystick */
//  202 #if gJoystickSupported_d
//  203   uint8_t centerKeyDetect;
//  204   static uint8_t markLongPress = FALSE;
//  205   /* Detect if a long or short press is done  */
//  206   centerKeyDetect = mNoKey_c; 
        MOVS     R0,#+255
        MOVS     R6,R0
//  207   if( 0 == KbReadCenterKey() ) 
        BL       KbReadCenterKey
        CMP      R0,#+0
        BNE      ??KeyScan_0
//  208   {
//  209     /*key is pressed*/
//  210     if(mLongCenterKeyCount > gLongKeyIterations_c) 
        LDR      R0,??DataTable4_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+21
        BCC      ??KeyScan_1
//  211     {   
//  212       /*Is marked as being pressed?*/
//  213       if(!markLongPress)
        LDR      R0,??DataTable4_7
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??KeyScan_2
//  214       {
//  215         /*long keypress*/
//  216         #if gMapJoystickCenterKeyOnSW2
//  217          centerKeyDetect = gKBD_EventLongSW2_c;
//  218         #else
//  219          centerKeyDetect = gJoystick_CenterKeyLong_c;
        MOVS     R0,#+10
        MOVS     R6,R0
//  220         #endif
//  221         /*mark the key as being press to send only an event to call back*/
//  222         markLongPress =TRUE;
        LDR      R0,??DataTable4_7
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        B        ??KeyScan_2
//  223       }
//  224     }
//  225     else
//  226     {
//  227       mLongCenterKeyCount++;
??KeyScan_1:
        LDR      R0,??DataTable4_6
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable4_6
        STRB     R0,[R1, #+0]
        B        ??KeyScan_2
//  228     }
//  229   }
//  230   /*the key is not pressed*/
//  231   else 
//  232   { 
//  233     /*It was a short key?*/ 
//  234     if ((0 < mLongCenterKeyCount)&& 
//  235         (mLongCenterKeyCount < gLongKeyIterations_c))
??KeyScan_0:
        LDR      R0,??DataTable4_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BCC      ??KeyScan_3
        LDR      R0,??DataTable4_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+20
        BCS      ??KeyScan_3
//  236     {
//  237       /* short keypress */
//  238       #if gMapJoystickCenterKeyOnSW2
//  239        centerKeyDetect = gKBD_EventSW2_c;
//  240       #else
//  241        centerKeyDetect = gJoystick_CenterKey_c;
        MOVS     R0,#+9
        MOVS     R6,R0
//  242       #endif
//  243     }
//  244     mLongCenterKeyCount = 0;  
??KeyScan_3:
        LDR      R0,??DataTable4_6
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  245     /*mark as not being pressed*/  
//  246     markLongPress =FALSE;
        LDR      R0,??DataTable4_7
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  247   }
//  248   /*Send the detected event*/  
//  249   if( centerKeyDetect != mNoKey_c )
??KeyScan_2:
        LSLS     R6,R6,#+24       ;; ZeroExtS R6,R6,#+24,#+24
        LSRS     R6,R6,#+24
        CMP      R6,#+255
        BEQ      ??KeyScan_4
//  250   {
//  251     mpfKeyFunction(centerKeyDetect);
        MOVS     R0,R6
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        LDR      R1,??DataTable4_8
        LDR      R1,[R1, #+0]
        BL       __iar_via_R1
//  252   }
//  253 #endif /* gJoystickSupported_d */
//  254   
//  255   /*Detect if a key is pressed or released;
//  256   Every key that is pressed is marked (when is relesed is unmarked)*/
//  257   switch(mKeyState) {
??KeyScan_4:
        LDR      R0,??DataTable4_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??KeyScan_5
        CMP      R0,#+2
        BNE      .+4
        B        ??KeyScan_6
        BCC      ??KeyScan_7
        B        ??KeyScan_8
//  258     
//  259     /* got a fresh key */
//  260   case mStateKeyIdle:
//  261     /* Check if a fresh key is pressed and treat it (some keys can still be pressed) */
//  262     mSwitch_SCAN = KeySwitchPortGet() & (~mKeysStillPressed);
??KeyScan_5:
        BL       KeySwitchPortGet
        LDR      R1,??DataTable4_9
        LDRB     R1,[R1, #+0]
        BICS     R0,R0,R1
        LDR      R1,??DataTable4_10
        STRB     R0,[R1, #+0]
//  263     if ( mSwitch_SCAN )
        LDR      R0,??DataTable4_10
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??KeyScan_9
//  264     {   
//  265       mKeyState = mStateKeyDetected;
        LDR      R0,??DataTable4_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  266       mLongKeyCount = 0;  /* assume no key */
        LDR      R0,??DataTable4_11
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B        ??KeyScan_10
//  267     }
//  268     else
//  269     {
//  270       /* No fresh key is pressed */
//  271       /*check if one or more keys was released and unmark those (update mKeysStillPressed) */
//  272       mKeyState = mStateKeyCheckRelease;
??KeyScan_9:
        LDR      R0,??DataTable4_5
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
        B        ??KeyScan_10
//  273     }
//  274     break;
//  275     
//  276     /* A fresh key was detected. Has the key been released or is it still being pressed? */
//  277   case mStateKeyDetected:
//  278     nowScan = KeySwitchPortGet()& (~mKeysStillPressed);
??KeyScan_7:
        BL       KeySwitchPortGet
        LDR      R1,??DataTable4_9
        LDRB     R1,[R1, #+0]
        BICS     R0,R0,R1
        MOVS     R5,R0
//  279     if( nowScan & mSwitch_SCAN ) {
        LDR      R0,??DataTable4_10
        LDRB     R0,[R0, #+0]
        TST      R5,R0
        BEQ      ??KeyScan_11
//  280       mLongKeyCount++;
        LDR      R0,??DataTable4_11
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable4_11
        STRB     R0,[R1, #+0]
//  281       
//  282       if(mLongKeyCount >= gLongKeyIterations_c) {
        LDR      R0,??DataTable4_11
        LDRB     R0,[R0, #+0]
        CMP      R0,#+20
        BCC      ??KeyScan_12
//  283         /*long keypress*/ 
//  284         keyBase = gKBD_EventLongSW1_c;
        MOVS     R0,#+5
        MOVS     R4,R0
        B        ??KeyScan_12
//  285       }
//  286       
//  287     }
//  288     else {
//  289       /* short keypress */
//  290       keyBase = gKBD_EventSW1_c;
??KeyScan_11:
        MOVS     R0,#+1
        MOVS     R4,R0
//  291     }
//  292     
//  293     if(keyBase) {
??KeyScan_12:
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+0
        BEQ      ??KeyScan_10
//  294       
//  295       /* does it match a key?; mark it as being pressed */
//  296       if(mSwitch_SCAN & gSWITCH1_MASK_c)
        LDR      R0,??DataTable4_10
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL      ??KeyScan_13
//  297       {
//  298         mKeysStillPressed |= mSwitch_SCAN;
        LDR      R0,??DataTable4_9
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable4_10
        LDRB     R1,[R1, #+0]
        ORRS     R1,R1,R0
        LDR      R0,??DataTable4_9
        STRB     R1,[R0, #+0]
//  299         mpfKeyFunction(keyBase + 0);
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        LDR      R1,??DataTable4_8
        LDR      R1,[R1, #+0]
        BL       __iar_via_R1
//  300       }
//  301       if(mSwitch_SCAN & gSWITCH2_MASK_c)
??KeyScan_13:
        LDR      R0,??DataTable4_10
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL      ??KeyScan_14
//  302       {
//  303         mKeysStillPressed |= mSwitch_SCAN;
        LDR      R0,??DataTable4_9
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable4_10
        LDRB     R1,[R1, #+0]
        ORRS     R1,R1,R0
        LDR      R0,??DataTable4_9
        STRB     R1,[R0, #+0]
//  304         mpfKeyFunction(keyBase + 1);
        MOVS     R0,R4
        ADDS     R0,R0,#+1
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        LDR      R1,??DataTable4_8
        LDR      R1,[R1, #+0]
        BL       __iar_via_R1
//  305       }
//  306       if(mSwitch_SCAN & gSWITCH3_MASK_c)
??KeyScan_14:
        LDR      R0,??DataTable4_10
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL      ??KeyScan_15
//  307       {
//  308         mKeysStillPressed |= mSwitch_SCAN;
        LDR      R0,??DataTable4_9
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable4_10
        LDRB     R1,[R1, #+0]
        ORRS     R1,R1,R0
        LDR      R0,??DataTable4_9
        STRB     R1,[R0, #+0]
//  309         mpfKeyFunction(keyBase + 2);
        MOVS     R0,R4
        ADDS     R0,R0,#+2
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        LDR      R1,??DataTable4_8
        LDR      R1,[R1, #+0]
        BL       __iar_via_R1
//  310       }
//  311       if(mSwitch_SCAN & gSWITCH4_MASK_c)
??KeyScan_15:
        LDR      R0,??DataTable4_10
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+28
        BPL      ??KeyScan_16
//  312       {
//  313         mKeysStillPressed |= mSwitch_SCAN;
        LDR      R0,??DataTable4_9
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable4_10
        LDRB     R1,[R1, #+0]
        ORRS     R1,R1,R0
        LDR      R0,??DataTable4_9
        STRB     R1,[R0, #+0]
//  314         mpfKeyFunction(keyBase + 3);
        MOVS     R0,R4
        ADDS     R0,R0,#+3
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        LDR      R1,??DataTable4_8
        LDR      R1,[R1, #+0]
        BL       __iar_via_R1
//  315       }
//  316       
//  317       /* go and check if it was released  */
//  318       mKeyState = mStateKeyCheckRelease;
??KeyScan_16:
        LDR      R0,??DataTable4_5
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
        B        ??KeyScan_10
//  319     }
//  320     
//  321     break;
//  322     
//  323     /* check if one and more key was released;
//  324     only the keys marked as released are treated for next time*/
//  325   case mStateKeyCheckRelease:
//  326     /*No key are pressed, so stop the timer*/ 
//  327     if ( !mKeysStillPressed )
??KeyScan_6:
        LDR      R0,??DataTable4_9
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??KeyScan_17
//  328     {      
//  329       /* Don't stop the timer for joystick to 
//  330       detect the center key that doesn't has external interrupt capability*/            
//  331 #if (gJoystickSupported_d == FALSE)
//  332       TMR_StopTimer(timerId);
//  333 #else
//  334       if(mPollTimerState == FALSE)
        LDR      R0,??DataTable4_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??KeyScan_18
//  335       {
//  336        /* Stop timer if it was requested */ 
//  337        TMR_StopTimer(timerId);
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        BL       TMR_StopTimer
        B        ??KeyScan_18
//  338       }      
//  339 #endif /* gJoystickSupported_d */
//  340       
//  341     }
//  342     
//  343     else
//  344     { 
//  345       
//  346       /* Check if one or more keys was released and notify this; only keys that are not 
//  347       still pressed are treated for next time*/
//  348       nowScan = KeySwitchPortGet();
??KeyScan_17:
        BL       KeySwitchPortGet
        MOVS     R5,R0
//  349       changedScan = (nowScan & mKeysStillPressed)^mKeysStillPressed;
        LDR      R0,??DataTable4_9
        LDRB     R0,[R0, #+0]
        ANDS     R0,R0,R5
        LDR      R1,??DataTable4_9
        LDRB     R1,[R1, #+0]
        EORS     R1,R1,R0
        MOVS     R7,R1
//  350       if(changedScan) { 
        LSLS     R7,R7,#+24       ;; ZeroExtS R7,R7,#+24,#+24
        LSRS     R7,R7,#+24
        CMP      R7,#+0
        BEQ      ??KeyScan_18
//  351         mKeysStillPressed &=~changedScan;
        LDR      R0,??DataTable4_9
        LDRB     R0,[R0, #+0]
        BICS     R0,R0,R7
        LDR      R1,??DataTable4_9
        STRB     R0,[R1, #+0]
//  352       }
//  353     }
//  354     /*Enable all interrupt but only the released (unmarked) keys will be treated*/
//  355     KbEnableAllIrq();
??KeyScan_18:
        LDR      R0,??DataTable4_2  ;; 0x80003004
        LDR      R0,[R0, #+0]
        MOVS     R1,#+240
        LSLS     R1,R1,#+16       ;; #+15728640
        ORRS     R1,R1,R0
        LDR      R0,??DataTable4_2  ;; 0x80003004
        STR      R1,[R0, #+0]
        B        ??KeyScan_10
//  356     
//  357     break;
//  358   default:
//  359     
//  360     break;
//  361   }
//  362 }
??KeyScan_8:
??KeyScan_10:
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4:
        DC32     mKeyScanTimerID

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_1:
        DC32     KeyScan

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_2:
        DC32     0x80003004

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_3:
        DC32     0xff0fffff

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_4:
        DC32     mPollTimerState

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_5:
        DC32     mKeyState

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_6:
        DC32     mLongCenterKeyCount

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_7:
        DC32     ??markLongPress

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_8:
        DC32     mpfKeyFunction

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_9:
        DC32     mKeysStillPressed

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_10:
        DC32     mSwitch_SCAN

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_11:
        DC32     mLongKeyCount

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
__iar_via_R1:
        BX       R1

        SECTION `.bss`:DATA:NOROOT(0)
??markLongPress:
        DS8 1

        END
//  363 
//  364 /******************************************************************************
//  365 *******************************************************************************
//  366 * Private Debug stuff
//  367 *******************************************************************************
//  368 ******************************************************************************/
//  369 #else /* gSwitchModule_d  */
//  370 
//  371 /* Dummy functions*/
//  372 void KBD_Init
//  373 (
//  374 KBDFunction_t pfCallBackAdr /* IN: Pointer to callback function */
//  375 )
//  376 {
//  377   (void)pfCallBackAdr;
//  378 }
//  379 
//  380 /* The CRM callback to handle the external interrupt;
//  381 Also is called when the MCU is waked up from sleep mode*/
//  382 void CrmKBDIsr(void){}
//  383 
//  384 /* Main switch task. Process timer events in non-interrupt context. */
//  385 void KBD_Task(event_t events)
//  386 {
//  387   (void)events;
//  388 }
//  389 
//  390 #endif /* gSwitchModule_d */
//  391 
// 
//  11 bytes in section .bss
//   2 bytes in section .data
// 780 bytes in section .text
// 
// 778 bytes of CODE memory (+ 2 bytes shared)
//  13 bytes of DATA memory
//
//Errors: none
//Warnings: none
