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
//                    Non Beacon (End Device)\PLM\Source\Led\Led.c            /
//    Command line =  "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\PLM\Source\Led\Led.c" -D   /
//                    gMacStandAlone_d=1 -D gSAPMessagesEnableLlc_d=0 -D      /
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
//                    Non Beacon (End Device)\Debug\List\Led.s                /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME Led

        EXTERN Gpio_GetPinData
        EXTERN Gpio_SetPinData
        EXTERN Gpio_SetPinDir
        EXTERN Gpio_SetPinFunction
        EXTERN Gpio_SetPinReadSource
        EXTERN Gpio_TogglePin
        EXTERN TMR_AllocateTimer
        EXTERN TMR_StartIntervalTimer
        EXTERN TMR_StopTimer

        PUBLIC LED_ExitSerialFlash
        PUBLIC LED_GetLed
        PUBLIC LED_Init
        PUBLIC LED_SetHex
        PUBLIC LED_SetLed
        PUBLIC LED_StartFlash
        PUBLIC LED_StartSerialFlash
        PUBLIC LED_StopFlash
        PUBLIC LED_StopFlashingAllLeds
        PUBLIC LED_ToggleLed
        PUBLIC LED_TurnOffAllLeds
        PUBLIC LED_TurnOffLed
        PUBLIC LED_TurnOnAllLeds
        PUBLIC LED_TurnOnLed
        PUBLIC Set_Pins

// C:\Documents and Settings\Administrator\Desktop\MyWirelessApp Demo Non Beacon (End Device)\MyWirelessApp Demo Non Beacon (End Device)\PLM\Source\Led\Led.c
//    1 /************************************************************************************
//    2 *
//    3 * This header file is for LED Driver Interface.
//    4 *
//    5 * Copyright (c) 2007, Freescale, Inc. All rights reserved.
//    6 *
//    7 *
//    8 * No part of this document must be reproduced in any form - including copied,
//    9 * transcribed, printed or by any electronic means - without specific written
//   10 * permission from Freescale Semiconductor.
//   11 *
//   12 *****************************************************************************/
//   13 #include "TMR_Interface.h"
//   14 #include "Led.h"
//   15 
//   16 #if (gLEDSupported_d)
//   17 
//   18 /******************************************************************************
//   19 *******************************************************************************
//   20 * Public Macros
//   21 *******************************************************************************
//   22 ******************************************************************************/
//   23 
//   24 /*None*/
//   25 
//   26 /******************************************************************************
//   27 *******************************************************************************
//   28 * Private prototypes
//   29 *******************************************************************************
//   30 ******************************************************************************/
//   31 static void LED_FlashTimeout(uint8_t timerId);
//   32 #if gLEDBlipEnabled_d
//   33 static void LED_DecrementBlip(void);
//   34 #endif
//   35 
//   36 /******************************************************************************
//   37 *******************************************************************************
//   38 * Private type definitions
//   39 *******************************************************************************
//   40 ******************************************************************************/
//   41 
//   42 /******************************************************************************
//   43 *******************************************************************************
//   44 * Private Memory Declarations
//   45 *******************************************************************************
//   46 ******************************************************************************/
//   47 

        SECTION `.bss`:DATA:NOROOT(0)
//   48 static bool_t mfLedInSerialMode;      /* doing serial lights */
mfLedInSerialMode:
        DS8 1

        SECTION `.bss`:DATA:NOROOT(0)
//   49 static uint8_t mLedFlashingLEDs = 0;  /* flashing LEDs */
mLedFlashingLEDs:
        DS8 1

        SECTION `.data`:DATA:NOROOT(0)
//   50 static tmrTimerID_t mLEDTimerID = gTmrInvalidTimerID_c;
mLEDTimerID:
        DATA
        DC8 255
//   51 #if gLEDBlipEnabled_d
//   52 static uint8_t mLedBlips[4];          /* enough for 4 LEDs to blip once */
//   53 #endif
//   54 
//   55 /******************************************************************************
//   56 *******************************************************************************
//   57 * Public functions
//   58 *******************************************************************************
//   59 ******************************************************************************/
//   60 
//   61 /******************************************************************************
//   62 * LED_Init
//   63 *
//   64 * Initialize the LED system.
//   65 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   66 void LED_Init(void)
//   67 {
LED_Init:
        PUSH     {R7,LR}
//   68   /* Create and init all LEDs */
//   69   InitLed();
        MOVS     R0,#+15
        BL       Set_Pins
//   70   
//   71   /* allocate a timer for use in flashing LEDs */
//   72   mLEDTimerID = TMR_AllocateTimer();
        BL       TMR_AllocateTimer
        LDR      R1,??DataTable3
        STRB     R0,[R1, #+0]
//   73   TurnOffLeds();
        BL       LED_TurnOffAllLeds
//   74 }
        POP      {R0,R3}
        BX       R3               ;; return
//   75 
//   76 
//   77 /******************************************************************************
//   78 * Set_Pins
//   79 *
//   80 * Set a PIN with Direction Out, this PIN can be used as a LED.
//   81 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   82 void Set_Pins( LED_t LEDNr )
//   83 {
Set_Pins:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   84   if (LEDNr & LED1){
        LSLS     R0,R4,#+31
        BPL      ??Set_Pins_0
//   85     Gpio_SetPinFunction(LED1_PIN, gGpioNormalMode_c);
        MOVS     R1,#+0
        MOVS     R0,#+23
        BL       Gpio_SetPinFunction
//   86     Gpio_SetPinReadSource(LED1_PIN, gGpioPinReadReg_c);
        MOVS     R1,#+1
        MOVS     R0,#+23
        BL       Gpio_SetPinReadSource
//   87     Gpio_SetPinDir(LED1_PIN, gGpioDirOut_c);
        MOVS     R1,#+1
        MOVS     R0,#+23
        BL       Gpio_SetPinDir
//   88     Gpio_SetPinData(LED1_PIN, LED_RESET);
        MOVS     R1,#+0
        MOVS     R0,#+23
        BL       Gpio_SetPinData
//   89   }
//   90   if (LEDNr & LED2){
??Set_Pins_0:
        LSLS     R0,R4,#+30
        BPL      ??Set_Pins_1
//   91     Gpio_SetPinFunction(LED2_PIN, gGpioNormalMode_c);
        MOVS     R1,#+0
        MOVS     R0,#+24
        BL       Gpio_SetPinFunction
//   92     Gpio_SetPinReadSource(LED2_PIN, gGpioPinReadReg_c);
        MOVS     R1,#+1
        MOVS     R0,#+24
        BL       Gpio_SetPinReadSource
//   93     Gpio_SetPinDir(LED2_PIN, gGpioDirOut_c);
        MOVS     R1,#+1
        MOVS     R0,#+24
        BL       Gpio_SetPinDir
//   94     Gpio_SetPinData(LED2_PIN, LED_RESET);
        MOVS     R1,#+0
        MOVS     R0,#+24
        BL       Gpio_SetPinData
//   95   }
//   96   if (LEDNr & LED3){
??Set_Pins_1:
        LSLS     R0,R4,#+29
        BPL      ??Set_Pins_2
//   97     Gpio_SetPinFunction(LED3_PIN, gGpioNormalMode_c);
        MOVS     R1,#+0
        MOVS     R0,#+25
        BL       Gpio_SetPinFunction
//   98     Gpio_SetPinReadSource(LED3_PIN, gGpioPinReadReg_c);
        MOVS     R1,#+1
        MOVS     R0,#+25
        BL       Gpio_SetPinReadSource
//   99     Gpio_SetPinDir(LED3_PIN, gGpioDirOut_c);
        MOVS     R1,#+1
        MOVS     R0,#+25
        BL       Gpio_SetPinDir
//  100     Gpio_SetPinData(LED3_PIN, LED_RESET);
        MOVS     R1,#+0
        MOVS     R0,#+25
        BL       Gpio_SetPinData
//  101   }
//  102   if (LEDNr & LED4){
??Set_Pins_2:
        LSLS     R0,R4,#+28
        BPL      ??Set_Pins_3
//  103     Gpio_SetPinFunction(LED4_PIN, gGpioNormalMode_c);
        MOVS     R1,#+0
        MOVS     R0,#+44
        BL       Gpio_SetPinFunction
//  104     Gpio_SetPinReadSource(LED4_PIN, gGpioPinReadReg_c);
        MOVS     R1,#+1
        MOVS     R0,#+44
        BL       Gpio_SetPinReadSource
//  105     Gpio_SetPinDir(LED4_PIN, gGpioDirOut_c);
        MOVS     R1,#+1
        MOVS     R0,#+44
        BL       Gpio_SetPinDir
//  106     Gpio_SetPinData(LED4_PIN, LED_RESET);
        MOVS     R1,#+0
        MOVS     R0,#+44
        BL       Gpio_SetPinData
//  107   }
//  108 }
??Set_Pins_3:
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  109 
//  110 /******************************************************************************
//  111 * LED_GetLed
//  112 *
//  113 * Get LED state.
//  114 *
//  115 * gpioPinState      LED_SET signal        Logical LED State (ON/OFF)
//  116 *      0                  0                        1
//  117 *      0                  1                        0
//  118 *      1                  0                        0
//  119 *      1                  1                        1
//  120 * -----------------------------------------------------
//  121 * LED State (ON/OFF) = !(gpioPinState ^ LED_SET)
//  122 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  123 LedState_t LED_GetLed( LED_t LEDNr)                      
//  124 {
LED_GetLed:
        PUSH     {R4-R6,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
//  125   GpioPinState_t gpioPinState;
//  126   LED_t LEDpinsState = 0;
        MOVS     R0,#+0
        MOVS     R5,R0
//  127   int8_t ReturnSingleLED = 0;
        MOVS     R0,#+0
        MOVS     R6,R0
//  128   
//  129   if ( (LEDNr == LED1) || (LEDNr == LED2) || (LEDNr == LED3) || (LEDNr == LED4) )
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+1
        BEQ      ??LED_GetLed_0
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+2
        BEQ      ??LED_GetLed_0
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+4
        BEQ      ??LED_GetLed_0
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+8
        BNE      ??LED_GetLed_1
//  130     ReturnSingleLED = 1;
??LED_GetLed_0:
        MOVS     R0,#+1
        MOVS     R6,R0
        B        ??LED_GetLed_2
//  131   else
//  132     ReturnSingleLED = 0;
??LED_GetLed_1:
        MOVS     R0,#+0
        MOVS     R6,R0
//  133   
//  134   if (LEDNr & LED1)
??LED_GetLed_2:
        LSLS     R0,R4,#+31
        BPL      ??LED_GetLed_3
//  135   {
//  136     Gpio_GetPinData(LED1_PIN, &gpioPinState);
        MOV      R1,SP
        MOVS     R0,#+23
        BL       Gpio_GetPinData
//  137     gpioPinState = (GpioPinState_t)(1 - (gpioPinState ^ LED_SET));
        MOVS     R0,#+1
        MOV      R1,SP
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+1
        EORS     R2,R2,R1
        SUBS     R0,R0,R2
        MOV      R1,SP
        STRB     R0,[R1, #+0]
//  138     if (ReturnSingleLED)
        LSLS     R6,R6,#+24       ;; SignExtS R6,R6,#+24,#+24
        ASRS     R6,R6,#+24
        CMP      R6,#+0
        BEQ      ??LED_GetLed_3
//  139       return gpioPinState;
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        B        ??LED_GetLed_4
//  140   }
//  141   LEDpinsState |= gpioPinState << 0;
??LED_GetLed_3:
        MOVS     R1,R5
        MOV      R0,SP
        LDRB     R5,[R0, #+0]
        ORRS     R5,R5,R1
//  142   
//  143   if (LEDNr & LED2)
        LSLS     R0,R4,#+30
        BPL      ??LED_GetLed_5
//  144   {
//  145     Gpio_GetPinData(LED2_PIN, &gpioPinState);
        MOV      R1,SP
        MOVS     R0,#+24
        BL       Gpio_GetPinData
//  146     gpioPinState = (GpioPinState_t)(1 - (gpioPinState ^ LED_SET));
        MOVS     R0,#+1
        MOV      R1,SP
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+1
        EORS     R2,R2,R1
        SUBS     R0,R0,R2
        MOV      R1,SP
        STRB     R0,[R1, #+0]
//  147     if (ReturnSingleLED)
        LSLS     R6,R6,#+24       ;; SignExtS R6,R6,#+24,#+24
        ASRS     R6,R6,#+24
        CMP      R6,#+0
        BEQ      ??LED_GetLed_5
//  148       return gpioPinState;
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        B        ??LED_GetLed_4
//  149   }
//  150   LEDpinsState |= gpioPinState << 1;
??LED_GetLed_5:
        MOVS     R1,R5
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        LSLS     R5,R0,#+1
        ORRS     R5,R5,R1
//  151   
//  152   if (LEDNr & LED3)
        LSLS     R0,R4,#+29
        BPL      ??LED_GetLed_6
//  153   {
//  154     Gpio_GetPinData(LED3_PIN, &gpioPinState);
        MOV      R1,SP
        MOVS     R0,#+25
        BL       Gpio_GetPinData
//  155     gpioPinState = (GpioPinState_t)(1 - (gpioPinState ^ LED_SET));
        MOVS     R0,#+1
        MOV      R1,SP
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+1
        EORS     R2,R2,R1
        SUBS     R0,R0,R2
        MOV      R1,SP
        STRB     R0,[R1, #+0]
//  156     if (ReturnSingleLED)
        LSLS     R6,R6,#+24       ;; SignExtS R6,R6,#+24,#+24
        ASRS     R6,R6,#+24
        CMP      R6,#+0
        BEQ      ??LED_GetLed_6
//  157       return gpioPinState;
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        B        ??LED_GetLed_4
//  158   }
//  159   LEDpinsState |= gpioPinState << 2;
??LED_GetLed_6:
        MOVS     R1,R5
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        LSLS     R5,R0,#+2
        ORRS     R5,R5,R1
//  160   
//  161   if (LEDNr & LED4)
        LSLS     R0,R4,#+28
        BPL      ??LED_GetLed_7
//  162   {
//  163     Gpio_GetPinData(LED4_PIN, &gpioPinState);
        MOV      R1,SP
        MOVS     R0,#+44
        BL       Gpio_GetPinData
//  164     gpioPinState = (GpioPinState_t)(1 - (gpioPinState ^ LED_SET));
        MOVS     R0,#+1
        MOV      R1,SP
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+1
        EORS     R2,R2,R1
        SUBS     R0,R0,R2
        MOV      R1,SP
        STRB     R0,[R1, #+0]
//  165     if (ReturnSingleLED)
        LSLS     R6,R6,#+24       ;; SignExtS R6,R6,#+24,#+24
        ASRS     R6,R6,#+24
        CMP      R6,#+0
        BEQ      ??LED_GetLed_7
//  166       return gpioPinState;
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        B        ??LED_GetLed_4
//  167   }
//  168   LEDpinsState |= gpioPinState << 3;
??LED_GetLed_7:
        MOVS     R1,R5
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        LSLS     R5,R0,#+3
        ORRS     R5,R5,R1
//  169   
//  170   return LEDpinsState;
        MOVS     R0,R5
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
??LED_GetLed_4:
        POP      {R1,R2,R4-R6}
        POP      {R3}
        BX       R3               ;; return
//  171   
//  172 }
//  173 
//  174 /******************************************************************************
//  175 * LED_ToggleLed
//  176 *
//  177 * Toggles on or more LEDs. Doesn't check/affect flashing states.
//  178 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  179 void LED_ToggleLed(LED_t LEDNr)
//  180 {
LED_ToggleLed:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  181   if (LEDNr & LED1){    
        LSLS     R0,R4,#+31
        BPL      ??LED_ToggleLed_0
//  182     Led1Toggle();
        MOVS     R0,#+23
        BL       Gpio_TogglePin
//  183   }
//  184   if (LEDNr & LED2){    
??LED_ToggleLed_0:
        LSLS     R0,R4,#+30
        BPL      ??LED_ToggleLed_1
//  185     Led2Toggle();
        MOVS     R0,#+24
        BL       Gpio_TogglePin
//  186   }
//  187   if (LEDNr & LED3){    
??LED_ToggleLed_1:
        LSLS     R0,R4,#+29
        BPL      ??LED_ToggleLed_2
//  188     Led3Toggle();
        MOVS     R0,#+25
        BL       Gpio_TogglePin
//  189   }
//  190   if (LEDNr & LED4){    
??LED_ToggleLed_2:
        LSLS     R0,R4,#+28
        BPL      ??LED_ToggleLed_3
//  191     Led4Toggle();
        MOVS     R0,#+44
        BL       Gpio_TogglePin
//  192   }
//  193 }
??LED_ToggleLed_3:
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  194 
//  195 /******************************************************************************
//  196 * LED_TurnOffLed
//  197 *
//  198 * Turns off on or more LEDs. Doesn't check/affect flashing states.
//  199 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  200 void LED_TurnOffLed(LED_t LEDNr)
//  201 {
LED_TurnOffLed:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  202   if (LEDNr & LED1)
        LSLS     R0,R4,#+31
        BPL      ??LED_TurnOffLed_0
//  203     Led1Off();
        MOVS     R1,#+0
        MOVS     R0,#+23
        BL       Gpio_SetPinData
//  204   if (LEDNr & LED2)
??LED_TurnOffLed_0:
        LSLS     R0,R4,#+30
        BPL      ??LED_TurnOffLed_1
//  205     Led2Off();
        MOVS     R1,#+0
        MOVS     R0,#+24
        BL       Gpio_SetPinData
//  206   if (LEDNr & LED3)
??LED_TurnOffLed_1:
        LSLS     R0,R4,#+29
        BPL      ??LED_TurnOffLed_2
//  207     Led3Off();
        MOVS     R1,#+0
        MOVS     R0,#+25
        BL       Gpio_SetPinData
//  208   if (LEDNr & LED4)
??LED_TurnOffLed_2:
        LSLS     R0,R4,#+28
        BPL      ??LED_TurnOffLed_3
//  209     Led4Off();
        MOVS     R1,#+0
        MOVS     R0,#+44
        BL       Gpio_SetPinData
//  210 }
??LED_TurnOffLed_3:
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  211 
//  212 /******************************************************************************
//  213 * LED_TurnOnLed
//  214 *
//  215 * Turn on one or more LEDs. Doesn't check/affect flashing states.
//  216 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  217 void LED_TurnOnLed(LED_t LEDNr)
//  218 {
LED_TurnOnLed:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  219   if (LEDNr & LED1)
        LSLS     R0,R4,#+31
        BPL      ??LED_TurnOnLed_0
//  220     Led1On();
        MOVS     R1,#+1
        MOVS     R0,#+23
        BL       Gpio_SetPinData
//  221   if (LEDNr & LED2)
??LED_TurnOnLed_0:
        LSLS     R0,R4,#+30
        BPL      ??LED_TurnOnLed_1
//  222     Led2On();
        MOVS     R1,#+1
        MOVS     R0,#+24
        BL       Gpio_SetPinData
//  223   if (LEDNr & LED3)
??LED_TurnOnLed_1:
        LSLS     R0,R4,#+29
        BPL      ??LED_TurnOnLed_2
//  224     Led3On();
        MOVS     R1,#+1
        MOVS     R0,#+25
        BL       Gpio_SetPinData
//  225   if (LEDNr & LED4)
??LED_TurnOnLed_2:
        LSLS     R0,R4,#+28
        BPL      ??LED_TurnOnLed_3
//  226     Led4On();
        MOVS     R1,#+1
        MOVS     R0,#+44
        BL       Gpio_SetPinData
//  227 }
??LED_TurnOnLed_3:
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  228 
//  229 /******************************************************************************
//  230 * LED_TurnOffAllLeds
//  231 *
//  232 * Turn off all LEDs. Does not affect flashing state.
//  233 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  234 void LED_TurnOffAllLeds(void)
//  235 {
LED_TurnOffAllLeds:
        PUSH     {R7,LR}
//  236   LED_TurnOffLed(LED_ALL);
        MOVS     R0,#+15
        BL       LED_TurnOffLed
//  237 }
        POP      {R0,R3}
        BX       R3               ;; return
//  238 
//  239 /******************************************************************************
//  240 * LED_TurnOnAllLeds
//  241 *
//  242 * Turn on all LEDs. Does not affect flashing state.
//  243 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  244 void LED_TurnOnAllLeds(void)
//  245 {
LED_TurnOnAllLeds:
        PUSH     {R7,LR}
//  246   LED_TurnOnLed(LED_ALL);
        MOVS     R0,#+15
        BL       LED_TurnOnLed
//  247 }
        POP      {R0,R3}
        BX       R3               ;; return
//  248 
//  249 /******************************************************************************
//  250 * LED_StopFlashingAllLeds
//  251 *
//  252 * Turn off all LEDs and stop flashing.
//  253 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  254 void LED_StopFlashingAllLeds(void)
//  255 {
LED_StopFlashingAllLeds:
        PUSH     {R7,LR}
//  256   LED_SetLed(LED_ALL, gLedOff_c);
        MOVS     R1,#+4
        MOVS     R0,#+15
        BL       LED_SetLed
//  257 }
        POP      {R0,R3}
        BX       R3               ;; return
//  258 
//  259 /******************************************************************************
//  260 * LED_StartFlash
//  261 *
//  262 * Start one or more LEDs flashing
//  263 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  264 void LED_StartFlash
//  265  (
//  266     LED_t LEDNr /* IN: LED Number (may be an OR of the list) */
//  267  )
//  268 {
LED_StartFlash:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  269   /* indicate which leds are flashing */
//  270   mLedFlashingLEDs |= LEDNr;
        LDR      R0,??DataTable6
        LDRB     R0,[R0, #+0]
        ORRS     R0,R0,R4
        LDR      R1,??DataTable6
        STRB     R0,[R1, #+0]
//  271 
//  272   /* start the timer */
//  273   TMR_StartIntervalTimer(mLEDTimerID, mLEDInterval_c, LED_FlashTimeout);
        LDR      R2,??DataTable6_1
        MOVS     R1,#+100
        LDR      R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        BL       TMR_StartIntervalTimer
//  274 }
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  275 
//  276 #if gLEDBlipEnabled_d
//  277 /******************************************************************************
//  278 * LED_StartBlip
//  279 *
//  280 * Set up for blinking one or more LEDs once. 
//  281 ******************************************************************************/
//  282 void LED_StartBlip ( LED_t LEDNr )
//  283 {
//  284   uint8_t iLedIndex;
//  285 
//  286   /* set up for blinking one or more LEDs once */
//  287   for(iLedIndex = 0; iLedIndex < 4; ++iLedIndex) 
//  288   {
//  289     if(LEDNr & (1 << iLedIndex))
//  290      mLedBlips[iLedIndex] = 2;   /* blink on, then back off */
//  291   }
//  292 
//  293   /* start flashing */
//  294   LED_StartFlash(LEDNr);
//  295 }
//  296 #endif
//  297 
//  298 /******************************************************************************
//  299 * LED_StopFlash
//  300 *
//  301 * Stop an LED from flashing.
//  302 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  303 void LED_StopFlash
//  304   (
//  305   LED_t LEDNr /* IN: LED Number. */
//  306   )
//  307 {
LED_StopFlash:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  308   /* leave stopped LEDs in the off state */
//  309   LED_TurnOffLed(LEDNr);
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       LED_TurnOffLed
//  310 
//  311   /* stop flashing on one or more LEDs */
//  312   mLedFlashingLEDs &= (~LEDNr);
        LDR      R0,??DataTable6
        LDRB     R0,[R0, #+0]
        BICS     R0,R0,R4
        LDR      R1,??DataTable6
        STRB     R0,[R1, #+0]
//  313 
//  314   /* if ALL LEDs have stopped flashing, then stop timer */
//  315   if(!mLedFlashingLEDs)
        LDR      R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??LED_StopFlash_0
//  316     TMR_StopTimer(mLEDTimerID);
        LDR      R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        BL       TMR_StopTimer
//  317 }
??LED_StopFlash_0:
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  318 
//  319 /******************************************************************************
//  320 * LED_StartSerialFlash
//  321 *
//  322 * Serial flashing lights
//  323 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  324 void LED_StartSerialFlash(void)
//  325 {
LED_StartSerialFlash:
        PUSH     {R7,LR}
//  326   /* indicate going into flashing mode (must be done first) */
//  327   LED_StartFlash(0);
        MOVS     R0,#+0
        BL       LED_StartFlash
//  328 
//  329   /* set up for serial lights */
//  330   LED_TurnOffAllLeds();
        BL       LED_TurnOffAllLeds
//  331   Led1On();
        MOVS     R1,#+1
        MOVS     R0,#+23
        BL       Gpio_SetPinData
//  332   mLedFlashingLEDs = LED1 | LED2; /* toggle these to on first flash */
        LDR      R0,??DataTable6
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
//  333 
//  334   /* indicate in serial flash mode */
//  335   mfLedInSerialMode = TRUE;
        LDR      R0,??DataTable6_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  336 }
        POP      {R0,R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3:
        DC32     mLEDTimerID
//  337 
//  338 /******************************************************************************
//  339 * LED_DecrementBlink
//  340 *
//  341 * Decrements the blink count.
//  342 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  343 void LED_SetHex
//  344   (
//  345   uint8_t hexValue
//  346   )
//  347 {
LED_SetHex:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  348   LED_SetLed(LED_ALL, gLedOff_c);
        MOVS     R1,#+4
        MOVS     R0,#+15
        BL       LED_SetLed
//  349   LED_SetLed(hexValue, gLedOn_c);
        MOVS     R1,#+3
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       LED_SetLed
//  350 }
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  351 
//  352 /******************************************************************************
//  353 * LED_SetLed
//  354 *
//  355 * This fuction can set the Led state in: On, Off, Toggle, Flashing or StopFlash
//  356 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  357 void LED_SetLed
//  358   (
//  359   LED_t LEDNr,    /* IN: mask of LEDs to change */
//  360   LedState_t state
//  361   )
//  362 {
LED_SetLed:
        PUSH     {R3-R5,LR}
        MOVS     R5,R0
        MOVS     R4,R1
//  363   /* turning off flashing same as off state */
//  364   if(state == gLedStopFlashing_c)
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+1
        BNE      ??LED_SetLed_0
//  365     state = gLedOff_c;
        MOVS     R0,#+4
        MOVS     R4,R0
//  366 
//  367   /* turn off serial lights if in serial mode */
//  368   LED_ExitSerialFlash();
??LED_SetLed_0:
        BL       LED_ExitSerialFlash
//  369 
//  370   /* flash LED */
//  371   if(state == gLedFlashing_c)
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+0
        BNE      ??LED_SetLed_1
//  372     LED_StartFlash(LEDNr);
        MOVS     R0,R5
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       LED_StartFlash
        B        ??LED_SetLed_2
//  373 
//  374 #if gLEDBlipEnabled_d
//  375   /* blink LEDs */
//  376   else if(state == gLedBlip_c)
//  377     LED_StartBlip(LEDNr);
//  378 #endif
//  379 
//  380   /* On, Off or Toggle Led*/
//  381   else {
//  382 
//  383     /* on, off or toggle will stop flashing on the LED. Also exits serial mode */
//  384     if(mfLedInSerialMode || (mLedFlashingLEDs & LEDNr))
??LED_SetLed_1:
        LDR      R0,??DataTable6_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??LED_SetLed_3
        LDR      R0,??DataTable6
        LDRB     R0,[R0, #+0]
        TST      R0,R5
        BEQ      ??LED_SetLed_4
//  385       LED_StopFlash(LEDNr);
??LED_SetLed_3:
        MOVS     R0,R5
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       LED_StopFlash
//  386 
//  387     /* Select the operation to be done on the port */
//  388     if(state == gLedOn_c)
??LED_SetLed_4:
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+3
        BNE      ??LED_SetLed_5
//  389       LED_TurnOnLed(LEDNr);
        MOVS     R0,R5
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       LED_TurnOnLed
//  390     if(state == gLedOff_c)
??LED_SetLed_5:
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+4
        BNE      ??LED_SetLed_6
//  391       LED_TurnOffLed(LEDNr);
        MOVS     R0,R5
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       LED_TurnOffLed
//  392     if(state == gLedToggle_c)
??LED_SetLed_6:
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+5
        BNE      ??LED_SetLed_2
//  393       LED_ToggleLed(LEDNr);
        MOVS     R0,R5
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       LED_ToggleLed
//  394   }
//  395 }
??LED_SetLed_2:
        POP      {R0,R4,R5}
        POP      {R3}
        BX       R3               ;; return
//  396 
//  397 
//  398 /******************************************************************************
//  399 *******************************************************************************
//  400 * Private functions
//  401 *******************************************************************************
//  402 ******************************************************************************/
//  403 
//  404 /******************************************************************************
//  405 * LED_ExitSerialFlash
//  406 *
//  407 * Stop serial flashing mode. Leaves all LEDs off. Only exits if actually in 
//  408 * serial mode.
//  409 *******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  410 void LED_ExitSerialFlash(void)
//  411 {
LED_ExitSerialFlash:
        PUSH     {R7,LR}
//  412   if(mfLedInSerialMode) 
        LDR      R0,??DataTable6_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??LED_ExitSerialFlash_0
//  413   {
//  414     mLedFlashingLEDs = 0;   /* no LEDs are currently flashing */
        LDR      R0,??DataTable6
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  415     LED_TurnOffAllLeds();
        BL       LED_TurnOffAllLeds
//  416     TMR_StopTimer(mLEDTimerID);
        LDR      R0,??DataTable6_2
        LDRB     R0,[R0, #+0]
        BL       TMR_StopTimer
//  417     mfLedInSerialMode = FALSE;
        LDR      R0,??DataTable6_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  418   }
//  419 }
??LED_ExitSerialFlash_0:
        POP      {R0,R3}
        BX       R3               ;; return
//  420 
//  421 #if gLEDBlipEnabled_d
//  422 /******************************************************************************
//  423 * LED_DecrementBlip
//  424 *
//  425 * Decrements the blink count.
//  426 ******************************************************************************/
//  427 static void LED_DecrementBlip(void)
//  428 {
//  429   uint8_t iLedIndex;
//  430 
//  431   for(iLedIndex = 0; iLedIndex < 4; ++iLedIndex) 
//  432   {
//  433     if(mLedBlips[iLedIndex]) 
//  434     {
//  435       --mLedBlips[iLedIndex];
//  436       if(!mLedBlips[iLedIndex])
//  437         mLedFlashingLEDs &= ~(1 << iLedIndex);
//  438     }
//  439   }
//  440 
//  441   /* done, stop the timer */
//  442   if(!mLedFlashingLEDs)
//  443     TMR_StopTimer(mLEDTimerID);
//  444 }
//  445 #endif
//  446 
//  447 /******************************************************************************
//  448 * LED_FlashTimeout
//  449 *
//  450 * Flash the selected LED(s).
//  451 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  452 static void LED_FlashTimeout
//  453   (
//  454   uint8_t timerId /* IN: TimerID. */
//  455   )
//  456 {
LED_FlashTimeout:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  457   (void)timerId;  /* prevent compiler warning */
//  458 
//  459   if(mLedFlashingLEDs & LED1)
        LDR      R0,??DataTable6
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+31
        BPL      ??LED_FlashTimeout_0
//  460     Led1Toggle();
        MOVS     R0,#+23
        BL       Gpio_TogglePin
//  461   if(mLedFlashingLEDs & LED2)
??LED_FlashTimeout_0:
        LDR      R0,??DataTable6
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+30
        BPL      ??LED_FlashTimeout_1
//  462     Led2Toggle();
        MOVS     R0,#+24
        BL       Gpio_TogglePin
//  463   if(mLedFlashingLEDs & LED3)
??LED_FlashTimeout_1:
        LDR      R0,??DataTable6
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+29
        BPL      ??LED_FlashTimeout_2
//  464     Led3Toggle();
        MOVS     R0,#+25
        BL       Gpio_TogglePin
//  465   if(mLedFlashingLEDs & LED4)
??LED_FlashTimeout_2:
        LDR      R0,??DataTable6
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+28
        BPL      ??LED_FlashTimeout_3
//  466     Led4Toggle();
        MOVS     R0,#+44
        BL       Gpio_TogglePin
//  467 
//  468 #if gLEDBlipEnabled_d
//  469  /* decrement blips */
//  470   LED_DecrementBlip();
//  471 #endif
//  472 
//  473  /* if serial lights, move on to next light */
//  474   if(mfLedInSerialMode)
??LED_FlashTimeout_3:
        LDR      R0,??DataTable6_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??LED_FlashTimeout_4
//  475   {
//  476     mLedFlashingLEDs = mLedFlashingLEDs << 1;
        LDR      R0,??DataTable6
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+1
        LDR      R1,??DataTable6
        STRB     R0,[R1, #+0]
//  477     if(mLedFlashingLEDs & (LED4 << 1))  /* wrap around */
        LDR      R0,??DataTable6
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+27
        BPL      ??LED_FlashTimeout_4
//  478     {
//  479       mLedFlashingLEDs &= LED_ALL;
        LDR      R0,??DataTable6
        LDRB     R0,[R0, #+0]
        LSLS     R0,R0,#+28       ;; ZeroExtS R0,R0,#+28,#+28
        LSRS     R0,R0,#+28
        LDR      R1,??DataTable6
        STRB     R0,[R1, #+0]
//  480       mLedFlashingLEDs |= LED1;
        LDR      R0,??DataTable6
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        LDR      R0,??DataTable6
        STRB     R1,[R0, #+0]
//  481     }
//  482   }
//  483 }
??LED_FlashTimeout_4:
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable6:
        DC32     mLedFlashingLEDs

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable6_1:
        DC32     LED_FlashTimeout

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable6_2:
        DC32     mLEDTimerID

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable6_3:
        DC32     mfLedInSerialMode

        END
//  484 
//  485 
//  486 /******************************************************************************
//  487 *******************************************************************************
//  488 * Unit Testing
//  489 *******************************************************************************
//  490 ******************************************************************************/
//  491 
//  492 /* None */
//  493 
//  494 #endif /* gLEDSupported_d */
//  495 
// 
//     2 bytes in section .bss
//     1 byte  in section .data
// 1 102 bytes in section .text
// 
// 1 102 bytes of CODE memory
//     3 bytes of DATA memory
//
//Errors: none
//Warnings: none
