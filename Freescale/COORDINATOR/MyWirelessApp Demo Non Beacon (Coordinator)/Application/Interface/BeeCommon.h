/******************************************************************************
* BeeCommon.h
*
* This module contains all of the types and functions used across modules in
* MAC.
*
* Copyright (c) 2006, Freescale, Inc. All rights reserved.
*
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale Semiconductor.
*
******************************************************************************/

#ifndef _BeeCommon_h
#define _BeeCommon_h

#include "EmbeddedTypes.h"
#include "MsgSystem.h"


/******************************************************************************
*******************************************************************************
* Public macros
*******************************************************************************
******************************************************************************/

/* for converting between native and over-the-air format */
#define OTA2Native16(iData) Swap2Bytes(iData)
#define Native2OTA16(iData) Swap2Bytes(iData)

/* for converting 32 bits between native and Over-The-Air format */
#define OTA2Native32(iData) Swap4Bytes(iData)
#define Native2OTA32(iData) Swap4Bytes(iData)

/* Number of elements in an array. */
#define NumberOfElements(array)             ((sizeof(array) / (sizeof(array[0]))))

/* Offset of a member within a struct. */
#define MbrOfs(type, member)                ((int) (&((type *) 0)->member))

/* Size of a member of a struct. */
#define MbrSizeof(type, member)             (sizeof(((type *) 0)->member))

/* Access the element of a given structure */
#define MbrOfStruct(type, member)           (((type *) 0)->member)

/* struct "type" contains a field "member", which is a pointer. Return the */
/* size of the data type pointed to by member, i.e. sizeof(*type.member). */
#define IndirectMbrSizeof(type, member)     (sizeof(*((type *) 0)->member))

/* Used as a placeholder for integer constants whose correct value is not yet */
/* known. */
#define gTODO_c     0

/* Used for integer constants whose correct value is known to be zero. */
#define gZero_c     0

/* Used for integer constants whose correct value is known to be -1. */
#define gMinusOne_c (-1)

/* Used as a placeholder for an integer constant that is never actually */
/* used, but which must be present. */
#define gUnused_c   0

/* Used for pointer constants whose correct value is known to be null. */
#define gNull_c     NULL

/******************************************************************************
*******************************************************************************
* Public type definitions
*******************************************************************************
******************************************************************************/

/*****************************************************************************
******************************************************************************
* Public prototypes
******************************************************************************
*****************************************************************************/

/* swaps bytes to convert between OTA and native format for a 16-bit word */
uint16_t Swap2Bytes(uint16_t iOldValue);

#endif                                  /* #ifndef _BeeCommon_h */
