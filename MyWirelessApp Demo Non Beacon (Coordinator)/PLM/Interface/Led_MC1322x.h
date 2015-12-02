/************************************************************************************
* Led_MC1322x.h
*
* This header file is for LED Driver Interface.
*
* Copyright (c) 2007, Freescale, Inc. All rights reserved.
*
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale Semiconductor.
*
*****************************************************************************/

#ifndef _Led_MC1322x_H_
#define _Led_MC1322x_H_

/******************************************************************************
*******************************************************************************
* Public Macros
*******************************************************************************
******************************************************************************/
/* Define LED pin mapping */
/* for the future  use of next platforms: we can use  LED1_PIN_TARGET or LED1_PIN as defines */
#define LED1_PIN_TARGET   gGpioPin23_c
#define LED2_PIN_TARGET   gGpioPin24_c
#define LED3_PIN_TARGET   gGpioPin25_c
#define LED4_PIN_TARGET   gGpioPin44_c

/* Pin levels for LED ON and OFF states */
#define LED_SET           gGpioPinStateHigh_c
#define LED_RESET         gGpioPinStateLow_c

/******************************************************************************
*******************************************************************************
* Public type definitions
*******************************************************************************
******************************************************************************/
/* None */

/******************************************************************************
*******************************************************************************
* Public prototypes
*******************************************************************************
******************************************************************************/
/* None */

/******************************************************************************
*******************************************************************************
* Public Memory Declarations
*******************************************************************************
******************************************************************************/
/* None */

/******************************************************************************
*******************************************************************************
* Public functions
*******************************************************************************
******************************************************************************/
/* None */

#endif /* _Led_MC1322x_H_ */
