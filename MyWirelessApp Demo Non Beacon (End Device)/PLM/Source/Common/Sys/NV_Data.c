/*****************************************************************************
* Data definitions for the application client of the NV storage module.
*
* c) Copyright 2007, Freescale, Inc. All rights reserved.
*
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale Semiconductor.
*
*****************************************************************************/

#include "EmbeddedTypes.h"
#include "NVM_Interface.h"
#include "NV_Data.h"

#include "AppToPlatformConfig.h"
#include "AppAspInterface.h"

#ifndef gMacStandAlone_d
#define gMacStandAlone_d  0
#endif

#ifndef gBeeStackIncluded_d
#define gBeeStackIncluded_d  0
#endif

#ifndef ECNetIncluded_d
#define ECNetIncluded_d  0
#endif

#ifndef SynkroIncluded_d
#define SynkroIncluded_d 0
#endif

#ifndef gRF4CEIncluded_d
#define gRF4CEIncluded_d  0
#endif


#if gBeeStackIncluded_d
#include "BeeStackConfiguration.h"
#include "BeeStack_Globals.h"
//#include "BeeStackCalculations.h"
#include "BeeStackParameters.h"
/* IMPORTANT: See the comments at the beginning of NVM_Interface.h. */
#include "ASL_UserInterface.h"
#include "HaProfile.h"
#endif

#if ECNetIncluded_d
#include "ECNet_Globals.h"
#endif

#if SynkroIncluded_d
#include "NwkGlobals.h"
#endif

#if gRF4CEIncluded_d
#include "NwkGlobals.h"
#endif


/*****************************************************************************
******************************************************************************
* Private macros
******************************************************************************
*****************************************************************************/
#if gTargetMC1322xSRB
  #define gXtalCtuneVal_c     0x08 // values updated for kaibab 2.1
  #define gXtalFTuneVal_c     0x0F

#elif gTargetMC1322xNCB
  #define gXtalCtuneVal_c     0x08 // values updated for kaibab 2.1
  #define gXtalFTuneVal_c     0x0F
 
#elif gTargetMC1322xUSB
  #define gXtalCtuneVal_c     0x0A // values updated for kaibab 2.1
  #define gXtalFTuneVal_c     0x0E

#elif gTargetMC1322xLPB
  #define gXtalCtuneVal_c     0x0B // values updated for kaibab 2.1
  #define gXtalFTuneVal_c     0x12

#elif gTarget_UserDefined
  /* User defined tuning values */
  #define gXtalCtuneVal_c     gXtalCtuneValUserDefined_c
  #define gXtalFTuneVal_c     gXtalFTuneValUserDefined_c
#else
  #error "Error: No valid target selected."
#endif

#define gSystemClock24MHzVal_c    TRUE
#define gDigitalClock_PNVal_c     24
#define gDigitalClock_RNVal_c     21
#define gMACA_Clock_DIVVal_c      95
#define gDigitalClock_RAFCVal_c   0
#define gaRFSynVCODivIVal_c      \
  {\
     0x2f,\
     0x2f,\
     0x2f,\
     0x2f,\
     0x2f,\
     0x2f,\
     0x2f,\
     0x2f,\
     0x2f,\
     0x30,\
     0x30,\
     0x30,\
     0x30,\
     0x30,\
     0x30,\
     0x30\
  }

#define gaRFSynVCODivFVal_c       \
  {\
    0x00355555,\
    0x006aaaaa,\
    0x00a00000,\
    0x00d55555,\
    0x010aaaaa,\
    0x01400000,\
    0x01755555,\
    0x01aaaaaa,\
    0x01e00000,\
    0x00155555,\
    0x004aaaaa,\
    0x00800000,\
    0x00b55555,\
    0x00eaaaaa,\
    0x01200000,\
    0x01555555\
  }
/*****************************************************************************
******************************************************************************
* Public memory declarations
******************************************************************************
*****************************************************************************/
#pragma location = "nv_data_init_struct"
const HardwareParameters_t gHardwareParameters = 
{
 gaHardwareParametersDelimiterString_c, 
  
 SYSTEM_CLOCK/1000,                                   /* Bus_Frequency_In_MHz */
 
 {0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF},    /* MAC_Address */
 
  gDefaultPowerLevel_c,                               /* Default Power Level */
 
 #if gTarget_UserDefined
  gDualPortRFOperation_c,                             /* dualPortRFOperation */
 #else
  FALSE,
 #endif
  
  gChannelPa_c,                                       /* paPowerLevelLimits */
  
  gCcaThreshold_c,                                    /* ccaThreshold */
  
 #if gTarget_UserDefined
  gEnableComplementaryPAOutput_c,                     /* enableComplementatyPAOutput */
 #else
  FALSE,
 #endif  
  
  gSystemClock24MHzVal_c,                             /* gSystemClock24MHz_c */
  gXtalCtuneVal_c,                                    /* gXtalCtuneVal_c */
  gXtalFTuneVal_c,                                    /* gXtalFTune_c */
  gDigitalClock_PNVal_c,                              /* gDigitalClock_PN_c */
  gDigitalClock_RNVal_c,                              /* gDigitalClock_RN_c */  
  gMACA_Clock_DIVVal_c,                               /* gMACA_Clock_DIV_c */
  gDigitalClock_RAFCVal_c,                            /* gDigitalClock_RAFC_c */
  gaRFSynVCODivIVal_c,                                /* gaRFSynVCODivI_c[16] */
  gaRFSynVCODivFVal_c,                                /* gaRFSynVCODivF_c[16] */
  #if gTarget_UserDefined
   gPowerLevelLock_c,                                 /* paPowerLevelLock */
  #else
   FALSE,
  #endif  
  gaHardwareParametersDelimiterString_c  
};
/*****************************************************************************
******************************************************************************
* Public memory declarations
******************************************************************************
*****************************************************************************/

/* Define the NV storage data sets. Each table must end with "{NULL, 0}". */

/* If the NV storage module's self test flag is on, the NV code will use */
/* it's own internal data. */
#if !gNvSelfTest_d
#if gBeeStackIncluded_d
/* This data set contains network layer variables to be preserved across resets */
NvDataItemDescription_t const gaNvNwkDataSet[] = {
  {&gNwkData,				        sizeof(gNwkData)},
  {&gaNeighborTable,        sizeof(neighborTable_t) * gNwkInfobaseMaxNeighborTableEntry_c },
#if ((gCoordinatorCapability_d || gRouterCapability_d ) && gRnplusCapability_d)
  {&gaRouteTable,           sizeof(routeTable_t) * gNwkInfobaseMaxRouteTableEntry_c },
#endif
  {&gBeeStackConfig,        sizeof(beeStackConfigParams_t)},
  {NULL, 0}       /* Required end-of-table marker. */
};
#endif

#if ECNetIncluded_d
/* This data set contains network layer variables to be preserved across resets */
NvDataItemDescription_t const gaNvNwkDataSet[] = {
  {(uint8_t*)&nodeData, sizeof(nodeData_t)},
  {(uint8_t*)&pollParams, 10},  
  {NULL, 0}       /* Required end-of-table marker. */
};
#endif

#if SynkroIncluded_d
/* This data set contains network layer variables to be preserved across resets */
NvDataItemDescription_t const gaNvNwkDataSet[] = {
  {(uint8_t*)&nodeData, sizeof(nodeData_t)},
  {NULL, 0}       /* Required end-of-table marker. */
};
#endif

#if gRF4CEIncluded_d
/* This data set contains network layer variables to be preserved across resets */
NvDataItemDescription_t const gaNvNwkDataSet[] = {
  {(uint8_t*)&nodeData, sizeof(nodeData_t)},
  {(uint8_t*)&gNwkNib,  sizeof(nwkNib_t)},
  {NULL, 0}       /* Required end-of-table marker. */
};
#endif

#if gMacStandAlone_d
/* This data set contains MAC layer variables to be preserved across resets */
NvDataItemDescription_t const gaNvNwkDataSet[] = {
  {NULL, 0}       /* Required end-of-table marker. */
};
#endif

/* different for each application */
extern NvDataItemDescription_t const gaNvAppDataSet[];

/* Table of data sets. Required by the NV storage module. */
/* There must be gNvNumberOfDataSets_c entries in this table. If the */
/* number of entries changes, gNvNumberOfDataSets_c must be changed. */
NvDataSetDescription_t const NvDataSetTable[gNvNumberOfDataSets_c] = {
  {gNvDataSet_Nwk_ID_c, gaNvNwkDataSet},
  {gNvDataSet_App_ID_c, gaNvAppDataSet}
};



#endif                                  /* #if !gNvSelfTest_d */

