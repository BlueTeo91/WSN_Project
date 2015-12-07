/************************************************************************************
* Includes the UART Utils.
*
* (c) Copyright 2007, Freescale, Inc. All rights reserved.
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale Semiconductor.
*
************************************************************************************/
#include "EmbeddedTypes.h"
#include "UartUtil.h"
#include "UART_Interface.h"
#include "UartLowLevel.h"

/******************************************************************************/
/******************************************************************************/

/************************************************************************************
*************************************************************************************
* Private macros
*************************************************************************************
************************************************************************************/

/************************************************************************************
*************************************************************************************
* Private prototypes
*************************************************************************************/


/************************************************************************************
*************************************************************************************
* Private type definitions
*************************************************************************************
************************************************************************************/

/************************************************************************************
*************************************************************************************
* Public memory declarations
*************************************************************************************
************************************************************************************/
 
/************************************************************************************
*************************************************************************************
* Private memory declarations
*************************************************************************************
************************************************************************************/

/************************************************************************************
*************************************************************************************
* Public functions
*************************************************************************************
************************************************************************************/
#if gUart1_Enabled_d || gUart2_Enabled_d

void UartUtil_TxCallback(unsigned char const *pBuf)
{
  (void) pBuf;
}

/************************************************************************************/

void UartUtil_Tx(uint8_t * pData, uint8_t length)
{
  /* wait until module can insert message into uart buffers */
  while(!UartX_Transmit((unsigned char const*)pData,(index_t)length,UartUtil_TxCallback));
  /* wait until tx complete */
  while (UartX_IsTxActive());      
}

/************************************************************************************/

void UartUtil_Print(uint8_t* pString, uartUtilBlock_t allowToBlock)
{
  uint16_t i = 0;
  uint8_t*  pTmpString = pString ;
  
  while (*pTmpString != '\0') 
  {
    pTmpString++;
    i++;
  } 
  if(allowToBlock)
  {
    /* wait until module can insert message into uart buffers and until tx completes */  
	UartUtil_Tx(pString,(uint8_t)i);
  }
  else
  {
    (void)UartX_Transmit((unsigned char const*)pString,(index_t)i,UartUtil_TxCallback);
  }
}


/************************************************************************************/

/* Trasform from hex to ascii */
static uint8_t HexToAscii(uint8_t hex)
{
  hex &= 0x0F;
  return hex + ((hex <= 9) ? '0' : ('A'-10));
}

/************************************************************************************/


void UartUtil_PrintHex(uint8_t *hex, uint8_t len, uint8_t flags)
{
  uint8_t i=0; 
  uint8_t hexString[6]; /* 2 bytes  - hexadecimal display 
                           1 byte   - separator ( comma)
						   1 byte   - separator ( space)
                           2 bytes  - new line (\n\r)  */
  
  if(! (flags & gPrtHexBigEndian_c))
   {
    hex = hex + (len-1);
   }
   
  while(len)
  {
    /* wait until previous hex print transmission is over */  
    while (UartX_IsTxActive());  
      
    /* start preparing the print of a new byte */
    i=0;
    hexString[i++] = HexToAscii((*hex)>>4);
    hexString[i++] = HexToAscii( *hex);

    if(flags & gPrtHexCommas_c)
     {
      hexString[i++] = ',';
     }
    if(flags & gPrtHexSpaces_c) 
     { 
      hexString[i++] = ' ';
     }
    hex = hex + (flags & gPrtHexBigEndian_c ? 1 : -1);
    len--;
    
    if((len == 0) && (flags & gPrtHexNewLine_c))
     {
      hexString[i++] = '\n';
      hexString[i++] = '\r';
     }
     /* transmit formatted byte */      
    (void)UartX_Transmit((unsigned char const*)hexString,(index_t)i,UartUtil_TxCallback);   
  }
  /* wait to complete the last transmission */
  while (UartX_IsTxActive());   
}

/************************************************************************************/
/* Configure UART to work in stop mode or in normal mode*/
void UartUtil_ConfigureStopMode(bool_t enterStopMode)
{

  if ( TRUE == enterStopMode )
  {  
    /* Configure UART before entering stop mode */  
    #if (gUart1_Enabled_d == TRUE)  
    UartCloseReceiver(UART_1);
    UartCloseTransmitter(UART_1);            
    #endif /* gUart1_Enabled_d */
    
    #if (gUart2_Enabled_d == TRUE)  
    UartCloseReceiver(UART_2);
    UartCloseTransmitter(UART_2);            
    #endif /* gUart2_Enabled_d */
  }  
  else
  {
    /* Restore UART settings */ 
    #if (gUart1_Enabled_d == TRUE)  
    UartOpenReceiver(UART_1); 
    UartOpenTransmitter(UART_1); 
    #endif /* gUart1_Enabled_d */
    
    #if (gUart2_Enabled_d == TRUE)  
    UartOpenReceiver(UART_2); 
    UartOpenTransmitter(UART_2);           
    #endif /* gUart2_Enabled_d */       

  }

}  

#else /* gUart1_Enabled_d || gUart2_Enabled_d */

/* Create  dummy functions  */
void UartUtil_Print(uint8_t* pString, uartUtilBlock_t allowToBlock)
{
  /* Avoid compiler warning */
  (void)pString;
  (void)allowToBlock;
}

/************************************************************************************/

void UartUtil_PrintHex(uint8_t *hex, uint8_t len, uint8_t flags)
{
  /* Avoid compiler warning */
  (void)hex;
  (void)len;
  (void)flags;
}

/************************************************************************************/

void UartUtil_Tx(uint8_t * pData, uint8_t length){
  /* Avoid compiler warning */
  (void)pData;
  (void)length;
}

/************************************************************************************/
void UartUtil_ConfigureStopMode(bool_t enterStopMode){
(void)enterStopMode;  
}
#endif  /* gUart1_Enabled_d || gUart2_Enabled_d */
