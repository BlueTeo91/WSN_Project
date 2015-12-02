/*****************************************************************************
* This  file is used by the Application to configure Mac Standalone. 
*
*             
* (c) Copyright 2007, Freescale, Inc. All rights reserved.
*
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale Semiconductor.
*
*****************************************************************************/

#ifndef _MACAPPLICATION_CONFIG_H_
#define _MACAPPLICATION_CONFIG_H_

/*****************************************************************************
******************************************************************************
* Public macros
******************************************************************************
*****************************************************************************/
/* Defines the channels to scan. Each bit represents one channel. Use
   0x07FFF800 to scan all 16 802.15.4 channels in the 2.4GHz band. */
#define mDefaultValueOfChannel_c 0x8000 

/* Defines the default value of the MAC extended address */
#define mDefaultValueOfExtendedAddress_c    0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF,0xFF

/* Defines whether or not the LPM module is included in the application */
#ifndef gLpmIncluded_d
#define gLpmIncluded_d FALSE
#endif

/*****************************************************************************
******************************************************************************
* Public type definitions
******************************************************************************
*****************************************************************************/

/*None*/

/*****************************************************************************
******************************************************************************
* Public prototypes
******************************************************************************
*****************************************************************************/

/*None*/

#endif /* _MACAPPLICATION_CONFIG_H_ */
