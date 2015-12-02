/************************************************************************************
* Includes the UART Utils.
*
* (c) Copyright 2007, Freescale, Inc. All rights reserved.
*
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale Semiconductor.
*
************************************************************************************/
#ifndef _UART_UTIL_H_
#define _UART_UTIL_H_
#include "Uart_Interface.h"
    
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
* Private functions
*************************************************************************************
************************************************************************************/

/************************************************************************************
*************************************************************************************
* Public macros
*************************************************************************************
************************************************************************************/


/************************************************************************************
*************************************************************************************
* Public type definitions
*************************************************************************************
************************************************************************************/

/* If you have to print a hex number you can choose between 
   BigEndian=1/LittleEndian=0, newline, commas or spaces (between bytes) */
enum {
  gPrtHexBigEndian_c = 1<<0,
  gPrtHexNewLine_c   = 1<<1,
  gPrtHexCommas_c    = 1<<2,
  gPrtHexSpaces_c    = 1<<3
};

typedef enum {
	gNoBlock_d  = 0,
	gAllowToBlock_d
}uartUtilBlock_t;

/************************************************************************************
*************************************************************************************
* Public memory declarations
*************************************************************************************
************************************************************************************/

/************************************************************************************
*************************************************************************************
* Public functions
*************************************************************************************
************************************************************************************/


/************************************************************************************
* Function that prints out a string on the UART interface. String needs to be 
* 0-terminated.
* If the Circular Tx List is full and the user called this function the
* data will be lost. Try to see if a transmission is pending before 
* sending  data or do not sent more than gUartCircListTxLen_c bytes using 
* consecutive UartUtil_Print.

* Interface assumptions:
*   None
*   
* Return value:
*   None
* 
************************************************************************************/
void UartUtil_Print(uint8_t* pString, uartUtilBlock_t allowToBlock);


/************************************************************************************
* Function that prints out one byte on the UART interface as a hexdecimal string.
* E.g. the byte 0x5E is printed as the string "5E". It is up to the user to add
* decorations before or after the string is printed. 
* Example:
*   UartUtil_Print("Number is: 0x");
*   UartUtil_PrintHex(0x5E,1,0);
*   UartUtil_Print("\r\n");
*   This will result in "Number is 0x5E" being printed over the UART with line shift.
*   
* Interface assumptions:
*   None
*   
* Return value:
*   None
* 
************************************************************************************/
void UartUtil_PrintHex(uint8_t *hex, uint8_t len, uint8_t flags);

/************************************************************************************
* Function that sends data to the UART from the supplied buffer. 
* If the Circular Tx List is full and the user called this function the
* data will be lost. Try to see if a transmission is pending before 
* sending  data or do not sent more than gUartCircListTxLen_c bytes using 
* consecutive UartUtil_Tx.
* 
* Interface assumptions:
*   None
*   
* Return value:
*   Number of bytes copied to the buffer
* 
************************************************************************************/
void UartUtil_Tx(uint8_t * pData, uint8_t length);

/************************************************************************************
* The UartUtil_ConfigureStopMode(bool_t enterStopMode) function will configure
* the UART before the MCU enters stop mode or after is exist stop mode based on
* boolean variable enterStopMode.
* Before entering stop mode the Rx line is placed in idle mode.
* After coming out of stop mode the functionality of the UART is restored 
* ( enable Rx line ). 
*
* Interface assumptions:
*   enterStopMode
*   
* Return value:
*   None
* 
************************************************************************************/
void UartUtil_ConfigureStopMode(bool_t enterStopMode);

#endif /* _UART_UTIL_H_ */



