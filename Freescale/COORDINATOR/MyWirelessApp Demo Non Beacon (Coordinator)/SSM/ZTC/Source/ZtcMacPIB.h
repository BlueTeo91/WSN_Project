/******************************************************************************
* ZtcMacPIB.h
* This module contains a fresh implementation of the ZigBee Test Client (ZTC).
*
* Copyright (c) 2008, Freescale, Inc.  All rights reserved.
*
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from  Freescale Semiconductor.
*
******************************************************************************/

#ifndef _ZtcMacPIB_h
#define _ZtcMacPIB_h

#include "NwkMacInterface.h"
#include "FunctionalityDefines.h"

/******************************************************************************
*******************************************************************************
* Private macros
*******************************************************************************
*******************************************************************************/
#if gSecurityCapability_d
#ifndef gDefaultSecurityMaterialMaxLength_c
#define gDefaultSecurityMaterialMaxLength_c sizeof(securityMaterial_t)
#endif  /* gDefaultSecurityMaterialMaxLength_c */
#endif /* gSecurityCapability_d */

/******************************************************************************
*******************************************************************************
* Private type definitions
*******************************************************************************
******************************************************************************/

typedef struct macPib_tag {
  uint8_t mPIBimacAckWaitDuration;
  bool_t  mPIBimacAssociationPermit;
  bool_t  mPIBimacAutoRequest;
  bool_t  mPIBimacBattLifeExt;
  uint8_t mPIBimacBattLifeExtPeriods;
  uint8_t mPIBnmacBeaconPayload[52];
  uint8_t mPIBimacBeaconPayloadLength;
  uint8_t mPIBimacBeaconOrder;
  uint8_t mPIBlmacBeaconTxTime[3];
  uint8_t mPIBimacBsn;
  uint8_t mPIBnmacCoordExtendedAddress[8];
  uint8_t mPIBsmacCoordShortAddress[2];
  uint8_t mPIBimacDsn;
  bool_t  mPIBimacGtsPermit;
  uint8_t mPIBimacMaxCsmaBackoffs;
  uint8_t mPIBimacMinBe;
  uint8_t mPIBsmacPanId[2];
  bool_t  mPIBimacPromiscuousMode;
  uint8_t mPIBimacRxOnWhenIdle;
  uint8_t mPIBsmacShortAddress[2];
  uint8_t mPIBimacSuperFrameOrder;
  uint8_t mPIBsmacTransactionPersistenceTime[2];
#ifdef gMAC2006_d
  bool_t  mPIBimacAssociatedPANCoord;
  uint8_t mPIBimacMaxBE;
  uint8_t mPIBimacMaxFrameRetries;
  uint8_t mPIBimacResponseWaitTime;
  uint8_t mPIBsmacSyncSymbolOffset[2];
  bool_t  mPIBimacTimestampSupported;
  bool_t  mPIBimacSecurityEnabled; 
  uint8_t mPIBimacMinLIFSPeriod;
  uint8_t mPIBimacMinSIFSPeriod; 
#endif //gMAC2006_d  

#if gSecurityCapability_d
 #ifndef gMAC2006_d
  aclEntryDescriptor_t *gpPIBaclEntryDescriptorSet;
  uint8_t mPIBimacAclEntryDescriptorSetSize;
  bool_t  mPIBimacDefaultSecurity;
  uint8_t mPIBimacDefaultSecurityMaterialLength;
  uint8_t mPIBnmacDefaultSecurityMaterial[gDefaultSecurityMaterialMaxLength_c];
  uint8_t mPIBimacDefaultSecuritySuite;
  uint8_t mPIBimacSecurityMode;
  uint8_t mPIBimacAclEntryCurrent;
 #else  
  KeyDescriptor_t            *gpPIBmacKeyTable;
  uint8_t                    mPIBimacKeyTableEntries;
  DeviceDescriptor_t         *gpPIBmacDeviceTable;
  uint8_t                    mPIBimacDeviceTableEntries;
  SecurityLevelDescriptor_t  *gpPIBmacSecurityLevelTable;
  uint8_t                    mPIBimacSecurityLevelTableEntries;
  uint8_t                    mPIBnmacFrameCounter[4];
  uint8_t                    mPIBimacAutoRequestSecurityLevel;
  uint8_t                    mPIBimacAutoRequestKeyIdMode;
  uint8_t                    mPIBnmacAutoRequestKeySource[8];
  uint8_t                    mPIBimacAutoRequestKeyIndex;
  uint8_t                    mPIBnmacDefaultKeySource[8];  
  uint8_t                    mPIBnmacPANCoordExtendedAddress[8];
  uint8_t                    mPIBsmacPANCoordShortAddress[2];
  //Freescale specific 2006 security PIB
  uint8_t                    mPIBimacKeyTableCrtEntry;
  uint8_t                    mPIBimacDeviceTableCrtEntry;
  uint8_t                    mPIBimacSecurityLevelTableCrtEntry;
  uint8_t                    mPIBimacKeyIdlLookuplistCrtEntry;
  uint8_t                    mPIBimacKeyUsageListCrtEntry;
  uint8_t                    mPIBimacKeyDeviceListCrtEntry;  
 #endif //gMAC2006_d
#endif // gSecurityCapability_d

  uint8_t mPIBimacRole;
  uint8_t mPIBimacLogicalChannel;
  uint8_t mPIBlmacTreemodeStartTime[3];
  uint8_t mPIBimacPanIdConflictDetection;
  uint8_t mPIBimacBeaconResponseDenied;
  uint8_t mPIBimacNBSuperFrameInterval;
  uint8_t mPIBimacBeaconPayloadLengthVendor;
} macPib_t;

#endif                                  /* #ifndef _ZtcMacPIB_h */
