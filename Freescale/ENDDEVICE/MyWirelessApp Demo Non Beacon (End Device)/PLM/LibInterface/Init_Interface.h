/************************************************************************************
* Public header file for Init_Utils
*
* Copyright (c) 2007, Freescale, Inc. All rights reserved.
*
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale Semiconductor.
*
*****************************************************************************/

#ifndef _INIT_INTERFACE_H_
#define _INIT_INTERFACE_H_

/************************************************************************************
*************************************************************************************
* Public macros
*************************************************************************************
************************************************************************************/

/************************************************************************************
*************************************************************************************
* Public prototypes
*************************************************************************************
************************************************************************************/

/*=================================================================================*/
/*===== InitFromFlash =====*/
/*
@brief  Receives a pointer to the body of a initialization file.
        Validates the input and processes the file.

@param  uint32_t nvmAddress - input parameter: address in NVM where is placed
                                                 the intialization file
        uint32_t nLength    - input parameter: the length of the initialization file,
                                                in bytes

@return uint32_t
        Returns the number of bytes processed.

*/
/*=================================================================================*/
uint32_t InitFromFlash(uint32_t nvmAddress, uint32_t nLength);

/**************************************************************************************/
/*=================================================================================*/
/*===== InitFromFlash =====*/
/*
@brief  Receives a pointer to the body of a initialization file.
        Validates the input and processes the file.

@param  uint32_t nvmAddress - input parameter: address in NVM where is placed
                                                 the intialization file
        uint32_t nLength    - input parameter: the length of the initialization file,
                                                in bytes

@return uint32_t
        Returns the number of bytes processed.
*/
/*=================================================================================*/
uint32_t InitFromMemory(uint32_t* pInitArray, uint32_t nLength);

/**************************************************************************************/

#endif /* _INIT_INTERFACE_H_ */
