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
//                    (Coordinator)\PLM\Source\Display\Display.c              /
//    Command line =  "C:\Documents and Settings\Administrator\My             /
//                    Documents\MyWirelessApp Demo Non Beacon                 /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\PLM\Source\Display\Display.c" -D          /
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
//                    (Coordinator)\Debug\List\Display.s                      /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME Display

        EXTERN DelayMs
        EXTERN DelayUs
        EXTERN FLib_MemCpy
        EXTERN Gpio_GetPortData
        EXTERN Gpio_SetPinData
        EXTERN Gpio_SetPinDir
        EXTERN Gpio_SetPinFunction
        EXTERN Gpio_SetPinReadSource
        EXTERN Gpio_SetPortData
        EXTERN Gpio_SetPortDir
        EXTERN Gpio_SetPortFunction
        EXTERN Gpio_WrPortSetting
        EXTERN TS_CreateTask
        EXTERN TS_SendEvent
        EXTERN __aeabi_idiv
        EXTERN __aeabi_idivmod
        EXTERN __aeabi_memcpy4
        EXTERN gLCDNormalFont
        EXTERN gLCDNormalIndex
        EXTERN gLCDVerdanaFont
        EXTERN gLCDVerdanaIndex

        PUBLIC LCD_CheckError
        PUBLIC LCD_ClearDisplay
        PUBLIC LCD_ClearLine
        PUBLIC LCD_ClearPage
        PUBLIC LCD_Init
        PUBLIC LCD_SetBacklight
        PUBLIC LCD_SetFont
        PUBLIC LCD_Task
        PUBLIC LCD_TaskInit
        PUBLIC LCD_WriteBitmap
        PUBLIC LCD_WriteBytes
        PUBLIC LCD_WriteCharacter
        PUBLIC LCD_WriteCommand
        PUBLIC LCD_WriteData
        PUBLIC LCD_WritePixel
        PUBLIC LCD_WriteString
        PUBLIC LCD_WriteStringValue
        PUBLIC LCD_WriteSymbol
        PUBLIC aLCDFont
        PUBLIC gLCDTaskID
        PUBLIC gaHexValue

// C:\Documents and Settings\Administrator\My Documents\MyWirelessApp Demo Non Beacon (Coordinator)\MyWirelessApp Demo Non Beacon (Coordinator)\PLM\Source\Display\Display.c
//    1 /************************************************************************************
//    2 * This is the source file for Display Driver.
//    3 *
//    4 *
//    5 * (c) Copyright 2008, Freescale, Inc.  All rights reserved.
//    6 *
//    7 *
//    8 * No part of this document must be reproduced in any form - including copied,
//    9 * transcribed, printed or by any electronic means - without specific written
//   10 * permission from Freescale Semiconductor.
//   11 ************************************************************************************/
//   12 
//   13 #include "EmbeddedTypes.h"
//   14 #include "Display.h"
//   15 #include "LCD_Font.h"
//   16 #include "TS_Interface.h"
//   17 #include "GPIO_Interface.h"
//   18 #include "Delay.h"
//   19 #include "FunctionLib.h"
//   20 
//   21 
//   22 #ifndef gZtcIncluded_d
//   23 #define gZtcIncluded_d FALSE
//   24 #endif
//   25 
//   26 #ifndef gMacStandAlone_d
//   27 #define gMacStandAlone_d FALSE
//   28 #endif
//   29 
//   30 #ifndef gBeeStackIncluded_d
//   31 #define gBeeStackIncluded_d FALSE
//   32 #endif
//   33 
//   34 #ifndef ECNetIncluded_d
//   35 #define ECNetIncluded_d FALSE
//   36 #endif
//   37 
//   38 #ifndef SynkroIncluded_d
//   39 #define SynkroIncluded_d FALSE
//   40 #endif
//   41 
//   42 #ifndef gRF4CEIncluded_d
//   43 #define gRF4CEIncluded_d FALSE
//   44 #endif 
//   45 
//   46 #if gMacStandAlone_d
//   47 #include "Mac_Globals.h"
//   48 #endif
//   49 
//   50 #if gBeeStackIncluded_d
//   51 #include "beestack_globals.h"
//   52 #endif
//   53 
//   54 #if ECNetIncluded_d
//   55 #include "ECNet_Globals.h"
//   56 #endif
//   57 
//   58 #if SynkroIncluded_d
//   59 #include "NwkGlobals.h"
//   60 #endif
//   61 
//   62 #if gRF4CEIncluded_d
//   63 #include "NwkGlobals.h"
//   64 #endif 
//   65 
//   66 #if gZtcIncluded_d
//   67 #include "ZtcInterface.h"
//   68 #endif
//   69 
//   70 
//   71 
//   72 #if (gLCDSupported_d == 1)
//   73 
//   74 /************************************************************************************
//   75 *************************************************************************************
//   76 * Private macros
//   77 *************************************************************************************
//   78 ************************************************************************************/
//   79 
//   80 #define gLcdBackLightEnabled_d TRUE
//   81 
//   82 /* pin defines */
//   83 
//   84 /* D0  = SPI_SS    (GPIO  4) , PORT LO */
//   85 /* D1  = SPI_MISO  (GPIO  5) , PORT LO */
//   86 /* D2  = SPI_MOSI  (GPIO  6) , PORT LO */
//   87 /* D3  = SPI_SCK   (GPIO  7) , PORT LO */
//   88 /* D4  = ADC2      (GPIO  32), PORT HI */
//   89 /* D5  = ADC3      (GPIO  33), PORT HI */
//   90 /* D6  = ADC4      (GPIO  34), PORT HI */
//   91 /* D7  = ADC5      (GPIO  35), PORT HI */
//   92 #define LCD_D0  gGpioPin4_c
//   93 #define LCD_D1  gGpioPin5_c
//   94 #define LCD_D2  gGpioPin6_c
//   95 #define LCD_D3  gGpioPin7_c
//   96 #define LCD_D4  gGpioPin32_c
//   97 #define LCD_D5  gGpioPin33_c
//   98 #define LCD_D6  gGpioPin34_c
//   99 #define LCD_D7  gGpioPin35_c
//  100 
//  101 #define LCD_DATA_LO_MASK  0x000000F0
//  102 #define LCD_DATA_LO_PORT  gGpioPort0_c
//  103 #define LCD_DATA_LO_WRITE(x) (x)<<4
//  104 #define LCD_DATA_LO_READ(x)  (x)>>4
//  105 
//  106 #define LCD_DATA_HI_MASK  0x0000000F
//  107 #define LCD_DATA_HI_PORT  gGpioPort1_c
//  108 #define LCD_DATA_HI_WRITE(x) (x)>>4
//  109 #define LCD_DATA_HI_READ(x)  (x)<<4
//  110 
//  111 /* A0     = UART2_RTS (GPIO  21)   inverted, 0-data, 1-command */
//  112 /* RD     = TMR0      (GPIO  8)    double inverted, active high */
//  113 /* WR     = TMR1      (GPIO  9)    double inverted, active high */
//  114 /* CS     = UART2_CTS (GPIO  20)   double inverted, active high */
//  115 /* BL_PWM = TMR2      (GPIO  10)   1 - light, 0 - dark or PWM variable duty cycle */
//  116 /* RST    = RX_ON     (GPIO  45)   active low */
//  117 /* RST    = UART2_RX  (GPIO  19)   active low */
//  118 #define LCD_A0          gGpioPin21_c
//  119 #define LCD_RD          gGpioPin8_c
//  120 #define LCD_WR          gGpioPin9_c
//  121 #define LCD_CS          gGpioPin20_c
//  122 #define LCD_BL_PWM      gGpioPin10_c
//  123 #define LCD_RSTN        gGpioPin45_c
//  124 #define LCD_RSTN_debug  gGpioPin19_c
//  125 
//  126 
//  127 /* pin states */
//  128 #define LCD_A0_COMMAND  gGpioPinStateHigh_c
//  129 #define LCD_A0_DATA     gGpioPinStateLow_c
//  130 #define LCD_CS_ACTIVE   gGpioPinStateHigh_c
//  131 #define LCD_CS_INACTIVE gGpioPinStateLow_c
//  132 #define LCD_WR_ACTIVE   gGpioPinStateHigh_c
//  133 #define LCD_WR_INACTIVE gGpioPinStateLow_c
//  134 #define LCD_RD_ACTIVE   gGpioPinStateHigh_c
//  135 #define LCD_RD_INACTIVE gGpioPinStateLow_c
//  136 #define LCD_BL_ON       gGpioPinStateHigh_c
//  137 #define LCD_BL_OFF      gGpioPinStateLow_c
//  138 #define LCD_RSTN_IDLE   gGpioPinStateHigh_c
//  139 #define LCD_RSTN_RESET  gGpioPinStateLow_c
//  140 
//  141 #define ON                      1
//  142 #define OFF                     0
//  143 
//  144 #define mFontOffset_c          32
//  145 
//  146 /* number of columns to be cleared in LCD_Task */
//  147 #define mMaxDeleteColumns_c    32
//  148 #define mMaxLineNumber_c        8
//  149 #define mMaxQueueEntries_c     45
//  150 #define mEmptyQueue_c          0xFF
//  151 
//  152 /* number of characters to be displayed in LCD_Task */
//  153 #define mNumberOfCharToWrite_c  3
//  154 
//  155 /* symbol width in pixels */
//  156 #define mSymbolWidth            8
//  157 
//  158 /************************************************************************************
//  159 *************************************************************************************
//  160 * Private type definitions
//  161 *************************************************************************************
//  162 ************************************************************************************/
//  163 /* #pragma pack(1) */
//  164 
//  165 typedef struct displayParams_tag{
//  166   uint8_t currentXCoord;
//  167   uint8_t currentYCoord;
//  168   uint8_t currentLine;
//  169   /* Bitmask: 
//  170   *       line i is cleared, bit i from writtenLines is 0
//  171   *       line i is written, bit i from writtenLines is 1 
//  172   */
//  173   uint8_t writtenLines;
//  174   /* Bitmask: 
//  175   *       line i will not be written, bit i from linesToWrite is 0
//  176   *       line i will be written, bit i from linesToWrite is 1 
//  177   */
//  178   uint8_t linesToWrite;  
//  179   uint8_t linesWidthWritten[mMaxLineNumber_c];
//  180   uint8_t currentFontType;
//  181   uint8_t currentStringIndex;
//  182   uint8_t currentString[mMaxLineNumber_c][gMAX_LCD_CHARS_c];
//  183   uint8_t currentBitmap[mMaxLineNumber_c][gMAX_LCD_CHARS_c];  
//  184 }displayParams_t;
//  185 
//  186 typedef struct lineParams_tag{
//  187   uint8_t xCoord;
//  188   uint8_t yCoord;
//  189   uint8_t page;  
//  190 }lineParams_t;
//  191 
//  192 typedef struct pageParams_tag{
//  193   uint8_t xStartCoord;
//  194   uint8_t xEndCoord;
//  195   uint8_t yCoord;
//  196   uint8_t line;
//  197 }pageParams_t;
//  198 
//  199 typedef enum operation_tag{
//  200   gLCD_WriteOp_c = 0,
//  201   gLCD_ClearDisplayOp_c,
//  202   gLCD_ClearLineOp_c,
//  203   gLCD_WriteBitmapOp_c,  
//  204   gLCD_MaxOp_c = 0xFF
//  205 }operation_t;
//  206 
//  207 typedef struct opLine_tag{
//  208   operation_t opQueue;
//  209   uint8_t lineQueue;  
//  210 }opLine_t;
//  211 
//  212 typedef struct queue_tag{
//  213   uint8_t head;
//  214   uint8_t tail;
//  215   opLine_t opLine[mMaxQueueEntries_c];
//  216 }queue_t;
//  217 
//  218 /* #pragma pack() */
//  219 
//  220 /************************************************************************************
//  221 *************************************************************************************
//  222 * Private prototypes
//  223 *************************************************************************************
//  224 ************************************************************************************/
//  225 
//  226 void LCD_Task(event_t events);
//  227 void LCD_TaskInit(void);
//  228 void LCD_SetBacklight(uint8_t brightnessValue);
//  229 void LCD_WritePixel(uint8_t xStartCoord, uint8_t yStartCoord, bool_t mode);
//  230 void LCD_WriteCharacter(uint8_t symbol, uint8_t xCoord, uint8_t yCoord);
//  231 void LCD_WriteSymbol(uint8_t index, uint8_t xCoord, uint8_t yCoord, uint8_t* bitmap);
//  232 void LCD_ClearPage(uint8_t startXCoord, uint8_t endXCoord, uint8_t yCoord);
//  233 uint8_t LCD_ClearLine(uint8_t line);
//  234 
//  235 static void ProcessOperation(opLine_t operationAndLine); 
//  236 static void SendData(uint8_t data);
//  237 static void SetHiZ(void);
//  238 static void SetOutput(void);
//  239 static void InitDisplayWrite(uint8_t xStartCoord, uint8_t yStartCoord);
//  240 static uint8_t ReadData(void);
//  241 static uint8_t GetData(void);
//  242 static uint8_t GetStrlen(const uint8_t *pString);
//  243 
//  244 static void     InitQueue(void);
//  245 static bool_t   AddToQueue(opLine_t operationLine);
//  246 static opLine_t RemoveFromQueue(void);
//  247 static bool_t   IsQueueEmpty(void);
//  248 static bool_t   IsQueueFull(void);
//  249 
//  250 /************************************************************************************
//  251 *************************************************************************************
//  252 * Private memory declarations
//  253 *************************************************************************************
//  254 ************************************************************************************/
//  255 

        SECTION `.data`:DATA:NOROOT(2)
//  256 static displayParams_t mDisplayParams = {
mDisplayParams:
        DATA
        DC8 0, 0, 0, 255, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        DC8 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
//  257   /* currentXCoord */
//  258   0x00,
//  259   /* currentYCoord */
//  260   0x00,
//  261   /* currentLine */
//  262   0x00,
//  263   /* writtenLines */
//  264   0xFF,
//  265   /* linesToWrite */
//  266   0x00,
//  267   /* linesWidthWritten */
//  268   0x00,
//  269   /* currentFontType */
//  270   0x00,
//  271   /* currentStringIndex */
//  272   0x00,  
//  273   /* currentString */
//  274   0x00,
//  275   /* currentBitmap */
//  276   0x00
//  277 };
//  278 

        SECTION `.data`:DATA:NOROOT(2)
//  279 static lineParams_t mLineParams[mMaxLineNumber_c] = {
mLineParams:
        DATA
        DC8 0, 0, 0, 0, 8, 1, 0, 16, 2, 0, 24, 3, 0, 32, 4, 0, 40, 5, 0, 48, 6
        DC8 0, 56, 7
//  280   {0, 0, 0},
//  281   {0, 8, 1},
//  282   {0, 16, 2},
//  283   {0, 24, 3},
//  284   {0, 32, 4},
//  285   {0, 40, 5},
//  286   {0, 48, 6},
//  287   {0, 56, 7},
//  288 };  
//  289 

        SECTION `.data`:DATA:NOROOT(0)
//  290 static bool_t mOperationCompleted = TRUE;
mOperationCompleted:
        DATA
        DC8 1
//  291 

        SECTION `.bss`:DATA:NOROOT(2)
//  292 static queue_t mQueue;
mQueue:
        DS8 92
//  293 
//  294 /* after initialization, all LCD lines must be erased */

        SECTION `.bss`:DATA:NOROOT(0)
//  295 static bool_t mIsLcdInitialized = FALSE;
mIsLcdInitialized:
        DS8 1
//  296 
//  297 /* error indicator, used for error reporting */

        SECTION `.bss`:DATA:NOROOT(0)
//  298 static volatile lcdError_t mErrorIndicator = gLCD_NoError_c;
mErrorIndicator:
        DS8 1
//  299 

        SECTION `.bss`:DATA:NOROOT(2)
//  300 static uint8_t* mReceivedBitmap = NULL;
mReceivedBitmap:
        DS8 4

        SECTION `.bss`:DATA:NOROOT(2)
//  301 static uint8_t  mBitmapSpace[] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
mBitmapSpace:
        DS8 8
//  302 
//  303 /******************************************************************************
//  304 *******************************************************************************
//  305 * Public memory definitions
//  306 *******************************************************************************
//  307 ******************************************************************************/
//  308 

        SECTION `.bss`:DATA:NOROOT(0)
//  309 tsTaskID_t gLCDTaskID;
gLCDTaskID:
        DS8 1

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Wrong line">`:
        DATA
        DC8 "Wrong line"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Wrong line">_1`:
        DATA
        DC8 "Wrong line"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Format unknow">`:
        DATA
        DC8 "Format unknow"
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant {83, 105, 122, 101, 32, 78, 111, 11`:
        DATA
        DC8 83, 105, 122, 101, 32, 78, 111, 116, 32, 86, 97, 108, 105, 100, 42
        DC8 42

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant {255, 255}>`:
        DATA
        DC8 255, 255, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
//  310 const uint8_t gaHexValue[] = "0123456789ABCDEF";
gaHexValue:
        DATA
        DC8 "0123456789ABCDEF"
        DC8 0, 0, 0
//  311 

        SECTION `.rodata`:CONST:NOROOT(2)
//  312 const font_t aLCDFont[gLCDNumFonts_c] = 
aLCDFont:
        DATA
        DC32 gLCDNormalIndex, gLCDNormalFont
        DC8 1, 0, 0, 0
        DC32 gLCDVerdanaIndex, gLCDVerdanaFont
        DC8 2, 0, 0, 0
//  313 {
//  314   /* character font with fixed width */ 
//  315   {gLCDNormalIndex,  gLCDNormalFont,  1},
//  316   /* character font with variable width */ 
//  317   {gLCDVerdanaIndex, gLCDVerdanaFont, 2}   
//  318 };
//  319 
//  320 /************************************************************************************
//  321 *************************************************************************************
//  322 * Public functions
//  323 *************************************************************************************
//  324 ************************************************************************************/
//  325 
//  326 /******************************************************************************
//  327 * This function initializes the display
//  328 *
//  329 * Interface assumptions:
//  330 *
//  331 *
//  332 * Return value:
//  333 * None
//  334 *
//  335 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  336 void LCD_Init(void)
//  337 {
LCD_Init:
        PUSH     {R7,LR}
//  338 #if ((gZtcIncluded_d ==TRUE) && (gSAPMessagesEnableLlc_d == TRUE))
//  339     uint8_t ctr;
//  340 #endif /* ((gZtcIncluded_d ==TRUE) && (gSAPMessagesEnableLlc_d == TRUE)) */     
//  341 
//  342     Gpio_SetPinFunction(LCD_WR, gGpioNormalMode_c);
        MOVS     R1,#+0
        MOVS     R0,#+9
        BL       Gpio_SetPinFunction
//  343     Gpio_SetPinFunction(LCD_CS, gGpioNormalMode_c);
        MOVS     R1,#+0
        MOVS     R0,#+20
        BL       Gpio_SetPinFunction
//  344     Gpio_SetPinFunction(LCD_RD, gGpioNormalMode_c);
        MOVS     R1,#+0
        MOVS     R0,#+8
        BL       Gpio_SetPinFunction
//  345     Gpio_SetPinFunction(LCD_A0, gGpioNormalMode_c);
        MOVS     R1,#+0
        MOVS     R0,#+21
        BL       Gpio_SetPinFunction
//  346     Gpio_SetPinFunction(LCD_RSTN, gGpioNormalMode_c);
        MOVS     R1,#+0
        MOVS     R0,#+45
        BL       Gpio_SetPinFunction
//  347     Gpio_SetPinFunction(LCD_RSTN_debug, gGpioNormalMode_c);
        MOVS     R1,#+0
        MOVS     R0,#+19
        BL       Gpio_SetPinFunction
//  348 
//  349     Gpio_SetPinData(LCD_WR, LCD_WR_INACTIVE);
        MOVS     R1,#+0
        MOVS     R0,#+9
        BL       Gpio_SetPinData
//  350     Gpio_SetPinData(LCD_CS, LCD_CS_INACTIVE);
        MOVS     R1,#+0
        MOVS     R0,#+20
        BL       Gpio_SetPinData
//  351     Gpio_SetPinData(LCD_RD, LCD_RD_INACTIVE);
        MOVS     R1,#+0
        MOVS     R0,#+8
        BL       Gpio_SetPinData
//  352     Gpio_SetPinData(LCD_A0, LCD_A0_COMMAND);
        MOVS     R1,#+1
        MOVS     R0,#+21
        BL       Gpio_SetPinData
//  353     Gpio_SetPinData(LCD_RSTN, LCD_RSTN_IDLE);
        MOVS     R1,#+1
        MOVS     R0,#+45
        BL       Gpio_SetPinData
//  354     Gpio_SetPinData(LCD_RSTN_debug, LCD_RSTN_IDLE);
        MOVS     R1,#+1
        MOVS     R0,#+19
        BL       Gpio_SetPinData
//  355 
//  356     /* define the LCD pins as output pins */
//  357     (void)Gpio_SetPinReadSource(LCD_CS,     gGpioPinReadReg_c);
        MOVS     R1,#+1
        MOVS     R0,#+20
        BL       Gpio_SetPinReadSource
//  358     (void)Gpio_SetPinReadSource(LCD_A0,     gGpioPinReadReg_c);
        MOVS     R1,#+1
        MOVS     R0,#+21
        BL       Gpio_SetPinReadSource
//  359     (void)Gpio_SetPinReadSource(LCD_RD,     gGpioPinReadReg_c);
        MOVS     R1,#+1
        MOVS     R0,#+8
        BL       Gpio_SetPinReadSource
//  360     (void)Gpio_SetPinReadSource(LCD_WR,     gGpioPinReadReg_c);
        MOVS     R1,#+1
        MOVS     R0,#+9
        BL       Gpio_SetPinReadSource
//  361     (void)Gpio_SetPinReadSource(LCD_BL_PWM, gGpioPinReadReg_c);
        MOVS     R1,#+1
        MOVS     R0,#+10
        BL       Gpio_SetPinReadSource
//  362     (void)Gpio_SetPinReadSource(LCD_RSTN,   gGpioPinReadReg_c);
        MOVS     R1,#+1
        MOVS     R0,#+45
        BL       Gpio_SetPinReadSource
//  363     (void)Gpio_SetPinReadSource(LCD_RSTN_debug,   gGpioPinReadReg_c);
        MOVS     R1,#+1
        MOVS     R0,#+19
        BL       Gpio_SetPinReadSource
//  364 
//  365     (void)Gpio_SetPinDir(LCD_CS,     gGpioDirOut_c);
        MOVS     R1,#+1
        MOVS     R0,#+20
        BL       Gpio_SetPinDir
//  366     (void)Gpio_SetPinDir(LCD_A0,     gGpioDirOut_c);
        MOVS     R1,#+1
        MOVS     R0,#+21
        BL       Gpio_SetPinDir
//  367     (void)Gpio_SetPinDir(LCD_RD,     gGpioDirOut_c);
        MOVS     R1,#+1
        MOVS     R0,#+8
        BL       Gpio_SetPinDir
//  368     (void)Gpio_SetPinDir(LCD_WR,     gGpioDirOut_c);
        MOVS     R1,#+1
        MOVS     R0,#+9
        BL       Gpio_SetPinDir
//  369     (void)Gpio_SetPinDir(LCD_BL_PWM, gGpioDirOut_c);
        MOVS     R1,#+1
        MOVS     R0,#+10
        BL       Gpio_SetPinDir
//  370     (void)Gpio_SetPinDir(LCD_RSTN,   gGpioDirOut_c);
        MOVS     R1,#+1
        MOVS     R0,#+45
        BL       Gpio_SetPinDir
//  371     (void)Gpio_SetPinDir(LCD_RSTN_debug,   gGpioDirOut_c);
        MOVS     R1,#+1
        MOVS     R0,#+19
        BL       Gpio_SetPinDir
//  372 
//  373     /* data pins */
//  374 #if gLCDGpioPinMode_c
//  375     (void)Gpio_SetPinFunction(LCD_D0,      gGpioNormalMode_c);
//  376     (void)Gpio_SetPinFunction(LCD_D1,      gGpioNormalMode_c);
//  377     (void)Gpio_SetPinFunction(LCD_D2,      gGpioNormalMode_c);
//  378     (void)Gpio_SetPinFunction(LCD_D3,      gGpioNormalMode_c);
//  379     (void)Gpio_SetPinFunction(LCD_D4,      gGpioNormalMode_c);
//  380     (void)Gpio_SetPinFunction(LCD_D5,      gGpioNormalMode_c);
//  381     (void)Gpio_SetPinFunction(LCD_D6,      gGpioNormalMode_c);
//  382     (void)Gpio_SetPinFunction(LCD_D7,      gGpioNormalMode_c);
//  383 
//  384     /* define data pins as inputs */
//  385     (void)Gpio_EnPinPullup(LCD_D0,      TRUE);
//  386     (void)Gpio_EnPinPullup(LCD_D1,      TRUE);
//  387     (void)Gpio_EnPinPullup(LCD_D2,      TRUE);
//  388     (void)Gpio_EnPinPullup(LCD_D3,      TRUE);
//  389     (void)Gpio_EnPinPullup(LCD_D4,      TRUE);
//  390     (void)Gpio_EnPinPullup(LCD_D5,      TRUE);
//  391     (void)Gpio_EnPinPullup(LCD_D6,      TRUE);
//  392     (void)Gpio_EnPinPullup(LCD_D7,      TRUE);
//  393 
//  394     (void)Gpio_SelectPinPullup(LCD_D0,      gGpioPinPullup_c);
//  395     (void)Gpio_SelectPinPullup(LCD_D1,      gGpioPinPullup_c);
//  396     (void)Gpio_SelectPinPullup(LCD_D2,      gGpioPinPullup_c);
//  397     (void)Gpio_SelectPinPullup(LCD_D3,      gGpioPinPullup_c);
//  398     (void)Gpio_SelectPinPullup(LCD_D4,      gGpioPinPullup_c);
//  399     (void)Gpio_SelectPinPullup(LCD_D5,      gGpioPinPullup_c);
//  400     (void)Gpio_SelectPinPullup(LCD_D6,      gGpioPinPullup_c);
//  401     (void)Gpio_SelectPinPullup(LCD_D7,      gGpioPinPullup_c);
//  402 
//  403     (void)Gpio_EnPinPuKeeper(LCD_D0,      TRUE);
//  404     (void)Gpio_EnPinPuKeeper(LCD_D1,      TRUE);
//  405     (void)Gpio_EnPinPuKeeper(LCD_D2,      TRUE);
//  406     (void)Gpio_EnPinPuKeeper(LCD_D3,      TRUE);
//  407     (void)Gpio_EnPinPuKeeper(LCD_D4,      TRUE);
//  408     (void)Gpio_EnPinPuKeeper(LCD_D5,      TRUE);
//  409     (void)Gpio_EnPinPuKeeper(LCD_D6,      TRUE);
//  410     (void)Gpio_EnPinPuKeeper(LCD_D7,      TRUE);
//  411 
//  412     (void)Gpio_SetPinReadSource(LCD_D0,      gGpioPinReadPad_c);
//  413     (void)Gpio_SetPinReadSource(LCD_D1,      gGpioPinReadPad_c);
//  414     (void)Gpio_SetPinReadSource(LCD_D2,      gGpioPinReadPad_c);
//  415     (void)Gpio_SetPinReadSource(LCD_D3,      gGpioPinReadPad_c);
//  416     (void)Gpio_SetPinReadSource(LCD_D4,      gGpioPinReadPad_c);
//  417     (void)Gpio_SetPinReadSource(LCD_D5,      gGpioPinReadPad_c);
//  418     (void)Gpio_SetPinReadSource(LCD_D6,      gGpioPinReadPad_c);
//  419     (void)Gpio_SetPinReadSource(LCD_D7,      gGpioPinReadPad_c);
//  420 
//  421     (void)Gpio_SetPinDir(LCD_D0,      gGpioDirIn_c);
//  422     (void)Gpio_SetPinDir(LCD_D1,      gGpioDirIn_c);
//  423     (void)Gpio_SetPinDir(LCD_D2,      gGpioDirIn_c);
//  424     (void)Gpio_SetPinDir(LCD_D3,      gGpioDirIn_c);
//  425     (void)Gpio_SetPinDir(LCD_D4,      gGpioDirIn_c);
//  426     (void)Gpio_SetPinDir(LCD_D5,      gGpioDirIn_c);
//  427     (void)Gpio_SetPinDir(LCD_D6,      gGpioDirIn_c);
//  428     (void)Gpio_SetPinDir(LCD_D7,      gGpioDirIn_c);
//  429 #else /* gLCDGpioPinMode_c */
//  430     Gpio_SetPortFunction(LCD_DATA_LO_PORT, gGpioNormalMode_c, LCD_DATA_LO_MASK);
        MOVS     R2,#+240
        MOVS     R1,#+0
        MOVS     R0,#+0
        BL       Gpio_SetPortFunction
//  431     Gpio_SetPortFunction(LCD_DATA_HI_PORT, gGpioNormalMode_c, LCD_DATA_HI_MASK);
        MOVS     R2,#+15
        MOVS     R1,#+0
        MOVS     R0,#+1
        BL       Gpio_SetPortFunction
//  432 
//  433     Gpio_WrPortSetting(LCD_DATA_LO_PORT, gGpioPullUpEnAttr_c, LCD_DATA_LO_MASK, LCD_DATA_LO_MASK);
        MOVS     R3,#+240
        MOVS     R2,#+240
        MOVS     R1,#+3
        MOVS     R0,#+0
        BL       Gpio_WrPortSetting
//  434     Gpio_WrPortSetting(LCD_DATA_HI_PORT, gGpioPullUpEnAttr_c, LCD_DATA_HI_MASK, LCD_DATA_HI_MASK);
        MOVS     R3,#+15
        MOVS     R2,#+15
        MOVS     R1,#+3
        MOVS     R0,#+1
        BL       Gpio_WrPortSetting
//  435 
//  436     Gpio_WrPortSetting(LCD_DATA_LO_PORT, gGpioPullUpSelAttr_c, LCD_DATA_LO_MASK, LCD_DATA_LO_MASK);
        MOVS     R3,#+240
        MOVS     R2,#+240
        MOVS     R1,#+4
        MOVS     R0,#+0
        BL       Gpio_WrPortSetting
//  437     Gpio_WrPortSetting(LCD_DATA_HI_PORT, gGpioPullUpSelAttr_c, LCD_DATA_HI_MASK, LCD_DATA_HI_MASK);
        MOVS     R3,#+15
        MOVS     R2,#+15
        MOVS     R1,#+4
        MOVS     R0,#+1
        BL       Gpio_WrPortSetting
//  438 
//  439     Gpio_WrPortSetting(LCD_DATA_LO_PORT, gGpioPullUpKeepAttr_c, LCD_DATA_LO_MASK, LCD_DATA_LO_MASK);
        MOVS     R3,#+240
        MOVS     R2,#+240
        MOVS     R1,#+6
        MOVS     R0,#+0
        BL       Gpio_WrPortSetting
//  440     Gpio_WrPortSetting(LCD_DATA_HI_PORT, gGpioPullUpKeepAttr_c, LCD_DATA_HI_MASK, LCD_DATA_HI_MASK);
        MOVS     R3,#+15
        MOVS     R2,#+15
        MOVS     R1,#+6
        MOVS     R0,#+1
        BL       Gpio_WrPortSetting
//  441     
//  442     Gpio_WrPortSetting(LCD_DATA_LO_PORT, gGpioInputDataSelAttr_c, ~LCD_DATA_LO_MASK, LCD_DATA_LO_MASK);
        MOVS     R3,#+240
        MOVS     R2,#+240
        MVNS     R2,R2            ;; #-241
        MOVS     R1,#+2
        MOVS     R0,#+0
        BL       Gpio_WrPortSetting
//  443     Gpio_WrPortSetting(LCD_DATA_HI_PORT, gGpioInputDataSelAttr_c, ~LCD_DATA_HI_MASK, LCD_DATA_HI_MASK);
        MOVS     R3,#+15
        MOVS     R2,#+15
        MVNS     R2,R2            ;; #-16
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       Gpio_WrPortSetting
//  444     
//  445     Gpio_SetPortDir(LCD_DATA_LO_PORT, ~LCD_DATA_LO_MASK, LCD_DATA_LO_MASK);
        MOVS     R2,#+240
        MOVS     R1,#+240
        MVNS     R1,R1            ;; #-241
        MOVS     R0,#+0
        BL       Gpio_SetPortDir
//  446     Gpio_SetPortDir(LCD_DATA_HI_PORT, ~LCD_DATA_HI_MASK, LCD_DATA_HI_MASK);
        MOVS     R2,#+15
        MOVS     R1,#+15
        MVNS     R1,R1            ;; #-16
        MOVS     R0,#+1
        BL       Gpio_SetPortDir
//  447 #endif /* gLCDGpioPinMode_c */
//  448 
//  449 
//  450   Gpio_SetPinData(LCD_RSTN, LCD_RSTN_RESET);
        MOVS     R1,#+0
        MOVS     R0,#+45
        BL       Gpio_SetPinData
//  451   Gpio_SetPinData(LCD_RSTN_debug, LCD_RSTN_RESET);
        MOVS     R1,#+0
        MOVS     R0,#+19
        BL       Gpio_SetPinData
//  452   DelayUs(10);
        MOVS     R0,#+10
        BL       DelayUs
//  453   Gpio_SetPinData(LCD_RSTN, LCD_RSTN_IDLE);
        MOVS     R1,#+1
        MOVS     R0,#+45
        BL       Gpio_SetPinData
//  454   Gpio_SetPinData(LCD_RSTN_debug, LCD_RSTN_IDLE);
        MOVS     R1,#+1
        MOVS     R0,#+19
        BL       Gpio_SetPinData
//  455   DelayMs(1);
        MOVS     R0,#+1
        BL       DelayMs
//  456 
//  457     /* Turn ON the VDD-VSS power keeping the RES pin = LOW for 0.5us */
//  458     /* When power is stabilized, relese the RES pin (RES pin = HIGH) */
//  459     
//  460     /* Default initialized state: 
//  461      - Display off
//  462 	   - Normal display (COM0 --> COM63)
//  463 	   - ADC select: normal (RAM column address n <-> SEGn)
//  464 	   - Power control register: Booster circuit OFF, Voltage regulator circuit OFF, Voltage follower circuit OFF
//  465 	   - LCD power supply bias rate = 1/9
//  466 	   - All-indicator lamps-on OFF
//  467 	   - Power saving clear
//  468 	   - V5 voltage regulator internal resistors Ra and Rb separation
//  469 	   - Output conditions of SEG and COM terminals SEG:V2/V3; COM: V1/V4
//  470 	   - Read modify write OFF
//  471 	   - Static indicator OFF
//  472 	   - Display start line set to first line
//  473 	   - Column address set to Address 0
//  474 	   - Page address set to Page 0
//  475 	   - Common output status normal
//  476 	   - V5 voltage regulator internal resistor ratio set mode clear
//  477 	   - Electronic volume register set mode clear
//  478 	   - Test mode clear 
//  479     */
//  480 
//  481     /* reset display */
//  482     LCD_WriteCommand(gLCDResetCommand_c);
        MOVS     R0,#+226
        BL       LCD_WriteCommand
//  483     DelayUs(10);
        MOVS     R0,#+10
        BL       DelayUs
//  484 
//  485     /* set LCD bias to 1/9 */
//  486     LCD_WriteCommand(gLCD19BiasCommand_c);
        MOVS     R0,#+162
        BL       LCD_WriteCommand
//  487 
//  488     /* set ADC selection to normal: RAM column address n <-> SEGn */
//  489     /* LCD_WriteCommand(gLCDADCNormalCommand_c); */
//  490     LCD_WriteCommand(gLCDADCReverseCommand_c);
        MOVS     R0,#+161
        BL       LCD_WriteCommand
//  491 
//  492     /* set scan direction of the COM to normal: COM0 --> COM63 */
//  493     LCD_WriteCommand(gLCDComNormalCommand_c);
        MOVS     R0,#+192
        BL       LCD_WriteCommand
//  494 
//  495     /* set the Rb/Ra ratio for V5 to medium (D2D1D0 = 0b100) */
//  496     LCD_WriteCommand( gLCDDefaultRatioCommand_c | (gLCDRatioValue_c & 0x07) );
        MOVS     R0,#+36
        BL       LCD_WriteCommand
//  497 
//  498     /* enable the electronic volume register set command */
//  499     /* this command must always be followed by an electronic volume register set command */
//  500     LCD_WriteCommand(gLCDElectronicVolumeModeSetCommand_c);
        MOVS     R0,#+129
        BL       LCD_WriteCommand
//  501     
//  502     LCD_WriteCommand(gLCDElectronicVolumeInitCommand_c);
        MOVS     R0,#+48
        BL       LCD_WriteCommand
//  503 
//  504 
//  505     /* disable booster circuit, disable voltage regulator circuit, disable voltage follower circuit */
//  506     LCD_WriteCommand(0x2F);
        MOVS     R0,#+47
        BL       LCD_WriteCommand
//  507     DelayUs(10);
        MOVS     R0,#+10
        BL       DelayUs
//  508     /** turn ON */
//  509     LCD_WriteCommand(gLCDDisplayOnCommand_c);
        MOVS     R0,#+175
        BL       LCD_WriteCommand
//  510     DelayUs(10);
        MOVS     R0,#+10
        BL       DelayUs
//  511     
//  512     /* create LCD task */
//  513     LCD_TaskInit();
        BL       LCD_TaskInit
//  514     
//  515     /* turn on the backlight */
//  516     LCD_SetBacklight(1);
        MOVS     R0,#+1
        BL       LCD_SetBacklight
//  517     
//  518     /* set default font */
//  519     (void)LCD_SetFont(gLCD_NormalFont_c);
        MOVS     R0,#+0
        BL       LCD_SetFont
//  520     InitQueue();  
        BL       InitQueue
//  521     mIsLcdInitialized = FALSE;
        LDR      R0,??DataTable2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  522     /* clear display */
//  523 #if ((gZtcIncluded_d ==TRUE) && (gSAPMessagesEnableLlc_d == TRUE))
//  524     /* During test mode, the LCD operation queue is not used. */
//  525     /* Because of this, LCD_ClearDisplay is not called. */
//  526     for(ctr = 0; ctr < gLCDMaxRamDataPages_c; ctr++)
//  527     {
//  528       LCD_ClearPage(0, gLCDMaxColumns_c, ctr*8);
//  529     }
//  530 #else
//  531     LCD_ClearDisplay();
        BL       LCD_ClearDisplay
//  532 #endif /* ((gZtcIncluded_d ==TRUE) && (gSAPMessagesEnableLlc_d == TRUE)) */    
//  533 }
        POP      {R0,R3}
        BX       R3               ;; return
//  534 
//  535 /******************************************************************************
//  536 * This function clears the display. In case an error occured during add to queue
//  537 * operation, the clear display operation will not execute.
//  538 *
//  539 * Interface assumptions:
//  540 *
//  541 *
//  542 * Return value:
//  543 * None
//  544 *
//  545 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  546 void LCD_ClearDisplay(void)
//  547 {
LCD_ClearDisplay:
        PUSH     {R7,LR}
//  548   opLine_t operationLine;
//  549   
//  550   /* clear the error indicator */
//  551   mErrorIndicator = gLCD_NoError_c;
        LDR      R0,??DataTable3
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  552   
//  553   operationLine.opQueue   = gLCD_ClearDisplayOp_c;
        MOV      R0,SP
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  554   operationLine.lineQueue = mMaxLineNumber_c;
        MOV      R0,SP
        MOVS     R1,#+8
        STRB     R1,[R0, #+1]
//  555   
//  556   if(TRUE == AddToQueue(operationLine))
        LDR      R0,[SP, #+0]
        BL       AddToQueue
        CMP      R0,#+1
        BNE      ??LCD_ClearDisplay_0
//  557   {
//  558     /* send a clear display event */
//  559     TS_SendEvent(gLCDTaskID, gLCDOpEvt_c);       
        MOVS     R1,#+1
        LDR      R0,??DataTable3_1
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
        B        ??LCD_ClearDisplay_1
//  560   }
//  561   else
//  562   {
//  563     /* LCD queue is full */
//  564     mErrorIndicator = gLCD_QueueFull_c;
??LCD_ClearDisplay_0:
        LDR      R0,??DataTable3
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  565   }  
//  566 }
??LCD_ClearDisplay_1:
        POP      {R0,R3}
        BX       R3               ;; return
//  567 
//  568 /******************************************************************************
//  569 * This function writes a string to the display. In case an error occured 
//  570 * during add to queue operation, the write string operation will not execute.
//  571 *
//  572 * Interface assumptions:
//  573 *
//  574 *
//  575 * Return value:
//  576 * None
//  577 *
//  578 *
//  579 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  580 void LCD_WriteString(uint8_t line, uint8_t *pstr)
//  581 {
LCD_WriteString:
        PUSH     {R0,R1,R4-R7,LR}
        SUB      SP,SP,#+20
//  582   uint8_t stringWidth = 0;
        MOVS     R0,#+0
        MOVS     R6,R0
//  583   uint8_t len, i;
//  584   uint8_t ctr;
//  585   uint8_t auxLine;
//  586   const uint8_t error[] = "Wrong line";
        ADD      R0,SP,#+8
        LDR      R1,??DataTable3_2
        MOVS     R2,#+11
        BL       __aeabi_memcpy4
//  587   opLine_t operationLine;
//  588   
//  589   /* clear the error indicator */
//  590   mErrorIndicator = gLCD_NoError_c;
        LDR      R0,??DataTable3
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  591   
//  592   /* in case of NULL pointers, just return */  
//  593   if(pstr == NULL)
        LDR      R0,[SP, #+24]
        CMP      R0,#+0
        BNE      .+4
        B        ??LCD_WriteString_0
//  594   {
//  595     return;
//  596   }  
//  597   
//  598   auxLine = line;
??LCD_WriteString_1:
        MOV      R0,SP
        LDRB     R0,[R0, #+20]
        MOVS     R5,R0
//  599   
//  600   /* in case a character height is bigger then 1, lines must have "height" offset between them */
//  601   if(aLCDFont[mDisplayParams.currentFontType].fontHeight > 1)
        LDR      R0,??DataTable3_3
        LDRB     R0,[R0, #+13]
        MOVS     R1,#+12
        MULS     R0,R1,R0
        LDR      R1,??DataTable3_4
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+8]
        CMP      R0,#+2
        BCC      ??LCD_WriteString_2
//  602   {
//  603     switch(auxLine)
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        MOVS     R0,R5
        CMP      R0,#+0
        CMP      R0,#+3
        BHI      ??LCD_WriteString_3
//  604     {
//  605       case 0:
//  606       case 1:
//  607       case 2:
//  608       case 3:        
//  609         auxLine *= aLCDFont[mDisplayParams.currentFontType].fontHeight;
??LCD_WriteString_4:
        LDR      R0,??DataTable3_3
        LDRB     R0,[R0, #+13]
        MOVS     R1,#+12
        MULS     R0,R1,R0
        LDR      R1,??DataTable3_4
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+8]
        MULS     R5,R0,R5
        B        ??LCD_WriteString_5
//  610         break;      
//  611       default:
//  612         auxLine = aLCDFont[mDisplayParams.currentFontType].fontHeight;
??LCD_WriteString_3:
        LDR      R0,??DataTable3_3
        LDRB     R0,[R0, #+13]
        MOVS     R1,#+12
        MULS     R0,R1,R0
        LDR      R1,??DataTable3_4
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+8]
        MOVS     R5,R0
//  613         pstr = (uint8_t*)error; 
        ADD      R0,SP,#+8
        STR      R0,[SP, #+24]
        B        ??LCD_WriteString_5
//  614         break;      
//  615     }        
//  616   }
//  617   else
//  618   {
//  619     if(line >= gLCDMaxRamDataPages_c)   
??LCD_WriteString_2:
        MOV      R0,SP
        LDRB     R0,[R0, #+20]
        CMP      R0,#+8
        BCC      ??LCD_WriteString_5
//  620     {
//  621       auxLine = 1;
        MOVS     R0,#+1
        MOVS     R5,R0
//  622       pstr = (uint8_t*)error; 
        ADD      R0,SP,#+8
        STR      R0,[SP, #+24]
//  623     }
//  624   }
//  625   
//  626   len = GetStrlen(pstr);
??LCD_WriteString_5:
        LDR      R0,[SP, #+24]
        BL       GetStrlen
        MOV      R1,SP
        STRB     R0,[R1, #+4]
//  627 
//  628   FLib_MemCpy(&mDisplayParams.currentString[auxLine], pstr, len);
        MOV      R0,SP
        LDRB     R2,[R0, #+4]
        LSLS     R2,R2,#+16       ;; ZeroExtS R2,R2,#+16,#+16
        LSRS     R2,R2,#+16
        LDR      R1,[SP, #+24]
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        MOVS     R0,#+16
        MULS     R0,R5,R0
        LDR      R3,??DataTable3_3
        ADDS     R0,R3,R0
        ADDS     R0,R0,#+15
        BL       FLib_MemCpy
//  629   
//  630   /* Clear the rest of the line */
//  631   if(len < gMAX_LCD_CHARS_c)
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        CMP      R0,#+16
        BCS      ??LCD_WriteString_6
//  632   {
//  633     for(ctr = len; ctr < gMAX_LCD_CHARS_c;ctr++)
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        MOVS     R7,R0
??LCD_WriteString_7:
        LSLS     R7,R7,#+24       ;; ZeroExtS R7,R7,#+24,#+24
        LSRS     R7,R7,#+24
        CMP      R7,#+16
        BCS      ??LCD_WriteString_6
//  634     {
//  635       mDisplayParams.currentString[auxLine][ctr]=' ';      
        LSLS     R7,R7,#+24       ;; ZeroExtS R7,R7,#+24,#+24
        LSRS     R7,R7,#+24
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        MOVS     R0,#+16
        MULS     R0,R5,R0
        LDR      R1,??DataTable3_3
        ADDS     R0,R1,R0
        ADDS     R0,R0,R7
        MOVS     R1,#+32
        STRB     R1,[R0, #+15]
//  636     }
        ADDS     R7,R7,#+1
        B        ??LCD_WriteString_7
//  637   }
//  638 
//  639   /* compute the width (in pixels) of the string that will be written */
//  640   for(i=0; i<gMAX_LCD_CHARS_c; i++)
??LCD_WriteString_6:
        MOVS     R0,#+0
        MOVS     R4,R0
??LCD_WriteString_8:
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+16
        BCS      ??LCD_WriteString_9
//  641   {
//  642     stringWidth += (aLCDFont[mDisplayParams.currentFontType].pFontIndexTable[mDisplayParams.currentString[auxLine][i] - mFontOffset_c + 1] - \ 
//  643                      aLCDFont[mDisplayParams.currentFontType].pFontIndexTable[mDisplayParams.currentString[auxLine][i] - mFontOffset_c]);    
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        MOVS     R0,#+16
        MULS     R0,R5,R0
        LDR      R1,??DataTable3_3
        ADDS     R0,R1,R0
        ADDS     R0,R0,R4
        LDRB     R0,[R0, #+15]
        MOVS     R1,#+2
        MULS     R0,R1,R0
        LDR      R1,??DataTable3_3
        LDRB     R1,[R1, #+13]
        MOVS     R2,#+12
        MULS     R1,R2,R1
        LDR      R2,??DataTable3_4
        LDR      R1,[R2, R1]
        ADDS     R0,R1,R0
        SUBS     R0,R0,#+62
        LDRH     R0,[R0, #+0]
        ADDS     R0,R6,R0
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        MOVS     R1,#+16
        MULS     R1,R5,R1
        LDR      R2,??DataTable3_3
        ADDS     R1,R2,R1
        ADDS     R1,R1,R4
        LDRB     R1,[R1, #+15]
        MOVS     R2,#+2
        MULS     R1,R2,R1
        LDR      R2,??DataTable3_3
        LDRB     R2,[R2, #+13]
        MOVS     R3,#+12
        MULS     R2,R3,R2
        LDR      R3,??DataTable3_4
        LDR      R2,[R3, R2]
        ADDS     R1,R2,R1
        SUBS     R1,R1,#+64
        LDRH     R1,[R1, #+0]
        SUBS     R6,R0,R1
//  644   }
        ADDS     R4,R4,#+1
        B        ??LCD_WriteString_8
//  645   /* if the width (in pixels) of the string that was written before on the same line is bigger than 
//  646    * the width of the string that is going to be written,
//  647    *  erase the line before write the string  */
//  648   if(stringWidth >= mDisplayParams.linesWidthWritten[auxLine])
??LCD_WriteString_9:
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        LDR      R0,??DataTable3_3
        ADDS     R0,R0,R5
        LDRB     R0,[R0, #+5]
        LSLS     R6,R6,#+24       ;; ZeroExtS R6,R6,#+24,#+24
        LSRS     R6,R6,#+24
        CMP      R6,R0
        BCC      ??LCD_WriteString_10
//  649   {
//  650     /* mark auxLine as a line to be written */
//  651     for(i = 0; i < aLCDFont[mDisplayParams.currentFontType].fontHeight; i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??LCD_WriteString_11:
        LDR      R0,??DataTable3_3
        LDRB     R0,[R0, #+13]
        MOVS     R1,#+12
        MULS     R0,R1,R0
        LDR      R1,??DataTable3_4
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+8]
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,R0
        BCS      ??LCD_WriteString_12
//  652     {
//  653       mDisplayParams.linesToWrite |= (1<<(auxLine+i));     
        LDR      R0,??DataTable3_3
        LDRB     R0,[R0, #+4]
        MOVS     R1,#+1
        ADDS     R2,R5,R4
        LSLS     R1,R1,R2
        ORRS     R1,R1,R0
        LDR      R0,??DataTable3_3
        STRB     R1,[R0, #+4]
//  654     }  
        ADDS     R4,R4,#+1
        B        ??LCD_WriteString_11
//  655   }
//  656   else
//  657   {
//  658     /* add clear line operation in mQueue */
//  659     /* add auxLine as a line to be cleared in mQueue */ 
//  660     for(i = 0; i < aLCDFont[mDisplayParams.currentFontType].fontHeight; i++)
??LCD_WriteString_10:
        MOVS     R0,#+0
        MOVS     R4,R0
??LCD_WriteString_13:
        LDR      R0,??DataTable3_3
        LDRB     R0,[R0, #+13]
        MOVS     R1,#+12
        MULS     R0,R1,R0
        LDR      R1,??DataTable3_4
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+8]
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,R0
        BCS      ??LCD_WriteString_12
//  661     {
//  662       operationLine.opQueue   = gLCD_ClearLineOp_c;
        MOV      R0,SP
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
//  663       operationLine.lineQueue = auxLine + i;  
        ADDS     R0,R5,R4
        MOV      R1,SP
        STRB     R0,[R1, #+1]
//  664       if(FALSE == AddToQueue(operationLine))
        LDR      R0,[SP, #+0]
        BL       AddToQueue
        CMP      R0,#+0
        BNE      ??LCD_WriteString_14
//  665       {
//  666         /* queue is full, report an error */
//  667         mErrorIndicator = gLCD_QueueFull_c;
        LDR      R0,??DataTable3
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  668         return;
        B        ??LCD_WriteString_0
//  669       }
//  670     }  
??LCD_WriteString_14:
        ADDS     R4,R4,#+1
        B        ??LCD_WriteString_13
//  671   }
//  672 
//  673   /* add write string operation in mQueue */
//  674   /* add auxLine as a line to be written in mQueue */ 
//  675   operationLine.opQueue   = gLCD_WriteOp_c;
??LCD_WriteString_12:
        MOV      R0,SP
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  676   operationLine.lineQueue = auxLine;  
        MOV      R0,SP
        STRB     R5,[R0, #+1]
//  677 
//  678   if(TRUE == AddToQueue(operationLine))
        LDR      R0,[SP, #+0]
        BL       AddToQueue
        CMP      R0,#+1
        BNE      ??LCD_WriteString_15
//  679   {
//  680     TS_SendEvent(gLCDTaskID, gLCDOpEvt_c);  
        MOVS     R1,#+1
        LDR      R0,??DataTable3_1
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
//  681   }  
//  682   else
//  683   {
//  684     /* queue is full, report an error */
//  685     mErrorIndicator = gLCD_QueueFull_c;
//  686     return;        
//  687   }
//  688 }
        B        ??LCD_WriteString_0
??LCD_WriteString_15:
        LDR      R0,??DataTable3
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
??LCD_WriteString_0:
        ADD      SP,SP,#+28
        POP      {R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2:
        DC32     mIsLcdInitialized
//  689 
//  690 /******************************************************************************
//  691 * This function writes a bitmap to a line of the display. In case an error occured 
//  692 * during add to queue operation, the write string operation will not execute.
//  693 *
//  694 * Interface assumptions:
//  695 *
//  696 *
//  697 * Return value:
//  698 * None
//  699 *
//  700 *
//  701 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  702 void LCD_WriteBitmap(                      
//  703   uint8_t *pstr,	  /* IN: Pointer to symbol index list to display */
//  704   uint8_t len,      /* IN: Length in bytes of the symbol index list */
//  705   uint8_t line,     /* IN: Line in display */
//  706   uint8_t *bitmap 	/* IN: Pointer to symbol table */   
//  707 )
//  708 {
LCD_WriteBitmap:
        PUSH     {R0,R4-R7,LR}
        SUB      SP,SP,#+24
        MOVS     R6,R1
        MOVS     R5,R2
        MOVS     R7,R3
//  709   uint8_t symbolWidth = 0;
        MOV      R0,SP
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
//  710   uint8_t ctr;
//  711   opLine_t operationLine;
//  712   const uint8_t error[] = "Wrong line";
        ADD      R0,SP,#+8
        LDR      R1,??DataTable3_5
        MOVS     R2,#+11
        BL       __aeabi_memcpy4
//  713   
//  714   /* in case of NULL pointers, just return */  
//  715   if((pstr == NULL) || (bitmap == NULL))
        LDR      R0,[SP, #+24]
        CMP      R0,#+0
        BEQ      ??LCD_WriteBitmap_0
        CMP      R7,#+0
        BNE      ??LCD_WriteBitmap_1
//  716   {
//  717     return;
??LCD_WriteBitmap_0:
        B        ??LCD_WriteBitmap_2
//  718   }
//  719   
//  720   /* in case of wrong line number, print an error message */
//  721   if(line >= gLCDMaxRamDataPages_c)
??LCD_WriteBitmap_1:
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        CMP      R5,#+8
        BCC      ??LCD_WriteBitmap_3
//  722   {
//  723     LCD_WriteString(1, (uint8_t *)&error);
        ADD      R1,SP,#+8
        MOVS     R0,#+1
        BL       LCD_WriteString
//  724     return;
        B        ??LCD_WriteBitmap_2
//  725   }
//  726   
//  727   /* validate the number of symbols to display */
//  728   /* only 16 symbols may be displayed */
//  729   if(len > gMAX_LCD_CHARS_c)
??LCD_WriteBitmap_3:
        LSLS     R6,R6,#+24       ;; ZeroExtS R6,R6,#+24,#+24
        LSRS     R6,R6,#+24
        CMP      R6,#+17
        BCC      ??LCD_WriteBitmap_4
//  730   {
//  731     len = gMAX_LCD_CHARS_c;
        MOVS     R0,#+16
        MOVS     R6,R0
//  732   }
//  733  
//  734   /* clear the error indicator */
//  735   mErrorIndicator = gLCD_NoError_c;
??LCD_WriteBitmap_4:
        LDR      R0,??DataTable3
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  736   /* retain the start address of the bitmap */
//  737   mReceivedBitmap = bitmap;
        LDR      R0,??DataTable3_6
        STR      R7,[R0, #+0]
//  738 
//  739   FLib_MemCpy(&mDisplayParams.currentBitmap[line], pstr, len);
        LSLS     R6,R6,#+24       ;; ZeroExtS R6,R6,#+24,#+24
        LSRS     R6,R6,#+24
        MOVS     R2,R6
        LSLS     R2,R2,#+16       ;; ZeroExtS R2,R2,#+16,#+16
        LSRS     R2,R2,#+16
        LDR      R1,[SP, #+24]
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        MOVS     R0,#+16
        MULS     R0,R5,R0
        LDR      R3,??DataTable3_3
        ADDS     R0,R3,R0
        ADDS     R0,R0,#+143
        BL       FLib_MemCpy
//  740   
//  741   /* Clear the rest of the line */
//  742   if(len < gMAX_LCD_CHARS_c)
        LSLS     R6,R6,#+24       ;; ZeroExtS R6,R6,#+24,#+24
        LSRS     R6,R6,#+24
        CMP      R6,#+16
        BCS      ??LCD_WriteBitmap_5
//  743   {
//  744     for(ctr = len; ctr < gMAX_LCD_CHARS_c;ctr++)
        MOVS     R4,R6
??LCD_WriteBitmap_6:
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+16
        BCS      ??LCD_WriteBitmap_5
//  745     {
//  746       mDisplayParams.currentBitmap[line][ctr] = 0xFF;      
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        MOVS     R0,#+16
        MULS     R0,R5,R0
        LDR      R1,??DataTable3_3
        ADDS     R0,R1,R0
        ADDS     R0,R0,R4
        ADDS     R0,R0,#+143
        MOVS     R1,#+255
        STRB     R1,[R0, #+0]
//  747     }
        ADDS     R4,R4,#+1
        B        ??LCD_WriteBitmap_6
//  748   }
//  749 
//  750   /* compute the width (in pixels) of the symbols that will be written */
//  751   symbolWidth = gMAX_LCD_CHARS_c * mSymbolWidth;
??LCD_WriteBitmap_5:
        MOV      R0,SP
        MOVS     R1,#+128
        STRB     R1,[R0, #+4]
//  752 
//  753   /* if the width (in pixels) of the symbols that were written before on the same line is bigger than 
//  754    * the width of the symbols that are going to be written,
//  755    *  erase the line before writing the symbols  */
//  756   if(symbolWidth >= mDisplayParams.linesWidthWritten[line])
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        LDR      R1,??DataTable3_3
        ADDS     R1,R1,R5
        LDRB     R1,[R1, #+5]
        CMP      R0,R1
        BCC      ??LCD_WriteBitmap_7
//  757   {
//  758     /* mark line as a line to be written */
//  759     mDisplayParams.linesToWrite |= (1<<line);         
        LDR      R0,??DataTable3_3
        LDRB     R0,[R0, #+4]
        MOVS     R1,#+1
        LSLS     R1,R1,R5
        ORRS     R1,R1,R0
        LDR      R0,??DataTable3_3
        STRB     R1,[R0, #+4]
        B        ??LCD_WriteBitmap_8
//  760   }
//  761   else
//  762   {
//  763     /* add clear line operation in mQueue */
//  764     /* add line as a line to be cleared in mQueue */ 
//  765     operationLine.opQueue   = gLCD_ClearLineOp_c;
??LCD_WriteBitmap_7:
        MOV      R0,SP
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
//  766     operationLine.lineQueue = line;  
        MOV      R0,SP
        STRB     R5,[R0, #+1]
//  767     if(FALSE == AddToQueue(operationLine))
        LDR      R0,[SP, #+0]
        BL       AddToQueue
        CMP      R0,#+0
        BNE      ??LCD_WriteBitmap_8
//  768     {
//  769       /* queue is full, report an error */
//  770       mErrorIndicator = gLCD_QueueFull_c;
        LDR      R0,??DataTable3
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  771       return;
        B        ??LCD_WriteBitmap_2
//  772     }
//  773   }
//  774 
//  775   /* add write bitmap operation in mQueue */
//  776   /* add line as a line to be written in mQueue */ 
//  777   operationLine.opQueue   = gLCD_WriteBitmapOp_c;
??LCD_WriteBitmap_8:
        MOV      R0,SP
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
//  778   operationLine.lineQueue = line;  
        MOV      R0,SP
        STRB     R5,[R0, #+1]
//  779 
//  780   if(TRUE == AddToQueue(operationLine))
        LDR      R0,[SP, #+0]
        BL       AddToQueue
        CMP      R0,#+1
        BNE      ??LCD_WriteBitmap_9
//  781   {
//  782     TS_SendEvent(gLCDTaskID, gLCDOpEvt_c);  
        MOVS     R1,#+1
        LDR      R0,??DataTable3_1
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
//  783   }  
//  784   else
//  785   {
//  786     /* queue is full, report an error */
//  787     mErrorIndicator = gLCD_QueueFull_c;
//  788     return;        
//  789   }
//  790 }
        B        ??LCD_WriteBitmap_2
??LCD_WriteBitmap_9:
        LDR      R0,??DataTable3
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
??LCD_WriteBitmap_2:
        ADD      SP,SP,#+28
        POP      {R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3:
        DC32     mErrorIndicator

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3_1:
        DC32     gLCDTaskID

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3_2:
        DC32     `?<Constant "Wrong line">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3_3:
        DC32     mDisplayParams

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3_4:
        DC32     aLCDFont

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3_5:
        DC32     `?<Constant "Wrong line">_1`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3_6:
        DC32     mReceivedBitmap
//  791 
//  792 /******************************************************************************
//  793 * This function write a string and a value in decimal or hexdecimal
//  794 * to the display
//  795 *
//  796 * Interface assumptions:
//  797 * The pstr must be zero-terminated.
//  798 *
//  799 * Return value:
//  800 * None
//  801 *
//  802 *
//  803 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  804 void LCD_WriteStringValue
//  805   (
//  806   uint8_t *pstr,     /* IN: Pointer to text string */
//  807   uint16_t value,    /* IN: Value */
//  808   uint8_t line, 	   /* IN: Line in display */
//  809   LCD_t numberFormat /* IN: Value to show in HEX or DEC */
//  810   )
//  811 {
LCD_WriteStringValue:
        PUSH     {R0,R2-R7,LR}
        SUB      SP,SP,#+48
        MOVS     R6,R1
//  812 
//  813   int16_t divDec=10000, divHex=16;
        LDR      R0,??DataTable4  ;; 0x2710
        MOVS     R7,R0
        MOV      R0,SP
        MOVS     R1,#+16
        STRH     R1,[R0, #+2]
//  814   uint8_t loop=5, i=0,counter=0, aH[6], aHex[6];
        MOV      R0,SP
        MOVS     R1,#+5
        STRB     R1,[R0, #+0]
        MOVS     R0,#+0
        MOVS     R5,R0
        MOVS     R0,#+0
        MOVS     R4,R0
//  815   uint8_t aDec[6], aString[17];
//  816   
//  817   /* clear the error indicator */
//  818   mErrorIndicator = gLCD_NoError_c;
        LDR      R0,??DataTable4_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  819 
//  820  if(numberFormat == gLCD_DecFormat_c) {
        ADD      R0,SP,#+56
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BEQ      .+4
        B        ??LCD_WriteStringValue_0
//  821     if(value < 100) {
        LSLS     R6,R6,#+16       ;; ZeroExtS R6,R6,#+16,#+16
        LSRS     R6,R6,#+16
        CMP      R6,#+100
        BCS      ??LCD_WriteStringValue_1
//  822       loop = 2;
        MOV      R0,SP
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
//  823       divDec = 10;
        MOVS     R0,#+10
        MOVS     R7,R0
        B        ??LCD_WriteStringValue_2
//  824     }
//  825     else if(value >= 100 && value <1000) {
??LCD_WriteStringValue_1:
        LSLS     R6,R6,#+16       ;; ZeroExtS R6,R6,#+16,#+16
        LSRS     R6,R6,#+16
        CMP      R6,#+100
        BCC      ??LCD_WriteStringValue_3
        MOVS     R0,#+250
        LSLS     R0,R0,#+2        ;; #+1000
        LSLS     R6,R6,#+16       ;; ZeroExtS R6,R6,#+16,#+16
        LSRS     R6,R6,#+16
        CMP      R6,R0
        BCS      ??LCD_WriteStringValue_3
//  826       loop = 3;
        MOV      R0,SP
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
//  827       divDec = 100;
        MOVS     R0,#+100
        MOVS     R7,R0
        B        ??LCD_WriteStringValue_2
//  828     }
//  829     else if(value >= 1000 && value <9999) {
??LCD_WriteStringValue_3:
        MOVS     R0,#+250
        LSLS     R0,R0,#+2        ;; #+1000
        LSLS     R6,R6,#+16       ;; ZeroExtS R6,R6,#+16,#+16
        LSRS     R6,R6,#+16
        CMP      R6,R0
        BCC      ??LCD_WriteStringValue_2
        LDR      R0,??DataTable5  ;; 0x270f
        LSLS     R6,R6,#+16       ;; ZeroExtS R6,R6,#+16,#+16
        LSRS     R6,R6,#+16
        CMP      R6,R0
        BCS      ??LCD_WriteStringValue_2
//  830       loop = 4;
        MOV      R0,SP
        MOVS     R1,#+4
        STRB     R1,[R0, #+0]
//  831       divDec = 1000;
        MOVS     R0,#+250
        LSLS     R0,R0,#+2        ;; #+1000
        MOVS     R7,R0
//  832     }
//  833 
//  834     for(i=0; i<loop; i++) {
??LCD_WriteStringValue_2:
        MOVS     R0,#+0
        MOVS     R5,R0
??LCD_WriteStringValue_4:
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        CMP      R5,R0
        BCS      ??LCD_WriteStringValue_5
//  835       if((value/divDec)!= 0) {
        LSLS     R6,R6,#+16       ;; ZeroExtS R6,R6,#+16,#+16
        LSRS     R6,R6,#+16
        MOVS     R0,R6
        LSLS     R7,R7,#+16       ;; SignExtS R7,R7,#+16,#+16
        ASRS     R7,R7,#+16
        MOVS     R1,R7
        BL       __aeabi_idiv
        CMP      R0,#+0
        BEQ      ??LCD_WriteStringValue_6
//  836         aDec[counter++] = (value/divDec) + 0x30;
        LSLS     R6,R6,#+16       ;; ZeroExtS R6,R6,#+16,#+16
        LSRS     R6,R6,#+16
        MOVS     R0,R6
        LSLS     R7,R7,#+16       ;; SignExtS R7,R7,#+16,#+16
        ASRS     R7,R7,#+16
        MOVS     R1,R7
        BL       __aeabi_idiv
        ADDS     R0,R0,#+48
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        ADD      R1,SP,#+4
        STRB     R0,[R1, R4]
        ADDS     R4,R4,#+1
//  837         value = value % divDec;
        LSLS     R6,R6,#+16       ;; ZeroExtS R6,R6,#+16,#+16
        LSRS     R6,R6,#+16
        MOVS     R0,R6
        LSLS     R7,R7,#+16       ;; SignExtS R7,R7,#+16,#+16
        ASRS     R7,R7,#+16
        MOVS     R1,R7
        BL       __aeabi_idivmod
        MOVS     R6,R1
        B        ??LCD_WriteStringValue_7
//  838       }
//  839       else {
//  840         aDec[counter++] = 0x30;
??LCD_WriteStringValue_6:
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        ADD      R0,SP,#+4
        MOVS     R1,#+48
        STRB     R1,[R0, R4]
        ADDS     R4,R4,#+1
//  841       }
//  842       divDec = divDec/10;
??LCD_WriteStringValue_7:
        LSLS     R7,R7,#+16       ;; SignExtS R7,R7,#+16,#+16
        ASRS     R7,R7,#+16
        MOVS     R0,R7
        MOVS     R1,#+10
        BL       __aeabi_idiv
        MOVS     R7,R0
//  843     }
        ADDS     R5,R5,#+1
        B        ??LCD_WriteStringValue_4
//  844     aDec[counter]='\0';
??LCD_WriteStringValue_5:
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        ADD      R0,SP,#+4
        MOVS     R1,#+0
        STRB     R1,[R0, R4]
//  845     counter=0;
        MOVS     R0,#+0
        MOVS     R4,R0
//  846     while (*pstr != '\0' && counter <gMAX_LCD_CHARS_c ) {
??LCD_WriteStringValue_8:
        LDR      R0,[SP, #+48]
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??LCD_WriteStringValue_9
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+16
        BCS      ??LCD_WriteStringValue_9
//  847       aString[counter++]=*pstr;
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        ADD      R0,SP,#+28
        LDR      R1,[SP, #+48]
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, R4]
        ADDS     R4,R4,#+1
//  848       pstr++;
        LDR      R0,[SP, #+48]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+48]
        B        ??LCD_WriteStringValue_8
//  849     }
//  850     i=0;
??LCD_WriteStringValue_9:
        MOVS     R0,#+0
        MOVS     R5,R0
//  851     while (aDec[i] != '\0' && counter <gMAX_LCD_CHARS_c ) {
??LCD_WriteStringValue_10:
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        ADD      R0,SP,#+4
        LDRB     R0,[R0, R5]
        CMP      R0,#+0
        BEQ      ??LCD_WriteStringValue_11
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+16
        BCS      ??LCD_WriteStringValue_11
//  852       aString[counter++]=aDec[i++];
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        ADD      R0,SP,#+28
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        ADD      R1,SP,#+4
        LDRB     R1,[R1, R5]
        STRB     R1,[R0, R4]
        ADDS     R5,R5,#+1
        ADDS     R4,R4,#+1
        B        ??LCD_WriteStringValue_10
//  853     }
//  854     aString[counter]='\0';
??LCD_WriteStringValue_11:
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        ADD      R0,SP,#+28
        MOVS     R1,#+0
        STRB     R1,[R0, R4]
//  855     LCD_WriteString( line, aString );
        ADD      R1,SP,#+28
        ADD      R0,SP,#+52
        LDRB     R0,[R0, #+0]
        BL       LCD_WriteString
        B        ??LCD_WriteStringValue_12
//  856   }
//  857   else if(numberFormat == gLCD_HexFormat_c) {
??LCD_WriteStringValue_0:
        ADD      R0,SP,#+56
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??LCD_WriteStringValue_13
//  858     do{
//  859       aH[i]=gaHexValue[value % divHex];
??LCD_WriteStringValue_14:
        LSLS     R6,R6,#+16       ;; ZeroExtS R6,R6,#+16,#+16
        LSRS     R6,R6,#+16
        MOVS     R0,R6
        MOV      R2,SP
        MOVS     R1,#+2
        LDRSH    R1,[R2, R1]
        BL       __aeabi_idivmod
        LDR      R0,??DataTable9
        LDRB     R0,[R0, R1]
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        ADD      R1,SP,#+20
        STRB     R0,[R1, R5]
//  860       value=value / divHex;
        LSLS     R6,R6,#+16       ;; ZeroExtS R6,R6,#+16,#+16
        LSRS     R6,R6,#+16
        MOVS     R0,R6
        MOV      R2,SP
        MOVS     R1,#+2
        LDRSH    R1,[R2, R1]
        BL       __aeabi_idiv
        MOVS     R6,R0
//  861       i++;
        ADDS     R5,R5,#+1
//  862     }
//  863     while(value > 15);
        LSLS     R6,R6,#+16       ;; ZeroExtS R6,R6,#+16,#+16
        LSRS     R6,R6,#+16
        CMP      R6,#+16
        BCS      ??LCD_WriteStringValue_14
//  864     aH[i]=gaHexValue[value];
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        ADD      R0,SP,#+20
        LSLS     R6,R6,#+16       ;; ZeroExtS R6,R6,#+16,#+16
        LSRS     R6,R6,#+16
        LDR      R1,??DataTable9
        LDRB     R1,[R1, R6]
        STRB     R1,[R0, R5]
//  865     counter=0;
        MOVS     R0,#+0
        MOVS     R4,R0
//  866     while(i > 0){
??LCD_WriteStringValue_15:
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        CMP      R5,#+1
        BCC      ??LCD_WriteStringValue_16
//  867       aHex[counter++]=aH[i--];
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        ADD      R0,SP,#+12
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        ADD      R1,SP,#+20
        LDRB     R1,[R1, R5]
        STRB     R1,[R0, R4]
        SUBS     R5,R5,#+1
        ADDS     R4,R4,#+1
        B        ??LCD_WriteStringValue_15
//  868     }
//  869 
//  870     aHex[counter++]=aH[0];
??LCD_WriteStringValue_16:
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        ADD      R0,SP,#+12
        MOV      R1,SP
        LDRB     R1,[R1, #+20]
        STRB     R1,[R0, R4]
        ADDS     R4,R4,#+1
//  871     aHex[counter]='\0';
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        ADD      R0,SP,#+12
        MOVS     R1,#+0
        STRB     R1,[R0, R4]
//  872 
//  873     counter=0;
        MOVS     R0,#+0
        MOVS     R4,R0
//  874     while (*pstr != '\0' && counter <gMAX_LCD_CHARS_c ) {
??LCD_WriteStringValue_17:
        LDR      R0,[SP, #+48]
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??LCD_WriteStringValue_18
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+16
        BCS      ??LCD_WriteStringValue_18
//  875       aString[counter++]=*pstr;
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        ADD      R0,SP,#+28
        LDR      R1,[SP, #+48]
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, R4]
        ADDS     R4,R4,#+1
//  876       pstr++;
        LDR      R0,[SP, #+48]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+48]
        B        ??LCD_WriteStringValue_17
//  877     }
//  878     i=0;
??LCD_WriteStringValue_18:
        MOVS     R0,#+0
        MOVS     R5,R0
//  879     while (aHex[i] != '\0' && counter <gMAX_LCD_CHARS_c ) {
??LCD_WriteStringValue_19:
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        ADD      R0,SP,#+12
        LDRB     R0,[R0, R5]
        CMP      R0,#+0
        BEQ      ??LCD_WriteStringValue_20
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+16
        BCS      ??LCD_WriteStringValue_20
//  880       aString[counter++]=aHex[i++];
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        ADD      R0,SP,#+28
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        ADD      R1,SP,#+12
        LDRB     R1,[R1, R5]
        STRB     R1,[R0, R4]
        ADDS     R5,R5,#+1
        ADDS     R4,R4,#+1
        B        ??LCD_WriteStringValue_19
//  881     }
//  882     aString[counter]='\0';
??LCD_WriteStringValue_20:
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        ADD      R0,SP,#+28
        MOVS     R1,#+0
        STRB     R1,[R0, R4]
//  883     LCD_WriteString( line, aString );
        ADD      R1,SP,#+28
        ADD      R0,SP,#+52
        LDRB     R0,[R0, #+0]
        BL       LCD_WriteString
        B        ??LCD_WriteStringValue_12
//  884   }
//  885   else {
//  886     LCD_WriteString( line, "Format unknow" );
??LCD_WriteStringValue_13:
        LDR      R1,??DataTable11
        ADD      R0,SP,#+52
        LDRB     R0,[R0, #+0]
        BL       LCD_WriteString
//  887   }
//  888 }
??LCD_WriteStringValue_12:
        ADD      SP,SP,#+60
        POP      {R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4:
        DC32     0x2710

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_1:
        DC32     mErrorIndicator
//  889 
//  890 /******************************************************************************
//  891 * This functions allows to write raw bytes to the LCD, the maximum number of bytes
//  892 *	capable per line is 8, this functions transfors every hex simbol in a byte to a char.
//  893 *
//  894 * Interface assumptions:
//  895 *	IN: The pointer to the label to print with the bytes.
//  896 *	IN: The bytes to print.
//  897 *	IN: The line in the LCD where the bytes with the label.
//  898 *	IN: The number of bytes to print in the LCD.
//  899 *
//  900 * Return value:
//  901 * None
//  902 *
//  903 *
//  904 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  905 void LCD_WriteBytes
//  906 (
//  907 	uint8_t   *pstr,   /* IN: The pointer to the label to print with the bytes. */
//  908 	uint8_t   *value,  /* IN: The bytes to print in hex. */
//  909 	uint8_t   line,    /* IN: The line in the LCD where the bytes with the label. */
//  910 	uint8_t   length   /* IN: The number of bytes to print in the LCD. */
//  911 )
//  912 {
LCD_WriteBytes:
        PUSH     {R0-R7,LR}
        SUB      SP,SP,#+44
//  913 
//  914 	uint8_t i=0,counter=0, cIndex,auxIndex;
        MOVS     R0,#+0
        MOVS     R7,R0
        MOVS     R0,#+0
        MOVS     R4,R0
//  915 	uint8_t aString[17];
//  916 
//  917 	uint8_t  hexIndex;
//  918 	uint8_t aHex[gMAX_LCD_CHARS_c]={'S','i','z','e',' ','N','o','t',' ','V','a','l','i','d','*','*'};
        ADD      R0,SP,#+4
        LDR      R1,??DataTable11_1
        MOVS     R2,#+16
        BL       __aeabi_memcpy4
//  919 
//  920   /* clear the error indicator */
//  921   mErrorIndicator = gLCD_NoError_c;
        LDR      R0,??DataTable11_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  922   
//  923 	counter=0;
        MOVS     R0,#+0
        MOVS     R4,R0
//  924 	while (*pstr != '\0' && counter <gMAX_LCD_CHARS_c )
??LCD_WriteBytes_0:
        LDR      R0,[SP, #+44]
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??LCD_WriteBytes_1
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+16
        BCS      ??LCD_WriteBytes_1
//  925 	{
//  926 		aString[counter++]=*pstr;
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        ADD      R0,SP,#+20
        LDR      R1,[SP, #+44]
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, R4]
        ADDS     R4,R4,#+1
//  927 		pstr++;
        LDR      R0,[SP, #+44]
        ADDS     R0,R0,#+1
        STR      R0,[SP, #+44]
        B        ??LCD_WriteBytes_0
//  928 	}
//  929 	if ((((length*2)+counter) <= gMAX_LCD_CHARS_c) && ((length*2) > 0))
??LCD_WriteBytes_1:
        ADD      R0,SP,#+56
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+2
        MULS     R0,R1,R0
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        ADDS     R0,R0,R4
        CMP      R0,#+17
        BGE      ??LCD_WriteBytes_2
        ADD      R0,SP,#+56
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+2
        MULS     R0,R1,R0
        CMP      R0,#+1
        BLT      ??LCD_WriteBytes_2
//  930 	{
//  931 		for (cIndex =0,auxIndex = 0; cIndex < length; cIndex++,auxIndex+=2)
        MOVS     R0,#+0
        MOVS     R6,R0
        MOV      R0,SP
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
??LCD_WriteBytes_3:
        ADD      R0,SP,#+56
        LDRB     R0,[R0, #+0]
        LSLS     R6,R6,#+24       ;; ZeroExtS R6,R6,#+24,#+24
        LSRS     R6,R6,#+24
        CMP      R6,R0
        BCS      ??LCD_WriteBytes_4
//  932 		{
//  933 			hexIndex = value[cIndex]&0xf0;
        LSLS     R6,R6,#+24       ;; ZeroExtS R6,R6,#+24,#+24
        LSRS     R6,R6,#+24
        LDR      R0,[SP, #+48]
        LDRB     R0,[R0, R6]
        MOVS     R1,#+240
        ANDS     R1,R1,R0
        MOVS     R5,R1
//  934 			hexIndex = hexIndex>>4;
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        LSRS     R5,R5,#+4
//  935 			aHex[auxIndex] = gaHexValue[hexIndex];
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        ADD      R1,SP,#+4
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        LDR      R2,??DataTable9
        LDRB     R2,[R2, R5]
        STRB     R2,[R1, R0]
//  936 			hexIndex = value[cIndex] & 0x0f;
        LSLS     R6,R6,#+24       ;; ZeroExtS R6,R6,#+24,#+24
        LSRS     R6,R6,#+24
        LDR      R0,[SP, #+48]
        LDRB     R0,[R0, R6]
        LSLS     R0,R0,#+28       ;; ZeroExtS R0,R0,#+28,#+28
        LSRS     R0,R0,#+28
        MOVS     R5,R0
//  937 			aHex[auxIndex + 1] = gaHexValue[hexIndex];
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        ADD      R1,SP,#+4
        ADDS     R0,R1,R0
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        LDR      R1,??DataTable9
        LDRB     R1,[R1, R5]
        STRB     R1,[R0, #+1]
//  938 		}
        ADDS     R6,R6,#+1
        MOV      R0,SP
        MOV      R1,SP
        LDRB     R1,[R1, #+0]
        ADDS     R1,R1,#+2
        STRB     R1,[R0, #+0]
        B        ??LCD_WriteBytes_3
//  939 		aHex[(length * 2)]='\0';
??LCD_WriteBytes_4:
        ADD      R0,SP,#+56
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+2
        MULS     R0,R1,R0
        ADD      R1,SP,#+4
        MOVS     R2,#+0
        STRB     R2,[R1, R0]
        B        ??LCD_WriteBytes_5
//  940 	}
//  941 	else
//  942 		counter = 0;
??LCD_WriteBytes_2:
        MOVS     R0,#+0
        MOVS     R4,R0
//  943 
//  944 	i=0;
??LCD_WriteBytes_5:
        MOVS     R0,#+0
        MOVS     R7,R0
//  945 	while (aHex[i] != '\0' && counter <gMAX_LCD_CHARS_c )
??LCD_WriteBytes_6:
        LSLS     R7,R7,#+24       ;; ZeroExtS R7,R7,#+24,#+24
        LSRS     R7,R7,#+24
        ADD      R0,SP,#+4
        LDRB     R0,[R0, R7]
        CMP      R0,#+0
        BEQ      ??LCD_WriteBytes_7
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+16
        BCS      ??LCD_WriteBytes_7
//  946 		aString[counter++]=aHex[i++];
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        ADD      R0,SP,#+20
        LSLS     R7,R7,#+24       ;; ZeroExtS R7,R7,#+24,#+24
        LSRS     R7,R7,#+24
        ADD      R1,SP,#+4
        LDRB     R1,[R1, R7]
        STRB     R1,[R0, R4]
        ADDS     R7,R7,#+1
        ADDS     R4,R4,#+1
        B        ??LCD_WriteBytes_6
//  947 
//  948 	aString[counter]='\0';
??LCD_WriteBytes_7:
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        ADD      R0,SP,#+20
        MOVS     R1,#+0
        STRB     R1,[R0, R4]
//  949 	LCD_WriteString( line, aString );
        ADD      R1,SP,#+20
        ADD      R0,SP,#+52
        LDRB     R0,[R0, #+0]
        BL       LCD_WriteString
//  950 }
        ADD      SP,SP,#+60
        POP      {R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable5:
        DC32     0x270f
//  951 
//  952 /******************************************************************************
//  953 * This function sends a command to the display controller
//  954 *
//  955 * Interface assumptions:
//  956 *
//  957 *
//  958 * Return value:
//  959 * None
//  960 *
//  961 *
//  962 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  963 void LCD_WriteCommand(uint8_t command)
//  964 {
LCD_WriteCommand:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  965   /* clear the error indicator */
//  966   mErrorIndicator = gLCD_NoError_c;
        LDR      R0,??DataTable11_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  967   
//  968   Gpio_SetPinData(LCD_A0, LCD_A0_COMMAND);
        MOVS     R1,#+1
        MOVS     R0,#+21
        BL       Gpio_SetPinData
//  969   SetOutput();
        BL       SetOutput
//  970   Gpio_SetPinData(LCD_CS, LCD_CS_ACTIVE);
        MOVS     R1,#+1
        MOVS     R0,#+20
        BL       Gpio_SetPinData
//  971   Gpio_SetPinData(LCD_WR, LCD_WR_ACTIVE);
        MOVS     R1,#+1
        MOVS     R0,#+9
        BL       Gpio_SetPinData
//  972   SendData(command);
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       SendData
//  973   DelayUs(1);
        MOVS     R0,#+1
        BL       DelayUs
//  974   Gpio_SetPinData(LCD_WR, LCD_WR_INACTIVE);
        MOVS     R1,#+0
        MOVS     R0,#+9
        BL       Gpio_SetPinData
//  975   Gpio_SetPinData(LCD_CS, LCD_CS_INACTIVE);
        MOVS     R1,#+0
        MOVS     R0,#+20
        BL       Gpio_SetPinData
//  976   SetHiZ();
        BL       SetHiZ
//  977   DelayUs(1);
        MOVS     R0,#+1
        BL       DelayUs
//  978 }
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  979 
//  980 /******************************************************************************
//  981 * This function sends a data to the display controller
//  982 *
//  983 * Interface assumptions:
//  984 *
//  985 *
//  986 * Return value:
//  987 * None
//  988 *
//  989 *
//  990 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  991 void LCD_WriteData(uint8_t data)
//  992 {
LCD_WriteData:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  993   /* clear the error indicator */
//  994   mErrorIndicator = gLCD_NoError_c;
        LDR      R0,??DataTable11_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  995 
//  996   Gpio_SetPinData(LCD_A0, LCD_A0_DATA);
        MOVS     R1,#+0
        MOVS     R0,#+21
        BL       Gpio_SetPinData
//  997   Gpio_SetPinData(LCD_CS, LCD_CS_ACTIVE);
        MOVS     R1,#+1
        MOVS     R0,#+20
        BL       Gpio_SetPinData
//  998   SetOutput();
        BL       SetOutput
//  999   SendData(data);
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       SendData
// 1000   Gpio_SetPinData(LCD_WR, LCD_WR_ACTIVE);
        MOVS     R1,#+1
        MOVS     R0,#+9
        BL       Gpio_SetPinData
// 1001   DelayUs(1);
        MOVS     R0,#+1
        BL       DelayUs
// 1002   Gpio_SetPinData(LCD_WR, LCD_WR_INACTIVE);
        MOVS     R1,#+0
        MOVS     R0,#+9
        BL       Gpio_SetPinData
// 1003   Gpio_SetPinData(LCD_CS, LCD_CS_INACTIVE);
        MOVS     R1,#+0
        MOVS     R0,#+20
        BL       Gpio_SetPinData
// 1004   SetHiZ();
        BL       SetHiZ
// 1005   DelayUs(1);  
        MOVS     R0,#+1
        BL       DelayUs
// 1006  
// 1007 }
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
// 1008 
// 1009 /******************************************************************************
// 1010 * This function sets the font received as parameter as default font
// 1011 *
// 1012 * Interface assumptions:
// 1013 *
// 1014 *
// 1015 * Return value:
// 1016 *      TRUE:  when the font is correctly set
// 1017 *      FALSE: when an unsupported font is received as parameter
// 1018 * char
// 1019 *
// 1020 *
// 1021 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1022 bool_t LCD_SetFont(lcdFontType_t font)
// 1023 {
LCD_SetFont:
        PUSH     {LR}
        MOVS     R1,R0
// 1024   /* clear the error indicator */
// 1025   mErrorIndicator = gLCD_NoError_c;
        LDR      R0,??DataTable11_2
        MOVS     R2,#+0
        STRB     R2,[R0, #+0]
// 1026 
// 1027   if(gLCDNumFonts_c > font)
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        CMP      R1,#+2
        BCS      ??LCD_SetFont_0
// 1028   {
// 1029     mDisplayParams.currentFontType = font;
        LDR      R0,??DataTable13
        STRB     R1,[R0, #+13]
// 1030     return TRUE;
        MOVS     R0,#+1
        B        ??LCD_SetFont_1
// 1031   }
// 1032   else
// 1033   {
// 1034     return FALSE;
??LCD_SetFont_0:
        MOVS     R0,#+0
??LCD_SetFont_1:
        POP      {R3}
        BX       R3               ;; return
// 1035   }
// 1036 }
// 1037 
// 1038 /******************************************************************************
// 1039 * This function checks if an error occured during an interface function call.
// 1040 * User must always call this function to verify if an interface function executed 
// 1041 * successufully.
// 1042 *
// 1043 * Interface assumptions:
// 1044 *
// 1045 *
// 1046 * Return value:  lcdError_t
// 1047 *      gLCD_NoError_c:   no error
// 1048 *      gLCD_QueueFull_c: queue is full
// 1049 *
// 1050 *
// 1051 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1052 lcdError_t LCD_CheckError(void)
// 1053 {
// 1054   return mErrorIndicator;
LCD_CheckError:
        LDR      R0,??DataTable11_2
        LDRB     R0,[R0, #+0]
        BX       LR               ;; return
// 1055 }

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable9:
        DC32     gaHexValue
// 1056 
// 1057 /************************************************************************************
// 1058 *************************************************************************************
// 1059 * Private functions
// 1060 *************************************************************************************
// 1061 ************************************************************************************/
// 1062 
// 1063 /******************************************************************************
// 1064 * LCD task
// 1065 *
// 1066 * Interface assumptions:
// 1067 *
// 1068 *
// 1069 * Return value:
// 1070 * None
// 1071 *
// 1072 *
// 1073 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1074 void LCD_Task(event_t events)
// 1075 {
LCD_Task:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
        MOVS     R4,R0
// 1076   static opLine_t mOperationLine;
// 1077   (void)events;
// 1078 
// 1079   /* pop a new operation from the queue, only if the precedent operation was finished */
// 1080   if(mOperationCompleted)
        LDR      R0,??DataTable13_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??LCD_Task_0
// 1081   {
// 1082     mOperationLine = RemoveFromQueue();     
        BL       RemoveFromQueue
        STR      R0,[SP, #+0]
        LDR      R0,??DataTable13_2
        MOV      R1,SP
        LDRB     R2,[R1, #0]
        STRB     R2,[R0, #0]
        LDRB     R2,[R1, #+1]
        STRB     R2,[R0, #+1]
??LCD_Task_0:
        LDR      R0,??DataTable13_2
        LDR      R0,[R0, #+0]
        STR      R0,[SP, #+0]
// 1083   }
// 1084 
// 1085   ProcessOperation(mOperationLine);  
        LDR      R0,[SP, #+0]
        BL       ProcessOperation
// 1086 
// 1087   if(!IsQueueEmpty())
        BL       IsQueueEmpty
        CMP      R0,#+0
        BNE      ??LCD_Task_1
// 1088   {
// 1089     /* prepare for next operation */
// 1090     TS_SendEvent(gLCDTaskID, gLCDOpEvt_c);     
        MOVS     R1,#+1
        LDR      R0,??DataTable13_3
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
// 1091   }
// 1092   
// 1093 } 
??LCD_Task_1:
        POP      {R0,R1,R4}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.bss`:DATA:NOROOT(2)
??mOperationLine:
        DS8 4
// 1094 
// 1095 /******************************************************************************
// 1096 * This function initializes the LCD Task
// 1097 *
// 1098 * Interface assumptions:
// 1099 *
// 1100 *
// 1101 * Return value:
// 1102 * None
// 1103 *
// 1104 *
// 1105 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1106 void LCD_TaskInit(void)
// 1107 {
LCD_TaskInit:
        PUSH     {R7,LR}
// 1108   gLCDTaskID = TS_CreateTask(gTsLCDTaskPriority_c, LCD_Task);
        LDR      R1,??DataTable13_4
        MOVS     R0,#+3
        BL       TS_CreateTask
        LDR      R1,??DataTable13_3
        STRB     R0,[R1, #+0]
// 1109 }
        POP      {R0,R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable11:
        DC32     `?<Constant "Format unknow">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable11_1:
        DC32     `?<Constant {83, 105, 122, 101, 32, 78, 111, 11`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable11_2:
        DC32     mErrorIndicator
// 1110 
// 1111 /******************************************************************************
// 1112 * This function enables/disables the backlight
// 1113 *
// 1114 * Interface assumptions:
// 1115 *   0 - disable backlight
// 1116 *   >0 - enables backlight
// 1117 *
// 1118 *
// 1119 * Return value:
// 1120 * None
// 1121 *
// 1122 *
// 1123 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1124 void LCD_SetBacklight(uint8_t brightnessValue)
// 1125 {
LCD_SetBacklight:
        PUSH     {R3-R5,LR}
        MOVS     R5,R0
// 1126 #ifdef gLcdBackLightEnabled_d
// 1127 /* this was removed due to electrical influence on RF TX */
// 1128     GpioPinState_t backLightState;
// 1129     backLightState = (0 != brightnessValue) ? gGpioPinStateHigh_c : gGpioPinStateLow_c;
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        CMP      R5,#+0
        BEQ      ??LCD_SetBacklight_0
        MOVS     R4,#+1
        B        ??LCD_SetBacklight_1
??LCD_SetBacklight_0:
        MOVS     R4,#+0
// 1130     Gpio_SetPinData(LCD_BL_PWM,  backLightState);
??LCD_SetBacklight_1:
        MOVS     R1,R4
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        MOVS     R0,#+10
        BL       Gpio_SetPinData
// 1131 #else
// 1132     (void)brightnessValue;
// 1133 #endif /* gLcdBackLightEnabled_d */
// 1134 }
        POP      {R0,R4,R5}
        POP      {R3}
        BX       R3               ;; return
// 1135 
// 1136 /******************************************************************************
// 1137 * This function sets/ clears the pixel from (XStartCoord, YStartCoord)
// 1138 *
// 1139 * Interface assumptions:
// 1140 *
// 1141 *
// 1142 * Return value:
// 1143 * None
// 1144 *
// 1145 *
// 1146 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1147 void LCD_WritePixel(uint8_t xStartCoord, uint8_t yStartCoord, bool_t mode)
// 1148 {
LCD_WritePixel:
        PUSH     {R2,R4-R7,LR}
        MOVS     R4,R0
        MOVS     R6,R1
// 1149   uint8_t page;
// 1150   uint8_t read;
// 1151 
// 1152   if (xStartCoord>=gLCDMaxColumns_c || yStartCoord>=gLCDMaxLines_c)
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+128
        BCS      ??LCD_WritePixel_0
        LSLS     R6,R6,#+24       ;; ZeroExtS R6,R6,#+24,#+24
        LSRS     R6,R6,#+24
        CMP      R6,#+64
        BCC      ??LCD_WritePixel_1
// 1153   {
// 1154     return; /* if pixel out of screen exit */
??LCD_WritePixel_0:
        B        ??LCD_WritePixel_2
// 1155   }
// 1156 
// 1157   page = yStartCoord >> 3;
??LCD_WritePixel_1:
        MOVS     R0,R6
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        LSRS     R0,R0,#+3
        MOVS     R5,R0
// 1158   yStartCoord %= 8;
        LSLS     R6,R6,#+24       ;; ZeroExtS R6,R6,#+24,#+24
        LSRS     R6,R6,#+24
        MOVS     R0,R6
        MOVS     R1,#+8
        BL       __aeabi_idivmod
        MOVS     R6,R1
// 1159 
// 1160   LCD_WriteCommand(gLCDDisplayStartLineDefaultCommand_c);
        MOVS     R0,#+64
        BL       LCD_WriteCommand
// 1161   LCD_WriteCommand(gLCDPageAddressDefaultCommand_c + page);
        MOVS     R0,R5
        SUBS     R0,R0,#+80
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteCommand
// 1162   LCD_WriteCommand(gLCDNibble0ColumnAddressDefaultCommand_c | ((xStartCoord & 0xF0)>>4));
        MOVS     R1,R4
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        LSRS     R1,R1,#+4
        MOVS     R0,#+16
        ORRS     R0,R0,R1
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteCommand
// 1163   LCD_WriteCommand(gLCDNibble1ColumnAddressDefaultCommand_c | (xStartCoord & 0x0F));       
        LSLS     R0,R4,#+28       ;; ZeroExtS R0,R4,#+28,#+28
        LSRS     R0,R0,#+28
        BL       LCD_WriteCommand
// 1164 
// 1165   read = ReadData(); // Dummy read
        BL       ReadData
        MOVS     R7,R0
// 1166   read = ReadData();
        BL       ReadData
        MOVS     R7,R0
// 1167 
// 1168   LCD_WriteCommand(gLCDDisplayStartLineDefaultCommand_c);
        MOVS     R0,#+64
        BL       LCD_WriteCommand
// 1169   LCD_WriteCommand(gLCDPageAddressDefaultCommand_c + page);
        MOVS     R0,R5
        SUBS     R0,R0,#+80
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteCommand
// 1170   LCD_WriteCommand(gLCDNibble0ColumnAddressDefaultCommand_c | ((xStartCoord & 0xF0)>>4));
        MOVS     R1,R4
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        LSRS     R1,R1,#+4
        MOVS     R0,#+16
        ORRS     R0,R0,R1
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteCommand
// 1171   LCD_WriteCommand(gLCDNibble1ColumnAddressDefaultCommand_c | (xStartCoord & 0x0F));
        LSLS     R0,R4,#+28       ;; ZeroExtS R0,R4,#+28,#+28
        LSRS     R0,R0,#+28
        BL       LCD_WriteCommand
// 1172 
// 1173   if( TRUE == mode )
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE      ??LCD_WritePixel_3
// 1174   {
// 1175     LCD_WriteData((read | (1 << yStartCoord)));
        MOVS     R0,#+1
        LSLS     R0,R0,R6
        ORRS     R0,R0,R7
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteData
        B        ??LCD_WritePixel_4
// 1176   }
// 1177   else
// 1178   {  
// 1179     LCD_WriteData((read & ~(1 << yStartCoord)));  
??LCD_WritePixel_3:
        MOVS     R1,#+1
        LSLS     R1,R1,R6
        MVNS     R0,R1
        ANDS     R0,R0,R7
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteData
// 1180   }
// 1181 }
??LCD_WritePixel_4:
??LCD_WritePixel_2:
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return
// 1182 
// 1183 /******************************************************************************
// 1184 * This function displays a character starting with xCoord and yCoord
// 1185 *
// 1186 * Interface assumptions:
// 1187 *  yCoord is a multiple of 8
// 1188 *
// 1189 *
// 1190 * Return value:
// 1191 * None
// 1192 *
// 1193 *
// 1194 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1195 void LCD_WriteCharacter(uint8_t symbol, uint8_t xCoord, uint8_t yCoord)
// 1196 {
LCD_WriteCharacter:
        PUSH     {R0,R1,R4-R7,LR}
        SUB      SP,SP,#+4
        MOVS     R6,R2
// 1197   uint16_t arrayLocation=0; 
        MOVS     R0,#+0
        MOVS     R7,R0
// 1198   uint8_t i, maxLength;
// 1199  
// 1200   /* if pixel out of screen, exit */
// 1201   if((xCoord >= gLCDMaxColumns_c) && (yCoord >= gLCDMaxLines_c))
        MOV      R0,SP
        LDRB     R0,[R0, #+8]
        CMP      R0,#+128
        BCC      ??LCD_WriteCharacter_0
        LSLS     R6,R6,#+24       ;; ZeroExtS R6,R6,#+24,#+24
        LSRS     R6,R6,#+24
        CMP      R6,#+64
        BCS      ??LCD_WriteCharacter_1
// 1202   {
// 1203     return;
// 1204   }
// 1205     
// 1206   arrayLocation = symbol - mFontOffset_c;
??LCD_WriteCharacter_0:
        MOV      R0,SP
        LDRB     R0,[R0, #+4]
        SUBS     R0,R0,#+32
        MOVS     R7,R0
// 1207   maxLength = aLCDFont[mDisplayParams.currentFontType].fontHeight;
        LDR      R0,??DataTable13
        LDRB     R0,[R0, #+13]
        MOVS     R1,#+12
        MULS     R0,R1,R0
        LDR      R1,??DataTable14
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+8]
        MOVS     R5,R0
// 1208   /* each character has: 
// 1209   *  (aLCDFont[mDisplayParams.currentFontType].pFontIndex[arrayLocation+1] - 
// 1210   *   aLCDFont[mDisplayParams.currentFontType].pFontIndex[arrayLocation]) pixels as width 
// 1211   *  (aLCDFont[mDisplayParams.currentFontType].fontHeight * 8) pixels as height 
// 1212   */
// 1213   while(maxLength > 0)
??LCD_WriteCharacter_2:
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        CMP      R5,#+1
        BCC      ??LCD_WriteCharacter_3
// 1214   {
// 1215     maxLength--;      
        SUBS     R5,R5,#+1
// 1216     InitDisplayWrite(xCoord,yCoord);        
        MOVS     R1,R6
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        MOV      R0,SP
        LDRB     R0,[R0, #+8]
        BL       InitDisplayWrite
// 1217     /* mark line as written */
// 1218     mDisplayParams.writtenLines |= (1<<(yCoord>>3));   
        LDR      R0,??DataTable13
        LDRB     R0,[R0, #+3]
        MOVS     R1,#+1
        MOVS     R2,R6
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        LSRS     R2,R2,#+3
        LSLS     R1,R1,R2
        ORRS     R1,R1,R0
        LDR      R0,??DataTable13
        STRB     R1,[R0, #+3]
// 1219     for(i = 0;
        MOVS     R0,#+0
        MOVS     R4,R0
// 1220         i < ((aLCDFont[mDisplayParams.currentFontType].pFontIndexTable[arrayLocation+1] - 
// 1221               aLCDFont[mDisplayParams.currentFontType].pFontIndexTable[arrayLocation]) *
// 1222               aLCDFont[mDisplayParams.currentFontType].fontHeight);
??LCD_WriteCharacter_4:
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        LSLS     R7,R7,#+16       ;; ZeroExtS R7,R7,#+16,#+16
        LSRS     R7,R7,#+16
        MOVS     R0,#+2
        MULS     R0,R7,R0
        LDR      R1,??DataTable13
        LDRB     R1,[R1, #+13]
        MOVS     R2,#+12
        MULS     R1,R2,R1
        LDR      R2,??DataTable14
        LDR      R1,[R2, R1]
        ADDS     R0,R1,R0
        LDRH     R0,[R0, #+2]
        LSLS     R7,R7,#+16       ;; ZeroExtS R7,R7,#+16,#+16
        LSRS     R7,R7,#+16
        MOVS     R1,#+2
        MULS     R1,R7,R1
        LDR      R2,??DataTable13
        LDRB     R2,[R2, #+13]
        MOVS     R3,#+12
        MULS     R2,R3,R2
        LDR      R3,??DataTable14
        LDR      R2,[R3, R2]
        LDRH     R1,[R2, R1]
        SUBS     R0,R0,R1
        LDR      R1,??DataTable13
        LDRB     R1,[R1, #+13]
        MOVS     R2,#+12
        MULS     R1,R2,R1
        LDR      R2,??DataTable14
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #+8]
        MULS     R0,R1,R0
        CMP      R4,R0
        BGE      ??LCD_WriteCharacter_5
// 1223         i += aLCDFont[mDisplayParams.currentFontType].fontHeight)        
// 1224     {
// 1225       /* in case the character is representd on multiple lines,
// 1226        * (aLCDFont[mDisplayParams.currentFontType].fontHeight > 1),
// 1227        * display first the upper part of the character and after the lower part 
// 1228        */
// 1229       LCD_WriteData(aLCDFont[mDisplayParams.currentFontType].pFontCharTable[aLCDFont[mDisplayParams.currentFontType].pFontIndexTable[arrayLocation]*aLCDFont[mDisplayParams.currentFontType].fontHeight + i + maxLength]);
        LSLS     R7,R7,#+16       ;; ZeroExtS R7,R7,#+16,#+16
        LSRS     R7,R7,#+16
        MOVS     R0,#+2
        MULS     R0,R7,R0
        LDR      R1,??DataTable13
        LDRB     R1,[R1, #+13]
        MOVS     R2,#+12
        MULS     R1,R2,R1
        LDR      R2,??DataTable14
        LDR      R1,[R2, R1]
        LDRH     R0,[R1, R0]
        LDR      R1,??DataTable13
        LDRB     R1,[R1, #+13]
        MOVS     R2,#+12
        MULS     R1,R2,R1
        LDR      R2,??DataTable14
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #+8]
        MULS     R0,R1,R0
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        ADDS     R0,R0,R4
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        ADDS     R0,R0,R5
        LDR      R1,??DataTable13
        LDRB     R1,[R1, #+13]
        MOVS     R2,#+12
        MULS     R1,R2,R1
        LDR      R2,??DataTable14
        ADDS     R1,R2,R1
        LDR      R1,[R1, #+4]
        LDRB     R0,[R1, R0]
        BL       LCD_WriteData
// 1230     }
        LDR      R0,??DataTable13
        LDRB     R0,[R0, #+13]
        MOVS     R1,#+12
        MULS     R0,R1,R0
        LDR      R1,??DataTable14
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+8]
        ADDS     R4,R4,R0
        B        ??LCD_WriteCharacter_4
// 1231     yCoord += 8;
??LCD_WriteCharacter_5:
        ADDS     R6,R6,#+8
        B        ??LCD_WriteCharacter_2
// 1232   }    
// 1233 }
??LCD_WriteCharacter_3:
??LCD_WriteCharacter_1:
        POP      {R0-R2,R4-R7}
        POP      {R3}
        BX       R3               ;; return
// 1234 
// 1235 /******************************************************************************
// 1236 * This function displays a symbol starting with xCoord and yCoord
// 1237 *
// 1238 * Interface assumptions:
// 1239 *  yCoord is a multiple of 8
// 1240 *
// 1241 *
// 1242 * Return value:
// 1243 * None
// 1244 *
// 1245 *
// 1246 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1247 void LCD_WriteSymbol(uint8_t index, uint8_t xCoord, uint8_t yCoord, uint8_t* bitmap)
// 1248 { 
LCD_WriteSymbol:
        PUSH     {R0,R4-R7,LR}
        MOVS     R7,R1
        MOVS     R6,R2
        MOVS     R4,R3
// 1249   uint8_t i;
// 1250  
// 1251   /* if pixel out of screen, exit */
// 1252   if((xCoord >= gLCDMaxColumns_c) && (yCoord >= gLCDMaxLines_c))
        LSLS     R7,R7,#+24       ;; ZeroExtS R7,R7,#+24,#+24
        LSRS     R7,R7,#+24
        CMP      R7,#+128
        BCC      ??LCD_WriteSymbol_0
        LSLS     R6,R6,#+24       ;; ZeroExtS R6,R6,#+24,#+24
        LSRS     R6,R6,#+24
        CMP      R6,#+64
        BCS      ??LCD_WriteSymbol_1
// 1253   {
// 1254     return;
// 1255   }
// 1256   /* if gsBitmap is NULL, exit */
// 1257   if(bitmap == NULL)
??LCD_WriteSymbol_0:
        CMP      R4,#+0
        BEQ      ??LCD_WriteSymbol_1
// 1258   {
// 1259     return;
// 1260   }  
// 1261 
// 1262   /* each symbol has: 
// 1263   *  8 pixels as width 
// 1264   *  8 pixels as height 
// 1265   */    
// 1266   InitDisplayWrite(xCoord,yCoord);        
??LCD_WriteSymbol_2:
        MOVS     R1,R6
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        MOVS     R0,R7
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       InitDisplayWrite
// 1267   /* mark line as written */
// 1268   mDisplayParams.writtenLines |= (1<<(yCoord>>3));   
        LDR      R0,??DataTable14_1
        LDRB     R0,[R0, #+3]
        MOVS     R1,#+1
        MOVS     R2,R6
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        LSRS     R2,R2,#+3
        LSLS     R1,R1,R2
        ORRS     R1,R1,R0
        LDR      R0,??DataTable14_1
        STRB     R1,[R0, #+3]
// 1269   for(i = 0; i < mSymbolWidth; i++)        
        MOVS     R0,#+0
        MOVS     R5,R0
??LCD_WriteSymbol_3:
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        CMP      R5,#+8
        BCS      ??LCD_WriteSymbol_4
// 1270   {
// 1271     /* write the symbol */
// 1272     LCD_WriteData(bitmap[index * mSymbolWidth + i]);
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+8
        MULS     R0,R1,R0
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        ADDS     R0,R0,R5
        LDRB     R0,[R4, R0]
        BL       LCD_WriteData
// 1273   }
        ADDS     R5,R5,#+1
        B        ??LCD_WriteSymbol_3
// 1274 }
??LCD_WriteSymbol_4:
??LCD_WriteSymbol_1:
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13:
        DC32     mDisplayParams

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_1:
        DC32     mOperationCompleted

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_2:
        DC32     ??mOperationLine

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_3:
        DC32     gLCDTaskID

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_4:
        DC32     LCD_Task
// 1275 
// 1276 /****************************************************************************************
// 1277 * This function clears the pixels between startXCoord and endXCoord within a single page
// 1278 * (page located at yCoord)
// 1279 *
// 1280 * Interface assumptions:
// 1281 *
// 1282 *
// 1283 * Return value:
// 1284 * None
// 1285 *
// 1286 *
// 1287 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1288 void LCD_ClearPage(uint8_t startXCoord, uint8_t endXCoord, uint8_t yCoord)
// 1289 {
LCD_ClearPage:
        PUSH     {R3-R7,LR}
        MOVS     R6,R0
        MOVS     R4,R1
        MOVS     R7,R2
// 1290   uint8_t i;
// 1291   
// 1292   InitDisplayWrite(startXCoord, yCoord);
        MOVS     R1,R7
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        MOVS     R0,R6
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       InitDisplayWrite
// 1293   for(i = startXCoord; i < endXCoord; i++)
        MOVS     R5,R6
??LCD_ClearPage_0:
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R5,R4
        BCS      ??LCD_ClearPage_1
// 1294   {
// 1295     LCD_WriteData(OFF);    
        MOVS     R0,#+0
        BL       LCD_WriteData
// 1296   }    
        ADDS     R5,R5,#+1
        B        ??LCD_ClearPage_0
// 1297 }
??LCD_ClearPage_1:
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return
// 1298 
// 1299 /****************************************************************************************
// 1300 * This function clears an entire LCD line
// 1301 *
// 1302 * Interface assumptions:
// 1303 *     char line = 0..7
// 1304 *
// 1305 *
// 1306 * Return value:
// 1307 *     TRUE if the line was cleared
// 1308 *     FALSE if the line is not cleared yet
// 1309 *     0xFF  if the line parameter is not valid
// 1310 * None
// 1311 *
// 1312 *
// 1313 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1314 uint8_t LCD_ClearLine(uint8_t line)
// 1315 {
LCD_ClearLine:
        PUSH     {R4,LR}
        MOVS     R4,R0
// 1316   static pageParams_t pageToDelete;
// 1317   static bool_t isPageDeleted = TRUE;
// 1318   
// 1319   if(line < gLCDMaxRamDataPages_c)
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+8
        BCS      ??LCD_ClearLine_0
// 1320   {
// 1321     /* save the page coordinates */
// 1322     if(isPageDeleted)
        LDR      R0,??DataTable14_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??LCD_ClearLine_1
// 1323     {
// 1324       pageToDelete.xStartCoord = mLineParams[line].xCoord;
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        MOVS     R0,#+3
        MULS     R0,R4,R0
        LDR      R1,??DataTable14_3
        LDRB     R0,[R1, R0]
        LDR      R1,??DataTable14_4
        STRB     R0,[R1, #+0]
// 1325       pageToDelete.xEndCoord   = gLCDMaxColumns_c;
        LDR      R0,??DataTable14_4
        MOVS     R1,#+128
        STRB     R1,[R0, #+1]
// 1326       pageToDelete.yCoord      = mLineParams[line].yCoord;
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        MOVS     R0,#+3
        MULS     R0,R4,R0
        LDR      R1,??DataTable14_3
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+1]
        LDR      R1,??DataTable14_4
        STRB     R0,[R1, #+2]
// 1327       pageToDelete.line        = line; 
        LDR      R0,??DataTable14_4
        STRB     R4,[R0, #+3]
// 1328     }
// 1329     
// 1330     /* delete only mMaxDeleteColumns_c columns once because of time constraints */
// 1331     if(((pageToDelete.xEndCoord - pageToDelete.xStartCoord) >= mMaxDeleteColumns_c))
??LCD_ClearLine_1:
        LDR      R0,??DataTable14_4
        LDRB     R0,[R0, #+1]
        LDR      R1,??DataTable14_4
        LDRB     R1,[R1, #+0]
        SUBS     R0,R0,R1
        CMP      R0,#+32
        BLT      ??LCD_ClearLine_2
// 1332     {
// 1333       /* the page will be deleted with (gLCDMaxColumns_c/mMaxDeleteColumns_c) consecutive operations */
// 1334       isPageDeleted            = FALSE;
        LDR      R0,??DataTable14_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1335       TS_SendEvent(gLCDTaskID, gLCDOpEvt_c); 
        MOVS     R1,#+1
        LDR      R0,??DataTable14_5
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
// 1336       LCD_ClearPage(pageToDelete.xStartCoord, 
// 1337                     pageToDelete.xStartCoord + mMaxDeleteColumns_c, 
// 1338                     pageToDelete.yCoord); 
        LDR      R0,??DataTable14_4
        LDRB     R2,[R0, #+2]
        LDR      R0,??DataTable14_4
        LDRB     R1,[R0, #+0]
        ADDS     R1,R1,#+32
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        LDR      R0,??DataTable14_4
        LDRB     R0,[R0, #+0]
        BL       LCD_ClearPage
// 1339       /* compute the new xStartCoord for the current page */
// 1340       pageToDelete.xStartCoord = pageToDelete.xStartCoord + mMaxDeleteColumns_c;        
        LDR      R0,??DataTable14_4
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+32
        LDR      R1,??DataTable14_4
        STRB     R0,[R1, #+0]
// 1341       return FALSE;  
        MOVS     R0,#+0
        B        ??LCD_ClearLine_3
// 1342     }
// 1343     else
// 1344     {    
// 1345       LCD_ClearPage(pageToDelete.xStartCoord, 
// 1346                     pageToDelete.xEndCoord, 
// 1347                     pageToDelete.yCoord);
??LCD_ClearLine_2:
        LDR      R0,??DataTable14_4
        LDRB     R2,[R0, #+2]
        LDR      R0,??DataTable14_4
        LDRB     R1,[R0, #+1]
        LDR      R0,??DataTable14_4
        LDRB     R0,[R0, #+0]
        BL       LCD_ClearPage
// 1348       isPageDeleted            = TRUE;
        LDR      R0,??DataTable14_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
// 1349       return TRUE;  
        MOVS     R0,#+1
        B        ??LCD_ClearLine_3
// 1350     } 
// 1351   }
// 1352   else
// 1353   {
// 1354     return 0xFF;
??LCD_ClearLine_0:
        MOVS     R0,#+255
??LCD_ClearLine_3:
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
// 1355   }
// 1356 }

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable14:
        DC32     aLCDFont

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable14_1:
        DC32     mDisplayParams

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable14_2:
        DC32     ??isPageDeleted

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable14_3:
        DC32     mLineParams

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable14_4:
        DC32     ??pageToDelete

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable14_5:
        DC32     gLCDTaskID

        SECTION `.bss`:DATA:NOROOT(2)
??pageToDelete:
        DS8 4

        SECTION `.data`:DATA:NOROOT(0)
??isPageDeleted:
        DATA
        DC8 1
// 1357 
// 1358 /******************************************************************************
// 1359 * This function process an LCD operation (clear, write string).
// 1360 *
// 1361 * Interface assumptions:
// 1362 *
// 1363 *
// 1364 * Return value:
// 1365 * None
// 1366 *
// 1367 *
// 1368 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
// 1369 static void ProcessOperation(opLine_t operationAndLine)
// 1370 {
ProcessOperation:
        PUSH     {R0,R4-R7,LR}
        SUB      SP,SP,#+8
// 1371   static uint8_t linesToClear = 0x00;
// 1372   uint8_t line, i, deleteWriteLines = 0xFF;
        MOV      R0,SP
        MOVS     R1,#+255
        STRB     R1,[R0, #+0]
// 1373   switch(operationAndLine.opQueue)
        MOV      R0,SP
        LDRB     R0,[R0, #+8]
        CMP      R0,#+0
        BEQ      ??ProcessOperation_0
        CMP      R0,#+2
        BNE      .+4
        B        ??ProcessOperation_1
        BCS      .+4
        B        ??ProcessOperation_2
        CMP      R0,#+3
        BNE      .+4
        B        ??ProcessOperation_3
        B        ??ProcessOperation_4
// 1374   {  
// 1375     case gLCD_WriteOp_c:  
// 1376       if(mOperationCompleted)
??ProcessOperation_0:
        LDR      R0,??ProcessOperation_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??ProcessOperation_6
// 1377       {
// 1378         line = operationAndLine.lineQueue;
        ADD      R0,SP,#+8
        LDRB     R0,[R0, #+1]
        MOVS     R5,R0
// 1379         /* initialize the start coordinates for the string to be written */ 
// 1380         mDisplayParams.currentLine = line;
        LDR      R0,??ProcessOperation_5+0x4
        STRB     R5,[R0, #+2]
// 1381         mDisplayParams.currentXCoord = mLineParams[line].xCoord;;  
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        MOVS     R0,#+3
        MULS     R0,R5,R0
        LDR      R1,??ProcessOperation_7
        LDRB     R0,[R1, R0]
        LDR      R1,??ProcessOperation_5+0x4
        STRB     R0,[R1, #+0]
// 1382         mDisplayParams.currentYCoord = mLineParams[line].yCoord; 
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        MOVS     R0,#+3
        MULS     R0,R5,R0
        LDR      R1,??ProcessOperation_7
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+1]
        LDR      R1,??ProcessOperation_5+0x4
        STRB     R0,[R1, #+1]
// 1383         mDisplayParams.currentStringIndex = 0;
        LDR      R0,??ProcessOperation_5+0x4
        MOVS     R1,#+0
        STRB     R1,[R0, #+14]
// 1384         mOperationCompleted               = FALSE;  
        LDR      R0,??ProcessOperation_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1385       }      
// 1386       /* display only mNumberOfCharToWrite_c characters once because of time constraints */
// 1387       for(i = 0; ((i < mNumberOfCharToWrite_c)&&(mDisplayParams.currentStringIndex < gMAX_LCD_CHARS_c)); i++)
??ProcessOperation_6:
        MOVS     R0,#+0
        MOVS     R4,R0
??ProcessOperation_8:
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+3
        BCS      ??ProcessOperation_9
        LDR      R0,??ProcessOperation_5+0x4
        LDRB     R0,[R0, #+14]
        CMP      R0,#+16
        BCS      ??ProcessOperation_9
// 1388       {
// 1389         /* display the character at the currentStringIndex in the currentString */
// 1390         LCD_WriteCharacter(mDisplayParams.currentString[mDisplayParams.currentLine][mDisplayParams.currentStringIndex], 
// 1391                            mDisplayParams.currentXCoord, 
// 1392                            mDisplayParams.currentYCoord);             
        LDR      R0,??ProcessOperation_5+0x4
        LDRB     R2,[R0, #+1]
        LDR      R0,??ProcessOperation_5+0x4
        LDRB     R1,[R0, #+0]
        LDR      R0,??ProcessOperation_5+0x4
        LDRB     R0,[R0, #+14]
        LDR      R3,??ProcessOperation_5+0x4
        LDRB     R3,[R3, #+2]
        MOVS     R6,#+16
        MULS     R3,R6,R3
        LDR      R6,??ProcessOperation_5+0x4
        ADDS     R3,R6,R3
        ADDS     R0,R3,R0
        LDRB     R0,[R0, #+15]
        BL       LCD_WriteCharacter
// 1393         /* compute X coordinate for the next character */
// 1394         mDisplayParams.currentXCoord += (aLCDFont[mDisplayParams.currentFontType].pFontIndexTable[mDisplayParams.currentString[mDisplayParams.currentLine][mDisplayParams.currentStringIndex] - mFontOffset_c + 1] - 
// 1395                                          aLCDFont[mDisplayParams.currentFontType].pFontIndexTable[mDisplayParams.currentString[mDisplayParams.currentLine][mDisplayParams.currentStringIndex] - mFontOffset_c]);
        LDR      R0,??ProcessOperation_5+0x4
        LDRB     R0,[R0, #+0]
        LDR      R1,??ProcessOperation_5+0x4
        LDRB     R1,[R1, #+14]
        LDR      R2,??ProcessOperation_5+0x4
        LDRB     R2,[R2, #+2]
        MOVS     R3,#+16
        MULS     R2,R3,R2
        LDR      R3,??ProcessOperation_5+0x4
        ADDS     R2,R3,R2
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #+15]
        MOVS     R2,#+2
        MULS     R1,R2,R1
        LDR      R2,??ProcessOperation_5+0x4
        LDRB     R2,[R2, #+13]
        MOVS     R3,#+12
        MULS     R2,R3,R2
        LDR      R3,??DataTable15
        LDR      R2,[R3, R2]
        ADDS     R1,R2,R1
        SUBS     R1,R1,#+62
        LDRH     R1,[R1, #+0]
        ADDS     R0,R0,R1
        LDR      R1,??ProcessOperation_5+0x4
        LDRB     R1,[R1, #+14]
        LDR      R2,??ProcessOperation_5+0x4
        LDRB     R2,[R2, #+2]
        MOVS     R3,#+16
        MULS     R2,R3,R2
        LDR      R3,??ProcessOperation_5+0x4
        ADDS     R2,R3,R2
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #+15]
        MOVS     R2,#+2
        MULS     R1,R2,R1
        LDR      R2,??ProcessOperation_5+0x4
        LDRB     R2,[R2, #+13]
        MOVS     R3,#+12
        MULS     R2,R3,R2
        LDR      R3,??DataTable15
        LDR      R2,[R3, R2]
        ADDS     R1,R2,R1
        SUBS     R1,R1,#+64
        LDRH     R1,[R1, #+0]
        SUBS     R0,R0,R1
        LDR      R1,??ProcessOperation_5+0x4
        STRB     R0,[R1, #+0]
// 1396         mDisplayParams.currentStringIndex++;  
        LDR      R0,??ProcessOperation_5+0x4
        LDRB     R0,[R0, #+14]
        ADDS     R0,R0,#+1
        LDR      R1,??ProcessOperation_5+0x4
        STRB     R0,[R1, #+14]
// 1397       }
        ADDS     R4,R4,#+1
        B        ??ProcessOperation_8
// 1398         
// 1399       /* have we displayed the last character from the buffer? */
// 1400       if(mDisplayParams.currentStringIndex < gMAX_LCD_CHARS_c)
??ProcessOperation_9:
        LDR      R0,??ProcessOperation_5+0x4
        LDRB     R0,[R0, #+14]
        CMP      R0,#+16
        BCS      ??ProcessOperation_10
// 1401       {
// 1402         TS_SendEvent(gLCDTaskID, gLCDOpEvt_c);
        MOVS     R1,#+1
        LDR      R0,??DataTable15_1
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
        B        ??ProcessOperation_11
// 1403       }
// 1404       else
// 1405       { /* reset display parameters */      
// 1406         mDisplayParams.linesWidthWritten[mDisplayParams.currentLine] = mDisplayParams.currentXCoord;
??ProcessOperation_10:
        LDR      R0,??ProcessOperation_5+0x4
        LDRB     R0,[R0, #+2]
        LDR      R1,??ProcessOperation_5+0x4
        ADDS     R0,R1,R0
        LDR      R1,??ProcessOperation_5+0x4
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+5]
// 1407         mDisplayParams.currentStringIndex = 0;       
        LDR      R0,??ProcessOperation_5+0x4
        MOVS     R1,#+0
        STRB     R1,[R0, #+14]
// 1408         for(i = 0; i < aLCDFont[mDisplayParams.currentFontType].fontHeight; i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??ProcessOperation_12:
        LDR      R0,??ProcessOperation_5+0x4
        LDRB     R0,[R0, #+13]
        MOVS     R1,#+12
        MULS     R0,R1,R0
        LDR      R1,??DataTable15
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+8]
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,R0
        BCS      ??ProcessOperation_13
// 1409         { 
// 1410           /* clear the bitmask bit from linesToWrite because line was written  */
// 1411           mDisplayParams.linesToWrite &=(~(1<<(mDisplayParams.currentLine+i)));
        LDR      R0,??ProcessOperation_5+0x4
        LDRB     R0,[R0, #+4]
        MOVS     R1,#+1
        LDR      R2,??ProcessOperation_5+0x4
        LDRB     R2,[R2, #+2]
        ADDS     R2,R2,R4
        LSLS     R1,R1,R2
        BICS     R0,R0,R1
        LDR      R1,??ProcessOperation_5+0x4
        STRB     R0,[R1, #+4]
// 1412           /* mark line as written */
// 1413           mDisplayParams.writtenLines |= (1<<(mDisplayParams.currentLine+i)); 
        LDR      R0,??ProcessOperation_5+0x4
        LDRB     R0,[R0, #+3]
        MOVS     R1,#+1
        LDR      R2,??ProcessOperation_5+0x4
        LDRB     R2,[R2, #+2]
        ADDS     R2,R2,R4
        LSLS     R1,R1,R2
        ORRS     R1,R1,R0
        LDR      R0,??ProcessOperation_5+0x4
        STRB     R1,[R0, #+3]
// 1414         }        
        ADDS     R4,R4,#+1
        B        ??ProcessOperation_12
// 1415         mDisplayParams.currentLine        = mMaxLineNumber_c;
??ProcessOperation_13:
        LDR      R0,??ProcessOperation_5+0x4
        MOVS     R1,#+8
        STRB     R1,[R0, #+2]
// 1416         mOperationCompleted               = TRUE;        
        LDR      R0,??ProcessOperation_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        B        ??ProcessOperation_11
// 1417       }          
// 1418       break;
// 1419       
// 1420     case gLCD_ClearDisplayOp_c:
// 1421       if(mOperationCompleted)
??ProcessOperation_2:
        LDR      R0,??ProcessOperation_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??ProcessOperation_14
// 1422       {
// 1423         /* determine the lines that were written and need to be cleared */   
// 1424         linesToClear = mDisplayParams.writtenLines;  
        LDR      R0,??ProcessOperation_5+0x4
        LDRB     R0,[R0, #+3]
        LDR      R1,??DataTable15_2
        STRB     R0,[R1, #+0]
// 1425         if(mIsLcdInitialized == TRUE)
        LDR      R0,??DataTable15_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+1
        BNE      ??ProcessOperation_15
// 1426         {
// 1427           /* determine if there are lines that need to be erased and after need to be written */
// 1428           deleteWriteLines = linesToClear & mDisplayParams.linesToWrite;
        MOV      R0,SP
        LDR      R1,??DataTable15_2
        LDRB     R1,[R1, #+0]
        LDR      R2,??ProcessOperation_5+0x4
        LDRB     R2,[R2, #+4]
        ANDS     R2,R2,R1
        STRB     R2,[R0, #+0]
// 1429           if(deleteWriteLines)
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??ProcessOperation_15
// 1430           { /* if there are */
// 1431             /* mark that lines as deleted and jump over them */
// 1432             linesToClear &= ~(deleteWriteLines);  
        LDR      R0,??DataTable15_2
        LDRB     R0,[R0, #+0]
        MOV      R1,SP
        LDRB     R1,[R1, #+0]
        BICS     R0,R0,R1
        LDR      R1,??DataTable15_2
        STRB     R0,[R1, #+0]
// 1433           }
// 1434         }
// 1435         mOperationCompleted               = FALSE;
??ProcessOperation_15:
        LDR      R0,??ProcessOperation_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1436       }
// 1437       
// 1438       line = 0;
??ProcessOperation_14:
        MOVS     R0,#+0
        MOVS     R5,R0
// 1439       /* find the first written line */
// 1440       while((!((linesToClear>>line)&0x01))&&(line<mMaxLineNumber_c))
??ProcessOperation_16:
        LDR      R0,??DataTable15_2
        LDRB     R0,[R0, #+0]
        ASRS     R0,R0,R5
        LSLS     R0,R0,#+31
        BMI      ??ProcessOperation_17
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        CMP      R5,#+8
        BCS      ??ProcessOperation_17
// 1441       {
// 1442         line++;
        ADDS     R5,R5,#+1
        B        ??ProcessOperation_16
// 1443       }
// 1444       if(line!= mMaxLineNumber_c)
??ProcessOperation_17:
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        CMP      R5,#+8
        BEQ      ??ProcessOperation_18
// 1445       {
// 1446         /* in case at least a line is written */
// 1447         if(TRUE == LCD_ClearLine(line))
        MOVS     R0,R5
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       LCD_ClearLine
        CMP      R0,#+1
        BEQ      .+4
        B        ??ProcessOperation_11
// 1448         {
// 1449           /* mark line as cleared */
// 1450           mDisplayParams.writtenLines &= ~(1 << line);
        LDR      R0,??ProcessOperation_5+0x4
        LDRB     R0,[R0, #+3]
        MOVS     R1,#+1
        LSLS     R1,R1,R5
        BICS     R0,R0,R1
        LDR      R1,??ProcessOperation_5+0x4
        STRB     R0,[R1, #+3]
// 1451           linesToClear &= ~(1 << line);
        LDR      R0,??DataTable15_2
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+1
        LSLS     R1,R1,R5
        BICS     R0,R0,R1
        LDR      R1,??DataTable15_2
        STRB     R0,[R1, #+0]
// 1452           /* check if there are other lines written */
// 1453           if(linesToClear)
        LDR      R0,??DataTable15_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??ProcessOperation_19
// 1454           {
// 1455             /* prepare clearing the other line(s) */
// 1456             TS_SendEvent(gLCDTaskID, gLCDOpEvt_c);          
        MOVS     R1,#+1
        LDR      R0,??DataTable15_1
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
        B        ??ProcessOperation_11
// 1457           }
// 1458           else
// 1459           {
// 1460             mOperationCompleted = TRUE;
??ProcessOperation_19:
        LDR      R0,??ProcessOperation_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
// 1461             mIsLcdInitialized   = TRUE;
        LDR      R0,??DataTable15_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        B        ??ProcessOperation_11
// 1462           }          
// 1463         }
// 1464       }
// 1465       else
// 1466       {
// 1467         mOperationCompleted = TRUE;   
??ProcessOperation_18:
        LDR      R0,??ProcessOperation_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
// 1468         mIsLcdInitialized   = TRUE;
        LDR      R0,??DataTable15_3
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        B        ??ProcessOperation_11
// 1469       }
// 1470       break; 
// 1471       
// 1472     case gLCD_ClearLineOp_c:      
// 1473       if(mOperationCompleted)
??ProcessOperation_1:
        LDR      R0,??ProcessOperation_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??ProcessOperation_20
// 1474       {
// 1475         /* start the operation */
// 1476         mOperationCompleted               = FALSE;
        LDR      R0,??ProcessOperation_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1477       }
// 1478       /* check if the operation is finished */
// 1479       if(TRUE == LCD_ClearLine(operationAndLine.lineQueue))
??ProcessOperation_20:
        ADD      R0,SP,#+8
        LDRB     R0,[R0, #+1]
        BL       LCD_ClearLine
        CMP      R0,#+1
        BEQ      .+4
        B        ??ProcessOperation_11
// 1480       {
// 1481         /* mark line as cleared */
// 1482         mDisplayParams.writtenLines &= ~(1 << operationAndLine.lineQueue);
        LDR      R0,??ProcessOperation_5+0x4
        LDRB     R0,[R0, #+3]
        MOVS     R1,#+1
        ADD      R2,SP,#+8
        LDRB     R2,[R2, #+1]
        LSLS     R1,R1,R2
        BICS     R0,R0,R1
        LDR      R1,??ProcessOperation_5+0x4
        STRB     R0,[R1, #+3]
// 1483         /* stop the operation */ 
// 1484         mOperationCompleted = TRUE;          
        LDR      R0,??ProcessOperation_5
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        B        ??ProcessOperation_11
// 1485       }
// 1486       break;
// 1487       
// 1488     case gLCD_WriteBitmapOp_c:  
// 1489       if(mOperationCompleted)
??ProcessOperation_3:
        LDR      R0,??ProcessOperation_5
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??ProcessOperation_21
// 1490       {
// 1491         line = operationAndLine.lineQueue;
        ADD      R0,SP,#+8
        LDRB     R0,[R0, #+1]
        MOVS     R5,R0
// 1492         /* initialize the start coordinates for the string to be written */ 
// 1493         mDisplayParams.currentLine = line;
        LDR      R0,??ProcessOperation_5+0x4
        STRB     R5,[R0, #+2]
// 1494         mDisplayParams.currentXCoord = mLineParams[line].xCoord;;  
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        MOVS     R0,#+3
        MULS     R0,R5,R0
        LDR      R1,??ProcessOperation_7
        LDRB     R0,[R1, R0]
        LDR      R1,??ProcessOperation_5+0x4
        STRB     R0,[R1, #+0]
// 1495         mDisplayParams.currentYCoord = mLineParams[line].yCoord; 
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        MOVS     R0,#+3
        MULS     R0,R5,R0
        LDR      R1,??ProcessOperation_7
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+1]
        LDR      R1,??ProcessOperation_5+0x4
        STRB     R0,[R1, #+1]
// 1496         mDisplayParams.currentStringIndex = 0;
        LDR      R0,??ProcessOperation_5+0x4
        MOVS     R1,#+0
        STRB     R1,[R0, #+14]
// 1497         mOperationCompleted               = FALSE;  
        LDR      R0,??ProcessOperation_5
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1498       }      
// 1499       /* display only mNumberOfCharToWrite_c characters once because of time constraints */
// 1500       for(i = 0; ((i < mNumberOfCharToWrite_c)&&(mDisplayParams.currentStringIndex < gMAX_LCD_CHARS_c)); i++)
??ProcessOperation_21:
        MOVS     R0,#+0
        MOVS     R4,R0
??ProcessOperation_22:
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+3
        BCS      ??ProcessOperation_23
        LDR      R0,??ProcessOperation_5+0x4
        LDRB     R0,[R0, #+14]
        CMP      R0,#+16
        BCS      ??ProcessOperation_23
// 1501       {
// 1502         /* display the character at the currentStringIndex in the currentBitmap */
// 1503         /* in case space must be inserted, use mBitmapSpace as bitmap and 0 as index */
// 1504         if(mDisplayParams.currentBitmap[mDisplayParams.currentLine][mDisplayParams.currentStringIndex] != 0xFF)
        LDR      R0,??ProcessOperation_5+0x4
        LDRB     R0,[R0, #+14]
        LDR      R1,??ProcessOperation_5+0x4
        LDRB     R1,[R1, #+2]
        MOVS     R2,#+16
        MULS     R1,R2,R1
        LDR      R2,??ProcessOperation_5+0x4
        ADDS     R1,R2,R1
        ADDS     R0,R1,R0
        ADDS     R0,R0,#+143
        LDRB     R0,[R0, #+0]
        CMP      R0,#+255
        BEQ      ??ProcessOperation_24
// 1505         {
// 1506           LCD_WriteSymbol(mDisplayParams.currentBitmap[mDisplayParams.currentLine][mDisplayParams.currentStringIndex], 
// 1507                           mDisplayParams.currentXCoord, 
// 1508                           mDisplayParams.currentYCoord,
// 1509                           mReceivedBitmap); 
        LDR      R0,??DataTable18
        LDR      R3,[R0, #+0]
        LDR      R0,??ProcessOperation_5+0x4
        LDRB     R2,[R0, #+1]
        LDR      R0,??ProcessOperation_5+0x4
        LDRB     R1,[R0, #+0]
        LDR      R0,??ProcessOperation_5+0x4
        LDRB     R0,[R0, #+14]
        LDR      R6,??ProcessOperation_5+0x4
        LDRB     R6,[R6, #+2]
        MOVS     R7,#+16
        MULS     R6,R7,R6
        LDR      R7,??ProcessOperation_5+0x4
        ADDS     R6,R7,R6
        ADDS     R0,R6,R0
        ADDS     R0,R0,#+143
        LDRB     R0,[R0, #+0]
        BL       LCD_WriteSymbol
        B        ??ProcessOperation_25
// 1510         }
// 1511         else
// 1512         {
// 1513           LCD_WriteSymbol(0x00, 
// 1514                           mDisplayParams.currentXCoord, 
// 1515                           mDisplayParams.currentYCoord,
// 1516                           mBitmapSpace); 
??ProcessOperation_24:
        LDR      R3,??DataTable19
        LDR      R0,??ProcessOperation_5+0x4
        LDRB     R2,[R0, #+1]
        LDR      R0,??ProcessOperation_5+0x4
        LDRB     R1,[R0, #+0]
        MOVS     R0,#+0
        BL       LCD_WriteSymbol
// 1517         }          
// 1518         /* compute X coordinate for the next character */
// 1519         mDisplayParams.currentXCoord += (mSymbolWidth);
??ProcessOperation_25:
        LDR      R0,??ProcessOperation_5+0x4
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+8
        LDR      R1,??ProcessOperation_5+0x4
        STRB     R0,[R1, #+0]
// 1520         mDisplayParams.currentStringIndex++;  
        LDR      R0,??ProcessOperation_5+0x4
        LDRB     R0,[R0, #+14]
        ADDS     R0,R0,#+1
        LDR      R1,??ProcessOperation_5+0x4
        STRB     R0,[R1, #+14]
// 1521       }
        ADDS     R4,R4,#+1
        B        ??ProcessOperation_22
// 1522         
// 1523       /* have we displayed the last character from the buffer? */
// 1524       if(mDisplayParams.currentStringIndex < gMAX_LCD_CHARS_c)
??ProcessOperation_23:
        LDR      R0,??ProcessOperation_5+0x4
        LDRB     R0,[R0, #+14]
        CMP      R0,#+16
        BCS      ??ProcessOperation_26
// 1525       {
// 1526         TS_SendEvent(gLCDTaskID, gLCDOpEvt_c);
        MOVS     R1,#+1
        LDR      R0,??DataTable15_1
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
        B        ??ProcessOperation_11
        Nop      
        DATA
??ProcessOperation_5:
        DC32     mOperationCompleted
        DC32     mDisplayParams
        THUMB
// 1527       }
// 1528       else
// 1529       { /* reset display parameters */      
// 1530         mDisplayParams.linesWidthWritten[mDisplayParams.currentLine] = mDisplayParams.currentXCoord;
??ProcessOperation_26:
        LDR      R0,??DataTable20
        LDRB     R0,[R0, #+2]
        LDR      R1,??DataTable20
        ADDS     R0,R1,R0
        LDR      R1,??DataTable20
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+5]
// 1531         mDisplayParams.currentStringIndex = 0;       
        LDR      R0,??DataTable20
        MOVS     R1,#+0
        STRB     R1,[R0, #+14]
// 1532         /* clear the bitmask bit from linesToWrite because line was written  */
// 1533         mDisplayParams.linesToWrite &=(~(1<<mDisplayParams.currentLine));
        LDR      R0,??DataTable20
        LDRB     R0,[R0, #+4]
        MOVS     R1,#+1
        LDR      R2,??DataTable20
        LDRB     R2,[R2, #+2]
        LSLS     R1,R1,R2
        BICS     R0,R0,R1
        LDR      R1,??DataTable20
        STRB     R0,[R1, #+4]
// 1534         /* mark line as written */
// 1535         mDisplayParams.writtenLines |= (1<<mDisplayParams.currentLine);        
        LDR      R0,??DataTable20
        LDRB     R0,[R0, #+3]
        MOVS     R1,#+1
        LDR      R2,??DataTable20
        LDRB     R2,[R2, #+2]
        LSLS     R1,R1,R2
        ORRS     R1,R1,R0
        LDR      R0,??DataTable20
        STRB     R1,[R0, #+3]
// 1536         mDisplayParams.currentLine        = mMaxLineNumber_c;
        LDR      R0,??DataTable20
        MOVS     R1,#+8
        STRB     R1,[R0, #+2]
// 1537         mOperationCompleted               = TRUE;        
        LDR      R0,??DataTable20_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
        B        ??ProcessOperation_11
// 1538       }          
// 1539       break;
// 1540 
// 1541     default: 
// 1542       break;    
// 1543   }    
// 1544 }
??ProcessOperation_4:
??ProcessOperation_11:
        POP      {R0-R2,R4-R7}
        POP      {R3}
        BX       R3               ;; return
        DATA
??ProcessOperation_7:
        DC32     mLineParams

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable15:
        DC32     aLCDFont

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable15_1:
        DC32     gLCDTaskID

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable15_2:
        DC32     ??linesToClear

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable15_3:
        DC32     mIsLcdInitialized

        SECTION `.bss`:DATA:NOROOT(0)
??linesToClear:
        DS8 1
// 1545 
// 1546 /******************************************************************************
// 1547 * This function sets a certain value to the LCD DATA pins
// 1548 *
// 1549 * Interface assumptions:
// 1550 *
// 1551 *
// 1552 * Return value:
// 1553 * None
// 1554 *
// 1555 *
// 1556 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1557 static void SendData(uint8_t data)
// 1558 {
SendData:
        PUSH     {R4,LR}
        MOVS     R4,R0
// 1559 #if gLCDGpioPinMode_c
// 1560     /* bit |7|6|5|4|3|2|1|0| */
// 1561     (void)Gpio_SetPinData(LCD_D0, (data & 0x01)? gGpioPinStateHigh_c : gGpioPinStateLow_c);
// 1562     (void)Gpio_SetPinData(LCD_D1, (data & 0x02)? gGpioPinStateHigh_c : gGpioPinStateLow_c);
// 1563     (void)Gpio_SetPinData(LCD_D2, (data & 0x04)? gGpioPinStateHigh_c : gGpioPinStateLow_c);
// 1564     (void)Gpio_SetPinData(LCD_D3, (data & 0x08)? gGpioPinStateHigh_c : gGpioPinStateLow_c);
// 1565     (void)Gpio_SetPinData(LCD_D4, (data & 0x10)? gGpioPinStateHigh_c : gGpioPinStateLow_c);
// 1566     (void)Gpio_SetPinData(LCD_D5, (data & 0x20)? gGpioPinStateHigh_c : gGpioPinStateLow_c);
// 1567     (void)Gpio_SetPinData(LCD_D6, (data & 0x40)? gGpioPinStateHigh_c : gGpioPinStateLow_c);
// 1568     (void)Gpio_SetPinData(LCD_D7, (data & 0x80)? gGpioPinStateHigh_c : gGpioPinStateLow_c);
// 1569 #else /* gLCDGpioPinMode_c */    
// 1570     Gpio_SetPortData(LCD_DATA_LO_PORT, LCD_DATA_LO_WRITE(data), LCD_DATA_LO_MASK); 
        MOVS     R2,#+240
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        LSLS     R1,R4,#+4
        MOVS     R0,#+0
        BL       Gpio_SetPortData
// 1571     Gpio_SetPortData(LCD_DATA_HI_PORT, LCD_DATA_HI_WRITE(data), LCD_DATA_HI_MASK);
        MOVS     R2,#+15
        MOVS     R1,R4
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        LSRS     R1,R1,#+4
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        MOVS     R0,#+1
        BL       Gpio_SetPortData
// 1572     
// 1573 #endif /* gLCDGpioPinMode_c */     
// 1574 }
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
// 1575 
// 1576 /******************************************************************************
// 1577 * This function sets the LCD DATA pins as inputs
// 1578 *
// 1579 * Interface assumptions:
// 1580 *
// 1581 *
// 1582 * Return value:
// 1583 * None
// 1584 *
// 1585 *
// 1586 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1587 static void SetHiZ(void)
// 1588 {
SetHiZ:
        PUSH     {R7,LR}
// 1589     /* change data pins direction back to input */
// 1590 #if gLCDGpioPinMode_c
// 1591     (void)Gpio_SetPinDir(LCD_D0,      gGpioDirIn_c);
// 1592     (void)Gpio_SetPinDir(LCD_D1,      gGpioDirIn_c);
// 1593     (void)Gpio_SetPinDir(LCD_D2,      gGpioDirIn_c);
// 1594     (void)Gpio_SetPinDir(LCD_D3,      gGpioDirIn_c);
// 1595     (void)Gpio_SetPinDir(LCD_D4,      gGpioDirIn_c);
// 1596     (void)Gpio_SetPinDir(LCD_D5,      gGpioDirIn_c);
// 1597     (void)Gpio_SetPinDir(LCD_D6,      gGpioDirIn_c);
// 1598     (void)Gpio_SetPinDir(LCD_D7,      gGpioDirIn_c);
// 1599 #else /* gLCDGpioPinMode_c */ 
// 1600     Gpio_SetPortDir(LCD_DATA_LO_PORT, ~LCD_DATA_LO_MASK, LCD_DATA_LO_MASK); 
        MOVS     R2,#+240
        MOVS     R1,#+240
        MVNS     R1,R1            ;; #-241
        MOVS     R0,#+0
        BL       Gpio_SetPortDir
// 1601     Gpio_SetPortDir(LCD_DATA_HI_PORT, ~LCD_DATA_HI_MASK, LCD_DATA_HI_MASK); 
        MOVS     R2,#+15
        MOVS     R1,#+15
        MVNS     R1,R1            ;; #-16
        MOVS     R0,#+1
        BL       Gpio_SetPortDir
// 1602     
// 1603 #endif /* gLCDGpioPinMode_c */
// 1604 
// 1605 }
        POP      {R0,R3}
        BX       R3               ;; return
// 1606 
// 1607 /******************************************************************************
// 1608 * This function sets the LCD DATA pins as outputs
// 1609 *
// 1610 * Interface assumptions:
// 1611 *
// 1612 *
// 1613 * Return value:
// 1614 * None
// 1615 *
// 1616 *
// 1617 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1618 static void SetOutput(void)
// 1619 {
SetOutput:
        PUSH     {R7,LR}
// 1620   /* change data pins direction to output */
// 1621 #if gLCDGpioPinMode_c
// 1622   (void)Gpio_SetPinDir(LCD_D0,      gGpioDirOut_c);
// 1623   (void)Gpio_SetPinDir(LCD_D1,      gGpioDirOut_c);
// 1624   (void)Gpio_SetPinDir(LCD_D2,      gGpioDirOut_c);
// 1625   (void)Gpio_SetPinDir(LCD_D3,      gGpioDirOut_c);
// 1626   (void)Gpio_SetPinDir(LCD_D4,      gGpioDirOut_c);
// 1627   (void)Gpio_SetPinDir(LCD_D5,      gGpioDirOut_c);
// 1628   (void)Gpio_SetPinDir(LCD_D6,      gGpioDirOut_c);
// 1629   (void)Gpio_SetPinDir(LCD_D7,      gGpioDirOut_c);
// 1630 #else /* gLCDGpioPinMode_c */
// 1631    
// 1632     Gpio_SetPortDir(LCD_DATA_LO_PORT, LCD_DATA_LO_MASK, LCD_DATA_LO_MASK);      
        MOVS     R2,#+240
        MOVS     R1,#+240
        MOVS     R0,#+0
        BL       Gpio_SetPortDir
// 1633     Gpio_SetPortDir(LCD_DATA_HI_PORT, LCD_DATA_HI_MASK, LCD_DATA_HI_MASK);         
        MOVS     R2,#+15
        MOVS     R1,#+15
        MOVS     R0,#+1
        BL       Gpio_SetPortDir
// 1634     
// 1635 #endif /* gLCDGpioPinMode_c */
// 1636 
// 1637 }
        POP      {R0,R3}
        BX       R3               ;; return
// 1638 
// 1639 /******************************************************************************
// 1640 * This function initilizes the display for a data write (line, page, column)
// 1641 *
// 1642 * Interface assumptions:
// 1643 *
// 1644 *
// 1645 * Return value:
// 1646 * None
// 1647 *
// 1648 *
// 1649 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1650 static void InitDisplayWrite(uint8_t xStartCoord, uint8_t yStartCoord)
// 1651 {
InitDisplayWrite:
        PUSH     {R4-R6,LR}
        MOVS     R5,R0
        MOVS     R4,R1
// 1652 
// 1653   uint8_t page;  
// 1654   
// 1655   page = yStartCoord >> 3;
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        LSRS     R0,R0,#+3
        MOVS     R6,R0
// 1656 
// 1657   LCD_WriteCommand(gLCDDisplayStartLineDefaultCommand_c);
        MOVS     R0,#+64
        BL       LCD_WriteCommand
// 1658   LCD_WriteCommand(gLCDPageAddressDefaultCommand_c + page);
        MOVS     R0,R6
        SUBS     R0,R0,#+80
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteCommand
// 1659   LCD_WriteCommand(gLCDNibble0ColumnAddressDefaultCommand_c | ((xStartCoord & 0xF0)>>4));
        MOVS     R1,R5
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        LSRS     R1,R1,#+4
        MOVS     R0,#+16
        ORRS     R0,R0,R1
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        BL       LCD_WriteCommand
// 1660   LCD_WriteCommand(gLCDNibble1ColumnAddressDefaultCommand_c | (xStartCoord & 0x0F));         
        LSLS     R0,R5,#+28       ;; ZeroExtS R0,R5,#+28,#+28
        LSRS     R0,R0,#+28
        BL       LCD_WriteCommand
// 1661 }
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return
// 1662 
// 1663 /******************************************************************************
// 1664 * This function reads the current location from display data RAM
// 1665 *
// 1666 * Interface assumptions:
// 1667 *
// 1668 *
// 1669 * Return value:
// 1670 * None
// 1671 *
// 1672 *
// 1673 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1674 static uint8_t ReadData(void)
// 1675 {
ReadData:
        PUSH     {R4,LR}
// 1676   uint8_t ReturnValue;
// 1677   Gpio_SetPinData(LCD_A0, LCD_A0_DATA);
        MOVS     R1,#+0
        MOVS     R0,#+21
        BL       Gpio_SetPinData
// 1678   Gpio_SetPinData(LCD_CS, LCD_CS_ACTIVE);
        MOVS     R1,#+1
        MOVS     R0,#+20
        BL       Gpio_SetPinData
// 1679   DelayUs(1);
        MOVS     R0,#+1
        BL       DelayUs
// 1680   Gpio_SetPinData(LCD_RD, LCD_RD_ACTIVE);
        MOVS     R1,#+1
        MOVS     R0,#+8
        BL       Gpio_SetPinData
// 1681   DelayUs(1);
        MOVS     R0,#+1
        BL       DelayUs
// 1682   ReturnValue = GetData();
        BL       GetData
        MOVS     R4,R0
// 1683   Gpio_SetPinData(LCD_RD, LCD_RD_INACTIVE);
        MOVS     R1,#+0
        MOVS     R0,#+8
        BL       Gpio_SetPinData
// 1684   Gpio_SetPinData(LCD_CS, LCD_CS_INACTIVE);
        MOVS     R1,#+0
        MOVS     R0,#+20
        BL       Gpio_SetPinData
// 1685   DelayUs(1);
        MOVS     R0,#+1
        BL       DelayUs
// 1686   return ReturnValue;
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
// 1687 }
// 1688 
// 1689 /******************************************************************************
// 1690 * This function sets the data from the current RAM display location
// 1691 * to LCD DATA pins
// 1692 *
// 1693 * Interface assumptions:
// 1694 *
// 1695 *
// 1696 * Return value:
// 1697 * unsigned 8 bit
// 1698 *
// 1699 *
// 1700 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1701 static uint8_t GetData(void)
// 1702 {
GetData:
        PUSH     {R4,LR}
        SUB      SP,SP,#+8
// 1703     uint8_t        ReturnValue = 0;
        MOVS     R0,#+0
        MOVS     R4,R0
// 1704 #if gLCDGpioPinMode_c
// 1705     GpioPinState_t Bitdata;
// 1706     /* bit |7|6|5|4|3|2|1|0| */
// 1707     Gpio_GetPinData(LCD_D7, &Bitdata);
// 1708     ReturnValue = (Bitdata)? (1<<7) : 0;
// 1709     Gpio_GetPinData(LCD_D6, &Bitdata);
// 1710     ReturnValue |= (Bitdata)? (1<<6) : 0;
// 1711     Gpio_GetPinData(LCD_D5, &Bitdata);
// 1712     ReturnValue |= (Bitdata)? (1<<5) : 0;
// 1713     Gpio_GetPinData(LCD_D4, &Bitdata);
// 1714     ReturnValue |= (Bitdata)? (1<<4) : 0;
// 1715     Gpio_GetPinData(LCD_D3, &Bitdata);
// 1716     ReturnValue |= (Bitdata)? (1<<3) : 0;
// 1717     Gpio_GetPinData(LCD_D2, &Bitdata);
// 1718     ReturnValue |= (Bitdata)? (1<<2) : 0;
// 1719     Gpio_GetPinData(LCD_D1, &Bitdata);
// 1720     ReturnValue |= (Bitdata)? (1<<1) : 0;
// 1721     Gpio_GetPinData(LCD_D0, &Bitdata);
// 1722     ReturnValue |= (Bitdata)? (1<<0) : 0;
// 1723     
// 1724 #else /* gLCDGpioPinMode_c */
// 1725     uint32_t temp;
// 1726     Gpio_GetPortData(LCD_DATA_LO_PORT, &temp);
        MOV      R1,SP
        MOVS     R0,#+0
        BL       Gpio_GetPortData
// 1727     ReturnValue = LCD_DATA_LO_READ(LCD_DATA_LO_MASK & temp);
        LDR      R0,[SP, #+0]
        LSRS     R0,R0,#+4
        LSLS     R0,R0,#+28       ;; ZeroExtS R0,R0,#+28,#+28
        LSRS     R0,R0,#+28
        MOVS     R4,R0
// 1728     Gpio_GetPortData(LCD_DATA_HI_PORT, &temp);
        MOV      R1,SP
        MOVS     R0,#+1
        BL       Gpio_GetPortData
// 1729     ReturnValue |= LCD_DATA_HI_READ(LCD_DATA_HI_MASK & temp);
        MOVS     R1,R4
        LDR      R0,[SP, #+0]
        LSLS     R4,R0,#+4
        ORRS     R4,R4,R1
// 1730 
// 1731 #endif /* gLCDGpioPinMode_c */
// 1732     
// 1733     return ReturnValue;
        MOVS     R0,R4
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        POP      {R1,R2,R4}
        POP      {R3}
        BX       R3               ;; return
// 1734 }
// 1735 
// 1736 /******************************************************************************
// 1737 * This function gets the length of a string and return the length
// 1738 *
// 1739 * Interface assumptions:
// 1740 *
// 1741 *
// 1742 * Return value:
// 1743 * char
// 1744 *
// 1745 *
// 1746 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1747 static uint8_t GetStrlen
// 1748   (
// 1749   const uint8_t *pString /* IN: Pointer to text string */
// 1750   )
// 1751 {
GetStrlen:
        PUSH     {LR}
        MOVS     R1,R0
// 1752   int8_t count=0, length=0;
        MOVS     R3,#+0
        MOVS     R2,R3
        MOVS     R3,#+0
        MOVS     R0,R3
// 1753 
// 1754   while (*pString != '\0' && count <gMAX_LCD_CHARS_c ) {
??GetStrlen_0:
        LDRB     R3,[R1, #+0]
        CMP      R3,#+0
        BEQ      ??GetStrlen_1
        LSLS     R2,R2,#+24       ;; SignExtS R2,R2,#+24,#+24
        ASRS     R2,R2,#+24
        CMP      R2,#+16
        BGE      ??GetStrlen_1
// 1755     count++;
        ADDS     R2,R2,#+1
// 1756     length++;
        ADDS     R0,R0,#+1
// 1757     pString++;
        ADDS     R1,R1,#+1
        B        ??GetStrlen_0
// 1758   }
// 1759 
// 1760   /* Check boundries */
// 1761   if ( length > gMAX_LCD_CHARS_c ) {
??GetStrlen_1:
        LSLS     R0,R0,#+24       ;; SignExtS R0,R0,#+24,#+24
        ASRS     R0,R0,#+24
        CMP      R0,#+17
        BLT      ??GetStrlen_2
// 1762     length = gMAX_LCD_CHARS_c;
        MOVS     R3,#+16
        MOVS     R0,R3
// 1763   }
// 1764 
// 1765   return length;
??GetStrlen_2:
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        POP      {R3}
        BX       R3               ;; return
// 1766 }
// 1767 
// 1768 /******************************************************************************
// 1769 * This function initializes the operation queue
// 1770 *
// 1771 * Interface assumptions:
// 1772 *
// 1773 *
// 1774 * Return value: NONE
// 1775 *
// 1776 *
// 1777 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1778 static void InitQueue(void)
// 1779 {
InitQueue:
        PUSH     {LR}
// 1780   uint8_t i;
// 1781   
// 1782   mQueue.head = 0;
        LDR      R1,??DataTable20_2
        MOVS     R2,#+0
        STRB     R2,[R1, #+0]
// 1783   mQueue.tail = 0;
        LDR      R1,??DataTable20_2
        MOVS     R2,#+0
        STRB     R2,[R1, #+1]
// 1784   for(i=0; i<mMaxQueueEntries_c; i++)
        MOVS     R1,#+0
        MOVS     R0,R1
??InitQueue_0:
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+45
        BCS      ??InitQueue_1
// 1785   {
// 1786     mQueue.opLine[i].opQueue   = (operation_t)mEmptyQueue_c;    
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        MOVS     R1,#+2
        MULS     R1,R0,R1
        LDR      R2,??DataTable20_2
        ADDS     R1,R2,R1
        MOVS     R2,#+255
        STRB     R2,[R1, #+2]
// 1787     mQueue.opLine[i].lineQueue = mEmptyQueue_c;   
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        MOVS     R1,#+2
        MULS     R1,R0,R1
        LDR      R2,??DataTable20_2
        ADDS     R1,R2,R1
        MOVS     R2,#+255
        STRB     R2,[R1, #+3]
// 1788   }
        ADDS     R0,R0,#+1
        B        ??InitQueue_0
// 1789 }
??InitQueue_1:
        POP      {R3}
        BX       R3               ;; return
// 1790 
// 1791 /******************************************************************************
// 1792 * This function adds an element to the queue
// 1793 *
// 1794 * Interface assumptions:
// 1795 *
// 1796 *
// 1797 * Return value:
// 1798 *  TRUE  - if the operation was successuful
// 1799 *  FALSE - if the queue is full and the element could not be added   
// 1800 *
// 1801 *
// 1802 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1803 static bool_t AddToQueue(opLine_t operationLine)
// 1804 {
AddToQueue:
        PUSH     {R0,LR}
// 1805   if(!IsQueueFull())
        BL       IsQueueFull
        CMP      R0,#+0
        BNE      ??AddToQueue_0
// 1806   { 
// 1807     mQueue.opLine[mQueue.tail].opQueue   = operationLine.opQueue;   
        LDR      R0,??DataTable20_2
        LDRB     R0,[R0, #+1]
        MOVS     R1,#+2
        MULS     R0,R1,R0
        LDR      R1,??DataTable20_2
        ADDS     R0,R1,R0
        MOV      R1,SP
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+2]
// 1808     mQueue.opLine[mQueue.tail].lineQueue = operationLine.lineQueue;   
        LDR      R0,??DataTable20_2
        LDRB     R0,[R0, #+1]
        MOVS     R1,#+2
        MULS     R0,R1,R0
        LDR      R1,??DataTable20_2
        ADDS     R0,R1,R0
        MOV      R1,SP
        LDRB     R1,[R1, #+1]
        STRB     R1,[R0, #+3]
// 1809     if(++mQueue.tail == mMaxQueueEntries_c)
        LDR      R0,??DataTable20_2
        LDRB     R0,[R0, #+1]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable20_2
        STRB     R0,[R1, #+1]
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+45
        BNE      ??AddToQueue_1
// 1810     {
// 1811       mQueue.tail = 0;      
        LDR      R0,??DataTable20_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+1]
// 1812     }
// 1813     return TRUE;
??AddToQueue_1:
        MOVS     R0,#+1
        B        ??AddToQueue_2
// 1814   }
// 1815   else
// 1816   {
// 1817     return FALSE;    
??AddToQueue_0:
        MOVS     R0,#+0
??AddToQueue_2:
        POP      {R1,R3}
        BX       R3               ;; return
// 1818   }  
// 1819 }  
// 1820 
// 1821 /******************************************************************************
// 1822 * This function removes an element from the queue
// 1823 *
// 1824 * Interface assumptions:
// 1825 *
// 1826 *
// 1827 * Return value:
// 1828 *  value from the queue  - if the operation was successuful
// 1829 *  mEmptyQueue_c, mEmptyQueue_c - if the queue is empty and the element could not be removed   
// 1830 *
// 1831 *
// 1832 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1833 static opLine_t RemoveFromQueue(void)
// 1834 {
RemoveFromQueue:
        PUSH     {R7,LR}
// 1835   opLine_t returnValue = {(operation_t)mEmptyQueue_c, mEmptyQueue_c};
        LDR      R0,??DataTable20_3
        LDR      R0,[R0, #+0]
        STR      R0,[SP, #+0]
// 1836   if(!IsQueueEmpty())
        BL       IsQueueEmpty
        CMP      R0,#+0
        BNE      ??RemoveFromQueue_0
// 1837   {
// 1838     returnValue.opQueue   = mQueue.opLine[mQueue.head].opQueue;
        MOV      R0,SP
        LDR      R1,??DataTable20_2
        LDRB     R1,[R1, #+0]
        MOVS     R2,#+2
        MULS     R1,R2,R1
        LDR      R2,??DataTable20_2
        ADDS     R1,R2,R1
        LDRB     R1,[R1, #+2]
        STRB     R1,[R0, #+0]
// 1839     returnValue.lineQueue = mQueue.opLine[mQueue.head].lineQueue;
        LDR      R0,??DataTable20_2
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+2
        MULS     R0,R1,R0
        LDR      R1,??DataTable20_2
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+3]
        MOV      R1,SP
        STRB     R0,[R1, #+1]
// 1840     mQueue.opLine[mQueue.head].opQueue   = (operation_t)mEmptyQueue_c;
        LDR      R0,??DataTable20_2
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+2
        MULS     R0,R1,R0
        LDR      R1,??DataTable20_2
        ADDS     R0,R1,R0
        MOVS     R1,#+255
        STRB     R1,[R0, #+2]
// 1841     mQueue.opLine[mQueue.head].lineQueue = mEmptyQueue_c;
        LDR      R0,??DataTable20_2
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+2
        MULS     R0,R1,R0
        LDR      R1,??DataTable20_2
        ADDS     R0,R1,R0
        MOVS     R1,#+255
        STRB     R1,[R0, #+3]
// 1842     if(++mQueue.head == mMaxQueueEntries_c)
        LDR      R0,??DataTable20_2
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable20_2
        STRB     R0,[R1, #+0]
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+45
        BNE      ??RemoveFromQueue_0
// 1843     {
// 1844       mQueue.head = 0;      
        LDR      R0,??DataTable20_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
// 1845     }    
// 1846   }
// 1847   return  returnValue;
??RemoveFromQueue_0:
        LDR      R0,[SP, #+0]
        POP      {R1,R3}
        BX       R3               ;; return
// 1848 }  

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable18:
        DC32     mReceivedBitmap
// 1849 
// 1850 /******************************************************************************
// 1851 * This function checks if the mQueue queue is empty
// 1852 *
// 1853 * Interface assumptions:
// 1854 *
// 1855 *
// 1856 * Return value:
// 1857 *  TRUE  - if the queue is empty
// 1858 *  FALSE - otherwise   
// 1859 *
// 1860 *
// 1861 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1862 static bool_t IsQueueEmpty(void)
// 1863 {
IsQueueEmpty:
        PUSH     {LR}
// 1864   if((mQueue.head == mQueue.tail)&&
// 1865      (mQueue.opLine[mQueue.head].opQueue   == mEmptyQueue_c)&&
// 1866      (mQueue.opLine[mQueue.head].lineQueue == mEmptyQueue_c))
        LDR      R0,??DataTable20_2
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable20_2
        LDRB     R1,[R1, #+1]
        CMP      R0,R1
        BNE      ??IsQueueEmpty_0
        LDR      R0,??DataTable20_2
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+2
        MULS     R0,R1,R0
        LDR      R1,??DataTable20_2
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+2]
        CMP      R0,#+255
        BNE      ??IsQueueEmpty_0
        LDR      R0,??DataTable20_2
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+2
        MULS     R0,R1,R0
        LDR      R1,??DataTable20_2
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+3]
        CMP      R0,#+255
        BNE      ??IsQueueEmpty_0
// 1867   {
// 1868     return TRUE;      
        MOVS     R0,#+1
        B        ??IsQueueEmpty_1
// 1869   }
// 1870   else
// 1871   {
// 1872     return FALSE;
??IsQueueEmpty_0:
        MOVS     R0,#+0
??IsQueueEmpty_1:
        POP      {R3}
        BX       R3               ;; return
// 1873   }  
// 1874 }  

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable19:
        DC32     mBitmapSpace
// 1875 
// 1876 /******************************************************************************
// 1877 * This function checks if the mQueue queue is full
// 1878 *
// 1879 * Interface assumptions:
// 1880 *
// 1881 *
// 1882 * Return value:
// 1883 *  TRUE  - if the queue is full
// 1884 *  FALSE - otherwise   
// 1885 *
// 1886 *
// 1887 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1888 static bool_t IsQueueFull(void)
// 1889 {
IsQueueFull:
        PUSH     {LR}
// 1890   if((mQueue.head == mQueue.tail)&&
// 1891      (mQueue.opLine[mQueue.head].opQueue   != mEmptyQueue_c)&&
// 1892      (mQueue.opLine[mQueue.head].lineQueue != mEmptyQueue_c))
        LDR      R0,??DataTable20_2
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable20_2
        LDRB     R1,[R1, #+1]
        CMP      R0,R1
        BNE      ??IsQueueFull_0
        LDR      R0,??DataTable20_2
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+2
        MULS     R0,R1,R0
        LDR      R1,??DataTable20_2
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+2]
        CMP      R0,#+255
        BEQ      ??IsQueueFull_0
        LDR      R0,??DataTable20_2
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+2
        MULS     R0,R1,R0
        LDR      R1,??DataTable20_2
        ADDS     R0,R1,R0
        LDRB     R0,[R0, #+3]
        CMP      R0,#+255
        BEQ      ??IsQueueFull_0
// 1893   {
// 1894     return TRUE;   
        MOVS     R0,#+1
        B        ??IsQueueFull_1
// 1895   }
// 1896   else
// 1897   {
// 1898     return FALSE;
??IsQueueFull_0:
        MOVS     R0,#+0
??IsQueueFull_1:
        POP      {R3}
        BX       R3               ;; return
// 1899   }  
// 1900 }  

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable20:
        DC32     mDisplayParams

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable20_1:
        DC32     mOperationCompleted

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable20_2:
        DC32     mQueue

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable20_3:
        DC32     `?<Constant {255, 255}>`

        END
// 1901 
// 1902 #endif /* (gLCDSupported_d == 1) */
// 
//   116 bytes in section .bss
//   298 bytes in section .data
//   104 bytes in section .rodata
// 5 174 bytes in section .text
// 
// 5 174 bytes of CODE  memory
//   104 bytes of CONST memory
//   414 bytes of DATA  memory
//
//Errors: none
//Warnings: none
