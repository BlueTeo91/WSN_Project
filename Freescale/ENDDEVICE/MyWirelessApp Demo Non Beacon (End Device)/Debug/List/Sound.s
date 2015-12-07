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
//                    Non Beacon (End Device)\PLM\Source\Sound\Sound.c        /
//    Command line =  "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\PLM\Source\Sound\Sound.c"  /
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
//                    Non Beacon (End Device)\Debug\List\Sound.s              /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME Sound

        EXTERN Gpio_SetPinFunction
        EXTERN I2c_Enable
        EXTERN I2c_Init
        EXTERN I2c_SendData
        EXTERN I2c_SetConfig
        EXTERN TmrEnable
        EXTERN TmrSetCallbackFunction
        EXTERN TmrSetCompStatusControl
        EXTERN TmrSetConfig
        EXTERN TmrSetMode
        EXTERN TmrSetStatusControl
        EXTERN __aeabi_idiv

        PUBLIC BuzzerBeep
        PUBLIC BuzzerInit
        PUBLIC mBeepDuration
        PUBLIC mMsCounter

// C:\Documents and Settings\Administrator\Desktop\MyWirelessApp Demo Non Beacon (End Device)\MyWirelessApp Demo Non Beacon (End Device)\PLM\Source\Sound\Sound.c
//    1 /************************************************************************************
//    2 * MC1322x Buzzer routines
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
//   13 #include "AppToPlatformConfig.h"
//   14 #include "Sound.h"
//   15 #include "Timer.h"
//   16 #include "I2C_Interface.h"
//   17 #include "GPIO_Interface.h"
//   18 #if gHaveBuzzer_c
//   19 /************************************************************************************
//   20 *************************************************************************************
//   21 * Private macros
//   22 *************************************************************************************
//   23 ************************************************************************************/
//   24 #define mBeepFreqinKHz_c  4
//   25 #define mToggleCompareValue_c  (SYSTEM_CLOCK/(mBeepFreqinKHz_c * 2))
//   26 #define  mSLAVE_DEV_ADDRESS_c  0x50
//   27 #define  mVREG_CMD_c           0x11
//   28 #define  gGpioBeepTimer_c     ((GpioPin_t)((uint8_t)gGpioPin8_c + (uint8_t)gBeepTimer_c))
//   29 /************************************************************************************
//   30 *************************************************************************************
//   31 * Private type definitions
//   32 
//   33 *************************************************************************************
//   34 ************************************************************************************/
//   35 
//   36 /************************************************************************************
//   37 *************************************************************************************
//   38 * Private prototypes
//   39 *************************************************************************************
//   40 ************************************************************************************/
//   41 
//   42 static void BuzzerTimerCallBack(TmrNumber_t tmrNumber);
//   43 static void Llc_VolumeInit(void);
//   44 static void Llc_VolumeSet(uint8_t volume);
//   45 /************************************************************************************
//   46 *************************************************************************************
//   47 * Public memory declarations
//   48 *************************************************************************************
//   49 ************************************************************************************/
//   50 
//   51 /************************************************************************************
//   52 *************************************************************************************
//   53 * Private memory declarations
//   54 *************************************************************************************
//   55 ************************************************************************************/

        SECTION `.bss`:DATA:NOROOT(2)
//   56 uint32_t mMsCounter;
mMsCounter:
        DS8 4

        SECTION `.bss`:DATA:NOROOT(2)
//   57 uint32_t mBeepDuration;
mBeepDuration:
        DS8 4
//   58 
//   59 /************************************************************************************
//   60 *************************************************************************************
//   61 * Public functions
//   62 *************************************************************************************
//   63 ************************************************************************************/
//   64 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   65 bool_t BuzzerInit(void)
//   66 {
BuzzerInit:
        PUSH     {LR}
        SUB      SP,SP,#+20
//   67   TmrConfig_t tmrConfig;
//   68   TmrStatusCtrl_t tmrStatusCtrl;
//   69   TmrComparatorStatusCtrl_t tmrComparatorStatusCtrl;
//   70   /* Enable hw timer 1 */
//   71   TmrEnable(gBeepTimer_c);
        MOVS     R0,#+3
        BL       TmrEnable
//   72   /* Don't stat the timer yet */ 
//   73   if (gTmrErrNoError_c != TmrSetMode(gBeepTimer_c, gTmrNoOperation_c)) /*set timer mode no operation*/
        MOVS     R1,#+0
        MOVS     R0,#+3
        BL       TmrSetMode
        CMP      R0,#+0
        BEQ      ??BuzzerInit_0
//   74   {
//   75     return FALSE;
        MOVS     R0,#+0
        B        ??BuzzerInit_1
//   76   }
//   77   /* Register the callback executed when an interrupt occur */
//   78   if(gTmrErrNoError_c != TmrSetCallbackFunction(gBeepTimer_c, gTmrComp1Event_c, BuzzerTimerCallBack))
??BuzzerInit_0:
        LDR      R2,??DataTable2
        MOVS     R1,#+0
        MOVS     R0,#+3
        BL       TmrSetCallbackFunction
        CMP      R0,#+0
        BEQ      ??BuzzerInit_2
//   79   {
//   80     return FALSE;
        MOVS     R0,#+0
        B        ??BuzzerInit_1
//   81   }
//   82   tmrStatusCtrl.uintValue = 0x0000;
??BuzzerInit_2:
        MOV      R0,SP
        MOVS     R1,#+0
        STRH     R1,[R0, #+4]
//   83   tmrStatusCtrl.bitFields.OEN = 1;    //output enable
        MOV      R0,SP
        LDRH     R0,[R0, #+4]
        MOVS     R1,#+1
        ORRS     R1,R1,R0
        MOV      R0,SP
        STRH     R1,[R0, #+4]
//   84   if (gTmrErrNoError_c != TmrSetStatusControl(gBeepTimer_c, &tmrStatusCtrl))
        ADD      R1,SP,#+4
        MOVS     R0,#+3
        BL       TmrSetStatusControl
        CMP      R0,#+0
        BEQ      ??BuzzerInit_3
//   85   {
//   86     return FALSE;
        MOVS     R0,#+0
        B        ??BuzzerInit_1
//   87   }  
//   88   tmrComparatorStatusCtrl.uintValue = 0x0000;
??BuzzerInit_3:
        MOV      R0,SP
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//   89   tmrComparatorStatusCtrl.bitFields.TCF1EN = TRUE; /* Enable Compare 1 interrupt */
        MOV      R0,SP
        LDRH     R0,[R0, #+0]
        MOVS     R1,#+64
        ORRS     R1,R1,R0
        MOV      R0,SP
        STRH     R1,[R0, #+0]
//   90   if (gTmrErrNoError_c != TmrSetCompStatusControl(gBeepTimer_c, &tmrComparatorStatusCtrl))
        MOV      R1,SP
        MOVS     R0,#+3
        BL       TmrSetCompStatusControl
        CMP      R0,#+0
        BEQ      ??BuzzerInit_4
//   91   {
//   92     return FALSE;
        MOVS     R0,#+0
        B        ??BuzzerInit_1
//   93   }
//   94   tmrConfig.tmrOutputMode = gTmrToggleOF_c; 
??BuzzerInit_4:
        MOV      R0,SP
        MOVS     R1,#+3
        STRB     R1,[R0, #+8]
//   95   tmrConfig.tmrCoInit = FALSE;  /*co-chanel counter/timers can not force a re-initialization of this counter/timer*/
        ADD      R0,SP,#+8
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
//   96   tmrConfig.tmrCntDir = FALSE;  /*count-up*/
        ADD      R0,SP,#+8
        MOVS     R1,#+0
        STRB     R1,[R0, #+2]
//   97   tmrConfig.tmrCntLen = TRUE;  /*count until compare*/
        ADD      R0,SP,#+8
        MOVS     R1,#+1
        STRB     R1,[R0, #+3]
//   98   tmrConfig.tmrCntOnce = FALSE;   /*count repeatedly*/
        ADD      R0,SP,#+8
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
//   99   tmrConfig.tmrSecondaryCntSrc = gTmrSecondaryCnt0Input_c;    /*secondary count source not needed*/
        ADD      R0,SP,#+8
        MOVS     R1,#+0
        STRB     R1,[R0, #+5]
//  100   tmrConfig.tmrPrimaryCntSrc = gTmrPrimaryClkDiv1_c;    /*primary count source is IP BUS clock divide by 1 prescaler*/
        ADD      R0,SP,#+8
        MOVS     R1,#+8
        STRB     R1,[R0, #+6]
//  101   if (gTmrErrNoError_c != TmrSetConfig(gBeepTimer_c, &tmrConfig))  /*set timer configuration */
        ADD      R1,SP,#+8
        MOVS     R0,#+3
        BL       TmrSetConfig
        CMP      R0,#+0
        BEQ      ??BuzzerInit_5
//  102   {
//  103     return FALSE;
        MOVS     R0,#+0
        B        ??BuzzerInit_1
//  104   }
//  105   /* Config timer to raise interrupts each 0.1 ms */
//  106   SetComp1Val(gBeepTimer_c, mToggleCompareValue_c);
??BuzzerInit_5:
        LDR      R0,??DataTable2_1  ;; 0x80007060
        LDR      R1,??DataTable2_2  ;; 0xbb8
        STRH     R1,[R0, #+0]
//  107   /* Config timer to start from 0 after compare event */
//  108   SetLoadVal(gBeepTimer_c, 0);
        LDR      R0,??DataTable2_3  ;; 0x80007066
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  109   I2c_Init();
        BL       I2c_Init
//  110   Gpio_SetPinFunction(gGpioBeepTimer_c, gGpioAlternate1Mode_c); 
        MOVS     R1,#+1
        MOVS     R0,#+11
        BL       Gpio_SetPinFunction
//  111   Gpio_SetPinFunction(gGpioPin12_c, gGpioAlternate1Mode_c);
        MOVS     R1,#+1
        MOVS     R0,#+12
        BL       Gpio_SetPinFunction
//  112   Gpio_SetPinFunction(gGpioPin13_c, gGpioAlternate1Mode_c);
        MOVS     R1,#+1
        MOVS     R0,#+13
        BL       Gpio_SetPinFunction
//  113   return TRUE;
        MOVS     R0,#+1
??BuzzerInit_1:
        ADD      SP,SP,#+20
        POP      {R3}
        BX       R3               ;; return
//  114 }
//  115 
//  116 /***********************************************************************************/
//  117 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  118 bool_t BuzzerBeep (void) 
//  119 {
BuzzerBeep:
        PUSH     {R7,LR}
//  120   if( gBeepDurationInMs_c == 0 )
//  121     return FALSE;
//  122   if (gTmrErrNoError_c != TmrSetMode(gBeepTimer_c, gTmrNoOperation_c)) /*set timer mode no operation*/
        MOVS     R1,#+0
        MOVS     R0,#+3
        BL       TmrSetMode
        CMP      R0,#+0
        BEQ      ??BuzzerBeep_0
//  123   {
//  124     return FALSE;
        MOVS     R0,#+0
        B        ??BuzzerBeep_1
//  125   }
//  126   mMsCounter = 0;
??BuzzerBeep_0:
        LDR      R0,??DataTable2_4
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  127   mBeepDuration = gBeepDurationInMs_c;
        LDR      R0,??DataTable2_5
        MOVS     R1,#+250
        STR      R1,[R0, #+0]
//  128   SetCntrVal(gBeepTimer_c, 0) ; /*clear counter*/
        LDR      R0,??DataTable2_6  ;; 0x8000706a
        MOVS     R1,#+0
        STRH     R1,[R0, #+0]
//  129   Llc_VolumeInit();
        BL       Llc_VolumeInit
//  130   Llc_VolumeSet(gBeepVolumeInPrc_c);   
        MOVS     R0,#+30
        BL       Llc_VolumeSet
//  131   if (gTmrErrNoError_c != TmrSetMode(gBeepTimer_c, gTmrCntRiseEdgPriSrc_c))
        MOVS     R1,#+1
        MOVS     R0,#+3
        BL       TmrSetMode
        CMP      R0,#+0
        BEQ      ??BuzzerBeep_2
//  132   {
//  133     return FALSE;
        MOVS     R0,#+0
        B        ??BuzzerBeep_1
//  134   }
//  135   return TRUE;
??BuzzerBeep_2:
        MOVS     R0,#+1
??BuzzerBeep_1:
        POP      {R1,R3}
        BX       R3               ;; return
//  136 }
//  137 
//  138 /************************************************************************************
//  139 *************************************************************************************
//  140 * Private functions
//  141 *************************************************************************************
//  142 ************************************************************************************/
//  143 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  144 static void BuzzerTimerCallBack(TmrNumber_t tmrNumber)
//  145 {
BuzzerTimerCallBack:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  146   mMsCounter++;
        LDR      R0,??DataTable2_4
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable2_4
        STR      R0,[R1, #+0]
//  147   if(mMsCounter >= mBeepFreqinKHz_c<<1)
        LDR      R0,??DataTable2_4
        LDR      R0,[R0, #+0]
        CMP      R0,#+8
        BCC      ??BuzzerTimerCallBack_0
//  148   {
//  149     mMsCounter = 0;
        LDR      R0,??DataTable2_4
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  150     mBeepDuration --;
        LDR      R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR      R1,??DataTable2_5
        STR      R0,[R1, #+0]
//  151     if(mBeepDuration == 0)
        LDR      R0,??DataTable2_5
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??BuzzerTimerCallBack_0
//  152     {
//  153       TmrSetMode(gBeepTimer_c, gTmrNoOperation_c);    //stop timer  
        MOVS     R1,#+0
        MOVS     R0,#+3
        BL       TmrSetMode
//  154     }
//  155   }
//  156 }
??BuzzerTimerCallBack_0:
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2:
        DC32     BuzzerTimerCallBack

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_1:
        DC32     0x80007060

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_2:
        DC32     0xbb8

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_3:
        DC32     0x80007066

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_4:
        DC32     mMsCounter

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_5:
        DC32     mBeepDuration

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_6:
        DC32     0x8000706a
//  157 
//  158 /***********************************************************************************/
//  159 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  160 static void Llc_VolumeInit(void)
//  161 {
Llc_VolumeInit:
        PUSH     {LR}
        SUB      SP,SP,#+12
//  162   I2cConfig_t i2cConfig;
//  163   I2c_Enable();
        BL       I2c_Enable
//  164   i2cConfig.i2cBroadcastEn = FALSE;
        MOV      R0,SP
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
//  165   i2cConfig.freqDivider   = 0x20;
        MOV      R0,SP
        MOVS     R1,#+32
        STRB     R1,[R0, #+1]
//  166   i2cConfig.saplingRate   = 0x01;
        MOV      R0,SP
        MOVS     R1,#+1
        STRB     R1,[R0, #+2]
//  167   i2cConfig.slaveAddress   = 0x00;
        MOV      R0,SP
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  168   i2cConfig.i2cInterruptEn = FALSE; 
        MOV      R0,SP
        MOVS     R1,#+0
        STRB     R1,[R0, #+3]
//  169   I2c_SetConfig(&i2cConfig);
        MOV      R0,SP
        BL       I2c_SetConfig
//  170 }
        POP      {R0-R3}
        BX       R3               ;; return
//  171 
//  172 /***********************************************************************************/
//  173 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  174 static void Llc_VolumeSet(uint8_t volume)
//  175 {
Llc_VolumeSet:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
//  176   uint8_t buffer[2];
//  177   if(volume > (uint8_t)100)
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+101
        BCC      ??Llc_VolumeSet_0
//  178   {
//  179     volume = 100; /* Limit volume to 100% */
        MOVS     R0,#+100
        MOVS     R4,R0
//  180   }
//  181   /* Scale down the volume value to 0 - 31 range */
//  182   volume = (volume * 31) / 100;
??Llc_VolumeSet_0:
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        MOVS     R0,#+31
        MULS     R4,R0,R4
        MOVS     R0,R4
        MOVS     R1,#+100
        BL       __aeabi_idiv
        MOVS     R4,R0
//  183   buffer[0] = mVREG_CMD_c;
        MOV      R0,SP
        MOVS     R1,#+17
        STRB     R1,[R0, #+0]
//  184   buffer[1] = (volume & 0xFF) << 3;
        MOV      R0,SP
        LSLS     R1,R4,#+3
        STRB     R1,[R0, #+1]
//  185   I2c_SendData(mSLAVE_DEV_ADDRESS_c, &buffer[0], 2, gI2cMstrReleaseBus_c);
        MOVS     R3,#+1
        MOVS     R2,#+2
        MOV      R1,SP
        MOVS     R0,#+80
        BL       I2c_SendData
//  186 }
        POP      {R0,R1,R4}
        POP      {R3}
        BX       R3               ;; return

        END
//  187 
//  188 #endif 
//  189  
//  190  
// 
//   8 bytes in section .bss
// 488 bytes in section .text
// 
// 488 bytes of CODE memory
//   8 bytes of DATA memory
//
//Errors: none
//Warnings: none
