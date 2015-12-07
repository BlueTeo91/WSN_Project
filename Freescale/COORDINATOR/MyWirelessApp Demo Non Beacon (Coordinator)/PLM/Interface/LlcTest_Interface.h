/************************************************************************************
* LlcTest.h
*
* This header file is for LLC test Component.
*
* Author(s):  B06485, B02753, B04839
*
* Copyright (c) 2007, Freescale, Inc.  All rights reserved.
*
* No part of this document must be reproduced in any form - including copied,
* transcribed, printed or by any electronic means - without specific written
* permission from Freescale.
*
************************************************************************************/
#ifndef _LLC_TEST_INTERFACE_H_
#define _LLC_TEST_INTERFACE_H_

#include "NwkMacInterface.h"

extern bool_t  gLlcRxTestStarted;
extern bool_t  gLlcTxTestStarted;
extern uint16_t gLlcRxPacketCnt;
extern uint8_t gLlcTxPacketCnt;
extern uint8_t gLlcTxPacketLen;
extern uint8_t gLlcTxSentPackets;
extern uint8_t gDestPanId[2];
extern uint8_t gDestShortAddr[2];


extern void     Llc_SetLedReq(bool_t led1on, bool_t led2on, bool_t led3on, bool_t led4on);
extern void     Llc_Start1kHzDACSinWaveReq(uint8_t volume);
extern void     Llc_StopDACSinWaveReq(void);
extern bool_t   Llc_Start1kHzPWMSinWaveReq(uint8_t volume);
extern void     Llc_StopPWMSinWaveReq(void);
extern bool_t   Llc_Start1KHzPWMReq(uint8_t duty, uint8_t volume);
extern void     Llc_Stop1KHzPWMReq(void);
extern void     Llc_SensorReadReq(SensorType_t sensor, uint16_t* readVal);
extern void     Llc_SetASStateReq(bool_t state);
extern void     Llc_ReadSwReq(bool_t swPressed[5]);
extern void     Llc_CrystalTrimmReq(uint8_t llcCourseTuneVal,uint8_t llcFineTuneVal);
extern bool_t   Llc_StartReceiver(uint8_t  panId[], uint8_t  logicalChannel, uint8_t  shortAddr[]);
extern uint16_t Llc_GetReceivedPackets(void);
extern bool_t   Llc_StartTransmitter(uint8_t  panId[], uint8_t  logicalChannel, uint8_t  shortAddr[]);
extern bool_t   Llc_TransmitPackets(uint8_t  destPanId[], uint8_t  destShortAddr[], uint8_t packetCount, uint8_t len);
extern bool_t   Llc_SendPacket(nwkToMcpsMessage_t *pMsg);
extern void     Llc_DisplayChessBoardReq(bool_t mode, bool_t backLightOn, chessSquareSize_t chesssSquareSize);
extern void     Llc_SetupJTAGNEXUSPinsReq_c(bool_t restore);
extern uint32_t Llc_ReadJTAGNEXUSPinsReq_c(void);
extern void     Llc_Start12MhzPWMReq(void);
extern void     Llc_Stop12MhzPWMReq(void);
extern bool_t   Llc_SetupGpioPinsReq(llcSetupGpioPinsReq_t *llcSetupGpioPinsReq);

#endif /* _LLC_TEST_INTERFACE_H_ */

