///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      08/Dec/2015  00:24:13 /
// IAR ANSI C/C++ Compiler V5.50.7.22081/W32 EVALUATION for ARM               /
// Copyright (C) 1999-2010 IAR Systems AB.                                    /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Documents and Settings\Administrator\Desktop\WSN_Pro /
//                    ject\ENDDEV\MyWirelessApp Demo Non Beacon (End          /
//                    Device)\Application\UartUtil\UartUtil.c                 /
//    Command line =  "C:\Documents and Settings\Administrator\Desktop\WSN_Pr /
//                    oject\ENDDEV\MyWirelessApp Demo Non Beacon (End         /
//                    Device)\Application\UartUtil\UartUtil.c" -D             /
//                    gMacStandAlone_d=1 -D gSAPMessagesEnableLlc_d=0 -D      /
//                    gZtcIncluded_d=0 -D gTargetMC1322xSRB=1 --preprocess    /
//                    "C:\Documents and Settings\Administrator\Desktop\WSN_Pr /
//                    oject\ENDDEV\MyWirelessApp Demo Non Beacon (End         /
//                    Device)\Debug\List\" -lC "C:\Documents and              /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End Device)\Debug\List\" -lB  /
//                    "C:\Documents and Settings\Administrator\Desktop\WSN_Pr /
//                    oject\ENDDEV\MyWirelessApp Demo Non Beacon (End         /
//                    Device)\Debug\List\" --diag_suppress                    /
//                    Pe014,Pe001,Pe991,Pa039,Pe520 -o "C:\Documents and      /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End Device)\Debug\Obj\"       /
//                    --no_cse --no_unroll --no_inline --no_code_motion       /
//                    --no_tbaa --no_clustering --no_scheduling --debug       /
//                    --endian=little --cpu=ARM7TDMI-S --fpu=None             /
//                    --dlib_config "C:\Program Files\IAR Systems\Embedded    /
//                    Workbench 5.4 Evaluation\arm\INC\DLib_Config_Normal.h"  /
//                    -I "C:\Documents and Settings\Administrator\Desktop\WSN /
//                    _Project\ENDDEV\MyWirelessApp Demo Non Beacon (End      /
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
//                    Device)\Debug\List\UartUtil.s                           /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME UartUtil

        EXTERN Uart2_IsTxActive
        EXTERN Uart2_Transmit
        EXTERN UartOpenCloseTransceiver

        PUBLIC UartUtil_ConfigureStopMode
        PUBLIC UartUtil_Print
        PUBLIC UartUtil_PrintHex
        PUBLIC UartUtil_Tx
        PUBLIC UartUtil_TxCallback

// C:\Documents and Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWirelessApp Demo Non Beacon (End Device)\Application\UartUtil\UartUtil.c
//    1 /************************************************************************************
//    2 * Includes the UART Utils.
//    3 *
//    4 * (c) Copyright 2007, Freescale, Inc. All rights reserved.
//    5 *
//    6 * No part of this document must be reproduced in any form - including copied,
//    7 * transcribed, printed or by any electronic means - without specific written
//    8 * permission from Freescale Semiconductor.
//    9 *
//   10 ************************************************************************************/
//   11 #include "EmbeddedTypes.h"
//   12 #include "UartUtil.h"
//   13 #include "UART_Interface.h"
//   14 #include "UartLowLevel.h"
//   15 
//   16 /******************************************************************************/
//   17 /******************************************************************************/
//   18 
//   19 /************************************************************************************
//   20 *************************************************************************************
//   21 * Private macros
//   22 *************************************************************************************
//   23 ************************************************************************************/
//   24 
//   25 /************************************************************************************
//   26 *************************************************************************************
//   27 * Private prototypes
//   28 *************************************************************************************/
//   29 
//   30 
//   31 /************************************************************************************
//   32 *************************************************************************************
//   33 * Private type definitions
//   34 *************************************************************************************
//   35 ************************************************************************************/
//   36 
//   37 /************************************************************************************
//   38 *************************************************************************************
//   39 * Public memory declarations
//   40 *************************************************************************************
//   41 ************************************************************************************/
//   42  
//   43 /************************************************************************************
//   44 *************************************************************************************
//   45 * Private memory declarations
//   46 *************************************************************************************
//   47 ************************************************************************************/
//   48 
//   49 /************************************************************************************
//   50 *************************************************************************************
//   51 * Public functions
//   52 *************************************************************************************
//   53 ************************************************************************************/
//   54 #if gUart1_Enabled_d || gUart2_Enabled_d
//   55 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   56 void UartUtil_TxCallback(unsigned char const *pBuf)
//   57 {
//   58   (void) pBuf;
//   59 }
UartUtil_TxCallback:
        BX       LR               ;; return
//   60 
//   61 /************************************************************************************/
//   62 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   63 void UartUtil_Tx(uint8_t * pData, uint8_t length)
//   64 {
UartUtil_Tx:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
        MOVS     R5,R1
//   65   /* wait until module can insert message into uart buffers */
//   66   while(!UartX_Transmit((unsigned char const*)pData,(index_t)length,UartUtil_TxCallback));
??UartUtil_Tx_0:
        LDR      R2,??DataTable2
        MOVS     R1,R5
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        MOVS     R0,R4
        BL       Uart2_Transmit
        CMP      R0,#+0
        BEQ      ??UartUtil_Tx_0
//   67   /* wait until tx complete */
//   68   while (UartX_IsTxActive());      
??UartUtil_Tx_1:
        BL       Uart2_IsTxActive
        CMP      R0,#+0
        BNE      ??UartUtil_Tx_1
//   69 }
        POP      {R0,R4,R5}
        POP      {R3}
        BX       R3               ;; return
//   70 
//   71 /************************************************************************************/
//   72 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   73 void UartUtil_Print(uint8_t* pString, uartUtilBlock_t allowToBlock)
//   74 {
UartUtil_Print:
        PUSH     {R3-R7,LR}
        MOVS     R6,R0
        MOVS     R7,R1
//   75   uint16_t i = 0;
        MOVS     R0,#+0
        MOVS     R4,R0
//   76   uint8_t*  pTmpString = pString ;
        MOVS     R5,R6
//   77   
//   78   while (*pTmpString != '\0') 
??UartUtil_Print_0:
        LDRB     R0,[R5, #+0]
        CMP      R0,#+0
        BEQ      ??UartUtil_Print_1
//   79   {
//   80     pTmpString++;
        ADDS     R5,R5,#+1
//   81     i++;
        ADDS     R4,R4,#+1
        B        ??UartUtil_Print_0
//   82   } 
//   83   if(allowToBlock)
??UartUtil_Print_1:
        LSLS     R7,R7,#+24       ;; ZeroExtS R7,R7,#+24,#+24
        LSRS     R7,R7,#+24
        CMP      R7,#+0
        BEQ      ??UartUtil_Print_2
//   84   {
//   85     /* wait until module can insert message into uart buffers and until tx completes */  
//   86 	UartUtil_Tx(pString,(uint8_t)i);
        MOVS     R1,R4
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        MOVS     R0,R6
        BL       UartUtil_Tx
        B        ??UartUtil_Print_3
//   87   }
//   88   else
//   89   {
//   90     (void)UartX_Transmit((unsigned char const*)pString,(index_t)i,UartUtil_TxCallback);
??UartUtil_Print_2:
        LDR      R2,??DataTable2
        MOVS     R1,R4
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        MOVS     R0,R6
        BL       Uart2_Transmit
//   91   }
//   92 }
??UartUtil_Print_3:
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return
//   93 
//   94 
//   95 /************************************************************************************/
//   96 
//   97 /* Trasform from hex to ascii */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   98 static uint8_t HexToAscii(uint8_t hex)
//   99 {
HexToAscii:
        PUSH     {LR}
//  100   hex &= 0x0F;
        LSLS     R0,R0,#+28       ;; ZeroExtS R0,R0,#+28,#+28
        LSRS     R0,R0,#+28
//  101   return hex + ((hex <= 9) ? '0' : ('A'-10));
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+10
        BCS      ??HexToAscii_0
        MOVS     R1,#+48
        B        ??HexToAscii_1
??HexToAscii_0:
        MOVS     R1,#+55
??HexToAscii_1:
        ADDS     R0,R0,R1
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        POP      {R3}
        BX       R3               ;; return
//  102 }
//  103 
//  104 /************************************************************************************/
//  105 
//  106 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  107 void UartUtil_PrintHex(uint8_t *hex, uint8_t len, uint8_t flags)
//  108 {
UartUtil_PrintHex:
        PUSH     {R4-R7,LR}
        SUB      SP,SP,#+12
        MOVS     R6,R0
        MOVS     R4,R1
        MOVS     R7,R2
//  109   uint8_t i=0; 
        MOVS     R0,#+0
        MOVS     R5,R0
//  110   uint8_t hexString[6]; /* 2 bytes  - hexadecimal display 
//  111                            1 byte   - separator ( comma)
//  112 						   1 byte   - separator ( space)
//  113                            2 bytes  - new line (\n\r)  */
//  114   
//  115   if(! (flags & gPrtHexBigEndian_c))
        LSLS     R0,R7,#+31
        BMI      ??UartUtil_PrintHex_0
//  116    {
//  117     hex = hex + (len-1);
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        ADDS     R6,R6,R4
        SUBS     R6,R6,#+1
//  118    }
//  119    
//  120   while(len)
??UartUtil_PrintHex_0:
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+0
        BEQ      ??UartUtil_PrintHex_1
//  121   {
//  122     /* wait until previous hex print transmission is over */  
//  123     while (UartX_IsTxActive());  
??UartUtil_PrintHex_2:
        BL       Uart2_IsTxActive
        CMP      R0,#+0
        BNE      ??UartUtil_PrintHex_2
//  124       
//  125     /* start preparing the print of a new byte */
//  126     i=0;
        MOVS     R0,#+0
        MOVS     R5,R0
//  127     hexString[i++] = HexToAscii((*hex)>>4);
        LDRB     R0,[R6, #+0]
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        LSRS     R0,R0,#+4
        BL       HexToAscii
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        MOV      R1,SP
        STRB     R0,[R1, R5]
        ADDS     R5,R5,#+1
//  128     hexString[i++] = HexToAscii( *hex);
        LDRB     R0,[R6, #+0]
        BL       HexToAscii
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        MOV      R1,SP
        STRB     R0,[R1, R5]
        ADDS     R5,R5,#+1
//  129 
//  130     if(flags & gPrtHexCommas_c)
        LSLS     R0,R7,#+29
        BPL      ??UartUtil_PrintHex_3
//  131      {
//  132       hexString[i++] = ',';
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        MOV      R0,SP
        MOVS     R1,#+44
        STRB     R1,[R0, R5]
        ADDS     R5,R5,#+1
//  133      }
//  134     if(flags & gPrtHexSpaces_c) 
??UartUtil_PrintHex_3:
        LSLS     R0,R7,#+28
        BPL      ??UartUtil_PrintHex_4
//  135      { 
//  136       hexString[i++] = ' ';
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        MOV      R0,SP
        MOVS     R1,#+32
        STRB     R1,[R0, R5]
        ADDS     R5,R5,#+1
//  137      }
//  138     hex = hex + (flags & gPrtHexBigEndian_c ? 1 : -1);
??UartUtil_PrintHex_4:
        LSLS     R0,R7,#+31
        BPL      ??UartUtil_PrintHex_5
        MOVS     R0,#+1
        B        ??UartUtil_PrintHex_6
??UartUtil_PrintHex_5:
        MOVS     R0,#+0
        MVNS     R0,R0            ;; #-1
??UartUtil_PrintHex_6:
        ADDS     R6,R6,R0
//  139     len--;
        SUBS     R4,R4,#+1
//  140     
//  141     if((len == 0) && (flags & gPrtHexNewLine_c))
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+0
        BNE      ??UartUtil_PrintHex_7
        LSLS     R0,R7,#+30
        BPL      ??UartUtil_PrintHex_7
//  142      {
//  143       hexString[i++] = '\n';
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        MOV      R0,SP
        MOVS     R1,#+10
        STRB     R1,[R0, R5]
        ADDS     R5,R5,#+1
//  144       hexString[i++] = '\r';
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        MOV      R0,SP
        MOVS     R1,#+13
        STRB     R1,[R0, R5]
        ADDS     R5,R5,#+1
//  145      }
//  146      /* transmit formatted byte */      
//  147     (void)UartX_Transmit((unsigned char const*)hexString,(index_t)i,UartUtil_TxCallback);   
??UartUtil_PrintHex_7:
        LDR      R2,??DataTable2
        MOVS     R1,R5
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        MOV      R0,SP
        BL       Uart2_Transmit
        B        ??UartUtil_PrintHex_0
//  148   }
//  149   /* wait to complete the last transmission */
//  150   while (UartX_IsTxActive());   
??UartUtil_PrintHex_1:
        BL       Uart2_IsTxActive
        CMP      R0,#+0
        BNE      ??UartUtil_PrintHex_1
//  151 }
        POP      {R0-R2,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2:
        DC32     UartUtil_TxCallback
//  152 
//  153 /************************************************************************************/
//  154 /* Configure UART to work in stop mode or in normal mode*/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  155 void UartUtil_ConfigureStopMode(bool_t enterStopMode)
//  156 {
UartUtil_ConfigureStopMode:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  157 
//  158   if ( TRUE == enterStopMode )
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+1
        BNE      ??UartUtil_ConfigureStopMode_0
//  159   {  
//  160     /* Configure UART before entering stop mode */  
//  161     #if (gUart1_Enabled_d == TRUE)  
//  162     UartCloseReceiver(UART_1);
//  163     UartCloseTransmitter(UART_1);            
//  164     #endif /* gUart1_Enabled_d */
//  165     
//  166     #if (gUart2_Enabled_d == TRUE)  
//  167     UartCloseReceiver(UART_2);
        MOVS     R2,#+0
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       UartOpenCloseTransceiver
//  168     UartCloseTransmitter(UART_2);            
        MOVS     R2,#+0
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       UartOpenCloseTransceiver
        B        ??UartUtil_ConfigureStopMode_1
//  169     #endif /* gUart2_Enabled_d */
//  170   }  
//  171   else
//  172   {
//  173     /* Restore UART settings */ 
//  174     #if (gUart1_Enabled_d == TRUE)  
//  175     UartOpenReceiver(UART_1); 
//  176     UartOpenTransmitter(UART_1); 
//  177     #endif /* gUart1_Enabled_d */
//  178     
//  179     #if (gUart2_Enabled_d == TRUE)  
//  180     UartOpenReceiver(UART_2); 
??UartUtil_ConfigureStopMode_0:
        MOVS     R2,#+1
        MOVS     R1,#+2
        MOVS     R0,#+1
        BL       UartOpenCloseTransceiver
//  181     UartOpenTransmitter(UART_2);           
        MOVS     R2,#+1
        MOVS     R1,#+1
        MOVS     R0,#+1
        BL       UartOpenCloseTransceiver
//  182     #endif /* gUart2_Enabled_d */       
//  183 
//  184   }
//  185 
//  186 }  
??UartUtil_ConfigureStopMode_1:
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return

        END
//  187 
//  188 #else /* gUart1_Enabled_d || gUart2_Enabled_d */
//  189 
//  190 /* Create  dummy functions  */
//  191 void UartUtil_Print(uint8_t* pString, uartUtilBlock_t allowToBlock)
//  192 {
//  193   /* Avoid compiler warning */
//  194   (void)pString;
//  195   (void)allowToBlock;
//  196 }
//  197 
//  198 /************************************************************************************/
//  199 
//  200 void UartUtil_PrintHex(uint8_t *hex, uint8_t len, uint8_t flags)
//  201 {
//  202   /* Avoid compiler warning */
//  203   (void)hex;
//  204   (void)len;
//  205   (void)flags;
//  206 }
//  207 
//  208 /************************************************************************************/
//  209 
//  210 void UartUtil_Tx(uint8_t * pData, uint8_t length){
//  211   /* Avoid compiler warning */
//  212   (void)pData;
//  213   (void)length;
//  214 }
//  215 
//  216 /************************************************************************************/
//  217 void UartUtil_ConfigureStopMode(bool_t enterStopMode){
//  218 (void)enterStopMode;  
//  219 }
//  220 #endif  /* gUart1_Enabled_d || gUart2_Enabled_d */
// 
// 398 bytes in section .text
// 
// 398 bytes of CODE memory
//
//Errors: none
//Warnings: none
