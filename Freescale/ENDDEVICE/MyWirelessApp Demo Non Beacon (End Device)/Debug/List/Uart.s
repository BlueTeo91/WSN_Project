///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      08/Dec/2015  00:24:12 /
// IAR ANSI C/C++ Compiler V5.50.7.22081/W32 EVALUATION for ARM               /
// Copyright (C) 1999-2010 IAR Systems AB.                                    /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Documents and Settings\Administrator\Desktop\WSN_Pro /
//                    ject\ENDDEV\MyWirelessApp Demo Non Beacon (End          /
//                    Device)\PLM\Source\UART\Uart.c                          /
//    Command line =  "C:\Documents and Settings\Administrator\Desktop\WSN_Pr /
//                    oject\ENDDEV\MyWirelessApp Demo Non Beacon (End         /
//                    Device)\PLM\Source\UART\Uart.c" -D gMacStandAlone_d=1   /
//                    -D gSAPMessagesEnableLlc_d=0 -D gZtcIncluded_d=0 -D     /
//                    gTargetMC1322xSRB=1 --preprocess "C:\Documents and      /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End Device)\Debug\List\" -lC  /
//                    "C:\Documents and Settings\Administrator\Desktop\WSN_Pr /
//                    oject\ENDDEV\MyWirelessApp Demo Non Beacon (End         /
//                    Device)\Debug\List\" -lB "C:\Documents and              /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End Device)\Debug\List\"      /
//                    --diag_suppress Pe014,Pe001,Pe991,Pa039,Pe520 -o        /
//                    "C:\Documents and Settings\Administrator\Desktop\WSN_Pr /
//                    oject\ENDDEV\MyWirelessApp Demo Non Beacon (End         /
//                    Device)\Debug\Obj\" --no_cse --no_unroll --no_inline    /
//                    --no_code_motion --no_tbaa --no_clustering              /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=ARM7TDMI-S --fpu=None --dlib_config "C:\Program   /
//                    Files\IAR Systems\Embedded Workbench 5.4                /
//                    Evaluation\arm\INC\DLib_Config_Normal.h" -I             /
//                    "C:\Documents and Settings\Administrator\Desktop\WSN_Pr /
//                    oject\ENDDEV\MyWirelessApp Demo Non Beacon (End         /
//                    Device)\MacPhy\Interface\" -I "C:\Documents and         /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\Application\Init\" -I "C:\Documents and         /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\Application\Interface\" -I "C:\Documents and    /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\Application\Configure\" -I "C:\Documents and    /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\Application\UartUtil\" -I "C:\Documents and     /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\Application\Source\" -I "C:\Documents and       /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\SSM\TS\Interface\" -I "C:\Documents and         /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End Device)\SSM\TS\Source\"   /
//                    -I "C:\Documents and Settings\Administrator\Desktop\WSN /
//                    _Project\ENDDEV\MyWirelessApp Demo Non Beacon (End      /
//                    Device)\SSM\ZTC\Interface\" -I "C:\Documents and        /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End Device)\SSM\ZTC\Source\"  /
//                    -I "C:\Documents and Settings\Administrator\Desktop\WSN /
//                    _Project\ENDDEV\MyWirelessApp Demo Non Beacon (End      /
//                    Device)\PLM\Interface\" -I "C:\Documents and            /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\PLM\LibInterface\" -I "C:\Documents and         /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\PLM\Source\Display\" -I "C:\Documents and       /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\PLM\Source\Keyboard\" -I "C:\Documents and      /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End Device)\PLM\Source\NVM\"  /
//                    -I "C:\Documents and Settings\Administrator\Desktop\WSN /
//                    _Project\ENDDEV\MyWirelessApp Demo Non Beacon (End      /
//                    Device)\PLM\Source\TMR\" -I "C:\Documents and           /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\PLM\Source\UART\" -I "C:\Program Files\IAR      /
//                    Systems\Embedded Workbench 5.4 Evaluation\arm\INC\"     /
//                    --interwork --cpu_mode thumb -On                        /
//    List file    =  C:\Documents and Settings\Administrator\Desktop\WSN_Pro /
//                    ject\ENDDEV\MyWirelessApp Demo Non Beacon (End          /
//                    Device)\Debug\List\Uart.s                               /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME Uart

        EXTERN ITC_EnableInterrupt
        EXTERN ITC_SetPriority
        EXTERN IntAssignHandler
        EXTERN IntRestoreIRQ
        EXTERN TS_CreateTask
        EXTERN TS_SendEvent
        EXTERN UartCancelReadData
        EXTERN UartCancelWriteData
        EXTERN UartClearErrors
        EXTERN UartClose
        EXTERN UartGetByteFromRxBuffer
        EXTERN UartGetConfig
        EXTERN UartGetStatus
        EXTERN UartGetUnreadBytesNumber
        EXTERN UartIsr2
        EXTERN UartOpen
        EXTERN UartOpenCloseTransceiver
        EXTERN UartReadData
        EXTERN UartSetCTSThreshold
        EXTERN UartSetCallbackFunctions
        EXTERN UartSetConfig
        EXTERN UartSetReceiverThreshold
        EXTERN UartSetTransmitterThreshold
        EXTERN UartWriteData

        PUBLIC GpioUart1Init
        PUBLIC GpioUart2Init
        PUBLIC Uart1_GetByteFromRxBuffer
        PUBLIC Uart1_IsTxActive
        PUBLIC Uart1_RxBufferByteCount
        PUBLIC Uart1_SetBaud
        PUBLIC Uart1_SetRxCallBack
        PUBLIC Uart1_Transmit
        PUBLIC Uart1_UngetByte
        PUBLIC Uart2_GetByteFromRxBuffer
        PUBLIC Uart2_IsTxActive
        PUBLIC Uart2_RxBufferByteCount
        PUBLIC Uart2_RxIsr
        PUBLIC Uart2_SetBaud
        PUBLIC Uart2_SetRxCallBack
        PUBLIC Uart2_Transmit
        PUBLIC Uart2_TxInProgress
        PUBLIC Uart2_TxIsr
        PUBLIC Uart2_UngetByte
        PUBLIC Uart_ClearErrors
        PUBLIC Uart_ModuleInit
        PUBLIC Uart_ModuleUninit
        PUBLIC Uart_Task
        PUBLIC Uart_TaskInit
        PUBWEAK __iar_via_R0
        PUBWEAK __iar_via_R4
        PUBWEAK __iar_via_R5
        PUBLIC gUartTaskId

// C:\Documents and Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWirelessApp Demo Non Beacon (End Device)\PLM\Source\UART\Uart.c
//    1 /*****************************************************************************
//    2 * UART / SCI / USB / Serial Port implementation for ARM7
//    3 *
//    4 * (c) Copyright 2006, Freescale, Inc. All rights reserved.
//    5 *
//    6 *
//    7 *
//    8 * No part of this document must be reproduced in any form - including copied,
//    9 * transcribed, printed or by any electronic means - without specific written
//   10 * permission from Freescale Semiconductor.
//   11 *
//   12 *****************************************************************************/
//   13 
//   14 /* Note: This code is size optimized for the case where only one SCI port is
//   15  * enabled. If both ports are enabled, it might be worthwhile to create
//   16  * functions that take a port number as a parameter.
//   17  */
//   18 #include "Platform.h"
//   19 #include "Uart_Interface.h"
//   20 #include "Uart.h"
//   21 #include "UartLowLevel.h"
//   22 #include "Interrupt.h"
//   23 #include "TS_Interface.h"
//   24 
//   25 #define FN_MASK  3UL
//   26 #define FN_ALT  1
//   27 
//   28 void Uart1_TxIsr(UartWriteCallbackArgs_t* args);
//   29 void Uart2_TxIsr(UartWriteCallbackArgs_t* args);
//   30 void Uart1_RxIsr(UartReadCallbackArgs_t* args);
//   31 void Uart2_RxIsr(UartReadCallbackArgs_t* args);
//   32 
//   33 void GpioUart1Init(void);
//   34 void GpioUart2Init(void);
//   35 
//   36 
//   37 
//   38 /*****************************************************************************
//   39 ******************************************************************************
//   40 * Public memory definitions
//   41 ******************************************************************************
//   42 *****************************************************************************/
//   43 
//   44 /* if neither UART enabled, then no code or data */
//   45 #if gUart1_Enabled_d || gUart2_Enabled_d
//   46 
//   47 /* id for Uart task */

        SECTION `.bss`:DATA:NOROOT(0)
//   48 tsTaskID_t gUartTaskId;
gUartTaskId:
        DS8 1
//   49 
//   50 /* Each port can store one unget byte. */
//   51 #if gUart1_Enabled_d
//   52 static bool_t uart1_ungetFlag = FALSE;
//   53 static unsigned char uart1_ungetByte;
//   54 bool_t Uart1_TxInProgress = FALSE;
//   55 #endif
//   56 
//   57 #if gUart2_Enabled_d

        SECTION `.bss`:DATA:NOROOT(0)
//   58 static bool_t uart2_ungetFlag = FALSE;
uart2_ungetFlag:
        DS8 1

        SECTION `.bss`:DATA:NOROOT(0)
//   59 static unsigned char uart2_ungetByte;
uart2_ungetByte:
        DS8 1

        SECTION `.bss`:DATA:NOROOT(0)
//   60 bool_t Uart2_TxInProgress = FALSE;
Uart2_TxInProgress:
        DS8 1
//   61 #endif
//   62 
//   63 /* The transmit code keeps a circular list of buffers to be sent. */
//   64 /* Each SCI port has it's own list. */
//   65 typedef struct SciTxBufRef_tag {
//   66   unsigned char const *pBuf;
//   67   void (*pfCallBack)(unsigned char const *pBuf);
//   68 } SciTxBufRef_t;
//   69 
//   70 /* The leading index is the next position to store a buffer reference. */
//   71 /* The trailing index is the buffer currently being transmitted. */
//   72 /* Using a separate table for the buffer lengths reduces code size. */
//   73 #if gUart1_Enabled_d
//   74 static SciTxBufRef_t maSci1TxBufRefTable[gUart_TransmitBuffers_c];
//   75 static index_t maSci1TxBufLenTable[gUart_TransmitBuffers_c];
//   76 static index_t mSci1TxBufRefLeadingIndex;   /* Post-increment. */
//   77 static index_t mSci1TxBufRefTrailingIndex;  /* Post-increment. */
//   78 
//   79 /*Callback table and index pointers*/
//   80 static SciTxBufRef_t maSci1TxCallbackTable[gUart_TransmitBuffers_c];
//   81 static index_t maSci1TxCallbackLeadingIndex = 0; 
//   82 static index_t maSci1TxCallbackTrailingIndex = 0; 
//   83 #endif
//   84 
//   85 #if gUart2_Enabled_d

        SECTION `.bss`:DATA:NOROOT(2)
//   86 static SciTxBufRef_t maSci2TxBufRefTable[gUart_TransmitBuffers_c];
maSci2TxBufRefTable:
        DS8 24

        SECTION `.bss`:DATA:NOROOT(2)
//   87 static index_t maSci2TxBufLenTable[gUart_TransmitBuffers_c];
maSci2TxBufLenTable:
        DS8 4

        SECTION `.bss`:DATA:NOROOT(0)
//   88 static index_t mSci2TxBufRefLeadingIndex;   /* Post-increment. */
mSci2TxBufRefLeadingIndex:
        DS8 1

        SECTION `.bss`:DATA:NOROOT(0)
//   89 static index_t mSci2TxBufRefTrailingIndex;  /* Post-increment. */
mSci2TxBufRefTrailingIndex:
        DS8 1
//   90 /*Callback table and index pointers*/

        SECTION `.bss`:DATA:NOROOT(2)
//   91 static SciTxBufRef_t maSci2TxCallbackTable[gUart_TransmitBuffers_c];
maSci2TxCallbackTable:
        DS8 24

        SECTION `.bss`:DATA:NOROOT(0)
//   92 static index_t maSci2TxCallbackLeadingIndex = 0; 
maSci2TxCallbackLeadingIndex:
        DS8 1

        SECTION `.bss`:DATA:NOROOT(0)
//   93 static index_t maSci2TxCallbackTrailingIndex = 0; 
maSci2TxCallbackTrailingIndex:
        DS8 1
//   94 #endif
//   95 
//   96 /* Each port has a small local circular Rx buffer to store data until the */
//   97 /* application can retrieve it. In addition to the leading and trailing */
//   98 /* indexes, the Rx code keeps a count of the number of bytes in the buffer. */
//   99 #if gUart1_Enabled_d
//  100 static unsigned char maSci1RxBuf[gUart_ReceiveBufferSize_c];
//  101 static void (*pfSci1RxCallBack)(void);
//  102 #endif
//  103 
//  104 #if gUart2_Enabled_d

        SECTION `.bss`:DATA:NOROOT(2)
//  105 static unsigned char maSci2RxBuf[gUart_ReceiveBufferSize_c];
maSci2RxBuf:
        DS8 32

        SECTION `.bss`:DATA:NOROOT(2)
//  106 static void (*pfSci2RxCallBack)(void);
pfSci2RxCallBack:
        DS8 4
//  107 #endif
//  108 
//  109 /*****************************************************************************
//  110 ******************************************************************************
//  111 * Private memory definitions
//  112 ******************************************************************************
//  113 *****************************************************************************/
//  114 
//  115 /* Keep track of the high water mark in the Rx circular buffer. */
//  116 #if gUart_Debug_d
//  117   #if gUart1_Enabled_d
//  118   static index_t uart1RxBufHighWaterMark = 0;
//  119   #endif /* gUart1_Enabled_d */
//  120 
//  121   #if gUart2_Enabled_d
//  122   static index_t uart2RxBufHighWaterMark = 0;
//  123   #endif /* gUart2_Enabled_d */
//  124 #endif /* gUart_Debug_d */
//  125 
//  126 /*****************************************************************************
//  127 ******************************************************************************
//  128 * Public functions
//  129 ******************************************************************************
//  130 *****************************************************************************/
//  131 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  132 void Uart_ClearErrors(void) {
Uart_ClearErrors:
        PUSH     {R7,LR}
//  133 
//  134 #if gUart1_Enabled_d
//  135   UartClearErrors(UART_1);
//  136 #endif
//  137 
//  138 #if gUart2_Enabled_d
//  139   UartClearErrors(UART_2);
        MOVS     R0,#+1
        BL       UartClearErrors
//  140 #endif
//  141 
//  142 }                                       /* Uart_ClearErrors() */
        POP      {R0,R3}
        BX       R3               ;; return
//  143 
//  144 
//  145 /*****************************************************************************/
//  146 
//  147 /* Retrieve a byte from the driver's Rx buffer and store it at *pDst. */
//  148 /* Return TRUE if a byte was retrieved; FALSE if the Rx buffer is empty. */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  149 bool_t Uart1_GetByteFromRxBuffer(unsigned char *pDst) {
Uart1_GetByteFromRxBuffer:
        MOVS     R1,R0
//  150 #if !gUart1_Enabled_d
//  151   (void) pDst;
//  152   return 0;
        MOVS     R0,#+0
        BX       LR               ;; return
//  153 #else  
//  154 
//  155   if (uart1_ungetFlag) {
//  156     uart1_ungetFlag = FALSE;
//  157     *pDst = uart1_ungetByte;
//  158     return TRUE;
//  159   } else  
//  160   return UartGetByteFromRxBuffer(UART_1, pDst);
//  161   
//  162 #endif
//  163 }                                       /* Uart1_GetBytesFromRxBuffer() */
//  164 
//  165 /**************************************/
//  166 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  167 bool_t Uart2_GetByteFromRxBuffer(unsigned char *pDst) {
Uart2_GetByteFromRxBuffer:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  168 #if !gUart2_Enabled_d
//  169   (void) pDst;
//  170   return 0;
//  171 #else
//  172   // unsigned char scic2;
//  173 
//  174   if (uart2_ungetFlag) {
        LDR      R0,??DataTable6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??Uart2_GetByteFromRxBuffer_0
//  175     uart2_ungetFlag = FALSE;
        LDR      R0,??DataTable6
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  176     *pDst = uart2_ungetByte;
        LDR      R0,??DataTable8
        LDRB     R0,[R0, #+0]
        STRB     R0,[R4, #+0]
//  177     return TRUE;
        MOVS     R0,#+1
        B        ??Uart2_GetByteFromRxBuffer_1
//  178   } else
//  179   return UartGetByteFromRxBuffer(UART_2, pDst);
??Uart2_GetByteFromRxBuffer_0:
        MOVS     R1,R4
        MOVS     R0,#+1
        BL       UartGetByteFromRxBuffer
??Uart2_GetByteFromRxBuffer_1:
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  180   
//  181 #endif
//  182 }                                       /* Uart2_GetBytesFromRxBuffer() */
//  183 
//  184 /*****************************************************************************/
//  185 
//  186 /* Return TRUE if there is data still not sent. */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  187 bool_t Uart1_IsTxActive(void) {
//  188 #if !gUart1_Enabled_d
//  189   return FALSE;
Uart1_IsTxActive:
        MOVS     R0,#+0
        BX       LR               ;; return
//  190 #else
//  191   return ((Uart1_TxInProgress) || (UART1_REGS_P->Utxcon != 32));
//  192 #endif
//  193 }                                            /* Uart1_IsTxActive() */      
//  194 
//  195 /**************************************/
//  196 /* Return TRUE if there is data still not sent. */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  197 bool_t Uart2_IsTxActive(void) {
Uart2_IsTxActive:
        PUSH     {LR}
//  198 #if !gUart2_Enabled_d
//  199   return FALSE;
//  200 #else
//  201   return ((Uart2_TxInProgress) || (UART2_REGS_P->Utxcon != 32));
        LDR      R0,??DataTable6_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??Uart2_IsTxActive_0
        LDR      R0,??DataTable8_1  ;; 0x8000b010
        LDR      R0,[R0, #+0]
        CMP      R0,#+32
        BEQ      ??Uart2_IsTxActive_1
??Uart2_IsTxActive_0:
        MOVS     R0,#+1
        B        ??Uart2_IsTxActive_2
??Uart2_IsTxActive_1:
        MOVS     R0,#+0
??Uart2_IsTxActive_2:
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        POP      {R3}
        BX       R3               ;; return
//  202 #endif
//  203 }                                            /* Uart2_IsTxActive() */
//  204 
//  205 /*****************************************************************************/
//  206 
//  207 /* Initialize the serial port(s) and this module's local data. */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  208 void Uart_ModuleInit(void) {
Uart_ModuleInit:
        PUSH     {LR}
        SUB      SP,SP,#+20
//  209   
//  210   uint8_t res;
//  211   UartConfig_t pConfig;
//  212   UartCallbackFunctions_t pCallback;
//  213   
//  214 #if gUart1_Enabled_d
//  215 
//  216   //initialize GPIOs for UART1 and UART2 
//  217   GpioUart1Init();  
//  218 
//  219   //configure the uart parameters 
//  220   pConfig.UartParity = gUartParityNone_c;
//  221   pConfig.UartStopBits = gUartStopBits1_c;
//  222   pConfig.UartBaudrate = gUartDefaultBaud_c;
//  223   pConfig.UartFlowControlEnabled = gUart1_EnableHWFlowControl_d;
//  224   pConfig.UartRTSActiveHigh = FALSE;
//  225 
//  226   //initialize the uart
//  227   res = UartOpen(UART_1,PLATFORM_CLOCK);  
//  228   res |= UartSetConfig(UART_1, &pConfig);  
//  229 
//  230   UartSetCTSThreshold(UART_1, gUart_RxFlowControlSkew_d);
//  231 
//  232   //configure the Uart Rx and Tx Threshold
//  233   res |= UartSetTransmitterThreshold(UART_1, 5);
//  234   res |= UartSetReceiverThreshold(UART_1, 5);
//  235 
//  236   //set pCallback functions
//  237   pCallback.pfUartWriteCallback = Uart1_TxIsr;
//  238   pCallback.pfUartReadCallback = Uart1_RxIsr;
//  239 
//  240   res |= UartSetCallbackFunctions(UART_1, &pCallback);
//  241   /*set Half Flow Control*/
//  242   #if (gUart1_EnableHalfFlowControl_d == TRUE)
//  243     UartSetHalfFlowControl(UART_1, TRUE);
//  244   #endif
//  245 
//  246   //mount the interrupts corresponding to UART driver
//  247   IntAssignHandler(gUart1Int_c, (IntHandlerFunc_t)UartIsr1);
//  248   ITC_SetPriority(gUart1Int_c, gItcNormalPriority_c);
//  249   //enable the interrupts corresponding to UART driver
//  250   ITC_EnableInterrupt(gUart1Int_c);
//  251   
//  252   /* Make sure we're not enabling the RX path yet. User must set the RX callback first */
//  253   UartOpenCloseTransceiver(UART_1, BIT_RX_EN, FALSE);   
//  254   
//  255   UartReadData(UART_1, maSci1RxBuf, sizeof(maSci1RxBuf), TRUE);       
//  256 #endif
//  257 
//  258 #if gUart2_Enabled_d
//  259 
//  260   //initialize GPIOs for UART1 and UART2
//  261   GpioUart2Init();  
        BL       GpioUart2Init
//  262 
//  263   //configure the uart parameters
//  264   pConfig.UartParity = gUartParityNone_c;
        MOV      R0,SP
        MOVS     R1,#+0
        STRB     R1,[R0, #+4]
//  265   pConfig.UartStopBits = gUartStopBits1_c;
        MOV      R0,SP
        MOVS     R1,#+0
        STRB     R1,[R0, #+5]
//  266   pConfig.UartBaudrate = gUartDefaultBaud_c;
        MOVS     R0,#+150
        LSLS     R0,R0,#+7        ;; #+19200
        STR      R0,[SP, #+0]
//  267   pConfig.UartFlowControlEnabled = gUart2_EnableHWFlowControl_d;
        MOV      R0,SP
        MOVS     R1,#+0
        STRB     R1,[R0, #+6]
//  268   pConfig.UartRTSActiveHigh = FALSE;
        MOV      R0,SP
        MOVS     R1,#+0
        STRB     R1,[R0, #+7]
//  269   
//  270   //initialize the uart
//  271   UartOpen(UART_2,PLATFORM_CLOCK);
        LDR      R1,??DataTable7  ;; 0x5dc0
        MOVS     R0,#+1
        BL       UartOpen
//  272 
//  273   UartSetConfig(UART_2,&pConfig);
        MOV      R1,SP
        MOVS     R0,#+1
        BL       UartSetConfig
//  274   UartSetCTSThreshold(UART_2, gUart_RxFlowControlSkew_d);
        MOVS     R1,#+8
        MOVS     R0,#+1
        BL       UartSetCTSThreshold
//  275 
//  276   //configure the Uart Rx and Tx Threshold
//  277   UartSetTransmitterThreshold(UART_2,5);
        MOVS     R1,#+5
        MOVS     R0,#+1
        BL       UartSetTransmitterThreshold
//  278   UartSetReceiverThreshold(UART_2,5);
        MOVS     R1,#+5
        MOVS     R0,#+1
        BL       UartSetReceiverThreshold
//  279 
//  280   //set pCallback functions
//  281   pCallback.pfUartWriteCallback = Uart2_TxIsr;
        LDR      R0,??DataTable8_2
        STR      R0,[SP, #+12]
//  282   pCallback.pfUartReadCallback = Uart2_RxIsr;
        LDR      R0,??DataTable8_3
        STR      R0,[SP, #+8]
//  283   UartSetCallbackFunctions(UART_2,&pCallback);
        ADD      R1,SP,#+8
        MOVS     R0,#+1
        BL       UartSetCallbackFunctions
//  284 
//  285   /*set Half Flow Control*/
//  286   #if (gUart2_EnableHalfFlowControl_d == TRUE)
//  287     UartSetHalfFlowControl(UART_2, TRUE);
//  288   #endif
//  289     //mount the interrupts corresponding to UART driver
//  290   IntAssignHandler(gUart2Int_c, (IntHandlerFunc_t)UartIsr2);
        LDR      R1,??DataTable8_4
        MOVS     R0,#+2
        BL       IntAssignHandler
//  291   ITC_SetPriority(gUart2Int_c, gItcNormalPriority_c);
        MOVS     R1,#+0
        MOVS     R0,#+2
        BL       ITC_SetPriority
//  292   //enable the interrupts corresponding to UART driver
//  293   ITC_EnableInterrupt(gUart2Int_c);
        MOVS     R0,#+2
        BL       ITC_EnableInterrupt
//  294 
//  295   /* Make sure we're not enabling the RX path yet. User must set the RX callback first */
//  296   UartOpenCloseTransceiver(UART_2, BIT_RX_EN, FALSE); 
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       UartOpenCloseTransceiver
//  297   
//  298   UartReadData(UART_2, maSci2RxBuf, sizeof(maSci2RxBuf), TRUE);
        MOVS     R3,#+1
        MOVS     R2,#+32
        LDR      R1,??DataTable10
        MOVS     R0,#+1
        BL       UartReadData
//  299 
//  300 #endif /* gUart2_Enabled_d */
//  301 
//  302   // global enable interrupts in AITC driver
//  303   IntEnableIRQ();
        MOVS     R0,#+0
        BL       IntRestoreIRQ
//  304   
//  305   Uart_TaskInit();
        BL       Uart_TaskInit
//  306 }                                       /* Uart_ModuleInit() */
        ADD      SP,SP,#+20
        POP      {R3}
        BX       R3               ;; return
//  307 
//  308 /*****************************************************************************/
//  309 
//  310 /* Rx ISR. If there is room, store the byte in the Rx circular buffer. */
//  311 #if gUart1_Enabled_d
//  312 void Uart1_RxIsr(UartReadCallbackArgs_t* args) {
//  313   
//  314   /* Receive register full and no errors */
//  315   if (gUartReadStatusComplete_c == args->UartStatus) {  
//  316   TS_SendEvent(gUartTaskId, gRxSci1Event_c);  
//  317   }  
//  318 }                                       /* Uart1_RxIsr() */
//  319 #endif /** gUart1_Enabled_d */
//  320 
//  321 /**************************************/
//  322 
//  323 #if gUart2_Enabled_d

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  324 void Uart2_RxIsr(UartReadCallbackArgs_t* args) {
Uart2_RxIsr:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  325 
//  326 /* Receive register full and no errors */
//  327   if (gUartReadStatusComplete_c == args->UartStatus) {  
        LDRB     R0,[R4, #+0]
        CMP      R0,#+0
        BNE      ??Uart2_RxIsr_0
//  328   TS_SendEvent(gUartTaskId, gRxSci2Event_c);  
        MOVS     R1,#+2
        LDR      R0,??DataTable10_1
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
//  329   }
//  330   
//  331 }                                       /* Uart2_RxIsr() */
??Uart2_RxIsr_0:
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  332 #endif /* gUart2_Enabled_d */
//  333 
//  334 /*****************************************************************************/
//  335 
//  336 /* Set a pointer to the function to be called whenever a byte is received. */
//  337 /* If the pointer is set to NULL, turn off the Rx interrupt and clear the Rx */
//  338 /* buffer. */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  339 void Uart1_SetRxCallBack(void (*pfCallBack)(void)) {
//  340 #if (gUart1_Enabled_d == FALSE)
//  341   (void) pfCallBack;
//  342 #else  /* gUart1_Enabled_d */
//  343   pfSci1RxCallBack = pfCallBack;
//  344   UartOpenCloseTransceiver(UART_1, BIT_RX_EN, NULL != pfSci1RxCallBack);  
//  345 #endif  /* gUart1_Enabled_d */
//  346 }      /* Uart1_SetRxCallback() */
Uart1_SetRxCallBack:
        BX       LR               ;; return
//  347 
//  348 /**************************************/
//  349 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  350 void Uart2_SetRxCallBack(void (*pfCallBack)(void)) {
Uart2_SetRxCallBack:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  351 #if (gUart2_Enabled_d == FALSE)
//  352   (void) pfCallBack;
//  353 #else
//  354   pfSci2RxCallBack = pfCallBack;  
        LDR      R0,??DataTable11
        STR      R4,[R0, #+0]
//  355   UartOpenCloseTransceiver(UART_2, BIT_RX_EN, NULL != pfSci2RxCallBack);  
        LDR      R0,??DataTable11
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??Uart2_SetRxCallBack_0
        MOVS     R2,#+1
        B        ??Uart2_SetRxCallBack_1
??Uart2_SetRxCallBack_0:
        MOVS     R2,#+0
??Uart2_SetRxCallBack_1:
        LSLS     R2,R2,#+24       ;; ZeroExtS R2,R2,#+24,#+24
        LSRS     R2,R2,#+24
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       UartOpenCloseTransceiver
//  356 #endif   /* gUart2_Enabled_d */
//  357 }                                       /* Uart2_SetRxCallback() */
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  358 
//  359 /*****************************************************************************/
//  360 
//  361 /* Set the UART baud rate. */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  362 void Uart1_SetBaud(UartBaudRate_t baudRate) {  
//  363 #if (gUart1_Enabled_d == FALSE)
//  364   (void) baudRate;
//  365 #else  
//  366   UartConfig_t Cfg;
//  367   bool_t readStopped = FALSE;
//  368   register uint32_t i;
//  369 
//  370   UartErr_t err = UartGetStatus(UART_1);  
//  371   if(err != gUartErrUartNotOpen_c)
//  372   {  
//  373    for (i = 0; i < 2; i++)
//  374    {  
//  375       if(err == gUartErrReadOngoing_c) 
//  376       {  
//  377         UartCancelReadData(UART_1);
//  378         readStopped = TRUE;
//  379       }
//  380       else
//  381       {  
//  382        if(err == gUartErrWriteOngoing_c)
//  383        {  
//  384          UartCancelWriteData(UART_1);
//  385        }  
//  386        else
//  387        {
//  388         break;
//  389        }
//  390       }
//  391       /* UartGetStatus is returning one error code at a time. Read back the status to check again */
//  392       err = UartGetStatus(UART_1);
//  393     }
//  394   }  
//  395   
//  396   UartGetConfig(UART_1, &Cfg);
//  397   Cfg.UartBaudrate = baudRate;
//  398   UartSetConfig(UART_1, &Cfg);  
//  399     
//  400   if(TRUE == readStopped)
//  401   {
//  402     UartReadData(UART_1, maSci1RxBuf, sizeof(maSci1RxBuf), TRUE);
//  403   }    
//  404 #endif /* gUart1_Enabled_d */
//  405 }                                       /* Uart1_SetBaud() */
Uart1_SetBaud:
        BX       LR               ;; return
//  406 
//  407 /**************************************/
//  408 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  409 void Uart2_SetBaud(UartBaudRate_t baudRate) {
Uart2_SetBaud:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+12
        MOVS     R7,R0
//  410 #if (gUart2_Enabled_d == FALSE)
//  411   (void) baudRate;
//  412 #else
//  413   UartConfig_t Cfg;
//  414   bool_t readStopped = FALSE;
        MOVS     R0,#+0
        MOVS     R6,R0
//  415   register uint32_t i;
//  416 
//  417   UartErr_t err = UartGetStatus(UART_2);  
        MOVS     R0,#+1
        BL       UartGetStatus
        MOVS     R5,R0
//  418   if(err != gUartErrUartNotOpen_c)
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        CMP      R5,#+2
        BEQ      ??Uart2_SetBaud_0
//  419   {  
//  420    for (i = 0; i < 2; i++)
        MOVS     R0,#+0
        MOVS     R4,R0
??Uart2_SetBaud_1:
        CMP      R4,#+2
        BCS      ??Uart2_SetBaud_0
//  421    {  
//  422       if(err == gUartErrReadOngoing_c) 
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        CMP      R5,#+4
        BNE      ??Uart2_SetBaud_2
//  423       {  
//  424         UartCancelReadData(UART_2);
        MOVS     R0,#+1
        BL       UartCancelReadData
//  425         readStopped = TRUE;
        MOVS     R0,#+1
        MOVS     R6,R0
        B        ??Uart2_SetBaud_3
//  426       }
//  427       else
//  428       {  
//  429        if(err == gUartErrWriteOngoing_c)
??Uart2_SetBaud_2:
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        CMP      R5,#+5
        BNE      ??Uart2_SetBaud_4
//  430        {  
//  431          UartCancelWriteData(UART_2);
        MOVS     R0,#+1
        BL       UartCancelWriteData
        B        ??Uart2_SetBaud_3
//  432        }  
//  433        else
//  434        {
//  435         break;
??Uart2_SetBaud_4:
        B        ??Uart2_SetBaud_0
//  436        }
//  437       }
//  438       /* UartGetStatus is returning one error code at a time. Read back the status to check again */
//  439       err = UartGetStatus(UART_2);
??Uart2_SetBaud_3:
        MOVS     R0,#+1
        BL       UartGetStatus
        MOVS     R5,R0
//  440     }
        ADDS     R4,R4,#+1
        B        ??Uart2_SetBaud_1
//  441   }  
//  442   
//  443   UartGetConfig(UART_2, &Cfg);
??Uart2_SetBaud_0:
        MOV      R1,SP
        MOVS     R0,#+1
        BL       UartGetConfig
//  444   Cfg.UartBaudrate = baudRate;
        STR      R7,[SP, #+0]
//  445   UartSetConfig(UART_2, &Cfg);  
        MOV      R1,SP
        MOVS     R0,#+1
        BL       UartSetConfig
//  446     
//  447   if(TRUE == readStopped)
        LSLS     R6,R6,#+24       ;; ZeroExtS R6,R6,#+24,#+24
        LSRS     R6,R6,#+24
        CMP      R6,#+1
        BNE      ??Uart2_SetBaud_5
//  448   {
//  449     UartReadData(UART_2, maSci2RxBuf, sizeof(maSci2RxBuf), TRUE);
        MOVS     R3,#+1
        MOVS     R2,#+32
        LDR      R1,??DataTable10
        MOVS     R0,#+1
        BL       UartReadData
//  450   } 
//  451 #endif /* gUart2_Enabled_d */
//  452 }                                       /* Uart2_SetBaud() */
??Uart2_SetBaud_5:
        POP      {R0-R2,R4-R7}
        POP      {R3}
        BX       R3               ;; return
//  453 
//  454 /*****************************************************************************/
//  455 
//  456 /* Begin transmitting size bytes of data from *pBuffer. */
//  457 /* Returns FALSE if there are no more slots in the buffer reference table. */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  458 bool_t Uart1_Transmit(unsigned char const *pBuf, index_t bufLen, void (*pfCallBack)(unsigned char const *pBuf)) {
Uart1_Transmit:
        MOVS     R3,R0
//  459 #if (gUart1_Enabled_d == FALSE)
//  460   (void) pBuf;
//  461   (void) bufLen;
//  462   (void) pfCallBack;
//  463   return FALSE;
        MOVS     R0,#+0
        BX       LR               ;; return
//  464 #else
//  465   /* Handle empty buffers. */
//  466   if (!bufLen) {
//  467     (*pfCallBack)(pBuf);
//  468     return TRUE;
//  469   }
//  470 
//  471   /* Room for one more? */
//  472   if (maSci1TxBufLenTable[mSci1TxBufRefLeadingIndex]) {
//  473     return FALSE;
//  474     
//  475   }
//  476 
//  477   maSci1TxBufRefTable[mSci1TxBufRefLeadingIndex].pBuf = pBuf;
//  478   maSci1TxBufRefTable[mSci1TxBufRefLeadingIndex].pfCallBack = pfCallBack;
//  479   /* This has to be last, in case the Tx ISR finishes with the previous */
//  480   /* buffer while this function is executing. */
//  481   maSci1TxBufLenTable[mSci1TxBufRefLeadingIndex] = bufLen;
//  482 
//  483   if (++mSci1TxBufRefLeadingIndex >= NumberOfElements(maSci1TxBufRefTable)) 
//  484   {
//  485       mSci1TxBufRefLeadingIndex = 0;
//  486   }  
//  487   
//  488   if(!Uart1_TxInProgress) 
//  489   {
//  490      /* No buffer is pending for transmission */
//  491     
//  492      /* Enable the transmit interrupt. Harmless if the interrupt is already */
//  493      /* enabled. */
//  494      Uart1_TxInProgress = TRUE;
//  495      UartOpenTransmitter(UART_1);
//  496      UartWriteData(UART_1, (uint8_t*) pBuf, bufLen);     
//  497   } 
//  498 
//  499 
//  500   return TRUE;
//  501 #endif /* gUart1_Enabled_d */
//  502 }                                       /* Uart1_Transmit() */
//  503 
//  504 /**************************************/
//  505 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  506 bool_t Uart2_Transmit(unsigned char const *pBuf, index_t bufLen, void (*pfCallBack)(unsigned char const *pBuf)) {
Uart2_Transmit:
        PUSH     {R4-R6,LR}
        MOVS     R6,R0
        MOVS     R5,R1
        MOVS     R4,R2
//  507 #if (gUart2_Enabled_d == FALSE)
//  508   (void) pBuf;
//  509   (void) bufLen;
//  510   (void) pfCallBack;
//  511   return FALSE;
//  512 #else
//  513   /* Handle empty buffers. */
//  514   if (!bufLen) {
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        CMP      R5,#+0
        BNE      ??Uart2_Transmit_0
//  515     (*pfCallBack)(pBuf);
        MOVS     R0,R6
        BL       __iar_via_R4
//  516     return TRUE;
        MOVS     R0,#+1
        B        ??Uart2_Transmit_1
//  517   }
//  518 
//  519   /* Room for one more? */
//  520   if (maSci2TxBufLenTable[mSci2TxBufRefLeadingIndex]) {
??Uart2_Transmit_0:
        LDR      R0,??DataTable12
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable12_1
        LDRB     R0,[R1, R0]
        CMP      R0,#+0
        BEQ      ??Uart2_Transmit_2
//  521     return FALSE;
        MOVS     R0,#+0
        B        ??Uart2_Transmit_1
//  522   }
//  523 
//  524   maSci2TxBufRefTable[mSci2TxBufRefLeadingIndex].pBuf = pBuf;
??Uart2_Transmit_2:
        LDR      R0,??DataTable12
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+8
        MULS     R0,R1,R0
        LDR      R1,??DataTable12_2
        STR      R6,[R1, R0]
//  525   maSci2TxBufRefTable[mSci2TxBufRefLeadingIndex].pfCallBack = pfCallBack;
        LDR      R0,??DataTable12
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+8
        MULS     R0,R1,R0
        LDR      R1,??DataTable12_2
        ADDS     R0,R1,R0
        STR      R4,[R0, #+4]
//  526   /* This has to be last, in case the Tx ISR finishes with the previous */
//  527   /* buffer while this function is executing. */
//  528   maSci2TxBufLenTable[mSci2TxBufRefLeadingIndex] = bufLen;
        LDR      R0,??DataTable12
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable12_1
        STRB     R5,[R1, R0]
//  529 
//  530   if (++mSci2TxBufRefLeadingIndex >= NumberOfElements(maSci2TxBufRefTable)) 
        LDR      R0,??DataTable12
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable12
        STRB     R0,[R1, #+0]
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+3
        BCC      ??Uart2_Transmit_3
//  531   {
//  532     mSci2TxBufRefLeadingIndex = 0;
        LDR      R0,??DataTable12
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  533   }
//  534 
//  535   if(!Uart2_TxInProgress)
??Uart2_Transmit_3:
        LDR      R0,??DataTable6_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??Uart2_Transmit_4
//  536   {
//  537    /* No buffer is pending for transmission */ 
//  538     
//  539    /* Enable the transmit interrupt. Harmless if the interrupt is already */
//  540    /* enabled. */
//  541    Uart2_TxInProgress = TRUE; 
        LDR      R0,??DataTable6_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  542    UartOpenTransmitter(UART_2);    
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       UartOpenCloseTransceiver
//  543    UartWriteData(UART_2, (uint8_t*) pBuf, bufLen);
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        MOVS     R2,R5
        LSLS     R2,R2,#+16       ;; ZeroExtS R2,R2,#+16,#+16
        LSRS     R2,R2,#+16
        MOVS     R1,R6
        MOVS     R0,#+1
        BL       UartWriteData
//  544   }
//  545   
//  546   return TRUE;
??Uart2_Transmit_4:
        MOVS     R0,#+1
??Uart2_Transmit_1:
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return
//  547 #endif  /* gUart2_Enabled_d */
//  548 }                                       /* Uart2_Transmit() */

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable6:
        DC32     uart2_ungetFlag

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable6_1:
        DC32     Uart2_TxInProgress
//  549 
//  550 /*****************************************************************************/
//  551 
//  552 /* Transmit ISR. */
//  553 #if (gUart1_Enabled_d == TRUE)
//  554 void Uart1_TxIsr(UartWriteCallbackArgs_t* args) {
//  555    void (*pfCallBack)(unsigned char const *pBuf);
//  556 
//  557   /* Finished with the current buffer */
//  558 
//  559   /* Mark this one as done, and call the callback. */
//  560   maSci1TxBufLenTable[mSci1TxBufRefTrailingIndex] = 0;
//  561   pfCallBack = *maSci1TxBufRefTable[mSci1TxBufRefTrailingIndex].pfCallBack;
//  562     
//  563   if(pfCallBack)
//  564   {
//  565       /*Signal uart task that we got a callback to be executed*/
//  566       TS_SendEvent(gUartTaskId, gTxSci1Event_c);
//  567     
//  568       /*add callback information to callback table*/
//  569       maSci1TxCallbackTable[maSci1TxCallbackLeadingIndex].pfCallBack = pfCallBack;
//  570       maSci1TxCallbackTable[maSci1TxCallbackLeadingIndex].pBuf = maSci1TxBufRefTable[mSci1TxBufRefTrailingIndex].pBuf;
//  571       /*increment and wrap around leading index*/
//  572       if (++maSci1TxCallbackLeadingIndex >= NumberOfElements(maSci1TxBufRefTable))
//  573       {
//  574         maSci1TxCallbackLeadingIndex = 0;
//  575       }    
//  576   }      
//  577   
//  578   /* Increment to the next buffer. */  
//  579   if (++mSci1TxBufRefTrailingIndex >= NumberOfElements(maSci1TxBufRefTable)) 
//  580   {
//  581      mSci1TxBufRefTrailingIndex = 0;
//  582   }
//  583     
//  584   if(maSci1TxBufLenTable[mSci1TxBufRefTrailingIndex] != 0)
//  585   {
//  586      /* Write the next buffer. */       
//  587      UartWriteData(UART_1, (uint8_t*)maSci1TxBufRefTable[mSci1TxBufRefTrailingIndex].pBuf, maSci1TxBufLenTable[mSci1TxBufRefTrailingIndex]);
//  588   }
//  589   else
//  590   {
//  591      Uart1_TxInProgress = FALSE;
//  592   }         
//  593 }                                       /* Uart1_TxIsr() */
//  594 #endif /* gUart1_Enabled_d */
//  595 
//  596 /**************************************/
//  597 
//  598 #if (gUart2_Enabled_d == TRUE)

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  599 void Uart2_TxIsr(UartWriteCallbackArgs_t* args) {
Uart2_TxIsr:
        PUSH     {R3-R5,LR}
        MOVS     R5,R0
//  600   void (*pfCallBack)(unsigned char const *pBuf);
//  601 
//  602   /* Finished with the current buffer */
//  603 
//  604   /* Mark this one as done, and call the callback. */
//  605   maSci2TxBufLenTable[mSci2TxBufRefTrailingIndex] = 0;
        LDR      R0,??DataTable12_3
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable12_1
        MOVS     R2,#+0
        STRB     R2,[R1, R0]
//  606   pfCallBack = *maSci2TxBufRefTable[mSci2TxBufRefTrailingIndex].pfCallBack;
        LDR      R0,??DataTable12_3
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+8
        MULS     R0,R1,R0
        LDR      R1,??DataTable12_2
        ADDS     R0,R1,R0
        LDR      R0,[R0, #+4]
        MOVS     R4,R0
//  607 
//  608   if (pfCallBack)
        MOVS     R0,R4
        CMP      R0,#+0
        BEQ      ??Uart2_TxIsr_0
//  609   {
//  610       /*Signal uart task that we got a callback to be executed*/
//  611       TS_SendEvent(gUartTaskId, gTxSci2Event_c);
        MOVS     R1,#+8
        LDR      R0,??DataTable10_1
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
//  612       /*add callback information to callback table*/
//  613       maSci2TxCallbackTable[maSci2TxCallbackLeadingIndex].pfCallBack = pfCallBack;
        LDR      R0,??DataTable12_4
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+8
        MULS     R0,R1,R0
        LDR      R1,??DataTable12_5
        ADDS     R0,R1,R0
        STR      R4,[R0, #+4]
//  614       maSci2TxCallbackTable[maSci2TxCallbackLeadingIndex].pBuf = maSci2TxBufRefTable[mSci2TxBufRefTrailingIndex].pBuf;
        LDR      R0,??DataTable12_4
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+8
        MULS     R0,R1,R0
        LDR      R1,??DataTable12_5
        LDR      R2,??DataTable12_3
        LDRB     R2,[R2, #+0]
        MOVS     R3,#+8
        MULS     R2,R3,R2
        LDR      R3,??DataTable12_2
        LDR      R2,[R3, R2]
        STR      R2,[R1, R0]
//  615       /*increment and wrap around leading index*/  
//  616       if (++maSci2TxCallbackLeadingIndex >= NumberOfElements(maSci2TxBufRefTable))
        LDR      R0,??DataTable12_4
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable12_4
        STRB     R0,[R1, #+0]
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+3
        BCC      ??Uart2_TxIsr_0
//  617       {
//  618         maSci2TxCallbackLeadingIndex = 0;
        LDR      R0,??DataTable12_4
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  619       }    
//  620   }
//  621     
//  622   /* Increment to the next buffer. */
//  623 
//  624   if (++mSci2TxBufRefTrailingIndex >= NumberOfElements(maSci2TxBufRefTable))
??Uart2_TxIsr_0:
        LDR      R0,??DataTable12_3
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable12_3
        STRB     R0,[R1, #+0]
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+3
        BCC      ??Uart2_TxIsr_1
//  625   {
//  626       mSci2TxBufRefTrailingIndex = 0;
        LDR      R0,??DataTable12_3
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  627   }
//  628     
//  629   if(maSci2TxBufLenTable[mSci2TxBufRefTrailingIndex] != 0)
??Uart2_TxIsr_1:
        LDR      R0,??DataTable12_3
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable12_1
        LDRB     R0,[R1, R0]
        CMP      R0,#+0
        BEQ      ??Uart2_TxIsr_2
//  630   {
//  631        /* Write the next buffer. */       
//  632        UartWriteData(UART_2, (uint8_t*)maSci2TxBufRefTable[mSci2TxBufRefTrailingIndex].pBuf, maSci2TxBufLenTable[mSci2TxBufRefTrailingIndex]);
        LDR      R0,??DataTable12_3
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable12_1
        LDRB     R2,[R1, R0]
        LSLS     R2,R2,#+16       ;; ZeroExtS R2,R2,#+16,#+16
        LSRS     R2,R2,#+16
        LDR      R0,??DataTable12_3
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+8
        MULS     R0,R1,R0
        LDR      R1,??DataTable12_2
        LDR      R1,[R1, R0]
        MOVS     R0,#+1
        BL       UartWriteData
        B        ??Uart2_TxIsr_3
//  633   }
//  634   else
//  635   {
//  636      Uart2_TxInProgress = FALSE;
??Uart2_TxIsr_2:
        LDR      R0,??DataTable12_6
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  637   }  
//  638 }                                       /* Uart2_TxIsr() */
??Uart2_TxIsr_3:
        POP      {R0,R4,R5}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable7:
        DC32     0x5dc0
//  639 #endif /* gUart2_Enabled_d */
//  640 
//  641 /*****************************************************************************/
//  642 
//  643 /* Shut down the serial port(s). */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  644 void Uart_ModuleUninit(void) {
Uart_ModuleUninit:
        PUSH     {R7,LR}
//  645 #if gUart1_Enabled_d
//  646   UartClose(UART_1);
//  647 #endif /* gUart1_Enabled_d */
//  648 
//  649 #if gUart2_Enabled_d
//  650   UartClose(UART_2);
        MOVS     R0,#+1
        BL       UartClose
//  651 #endif /* gUart2_Enabled_d */
//  652 }                                       /* Uart_ModuleUninit() */
        POP      {R0,R3}
        BX       R3               ;; return
//  653 
//  654 /*****************************************************************************/
//  655 
//  656 /* Unget a byte: store the byte so that it will be returned by the next call */
//  657 /* to the get byte function. Also call the Rx call back. */
//  658 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  659 void Uart1_UngetByte(unsigned char byte) {
//  660 #if (gUart1_Enabled_d == FALSE)
//  661   (void) byte;
//  662 #else
//  663   /* If the un get flag is already true, there isn't anything we can */
//  664   /* do about it. Not much point in checking. Its up to the called to */
//  665   /* use this function correctly. */
//  666   uart1_ungetFlag = TRUE;
//  667   uart1_ungetByte = byte;
//  668 
//  669   /* Likewise, it is the caller's responsibility to not call this function */
//  670   /* if the call back pointer is not valid. */
//  671   if(pfSci1RxCallBack != NULL)
//  672   {  
//  673    pfSci1RxCallBack();
//  674   } 
//  675 
//  676 #endif /* gUart1_Enabled_d */
//  677 }                                       /* Uart1_UngetByte() */
Uart1_UngetByte:
        BX       LR               ;; return
//  678 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  679 void Uart2_UngetByte(unsigned char byte) {
Uart2_UngetByte:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  680 #if (gUart2_Enabled_d == FALSE)
//  681   (void) byte;
//  682 #else
//  683   uart2_ungetFlag = TRUE;
        LDR      R0,??DataTable12_7
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  684   uart2_ungetByte = byte;
        LDR      R0,??DataTable8
        STRB     R4,[R0, #+0]
//  685   if(pfSci2RxCallBack != NULL)
        LDR      R0,??DataTable12_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??Uart2_UngetByte_0
//  686   {  
//  687    pfSci2RxCallBack();
        LDR      R0,??DataTable12_8
        LDR      R0,[R0, #+0]
        BL       __iar_via_R0
//  688   } 
//  689 #endif  /* gUart2_Enabled_d */
//  690 }                                       /* Uart2_UngetByte() */
??Uart2_UngetByte_0:
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8:
        DC32     uart2_ungetByte

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8_1:
        DC32     0x8000b010

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8_2:
        DC32     Uart2_TxIsr

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8_3:
        DC32     Uart2_RxIsr

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8_4:
        DC32     UartIsr2
//  691 
//  692 
//  693 
//  694 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  695 uint32_t Uart1_RxBufferByteCount() {
Uart1_RxBufferByteCount:
        PUSH     {R7,LR}
//  696   return UartGetUnreadBytesNumber(UART_1);
        MOVS     R0,#+0
        BL       UartGetUnreadBytesNumber
        POP      {R1,R3}
        BX       R3               ;; return
//  697   
//  698 }
//  699 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  700 uint32_t Uart2_RxBufferByteCount() {
Uart2_RxBufferByteCount:
        PUSH     {R7,LR}
//  701   return UartGetUnreadBytesNumber(UART_2);
        MOVS     R0,#+1
        BL       UartGetUnreadBytesNumber
        POP      {R1,R3}
        BX       R3               ;; return
//  702   
//  703 }
//  704 
//  705 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  706 void Uart_Task(event_t events)
//  707 {
Uart_Task:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  708   void (*pfCallBack)(unsigned char const *pBuf);
//  709   
//  710 
//  711 #if gUart1_Enabled_d
//  712 
//  713   if( events & gRxSci1Event_c ) {
//  714     if(pfSci1RxCallBack != NULL)
//  715     {
//  716      pfSci1RxCallBack();
//  717     } 
//  718   }
//  719 
//  720   if( events & gTxSci1Event_c ) {   
//  721   
//  722     /*Tx call back event received - run through the callback table and execute any pending
//  723     Callbacks.
//  724     */
//  725     while (maSci1TxCallbackLeadingIndex != maSci1TxCallbackTrailingIndex) {    
//  726       pfCallBack = maSci1TxCallbackTable[maSci1TxCallbackTrailingIndex].pfCallBack;
//  727 
//  728       if(pfCallBack != NULL)
//  729       {  
//  730        /*Call calback with buffer info as parameter*/
//  731        (*pfCallBack)(maSci1TxCallbackTable[maSci1TxCallbackTrailingIndex].pBuf);
//  732       } 
//  733       
//  734       /*increment and wrap around trailing index*/
//  735       if (++maSci1TxCallbackTrailingIndex >= NumberOfElements(maSci1TxCallbackTable)) {
//  736         maSci1TxCallbackTrailingIndex = 0;    
//  737       }
//  738     } /* while */
//  739   } /*if events ...*/
//  740 
//  741 
//  742 #endif /* gUart1_Enabled_d */
//  743   
//  744   
//  745 #if gUart2_Enabled_d
//  746 
//  747   if( events & gRxSci2Event_c ) {
        LSLS     R0,R4,#+30
        BPL      ??Uart_Task_0
//  748     if(pfSci2RxCallBack != NULL)
        LDR      R0,??DataTable11
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??Uart_Task_0
//  749     {  
//  750      pfSci2RxCallBack();
        LDR      R0,??DataTable11
        LDR      R0,[R0, #+0]
        BL       __iar_via_R0
//  751     } 
//  752   } 
//  753 
//  754   if( events & gTxSci2Event_c ) {
??Uart_Task_0:
        LSLS     R0,R4,#+28
        BPL      ??Uart_Task_1
//  755     /*Tx call back event received - run through the callback table and execute any pending
//  756     Callbacks.
//  757     */
//  758     while (maSci2TxCallbackLeadingIndex != maSci2TxCallbackTrailingIndex) {    
??Uart_Task_2:
        LDR      R0,??DataTable12_4
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable12_9
        LDRB     R1,[R1, #+0]
        CMP      R0,R1
        BEQ      ??Uart_Task_1
//  759       pfCallBack = maSci2TxCallbackTable[maSci2TxCallbackTrailingIndex].pfCallBack;
        LDR      R0,??DataTable12_9
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+8
        MULS     R0,R1,R0
        LDR      R1,??DataTable12_5
        ADDS     R0,R1,R0
        LDR      R0,[R0, #+4]
        MOVS     R5,R0
//  760       if(pfCallBack != NULL)
        MOVS     R0,R5
        CMP      R0,#+0
        BEQ      ??Uart_Task_3
//  761       {  
//  762        /*Call calback with buffer info as parameter*/
//  763        (*pfCallBack)(maSci2TxCallbackTable[maSci2TxCallbackTrailingIndex].pBuf);
        LDR      R0,??DataTable12_9
        LDRB     R0,[R0, #+0]
        MOVS     R1,#+8
        MULS     R0,R1,R0
        LDR      R1,??DataTable12_5
        LDR      R0,[R1, R0]
        BL       __iar_via_R5
//  764       } 
//  765       /*increment and wrap around trailing index*/     
//  766       if (++maSci2TxCallbackTrailingIndex >= NumberOfElements(maSci2TxCallbackTable)) {
??Uart_Task_3:
        LDR      R0,??DataTable12_9
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable12_9
        STRB     R0,[R1, #+0]
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+3
        BCC      ??Uart_Task_2
//  767         maSci2TxCallbackTrailingIndex = 0;    
        LDR      R0,??DataTable12_9
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
        B        ??Uart_Task_2
//  768       }
//  769     } /* while */
//  770   } /*if events ...*/
//  771 
//  772 #endif /* gUart2_Enabled_d */
//  773   
//  774 }
??Uart_Task_1:
        POP      {R0,R4,R5}
        POP      {R3}
        BX       R3               ;; return
//  775 
//  776 #endif /* gUart1_Enabled_d || gUart2_Enabled_d */
//  777 
//  778 
//  779 /*
//  780   Initialize the uart task.
//  781 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  782 void Uart_TaskInit(void)
//  783 {
Uart_TaskInit:
        PUSH     {R7,LR}
//  784 #if gUart1_Enabled_d || gUart2_Enabled_d
//  785   gUartTaskId = TS_CreateTask(gTsUartTaskPriority_c, Uart_Task);
        LDR      R1,??DataTable12_10
        MOVS     R0,#+42
        BL       TS_CreateTask
        LDR      R1,??DataTable12_11
        STRB     R0,[R1, #+0]
//  786 #endif /* gUart1_Enabled_d || gUart2_Enabled_d */
//  787 }
        POP      {R0,R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable10:
        DC32     maSci2RxBuf

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable10_1:
        DC32     gUartTaskId
//  788 
//  789 /*
//  790   Uart1 GPIO .Initilization
//  791 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  792 void GpioUart1Init(void)
//  793 {
//  794   register uint32_t tmpReg;
//  795 
//  796   GPIO.PuSelLo |= (GPIO_UART1_RTS_bit | GPIO_UART1_RX_bit);  // Pull-up select: UP type
GpioUart1Init:
        LDR      R1,??DataTable12_12  ;; 0x80000030
        LDR      R1,[R1, #+0]
        MOVS     R2,#+160
        LSLS     R2,R2,#+10       ;; #+163840
        ORRS     R2,R2,R1
        LDR      R1,??DataTable12_12  ;; 0x80000030
        STR      R2,[R1, #+0]
//  797   GPIO.PuEnLo  |= (GPIO_UART1_RTS_bit | GPIO_UART1_RX_bit);  // Pull-up enable
        LDR      R1,??DataTable12_13  ;; 0x80000010
        LDR      R1,[R1, #+0]
        MOVS     R2,#+160
        LSLS     R2,R2,#+10       ;; #+163840
        ORRS     R2,R2,R1
        LDR      R1,??DataTable12_13  ;; 0x80000010
        STR      R2,[R1, #+0]
//  798         
//  799   #if (gUart1_EnableHalfFlowControl_d == FALSE)
//  800   tmpReg = GPIO.FuncSel0 & ~((FN_MASK << GPIO_UART1_RX_fnpos) | (FN_MASK << GPIO_UART1_TX_fnpos));
        LDR      R1,??DataTable12_14  ;; 0x80000018
        LDR      R1,[R1, #+0]
        LSLS     R1,R1,#+4        ;; ZeroExtS R1,R1,#+4,#+4
        LSRS     R1,R1,#+4
        MOVS     R0,R1
//  801   GPIO.FuncSel0 = tmpReg | ((FN_ALT << GPIO_UART1_RX_fnpos) | (FN_ALT << GPIO_UART1_TX_fnpos));
        MOVS     R1,#+160
        LSLS     R1,R1,#+23       ;; #+1342177280
        ORRS     R1,R1,R0
        LDR      R2,??DataTable12_14  ;; 0x80000018
        STR      R1,[R2, #+0]
//  802   tmpReg = GPIO.FuncSel1 & ~((FN_MASK << GPIO_UART1_CTS_fnpos) | (FN_MASK << GPIO_UART1_RTS_fnpos));
        LDR      R1,??DataTable12_15  ;; 0x8000001c
        LDR      R1,[R1, #+0]
        MOVS     R2,#+15
        BICS     R1,R1,R2
        MOVS     R0,R1
//  803   GPIO.FuncSel1 = tmpReg | ((FN_ALT << GPIO_UART1_CTS_fnpos) | (FN_ALT << GPIO_UART1_RTS_fnpos));
        MOVS     R1,#+5
        ORRS     R1,R1,R0
        LDR      R2,??DataTable12_15  ;; 0x8000001c
        STR      R1,[R2, #+0]
//  804   #else
//  805     tmpReg = GPIO.FuncSel0 & ~((FN_MASK << GPIO_UART1_RX_fnpos) | (FN_MASK << GPIO_UART1_TX_fnpos));
//  806     GPIO.FuncSel0 = tmpReg | ((FN_ALT << GPIO_UART1_RX_fnpos) | (FN_ALT << GPIO_UART1_TX_fnpos));
//  807     tmpReg = GPIO.FuncSel1 & ~((FN_MASK << GPIO_UART1_CTS_fnpos) | (FN_MASK << GPIO_UART1_RTS_fnpos));
//  808     GPIO.FuncSel1 = tmpReg | (FN_ALT << GPIO_UART1_RTS_fnpos);
//  809     GPIO.DataResetLo = GPIO_UART1_CTS_bit;  // low
//  810     GPIO.DirSetLo = GPIO_UART1_CTS_bit;  // output
//  811   #endif
//  812 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable11:
        DC32     pfSci2RxCallBack
//  813 
//  814 
//  815 /*
//  816   Uart1 GPIO .Initilization
//  817 */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  818 void GpioUart2Init(void)
//  819 {
//  820   register uint32_t tmpReg;
//  821 
//  822   GPIO.PuSelLo |= (GPIO_UART2_RTS_bit | GPIO_UART2_RX_bit);  // Pull-up select: UP type
GpioUart2Init:
        LDR      R1,??DataTable12_12  ;; 0x80000030
        LDR      R1,[R1, #+0]
        MOVS     R2,#+160
        LSLS     R2,R2,#+14       ;; #+2621440
        ORRS     R2,R2,R1
        LDR      R1,??DataTable12_12  ;; 0x80000030
        STR      R2,[R1, #+0]
//  823   GPIO.PuEnLo  |= (GPIO_UART2_RTS_bit | GPIO_UART2_RX_bit);  // Pull-up enable
        LDR      R1,??DataTable12_13  ;; 0x80000010
        LDR      R1,[R1, #+0]
        MOVS     R2,#+160
        LSLS     R2,R2,#+14       ;; #+2621440
        ORRS     R2,R2,R1
        LDR      R1,??DataTable12_13  ;; 0x80000010
        STR      R2,[R1, #+0]
//  824 
//  825   #if (gUart2_EnableHalfFlowControl_d == FALSE)
//  826   tmpReg = GPIO.FuncSel1 & ~((FN_MASK << GPIO_UART2_CTS_fnpos) | (FN_MASK << GPIO_UART2_RTS_fnpos)\ 
//  827   | (FN_MASK << GPIO_UART2_RX_fnpos) | (FN_MASK << GPIO_UART2_TX_fnpos));
        LDR      R1,??DataTable12_15  ;; 0x8000001c
        LDR      R1,[R1, #+0]
        LDR      R2,??DataTable12_16  ;; 0xfffff00f
        ANDS     R2,R2,R1
        MOVS     R0,R2
//  828   GPIO.FuncSel1 = tmpReg | ((FN_ALT << GPIO_UART2_CTS_fnpos) | (FN_ALT << GPIO_UART2_RTS_fnpos)\ 
//  829   | (FN_ALT << GPIO_UART2_RX_fnpos) | (FN_ALT << GPIO_UART2_TX_fnpos));
        MOVS     R1,#+170
        LSLS     R1,R1,#+3        ;; #+1360
        ORRS     R1,R1,R0
        LDR      R2,??DataTable12_15  ;; 0x8000001c
        STR      R1,[R2, #+0]
//  830   #else
//  831     tmpReg = GPIO.FuncSel1 & ~((FN_MASK << GPIO_UART2_CTS_fnpos) | (FN_MASK << GPIO_UART2_RTS_fnpos)\ 
//  832       | (FN_MASK << GPIO_UART2_RX_fnpos) | (FN_MASK << GPIO_UART2_TX_fnpos));
//  833     GPIO.FuncSel1 = tmpReg | ((FN_ALT << GPIO_UART2_RTS_fnpos) | (FN_ALT << GPIO_UART2_RX_fnpos)\ 
//  834       | (FN_ALT << GPIO_UART2_TX_fnpos));
//  835     GPIO.DataResetLo = GPIO_UART2_CTS_bit;  // low
//  836     GPIO.DirSetLo = GPIO_UART2_CTS_bit; // output
//  837   #endif
//  838 }
        BX       LR               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12:
        DC32     mSci2TxBufRefLeadingIndex

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_1:
        DC32     maSci2TxBufLenTable

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_2:
        DC32     maSci2TxBufRefTable

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_3:
        DC32     mSci2TxBufRefTrailingIndex

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_4:
        DC32     maSci2TxCallbackLeadingIndex

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_5:
        DC32     maSci2TxCallbackTable

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_6:
        DC32     Uart2_TxInProgress

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_7:
        DC32     uart2_ungetFlag

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_8:
        DC32     pfSci2RxCallBack

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_9:
        DC32     maSci2TxCallbackTrailingIndex

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_10:
        DC32     Uart_Task

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_11:
        DC32     gUartTaskId

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_12:
        DC32     0x80000030

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_13:
        DC32     0x80000010

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_14:
        DC32     0x80000018

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_15:
        DC32     0x8000001c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_16:
        DC32     0xfffff00f

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
__iar_via_R4:
        BX       R4

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
__iar_via_R0:
        BX       R0

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
__iar_via_R5:
        BX       R5

        END
// 
//    96 bytes in section .bss
// 1 230 bytes in section .text
// 
// 1 224 bytes of CODE memory (+ 6 bytes shared)
//    96 bytes of DATA memory
//
//Errors: none
//Warnings: 1
