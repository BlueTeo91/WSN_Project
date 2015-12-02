/************************************************************************************
* This file defines how the MAC/PHY is configured by the Application. This includes
* setting up the type of device (RFD, FFD, etc) and the number of buffers available
* for the MAC/PHY.
*
*
* (c) Copyright 2007, Freescale, Inc.  All rights reserved.
*
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale Semiconductor.
*
************************************************************************************/

#ifndef _APPTOMACPHYCONFIG_H_
#define _APPTOMACPHYCONFIG_H_

//**********************************************************************************
// Define MACtype library
//**********************************************************************************
//#define Type_FFDZSNBNV
#define Type_FFDNB

//**********************************************************************************
// Define MAC buffer pools
//**********************************************************************************
/* One buffer is MAC private. */
#define gBigMsgsMacOnly_d         1 
/* One small + one large + one large MAC private buffer pool. */
#define gMmNumPools_c             3 
/* Number of control messages. */
#ifdef MC13226_d
#define gTotalSmallMsgs_d         20 
/* Number of data messages. */
#define gTotalBigMsgs_d           20 
#else
#define gTotalSmallMsgs_d         5 
/* Number of data messages. */
#define gTotalBigMsgs_d           6 
#endif //MC13226_d
/* Number of ACL entries in MAC PIB. */
  #ifndef gMAC2006_d
  #define gNumAclEntryDescriptors_c 4 // Number of ACL entries in MAC PIB
  #else
  #define gNumKeyTableEntries_c           2
  
  #define gNumKeyIdLookupEntries_c        2
  #define gNumKeyDeviceListEntries_c      2
  #define gNumKeyUsageListEntries_c       2

  #define gNumDeviceTableEntries_c        2
  #define gNumSecurityLevelTableEntries_c 2
  #endif //gMAC2006_d
/* Allows application to select if ASP shall be included. */
#define gAspCapability_d             1
/* Telec functionality for the Japanese market. */
#define gAspJapanTelecCapability_d  (1 && gAspCapability_d)

/*
   Enable debug msg tracking code that allows to track who allocated or freed a messag last time
   and its status
*/
#define MsgTracking_d 1
#endif /* _APPTOMACPHYCONFIG_H_ */

