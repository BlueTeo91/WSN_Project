/*****************************************************************************
* Declarations for the application client of the NV storage module.
*
* c) Copyright 2006, Freescale, Inc. All rights reserved.
*
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale Semiconductor.
*
*****************************************************************************/

#ifndef _NV_DATA_H_
#define _NV_DATA_H_

#include "EmbeddedTypes.h"

/* IMPORTANT: See the comments at the beginning of NVM_Interface.h. */

#ifndef gNvSelfTest_d
#define gNvSelfTest_d   0
#endif

/*****************************************************************************
******************************************************************************
* Public macros
******************************************************************************
*****************************************************************************/

/* Define the data set IDs. These values are part of the method for */
/* for recognizing data sets in NV storage. Any 8 bit value can be used. */
/* IMPORTANT: If the format of a data set or of any of its parts changes, */
/* this value must be changed. If it isn't, the NV storage code will not */
/* know the difference between the old and new formats of the data set. */
/* The convention here is not to remove the old definitions when a format */
/* changes, to avoid reusing IDs, at least for a while. */

/* IDs used by data set 1. */
#define gNvDataSet_01_v00_ID_c  0x10
#define gNvDataSet_01_v01_ID_c  0x11
#define gNvDataSet_01_v02_ID_c  0x12

/* IDs used by data set 2. */
#define gNvDataSet_02_v00_ID_c  0x20

/* Current IDs for each data set. */
#define gNvDataSet_Nwk_ID_c      gNvDataSet_01_v02_ID_c
#define gNvDataSet_App_ID_c      gNvDataSet_02_v00_ID_c

/* PA level limit for each individual channel */
#define gChannelPa_c           { gAspPowerLevel_4d5dBm,   /* 11 */ \
                                 gAspPowerLevel_4d5dBm,   /* 12 */ \
                                 gAspPowerLevel_4d5dBm,   /* 13 */ \
                                 gAspPowerLevel_4d5dBm,   /* 14 */ \
                                 gAspPowerLevel_4d5dBm,   /* 15 */ \
                                 gAspPowerLevel_4d5dBm,   /* 16 */ \
                                 gAspPowerLevel_4d5dBm,   /* 17 */ \
                                 gAspPowerLevel_4d5dBm,   /* 18 */ \
                                 gAspPowerLevel_4d5dBm,   /* 19 */ \
                                 gAspPowerLevel_4d5dBm,   /* 20 */ \
                                 gAspPowerLevel_4d5dBm,   /* 21 */ \
                                 gAspPowerLevel_4d5dBm,   /* 22 */ \
                                 gAspPowerLevel_4d5dBm,   /* 23 */ \
                                 gAspPowerLevel_4d5dBm,   /* 24 */ \
                                 gAspPowerLevel_4d5dBm,   /* 25 */ \
                                 gAspPowerLevel_4d5dBm }  /* 26 */

/* Energy detect threshold for determining a clear or busy  channel during an Energy Detect operation from the MACA */
#define gCcaThreshold_c          0x39


#define gDualPortRFOperation_c   False

#define gPowerLevelLock_c        False

#define gDefaultPowerLevel_c     gAspPowerLevel_m1dBm_c

#define gEnableComplementaryPAOutput_c    False

#if gTarget_UserDefined
  /* User defined tuning values */
  #define gXtalCtuneValUserDefined_c      0x18
  #define gXtalFTuneValUserDefined_c      0x0F     
#endif

/*****************************************************************************
******************************************************************************
* Private macros
******************************************************************************
*****************************************************************************/


/*****************************************************************************/



/*****************************************************************************
* CLOCK_OUT_SETTING and HF_CALIBRATION
* Values depending on target


*****************************************************************************
******************************************************************************
* Public type definitions
******************************************************************************
*****************************************************************************/

#pragma pack(push,current)
#pragma pack(1)

/* The Fresscale version string struct is placed at a specific location in */
/* ROM by the linker command file, and is normally only written during */
/* manufacturing. */
typedef struct FreescaleVersionStrings_tag {
  uint16_t NV_RAM_Version;
  uint8_t MAC_Version[4];
  uint8_t PHY_Version[4];
  uint8_t STACK_Version[4];
  uint8_t APP_Version[4];
  uint8_t HWName_Revision[4];
  uint8_t SerialNumber[4];
  uint16_t ProductionSite;
  uint8_t CountryCode;
  uint8_t ProductionWeekCode;
  uint8_t ProductionYearCode;
  uint8_t MCU_Manufacture;
  uint8_t MCU_Version;
  uint8_t NOT_USED;
} FreescaleVersionStrings_t;

/* The HardwareParameters_t struct is treated specially by both the */
/* linker command file and the startup (crt0.c) code. See the comments */
/* in crt0.c. */
/* The initialString and terminalString are unsigned chars, instead of */
/* uint8_t, because the C standard guarantees the sizeof(unsigned char). */
/* These strings are needed by the startup code to locate the current */
/* copy of the structure in NV storage, if there is one, and must be the */
/* first and last fields in the type. */
#define gaHardwareParametersDelimiterString_c   "Delim"
typedef struct HardwareParameters_tag {
  unsigned char initialString[ sizeof( gaHardwareParametersDelimiterString_c )];
  uint8_t  Bus_Frequency_In_MHz;
  uint8_t  MAC_Address[8];
  uint8_t  defaultPowerLevel;
  uint8_t  dualPortRFOperation;
  uint8_t  paPowerLevelLimits[16];
  uint8_t  ccaThreshold;
  bool_t   enableComplementatyPAOutput; 
  bool_t   gSystemClock24MHz_c;
  uint8_t  gXtalCTune_c;
  uint8_t  gXtalFTune_c;
  uint8_t  gDigitalClock_PN_c;
  uint8_t  gDigitalClock_RN_c;
  uint16_t gMACA_Clock_DIV_c;
  uint32_t gDigitalClock_RAFC_c;
  uint8_t  gaRFSynVCODivI_c[16];
  uint32_t gaRFSynVCODivF_c[16];
  uint8_t  paPowerLevelLock;
  unsigned char terminalString[ sizeof( gaHardwareParametersDelimiterString_c )];
  } HardwareParameters_t;


#pragma pack(pop,current)
/*****************************************************************************
******************************************************************************
* Public memory declarations
******************************************************************************
*****************************************************************************/


extern HardwareParameters_t const gHardwareParameters;



extern FreescaleVersionStrings_t const gFreescaleVersionStrings;
extern HardwareParameters_t const gHardwareParametersInit;

#endif //_NV_DATA_H_
