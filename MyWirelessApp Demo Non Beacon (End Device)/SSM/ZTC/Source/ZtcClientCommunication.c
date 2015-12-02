/******************************************************************************
* ZTC routines to handle the ZTC <--> external client protocol.
*
* (c) Copyright 2008, Freescale, Inc. All rights reserved.
*
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale Semiconductor.
*
******************************************************************************/

#include "EmbeddedTypes.h"

#if gBeeStackIncluded_d
#include "ZigBee.h"
#include "BeeStackFunctionality.h"
#include "BeeStackConfiguration.h"
#endif

#include "ZtcInterface.h"

#if gZtcIncluded_d

#include "FunctionLib.h"

#if gBeeStackIncluded_d
#include "BeeCommon.h"
#endif

#include "Uart_Interface.h"

#include "ZtcPrivate.h"
#include "ZtcClientCommunication.h"

/******************************************************************************
*******************************************************************************
* Public memory declarations
*******************************************************************************
******************************************************************************/

/* UART packet received from the external client, minus the UART envelope. */
clientPacket_t gZtcPacketFromClient;

/* UART packet to be sent to external client, minus the UART envelope. */
clientPacket_t gZtcPacketToClient;

/* If true, ZtcWritePacketToClient() will block after enabling the UART Tx */
/* interrupt, until the UART driver's output buffer is empty again. */
#ifdef gZtcDebug_d
bool_t gZtcUartTxBlocking = TRUE;
#else
bool_t gZtcUartTxBlocking = FALSE;
#endif

/******************************************************************************
*******************************************************************************
* Public functions
*******************************************************************************
******************************************************************************/

/* Read data from the UART. If the UART ISR has received a complete packet
 * (STX, packet header, and FCS), copy it to the Ztc's global
 * gZtcPacketFromClient buffer and return true. Otherwise return false.
 * This routine is called each time a byte is received from the UART.
 * Client packets consist of a UART envelope enclosing a variable length
 * clientPacket_t.
 * The UART envelope is a leading sync (STX) byte and a trailing FCS.
 */

static index_t bytesReceived = 0;       /* Does not count the STX. */

#define mMinValidPacketLen_c    (sizeof(clientPacketHdr_t) + sizeof(clientPacketChecksum_t))
typedef enum {
  packetIsValid,
  packetIsTooShort,
  framingError
} ztcPacketStatus_t;

/* Does the buffer contain a valid packet? */
ztcPacketStatus_t ZtcCheckPacket(void) {
  clientPacketChecksum_t checksum = 0;
  index_t i;
  index_t len;

  if (bytesReceived < mMinValidPacketLen_c) {
    return packetIsTooShort;            /* Too short to be valid. */
  }

  if (bytesReceived >= sizeof(gZtcPacketFromClient)) {
    return framingError;
  }

  /* The packet's len field does not count the STX, the opcode group, the */
  /* opcode, the len field, or the checksum. */
  len = gZtcPacketFromClient.structured.header.len;
  if (bytesReceived < len + sizeof(clientPacketHdr_t) + sizeof(checksum)) {
    return packetIsTooShort;
  }

  /* If the length appears to be too long, it might be because the external */
  /* client is sending a packet that is too long, or it might be that we're */
  /* out of sync with the external client. Assume we're out of sync. */
  if (len > sizeof(gZtcPacketFromClient.structured.payload)) {
    return framingError;
  }

  /* If the length looks right, make sure that the checksum is correct. */
  if (bytesReceived == len + sizeof(clientPacketHdr_t) + sizeof(checksum)) {
    for (checksum = 0, i = 0; i < len + sizeof(clientPacketHdr_t); ++i) {
      checksum ^= gZtcPacketFromClient.raw[i];
    }
  }

  if (checksum == gZtcPacketFromClient.structured.payload[len]) {
    return packetIsValid;
  }

  return framingError;
}                                       /* ZtcCheckPacket() */

bool_t ZtcReadPacketFromClient(void) {
  static bool_t startOfFrameSeen = FALSE;
  uint8_t byte;
  index_t i;
  ztcPacketStatus_t status;

  while (UartX_GetByteFromRxBuffer(&byte)) {
    if (!startOfFrameSeen) {
      bytesReceived = 0;
      startOfFrameSeen = (byte == mUartStxValue_c);
      break;                            /* Don't store the STX in the buffer. */
    }

    gZtcPacketFromClient.raw[bytesReceived++] = byte;
    for (;;) {
      status = ZtcCheckPacket();
      if (status == packetIsValid) {
        startOfFrameSeen = FALSE;
        bytesReceived = 0;
        return TRUE;
      }

      if (status == packetIsTooShort) {
        break;
      }

      /* If there appears to be a framing error, search the data received for */
      /* the next STX and try again. */
      startOfFrameSeen = FALSE;
      for (i = 0; i < bytesReceived; ++i) {
        if (gZtcPacketFromClient.raw[i] == mUartStxValue_c) {
          bytesReceived -= (i + 1);     /* Don't count the STX. */
          FLib_MemCpy(gZtcPacketFromClient.raw, gZtcPacketFromClient.raw + i + 1, bytesReceived);
          startOfFrameSeen = TRUE;
          break;                        /* Back to the "for (;;)" loop. */
        }                               /* if (gZtcPacketFromClient.raw[i] == mUartStxValue_c) */
      }                                 /* for (i = 0; i < bytesReceived; ++i) */
    break;
    }                                   /* for (;;) */
  }                                     /* while (UartX_GetBytesFromRxBuffer(&byte)) */

  return FALSE;                         /* Not yet. */
}                                       /* ZtcReadPacketFromClient() */

/****************************************************************************/

volatile bool_t mZtcPacketToClientIsBusy;
void ZtcWritePacketCallBack(unsigned char const *pBuf) {
  (void) pBuf;
  mZtcPacketToClientIsBusy = FALSE;
}

void ZtcWritePacketToClient(index_t const len) {
  mZtcPacketToClientIsBusy = TRUE;
  ZtcTransmitBuffer(gZtcPacketToClient.raw, len, ZtcWritePacketCallBack);
}

/**************************************/

static volatile bool_t mZtcOutputBufferIsBusy;
static void ZtcTransmitCallBack(unsigned char const *pBuf) {
  (void) pBuf;
  mZtcOutputBufferIsBusy = FALSE;
}

/* Send an arbitrary buffer to the external client. Block until the entire */
/* buffer has been sent, regardless of the state of the gZtcUartTxBlocking */
/* flag. */
void ZtcTransmitBufferBlock(uint8_t const *pSrc, index_t const len) {
  mZtcOutputBufferIsBusy = TRUE;

  ZtcTransmitBuffer(pSrc, len, ZtcTransmitCallBack);
  while (UartX_IsTxActive());
}

/**************************************/

static volatile bool_t mZtcChecksumWritten;
void ZtcWriteChecksumCallBack(unsigned char const *pBuf) {
  (void) pBuf;
  mZtcChecksumWritten = TRUE;
}

void ZtcTransmitBuffer
  (
  uint8_t const *pSrc,
  index_t const len,
  void (*pfCallBack)(unsigned char const *pBuf)
  )
{
  uint8_t byte;
  uint8_t checksum;
  uint8_t i;

  byte = mUartStxValue_c;

  while (!UartX_Transmit(&byte, sizeof(byte), NULL));
  /* if uart blocking enabled, wait for tx to complete.*/ 
  if(gZtcUartTxBlocking) { 
    while (UartX_IsTxActive());
  }
  
  if(gZtcUartTxBlocking) { 
  /*if uart blocking enabled, call uart with no callback and wait for tx to complete
    and execute callback manually
  */
    while (!UartX_Transmit(pSrc, len, NULL));  
     while (UartX_IsTxActive());
    if (pfCallBack)
      pfCallBack(NULL);
  } else { 
  /*else call uart with callbacm*/
  while (!UartX_Transmit(pSrc, len, pfCallBack));
  }
  
  checksum = 0;
  for (i = 0; i < len; ++i) {
    checksum ^= pSrc[i];
  }

  mZtcChecksumWritten = FALSE;

  if (gZtcUartTxBlocking) {
  /*if uart blocking enabled, call uart with no callback and wait for tx to complete
    and execute callback manually
  */  
    while (!UartX_Transmit(&checksum, sizeof(checksum), NULL));
     while (UartX_IsTxActive());
    ZtcWriteChecksumCallBack(NULL);
  } else {    
  /*else call uart with callbacm*/  
    while (!UartX_Transmit(&checksum, sizeof(checksum), ZtcWriteChecksumCallBack)); 
  }
  
}                                       /* ZtcWritePacketToClient() */

#endif                                  /* #if gZtcIncluded_d == 1 */
