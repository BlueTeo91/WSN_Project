///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      08/Dec/2015  00:24:10 /
// IAR ANSI C/C++ Compiler V5.50.7.22081/W32 EVALUATION for ARM               /
// Copyright (C) 1999-2010 IAR Systems AB.                                    /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Documents and Settings\Administrator\Desktop\WSN_Pro /
//                    ject\ENDDEV\MyWirelessApp Demo Non Beacon (End          /
//                    Device)\Application\Source\MApp.c                       /
//    Command line =  "C:\Documents and Settings\Administrator\Desktop\WSN_Pr /
//                    oject\ENDDEV\MyWirelessApp Demo Non Beacon (End         /
//                    Device)\Application\Source\MApp.c" -D                   /
//                    gMacStandAlone_d=1 -D gSAPMessagesEnableLlc_d=0 -D      /
//                    gZtcIncluded_d=0 -D gTargetMC1322xSRB=1 --preprocess    /
//                    "C:\Documents and Settings\Administrator\Desktop\WSN_Pr /
//                    oject\ENDDEV\MyWirelessApp Demo Non Beacon (End         /
//                    Device)\Debug\List\" -lC "C:\Documents and              /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End Device)\Debug\List\" -lB  /
//                    "C:\Documents and Settings\Administrator\Desktop\WSN_Pr /
//                    oject\ENDDEV\MyWirelessApp Demo Non Beacon (End         /
//                    Device)\Debug\List\" --diag_suppress                    /
//                    Pe014,Pe001,Pe991,Pa039,Pe520 -o "C:\Documents and      /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End Device)\Debug\Obj\"       /
//                    --no_cse --no_unroll --no_inline --no_code_motion       /
//                    --no_tbaa --no_clustering --no_scheduling --debug       /
//                    --endian=little --cpu=ARM7TDMI-S --fpu=None             /
//                    --dlib_config "C:\Program Files\IAR Systems\Embedded    /
//                    Workbench 5.4 Evaluation\arm\INC\DLib_Config_Normal.h"  /
//                    -I "C:\Documents and Settings\Administrator\Desktop\WSN /
//                    _Project\ENDDEV\MyWirelessApp Demo Non Beacon (End      /
//                    Device)\MacPhy\Interface\" -I "C:\Documents and         /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\Application\Init\" -I "C:\Documents and         /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\Application\Interface\" -I "C:\Documents and    /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\Application\Configure\" -I "C:\Documents and    /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\Application\UartUtil\" -I "C:\Documents and     /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\Application\Source\" -I "C:\Documents and       /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\SSM\TS\Interface\" -I "C:\Documents and         /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End Device)\SSM\TS\Source\"   /
//                    -I "C:\Documents and Settings\Administrator\Desktop\WSN /
//                    _Project\ENDDEV\MyWirelessApp Demo Non Beacon (End      /
//                    Device)\SSM\ZTC\Interface\" -I "C:\Documents and        /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End Device)\SSM\ZTC\Source\"  /
//                    -I "C:\Documents and Settings\Administrator\Desktop\WSN /
//                    _Project\ENDDEV\MyWirelessApp Demo Non Beacon (End      /
//                    Device)\PLM\Interface\" -I "C:\Documents and            /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\PLM\LibInterface\" -I "C:\Documents and         /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\PLM\Source\Display\" -I "C:\Documents and       /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\PLM\Source\Keyboard\" -I "C:\Documents and      /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End Device)\PLM\Source\NVM\"  /
//                    -I "C:\Documents and Settings\Administrator\Desktop\WSN /
//                    _Project\ENDDEV\MyWirelessApp Demo Non Beacon (End      /
//                    Device)\PLM\Source\TMR\" -I "C:\Documents and           /
//                    Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWir /
//                    elessApp Demo Non Beacon (End                           /
//                    Device)\PLM\Source\UART\" -I "C:\Program Files\IAR      /
//                    Systems\Embedded Workbench 5.4 Evaluation\arm\INC\"     /
//                    --interwork --cpu_mode thumb -On                        /
//    List file    =  C:\Documents and Settings\Administrator\Desktop\WSN_Pro /
//                    ject\ENDDEV\MyWirelessApp Demo Non Beacon (End          /
//                    Device)\Debug\List\MApp.s                               /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MApp

        EXTERN FLib_MemCpy
        EXTERN Gpio_SetPinData
        EXTERN Init_MacExtendedAddress
        EXTERN IntRestoreAll
        EXTERN KBD_Init
        EXTERN LED_Init
        EXTERN LED_StartFlash
        EXTERN LED_StopFlash
        EXTERN List_AddTail
        EXTERN List_ClearAnchor
        EXTERN List_RemoveHead
        EXTERN MM_Alloc
        EXTERN MM_Free
        EXTERN NWK_MCPS_SapHandler
        EXTERN NWK_MLME_SapHandler
        EXTERN TMR_AllocateTimer
        EXTERN TMR_StartSingleShotTimer
        EXTERN TS_SendEvent
        EXTERN Uart2_GetByteFromRxBuffer
        EXTERN Uart2_SetBaud
        EXTERN Uart2_SetRxCallBack
        EXTERN UartUtil_Print
        EXTERN UartUtil_PrintHex
        EXTERN UartUtil_Tx
        EXTERN __aeabi_uread4
        EXTERN __aeabi_uwrite4
        EXTERN aExtendedAddress
        EXTERN gAppTaskID_c

        PUBLIC ASP_APP_SapHandler
        PUBLIC AppTask
        PUBLIC DeepSleepWakeupStackProc
        PUBLIC MApp_init
        PUBLIC MCPS_NWK_SapHandler
        PUBLIC MLME_NWK_SapHandler
        PUBLIC gState
        PUBLIC gaNvAppDataSet
        PUBLIC val
        PUBLIC valc

// C:\Documents and Settings\Administrator\Desktop\WSN_Project\ENDDEV\MyWirelessApp Demo Non Beacon (End Device)\Application\Source\MApp.c
//    1 /*****************************************************************************
//    2 * MyWirelessApp Demo Non Beacon End Device application.
//    3 *
//    4 * (c) Copyright 2008, Freescale, Inc. All rights reserved.
//    5 *
//    6 *
//    7 * No part of this document must be reproduced in any form - including copied,
//    8 * transcribed, printed or by any electronic means - without specific written
//    9 * permission from Freescale Semiconductor.
//   10 *
//   11 *****************************************************************************/
//   12 
//   13 #include "MApp.h"
//   14 #include "NVM_Interface.h"
//   15 
//   16 /************************************************************************************
//   17 *************************************************************************************
//   18 * Private macros
//   19 *************************************************************************************
//   20 ************************************************************************************/
//   21 
//   22 /* If there are too many pending packets to be send over the air, */
//   23 /* receive mMaxKeysToReceive_c chars. */
//   24 /* The chars will be send over the air when there are no pending packets*/
//   25 #define mMaxKeysToReceive_c 32
//   26 
//   27 /************************************************************************************
//   28 *************************************************************************************
//   29 * Private prototypes
//   30 *************************************************************************************
//   31 ************************************************************************************/
//   32 
//   33 /* Forward declarations of helper functions */
//   34 static void    UartRxCallBack(void);
//   35 static uint8_t App_StartScan(uint8_t scanType);
//   36 static uint8_t App_HandleScanActiveConfirm(nwkMessage_t *pMsg);
//   37 static uint8_t App_WaitMsg(nwkMessage_t *pMsg, uint8_t msgType);
//   38 static uint8_t App_SendAssociateRequest(void);
//   39 static uint8_t App_HandleAssociateConfirm(nwkMessage_t *pMsg);
//   40 static uint8_t App_HandleMlmeInput(nwkMessage_t *pMsg);
//   41 static void    App_HandleMcpsInput(mcpsToNwkMessage_t *pMsgIn);
//   42 static void    App_TransmitUartData(void);
//   43 static void    App_TransmitUart2Data(uint8_t);
//   44 static void    AppPollWaitTimeout(uint8_t tmr);
//   45 static void    App_HandleKeys( key_event_t events );
//   46 
//   47 /************************************************************************************
//   48 *************************************************************************************
//   49 * Private type definitions
//   50 *************************************************************************************
//   51 ************************************************************************************/
//   52 
//   53 
//   54 /************************************************************************************
//   55 *************************************************************************************
//   56 * Private memory declarations
//   57 *************************************************************************************
//   58 ************************************************************************************/
//   59 
//   60 /* Information about the PAN we are part of */

        SECTION `.bss`:DATA:NOROOT(2)
//   61 static panDescriptor_t mCoordInfo;
mCoordInfo:
        DS8 24
//   62 
//   63 /* This is either the short address assigned by the PAN coordinator
//   64    during association, or our own extended MAC address. */

        SECTION `.bss`:DATA:NOROOT(2)
//   65 static uint8_t maMyAddress[8];
maMyAddress:
        DS8 8
//   66 /* The devices address mode. If 2, then maMyAddress contains the short
//   67    address assigned by the PAN coordinator. If 3, then maMyAddress is
//   68    equal to the extended address. */

        SECTION `.bss`:DATA:NOROOT(0)
//   69 static uint8_t mAddrMode;
mAddrMode:
        DS8 1
//   70 
//   71 /* Data request packet for sending UART input to the coordinator */

        SECTION `.bss`:DATA:NOROOT(2)
//   72 static nwkToMcpsMessage_t *mpPacket;
mpPacket:
        DS8 4
//   73 
//   74 /* The MSDU handle is a unique data packet identifier */

        SECTION `.bss`:DATA:NOROOT(0)
//   75 static uint8_t mMsduHandle;
mMsduHandle:
        DS8 1
//   76 
//   77 /* Number of pending data packets */

        SECTION `.bss`:DATA:NOROOT(0)
//   78 static uint8_t mcPendingPackets;
mcPendingPackets:
        DS8 1
//   79 
//   80 
//   81 
//   82 /* Signals that an MLME-Poll request is pending, and that we must wait for 
//   83    the MLME-Poll confirm message before sending the next poll request. */

        SECTION `.bss`:DATA:NOROOT(0)
//   84 static bool_t mWaitPollConfirm;
mWaitPollConfirm:
        DS8 1
//   85 
//   86 /* Time between MLME-Poll requests */

        SECTION `.bss`:DATA:NOROOT(1)
//   87 static uint16_t mPollInterval;
mPollInterval:
        DS8 2
//   88 
//   89   
//   90       
//   91 //value uart2

        SECTION `.bss`:DATA:NOROOT(0)
//   92 uint8_t val;
val:
        DS8 1

        SECTION `.bss`:DATA:NOROOT(0)
//   93 unsigned char valc;
valc:
        DS8 1
//   94 
//   95 /* Application input queues */

        SECTION `.bss`:DATA:NOROOT(2)
//   96 static anchor_t mMlmeNwkInputQueue;
mMlmeNwkInputQueue:
        DS8 8

        SECTION `.bss`:DATA:NOROOT(2)
//   97 static anchor_t mMcpsNwkInputQueue;
mMcpsNwkInputQueue:
        DS8 8
//   98 

        SECTION `.data`:DATA:NOROOT(0)
//   99 static tmrTimerID_t mTimer_c = gTmrInvalidTimerID_c;
mTimer_c:
        DATA
        DC8 255
//  100 
//  101 /************************************************************************************
//  102 *************************************************************************************
//  103 * Public memory declarations
//  104 *************************************************************************************
//  105 ************************************************************************************/
//  106 
//  107 /* The current state of the applications state machine */

        SECTION `.bss`:DATA:NOROOT(0)
//  108 uint8_t gState;
gState:
        DS8 1

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "\\n\\rPress any switch on...">`:
        DATA
        DC8 0AH, 0DH, 50H, 72H, 65H, 73H, 73H, 20H
        DC8 61H, 6EH, 79H, 20H, 73H, 77H, 69H, 74H
        DC8 63H, 68H, 20H, 6FH, 6EH, 20H, 62H, 6FH
        DC8 61H, 72H, 64H, 20H, 74H, 6FH, 20H, 73H
        DC8 74H, 61H, 72H, 74H, 20H, 72H, 75H, 6EH
        DC8 6EH, 69H, 6EH, 67H, 20H, 74H, 68H, 65H
        DC8 20H, 61H, 70H, 70H, 6CH, 69H, 63H, 61H
        DC8 74H, 69H, 6FH, 6EH, 2EH, 0AH, 0DH, 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Press any key">`:
        DATA
        DC8 "Press any key"
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "to start.">`:
        DATA
        DC8 "to start."
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Received an MLME-Beac...">`:
        DATA
        DC8 "Received an MLME-Beacon Notify Indication\012\015"

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "MyWirelessApp Demo No...">`:
        DATA
        DC8 4DH, 79H, 57H, 69H, 72H, 65H, 6CH, 65H
        DC8 73H, 73H, 41H, 70H, 70H, 20H, 44H, 65H
        DC8 6DH, 6FH, 20H, 4EH, 6FH, 6EH, 20H, 42H
        DC8 65H, 61H, 63H, 6FH, 6EH, 20H, 45H, 6EH
        DC8 64H, 20H, 44H, 65H, 76H, 69H, 63H, 65H
        DC8 20H, 61H, 70H, 70H, 6CH, 69H, 63H, 61H
        DC8 74H, 69H, 6FH, 6EH, 20H, 69H, 73H, 20H
        DC8 69H, 6EH, 69H, 74H, 69H, 61H, 6CH, 69H
        DC8 7AH, 65H, 64H, 20H, 61H, 6EH, 64H, 20H
        DC8 72H, 65H, 61H, 64H, 79H, 2EH, 0AH, 0DH
        DC8 0AH, 0DH, 0
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Start scanning for a ...">`:
        DATA
        DC8 "Start scanning for a PAN coordinator\012\015"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Start scanning">`:
        DATA
        DC8 "Start scanning"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "for coordinator">`:
        DATA
        DC8 "for coordinator"

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Found a coordinator w...">`:
        DATA
        DC8 46H, 6FH, 75H, 6EH, 64H, 20H, 61H, 20H
        DC8 63H, 6FH, 6FH, 72H, 64H, 69H, 6EH, 61H
        DC8 74H, 6FH, 72H, 20H, 77H, 69H, 74H, 68H
        DC8 20H, 74H, 68H, 65H, 20H, 66H, 6FH, 6CH
        DC8 6CH, 6FH, 77H, 69H, 6EH, 67H, 20H, 70H
        DC8 72H, 6FH, 70H, 65H, 72H, 74H, 69H, 65H
        DC8 73H, 3AH, 0AH, 0DH, 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "---------------------...">`:
        DATA
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH, 2DH
        DC8 2DH, 2DH, 2DH, 2DH, 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "\\n\\rAddress...........0x">`:
        DATA
        DC8 "\012\015Address...........0x"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "\\n\\rPAN ID............0x">`:
        DATA
        DC8 "\012\015PAN ID............0x"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "\\n\\rLogical Channel...0x">`:
        DATA
        DC8 "\012\015Logical Channel...0x"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "\\n\\rBeacon Spec.......0x">`:
        DATA
        DC8 "\012\015Beacon Spec.......0x"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "\\n\\rLink Quality......0x">`:
        DATA
        DC8 "\012\015Link Quality......0x"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "\\n\\r\\n\\r">`:
        DATA
        DC8 "\012\015\012\015"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Scan did not find a s...">`:
        DATA
        DC8 "Scan did not find a suitable coordinator\012\015"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "No coordinator">`:
        DATA
        DC8 "No coordinator"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "found.">`:
        DATA
        DC8 "found."
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Associating to PAN co...">`:
        DATA
        DC8 "Associating to PAN coordinator on channel 0x"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Associating to ">`:
        DATA
        DC8 "Associating to "

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "PAN coordinator">`:
        DATA
        DC8 "PAN coordinator"

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Successfully associat...">`:
        DATA
        DC8 "Successfully associated with the coordinator.\012\015"

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "We were assigned the ...">`:
        DATA
        DC8 "We were assigned the short address 0x"
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "\\n\\r\\n\\rReady to send and...">`:
        DATA
        DC8 0AH, 0DH, 0AH, 0DH, 52H, 65H, 61H, 64H
        DC8 79H, 20H, 74H, 6FH, 20H, 73H, 65H, 6EH
        DC8 64H, 20H, 61H, 6EH, 64H, 20H, 72H, 65H
        DC8 63H, 65H, 69H, 76H, 65H, 20H, 64H, 61H
        DC8 74H, 61H, 20H, 6FH, 76H, 65H, 72H, 20H
        DC8 74H, 68H, 65H, 20H, 55H, 41H, 52H, 54H
        DC8 2EH, 0AH, 0DH, 0AH, 0DH, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Ready to send">`:
        DATA
        DC8 "Ready to send"
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "and receive data">`:
        DATA
        DC8 "and receive data"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "\\n\\rAssociate Confirm w...">`:
        DATA
        DC8 "\012\015Associate Confirm wasn't successful... \012\015\012\015"
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Sending the MLME-Scan...">`:
        DATA
        DC8 53H, 65H, 6EH, 64H, 69H, 6EH, 67H, 20H
        DC8 74H, 68H, 65H, 20H, 4DH, 4CH, 4DH, 45H
        DC8 2DH, 53H, 63H, 61H, 6EH, 20H, 52H, 65H
        DC8 71H, 75H, 65H, 73H, 74H, 20H, 6DH, 65H
        DC8 73H, 73H, 61H, 67H, 65H, 20H, 74H, 6FH
        DC8 20H, 74H, 68H, 65H, 20H, 4DH, 41H, 43H
        DC8 2EH, 2EH, 2EH, 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Done\\n\\r">`:
        DATA
        DC8 "Done\012\015"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Invalid parameter!\\n\\r">`:
        DATA
        DC8 "Invalid parameter!\012\015"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Message allocation fa...">`:
        DATA
        DC8 "Message allocation failed!\012\015"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Sending the MLME-Asso...">`:
        DATA
        DC8 53H, 65H, 6EH, 64H, 69H, 6EH, 67H, 20H
        DC8 74H, 68H, 65H, 20H, 4DH, 4CH, 4DH, 45H
        DC8 2DH, 41H, 73H, 73H, 6FH, 63H, 69H, 61H
        DC8 74H, 65H, 20H, 52H, 65H, 71H, 75H, 65H
        DC8 73H, 74H, 20H, 6DH, 65H, 73H, 73H, 61H
        DC8 67H, 65H, 20H, 74H, 6FH, 20H, 74H, 68H
        DC8 65H, 20H, 4DH, 41H, 43H, 2EH, 2EH, 2EH
        DC8 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "The data packet has b...">`:
        DATA
        DC8 54H, 68H, 65H, 20H, 64H, 61H, 74H, 61H
        DC8 20H, 70H, 61H, 63H, 6BH, 65H, 74H, 20H
        DC8 68H, 61H, 73H, 20H, 62H, 65H, 65H, 6EH
        DC8 20H, 73H, 65H, 6EH, 74H, 20H, 74H, 6FH
        DC8 20H, 6EH, 65H, 74H, 77H, 6FH, 72H, 6BH
        DC8 20H, 6CH, 61H, 79H, 65H, 72H, 20H, 2EH
        DC8 2EH, 2EH, 0AH, 0DH, 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Data indication has c...">`:
        DATA
        DC8 "Data indication has come for a data packet\012\015"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Application">`:
        DATA
        DC8 "Application"

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "    started">`:
        DATA
        DC8 "    started"
//  109 
//  110 /* This data set contains application variables to be preserved across resets */

        SECTION `.rodata`:CONST:NOROOT(2)
//  111 NvDataItemDescription_t const gaNvAppDataSet[] = {
gaNvAppDataSet:
        DATA
        DC32 0H
        DC16 0
        DC8 0, 0
//  112   {NULL, 0}       /* Required end-of-table marker. */
//  113 };
//  114 
//  115 /************************************************************************************
//  116 *************************************************************************************
//  117 * Public functions
//  118 *************************************************************************************
//  119 ************************************************************************************/
//  120 
//  121 void DeepSleepWakeupStackProc(void);
//  122 
//  123 /*****************************************************************************
//  124 * Initialization function for the App Task. This is called during
//  125 * initialization and should contain any application specific initialization
//  126 * (ie. hardware initialization/setup, table initialization, power up
//  127 * notificaiton.
//  128 *
//  129 * Interface assumptions: None
//  130 *
//  131 * Return value: None
//  132 *
//  133 *****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  134 void MApp_init(void)
//  135 { 
MApp_init:
        PUSH     {R7,LR}
//  136   
//  137   /* The initial application state */
//  138   gState = stateInit;  
        LDR      R0,??DataTable0
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  139   /* Reset number of pending packets */
//  140   mcPendingPackets = 0;
        LDR      R0,??DataTable0_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  141   
//  142   /* Allow sending a poll request */  
//  143   mWaitPollConfirm = FALSE;    
        LDR      R0,??DataTable0_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  144   
//  145   /* Initialize the poll interval */
//  146   mPollInterval = mDefaultValueOfPollIntervalSlow_c;
        LDR      R0,??DataTable0_3
        MOVS     R1,#+205
        LSLS     R1,R1,#+2        ;; #+820
        STRH     R1,[R0, #+0]
//  147 
//  148   /* Initialize the MAC 802.15.4 extended address */
//  149   Init_MacExtendedAddress();
        BL       Init_MacExtendedAddress
//  150   mTimer_c = TMR_AllocateTimer();
        BL       TMR_AllocateTimer
        LDR      R1,??DataTable0_4
        STRB     R0,[R1, #+0]
//  151   /* register keyboard callback function */
//  152   KBD_Init(App_HandleKeys);
        LDR      R0,??DataTable0_5
        BL       KBD_Init
//  153   /* initialize LCD Module */
//  154   LCD_Init();
//  155   /* initialize LED Module */
//  156   LED_Init();
        BL       LED_Init
//  157   /* Initialize the UART so that we can print out status messages */
//  158   /*Uart1_SetBaud(gUartDefaultBaud_c);
//  159   Uart1_SetRxCallBack(UartRxCallBack);
//  160   Uart2_SetBaud(gUartDefaultBaud_c);
//  161   Uart2_SetRxCallBack(UartRxCallBack);*/
//  162   
//  163   UartX_SetBaud(gUartDefaultBaud_c);
        MOVS     R0,#+150
        LSLS     R0,R0,#+7        ;; #+19200
        BL       Uart2_SetBaud
//  164   UartX_SetRxCallBack(UartRxCallBack);
        LDR      R0,??DataTable0_6
        BL       Uart2_SetRxCallBack
//  165   /* Prepare input queues.*/
//  166   MSG_InitQueue(&mMlmeNwkInputQueue); 
        LDR      R0,??DataTable0_7
        BL       List_ClearAnchor
//  167   MSG_InitQueue(&mMcpsNwkInputQueue);
        LDR      R0,??DataTable0_8
        BL       List_ClearAnchor
//  168   /* Enable MCU interrupts */
//  169   IntEnableAll();
        MOVS     R0,#+0
        BL       IntRestoreAll
//  170   /*signal app ready*/  
//  171   Led1Flashing();
        MOVS     R0,#+1
        BL       LED_StartFlash
//  172   Led2Flashing();
        MOVS     R0,#+2
        BL       LED_StartFlash
//  173   Led3Flashing();
        MOVS     R0,#+4
        BL       LED_StartFlash
//  174   Led4Flashing();
        MOVS     R0,#+8
        BL       LED_StartFlash
//  175     
//  176   UartUtil_Print("\n\rPress any switch on board to start running the application.\n\r", gAllowToBlock_d);  
        MOVS     R1,#+1
        LDR      R0,??DataTable0_9
        BL       UartUtil_Print
//  177   LCD_ClearDisplay();
//  178   LCD_WriteString(1,"Press any key");
        LDR      R0,??DataTable0_10
//  179   LCD_WriteString(2,"to start.");
        LDR      R0,??DataTable1
//  180 }
        POP      {R0,R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable0:
        DC32     gState

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable0_1:
        DC32     mcPendingPackets

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable0_2:
        DC32     mWaitPollConfirm

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable0_3:
        DC32     mPollInterval

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable0_4:
        DC32     mTimer_c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable0_5:
        DC32     App_HandleKeys

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable0_6:
        DC32     UartRxCallBack

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable0_7:
        DC32     mMlmeNwkInputQueue

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable0_8:
        DC32     mMcpsNwkInputQueue

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable0_9:
        DC32     `?<Constant "\\n\\rPress any switch on...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable0_10:
        DC32     `?<Constant "Press any key">`
//  181 
//  182 /*****************************************************************************
//  183 *Mac Application Task event processor.  This function is called to
//  184 * process all events for the task. Events include timers, messages and any
//  185 * other user defined events
//  186 *
//  187 * Interface assumptions: None
//  188 *
//  189 * Return value: None
//  190 *****************************************************************************/

        SECTION `.text`:CODE:NOROOT(2)
        THUMB
//  191 void AppTask(event_t events) 
//  192 { 
AppTask:
        PUSH     {R4-R6,LR}
        MOVS     R6,R0
//  193 
//  194   /* Pointer for storing the messages from MLME, MCPS, and ASP. */
//  195   void *pMsgIn;
//  196   /* Stores the status code returned by some functions. */
//  197   uint8_t rc;  
//  198   pMsgIn = NULL;
        MOVS     R0,#+0
        MOVS     R4,R0
//  199   
//  200   /* Dequeue the MLME message */
//  201   if (events & gAppEvtMessageFromMLME_c)
        LSLS     R0,R6,#+29
        BPL      ??AppTask_0
//  202   {
//  203     /* Get the message from MLME */
//  204     pMsgIn = MSG_DeQueue(&mMlmeNwkInputQueue);
        LDR      R0,??DataTable2
        BL       List_RemoveHead
        MOVS     R4,R0
//  205     
//  206     /* Any time a beacon might arrive. Always handle the beacon frame first */
//  207     if (pMsgIn)
        CMP      R4,#+0
        BEQ      ??AppTask_0
//  208     {               
//  209       rc = App_WaitMsg(pMsgIn, gNwkBeaconNotifyInd_c);
        MOVS     R1,#+4
        MOVS     R0,R4
        BL       App_WaitMsg
        MOVS     R5,R0
//  210       if(rc == errorNoError)
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        CMP      R5,#+0
        BNE      ??AppTask_0
//  211       {
//  212         /* ALWAYS free the beacon frame contained in the beacon notify indication.*/
//  213         /* ALSO the application can use the beacon payload.*/
//  214         MSG_Free(((nwkMessage_t *)pMsgIn)->msgData.beaconNotifyInd.pBufferRoot);
        MOVS     R0,R4
        ADDS     R0,R0,#+16
        BL       __aeabi_uread4
        BL       MM_Free
        MOVS     R1,R4
        ADDS     R1,R1,#+16
        MOVS     R0,#+0
        BL       __aeabi_uwrite4
//  215         UartUtil_Print("Received an MLME-Beacon Notify Indication\n\r", gAllowToBlock_d);
        MOVS     R1,#+1
        LDR      R0,??DataTable2_1
        BL       UartUtil_Print
//  216       }
//  217     }
//  218   }
//  219   
//  220   /* The application state machine */
//  221   switch(gState)
??AppTask_0:
        LDR      R0,??DataTable1_1
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??AppTask_1
        CMP      R0,#+2
        BEQ      ??AppTask_2
        BCC      ??AppTask_3
        CMP      R0,#+4
        BNE      .+4
        B        ??AppTask_4
        BCS      .+4
        B        ??AppTask_5
        CMP      R0,#+5
        BNE      .+4
        B        ??AppTask_6
        B        ??AppTask_7
//  222   {
//  223   case stateInit:    
//  224     /* Print a welcome message to the UART */
//  225     UartUtil_Print("MyWirelessApp Demo Non Beacon End Device application is initialized and ready.\n\r\n\r", gAllowToBlock_d);
??AppTask_1:
        MOVS     R1,#+1
        LDR      R0,??DataTable2_2
        BL       UartUtil_Print
//  226     /* Goto Active Scan state. */
//  227     gState = stateScanActiveStart;
        LDR      R0,??DataTable1_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  228     TS_SendEvent(gAppTaskID_c, gAppEvtDummyEvent_c);    
        MOVS     R1,#+1
        LDR      R0,??DataTable3
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
        B        ??AppTask_7
//  229     break;
//  230     
//  231   case stateScanActiveStart:
//  232     /* Start the Active scan, and goto wait for confirm state. */
//  233     UartUtil_Print("Start scanning for a PAN coordinator\n\r", gAllowToBlock_d);
??AppTask_3:
        MOVS     R1,#+1
        LDR      R0,??AppTask_8
        BL       UartUtil_Print
//  234     /*print a message on the LCD also*/
//  235     LCD_ClearDisplay();
//  236     LCD_WriteString(1,"Start scanning");
        LDR      R0,??AppTask_8+0x4
//  237     LCD_WriteString(2,"for coordinator");  
        LDR      R0,??AppTask_8+0x8
//  238     rc = App_StartScan(gScanModeActive_c);
        MOVS     R0,#+1
        BL       App_StartScan
        MOVS     R5,R0
//  239     if(rc == errorNoError)
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        CMP      R5,#+0
        BEQ      .+4
        B        ??AppTask_7
//  240     {
//  241       gState = stateScanActiveWaitConfirm;
        LDR      R0,??DataTable1_1
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
        B        ??AppTask_7
//  242     }
//  243     break;
//  244     
//  245   case stateScanActiveWaitConfirm:
//  246     /* Stay in this state until the Scan confirm message
//  247        arrives, and then goto the associate state. */
//  248     if (events & gAppEvtMessageFromMLME_c)
??AppTask_2:
        LSLS     R0,R6,#+29
        BMI      .+4
        B        ??AppTask_7
//  249     {
//  250       if (pMsgIn)
        CMP      R4,#+0
        BNE      .+4
        B        ??AppTask_7
//  251       {                     
//  252         rc = App_WaitMsg(pMsgIn, gNwkScanCnf_c);
        MOVS     R1,#+11
        MOVS     R0,R4
        BL       App_WaitMsg
        MOVS     R5,R0
//  253         if(rc == errorNoError)
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        CMP      R5,#+0
        BEQ      .+4
        B        ??AppTask_7
//  254         {
//  255           rc = App_HandleScanActiveConfirm(pMsgIn);
        MOVS     R0,R4
        BL       App_HandleScanActiveConfirm
        MOVS     R5,R0
//  256           if(rc == errorNoError)
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        CMP      R5,#+0
        BNE      ??AppTask_9
//  257           {
//  258             UartUtil_Print("Found a coordinator with the following properties:\n\r", gAllowToBlock_d);
        MOVS     R1,#+1
        LDR      R0,??DataTable1_2
        BL       UartUtil_Print
//  259             UartUtil_Print("----------------------------------------------------", gAllowToBlock_d);
        MOVS     R1,#+1
        LDR      R0,??DataTable2_3
        BL       UartUtil_Print
//  260             UartUtil_Print("\n\rAddress...........0x", gAllowToBlock_d); UartUtil_PrintHex(mCoordInfo.coordAddress, mCoordInfo.coordAddrMode == gAddrModeShort_c ? 2 : 8, 0);
        MOVS     R1,#+1
        LDR      R0,??DataTable2_4
        BL       UartUtil_Print
        LDR      R0,??DataTable2_5
        LDRB     R0,[R0, #+10]
        CMP      R0,#+2
        BNE      ??AppTask_10
        MOVS     R1,#+2
        B        ??AppTask_11
??AppTask_10:
        MOVS     R1,#+8
??AppTask_11:
        MOVS     R2,#+0
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        LDR      R0,??DataTable2_5
        BL       UartUtil_PrintHex
//  261             UartUtil_Print("\n\rPAN ID............0x", gAllowToBlock_d); UartUtil_PrintHex(mCoordInfo.coordPanId, 2, 0);
        MOVS     R1,#+1
        LDR      R0,??DataTable2_6
        BL       UartUtil_Print
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR      R0,??DataTable2_5
        ADDS     R0,R0,#+8
        BL       UartUtil_PrintHex
//  262             UartUtil_Print("\n\rLogical Channel...0x", gAllowToBlock_d); UartUtil_PrintHex(&mCoordInfo.logicalChannel, 1, 0);
        MOVS     R1,#+1
        LDR      R0,??DataTable2_7
        BL       UartUtil_Print
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR      R0,??DataTable2_5
        ADDS     R0,R0,#+11
        BL       UartUtil_PrintHex
//  263             UartUtil_Print("\n\rBeacon Spec.......0x", gAllowToBlock_d); UartUtil_PrintHex(mCoordInfo.superFrameSpec, 2, 0);
        MOVS     R1,#+1
        LDR      R0,??DataTable2_8
        BL       UartUtil_Print
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR      R0,??DataTable2_5
        ADDS     R0,R0,#+15
        BL       UartUtil_PrintHex
//  264             UartUtil_Print("\n\rLink Quality......0x", gAllowToBlock_d); UartUtil_PrintHex(&mCoordInfo.linkQuality, 1, 0);
        MOVS     R1,#+1
        LDR      R0,??DataTable3_1
        BL       UartUtil_Print
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR      R0,??DataTable2_5
        ADDS     R0,R0,#+18
        BL       UartUtil_PrintHex
//  265             UartUtil_Print("\n\r\n\r", gAllowToBlock_d);
        MOVS     R1,#+1
        LDR      R0,??DataTable3_2
        BL       UartUtil_Print
//  266 
//  267             gState = stateAssociate;
        LDR      R0,??DataTable1_1
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
//  268             TS_SendEvent(gAppTaskID_c, gAppEvtDummyEvent_c);
        MOVS     R1,#+1
        LDR      R0,??DataTable3
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
        B        ??AppTask_7
//  269           }
//  270           else
//  271 		      {
//  272             UartUtil_Print("Scan did not find a suitable coordinator\n\r", gAllowToBlock_d);
??AppTask_9:
        MOVS     R1,#+1
        LDR      R0,??DataTable3_3
        BL       UartUtil_Print
//  273             /*print a message on the LCD also*/
//  274             LCD_ClearDisplay();
//  275             LCD_WriteString(1,"No coordinator");
        LDR      R0,??DataTable3_4
//  276             LCD_WriteString(2,"found.");
        LDR      R0,??DataTable3_5
        B        ??AppTask_7
//  277 		      }
//  278 		    }
//  279       }
//  280     }
//  281     break;
//  282 
//  283   case stateAssociate:
//  284     /* Associate to the PAN coordinator */
//  285     UartUtil_Print("Associating to PAN coordinator on channel 0x", gAllowToBlock_d);
??AppTask_5:
        MOVS     R1,#+1
        LDR      R0,??DataTable3_6
        BL       UartUtil_Print
//  286     UartUtil_PrintHex(&(mCoordInfo.logicalChannel), 1, gPrtHexNewLine_c);
        MOVS     R2,#+2
        MOVS     R1,#+1
        LDR      R0,??DataTable2_5
        ADDS     R0,R0,#+11
        BL       UartUtil_PrintHex
//  287     /*print a message on the LCD also*/
//  288     LCD_ClearDisplay();
//  289     LCD_WriteString(1,"Associating to ");
        LDR      R0,??DataTable3_7
//  290     LCD_WriteString(2,"PAN coordinator");  
        LDR      R0,??DataTable3_8
//  291     rc = App_SendAssociateRequest();
        BL       App_SendAssociateRequest
        MOVS     R5,R0
//  292     if(rc == errorNoError)
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        CMP      R5,#+0
        BNE      ??AppTask_7
//  293       gState = stateAssociateWaitConfirm;
        LDR      R0,??DataTable1_1
        MOVS     R1,#+4
        STRB     R1,[R0, #+0]
        B        ??AppTask_7
//  294     break; 
//  295 
//  296   case stateAssociateWaitConfirm:
//  297     /* Stay in this state until the Associate confirm message
//  298        arrives, and then goto the Listen state. */
//  299     if (events & gAppEvtMessageFromMLME_c)
??AppTask_4:
        LSLS     R0,R6,#+29
        BPL      ??AppTask_7
//  300     {
//  301       if (pMsgIn)
        CMP      R4,#+0
        BEQ      ??AppTask_7
//  302       {   
//  303         rc = App_WaitMsg(pMsgIn, gNwkAssociateCnf_c);
        MOVS     R1,#+1
        MOVS     R0,R4
        BL       App_WaitMsg
        MOVS     R5,R0
//  304         if(rc == errorNoError)
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        CMP      R5,#+0
        BNE      ??AppTask_7
//  305         {          
//  306           rc = App_HandleAssociateConfirm(pMsgIn);
        MOVS     R0,R4
        BL       App_HandleAssociateConfirm
        MOVS     R5,R0
//  307           if (rc == errorNoError)
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        CMP      R5,#+0
        BNE      ??AppTask_12
//  308           { 
//  309 	          UartUtil_Print("Successfully associated with the coordinator.\n\r", gAllowToBlock_d);
        MOVS     R1,#+1
        LDR      R0,??DataTable4
        BL       UartUtil_Print
//  310 	          UartUtil_Print("We were assigned the short address 0x", gAllowToBlock_d);
        MOVS     R1,#+1
        LDR      R0,??DataTable4_1
        BL       UartUtil_Print
//  311 	          UartUtil_PrintHex(maMyAddress, mAddrMode == gAddrModeShort_c ? 2 : 8, 0);
        LDR      R0,??DataTable4_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BNE      ??AppTask_13
        MOVS     R1,#+2
        B        ??AppTask_14
??AppTask_13:
        MOVS     R1,#+8
??AppTask_14:
        MOVS     R2,#+0
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        LDR      R0,??DataTable4_3
        BL       UartUtil_PrintHex
//  312 	          UartUtil_Print("\n\r\n\rReady to send and receive data over the UART.\n\r\n\r", gAllowToBlock_d);
        MOVS     R1,#+1
        LDR      R0,??DataTable4_4
        BL       UartUtil_Print
//  313 	          /*print a message on the LCD also*/
//  314 	          LCD_ClearDisplay();
//  315 	          LCD_WriteString(1,"Ready to send");
        LDR      R0,??DataTable4_5
//  316 	          LCD_WriteString(2,"and receive data");    
        LDR      R0,??DataTable4_6
//  317 	          /* Startup the timer */
//  318 	          TMR_StartSingleShotTimer(mTimer_c, mPollInterval, AppPollWaitTimeout);
        LDR      R2,??DataTable4_7
        LDR      R0,??DataTable4_8
        LDRH     R1,[R0, #+0]
        LDR      R0,??DataTable4_9
        LDRB     R0,[R0, #+0]
        BL       TMR_StartSingleShotTimer
//  319 	          /* Go to the listen state */
//  320 	          gState = stateListen;
        LDR      R0,??DataTable1_1
        MOVS     R1,#+5
        STRB     R1,[R0, #+0]
//  321 	          TS_SendEvent(gAppTaskID_c, gAppEvtDummyEvent_c); 
        MOVS     R1,#+1
        LDR      R0,??DataTable3
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
        B        ??AppTask_7
//  322           }        
//  323           else 
//  324           {
//  325           
//  326 	          UartUtil_Print("\n\rAssociate Confirm wasn't successful... \n\r\n\r", gAllowToBlock_d);
??AppTask_12:
        MOVS     R1,#+1
        LDR      R0,??DataTable5
        BL       UartUtil_Print
//  327 	          gState = stateScanActiveStart;
        LDR      R0,??DataTable1_1
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  328               TS_SendEvent(gAppTaskID_c, gAppEvtDummyEvent_c);
        MOVS     R1,#+1
        LDR      R0,??DataTable3
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
        B        ??AppTask_7
        Nop      
        DATA
??AppTask_8:
        DC32     `?<Constant "Start scanning for a ...">`
        DC32     `?<Constant "Start scanning">`
        DC32     `?<Constant "for coordinator">`
        THUMB
//  329           }
//  330         }
//  331       }
//  332     }
//  333     break; 
//  334     
//  335   case stateListen:
//  336     /* Transmit to coordinator data received from UART. */
//  337     if (events & gAppEvtMessageFromMLME_c)
??AppTask_6:
        LSLS     R0,R6,#+29
        BPL      ??AppTask_15
//  338     {  
//  339       if (pMsgIn)
        CMP      R4,#+0
        BEQ      ??AppTask_15
//  340       {  
//  341         /* Process it */
//  342         rc = App_HandleMlmeInput(pMsgIn);
        MOVS     R0,R4
        BL       App_HandleMlmeInput
        MOVS     R5,R0
//  343       }
//  344     } 
//  345     
//  346     if (events & gAppEvtRxFromUart_c)
??AppTask_15:
        LSLS     R0,R6,#+30
        BPL      ??AppTask_7
//  347     {      
//  348       /* get byte from UART */
//  349       //App_TransmitUartData();
//  350       if(gUart2_Enabled_d == TRUE)
//  351       {
//  352       if(Uart2_GetByteFromRxBuffer((uint8_t*)&val))
        LDR      R0,??DataTable6
        BL       Uart2_GetByteFromRxBuffer
        CMP      R0,#+0
        BEQ      ??AppTask_7
//  353       {
//  354         valc=(unsigned char)(val -'0');
        LDR      R0,??DataTable6
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+48
        LDR      R1,??DataTable6_1
        STRB     R0,[R1, #+0]
//  355         UartUtil_Tx((unsigned char*)&val, sizeof(val));
        MOVS     R1,#+1
        LDR      R0,??DataTable6
        BL       UartUtil_Tx
//  356         App_TransmitUart2Data(val);
        LDR      R0,??DataTable6
        LDRB     R0,[R0, #+0]
        BL       App_TransmitUart2Data
//  357       }
//  358        //UartUtil_Print("Uart2 is enabled ..\n\r", gAllowToBlock_d);
//  359       }
//  360       else if(Uart2_GetByteFromRxBuffer == 0)
//  361       {
//  362         UartUtil_Print("Not Enabled Uart2 .. buffer is empty\n\r", gAllowToBlock_d);
//  363       }
//  364       else
//  365       {
//  366         UartUtil_Print("Not Enabled Uart2 .. secondo controllo\n\r", gAllowToBlock_d);
//  367       }
//  368         
//  369       /*
//  370        LCD_ClearDisplay();
//  371        LCD_WriteString(1,"Ready to send");
//  372        LCD_WriteString(2,"and receive data");  */
//  373     }  
//  374     break;
//  375   }
//  376   
//  377   if (pMsgIn)
??AppTask_7:
        CMP      R4,#+0
        BEQ      ??AppTask_16
//  378   {
//  379     /* Messages must always be freed. */ 
//  380     MSG_Free(pMsgIn);
        MOVS     R0,R4
        BL       MM_Free
        MOVS     R0,#+0
        MOVS     R4,R0
//  381   }
//  382   
//  383    /* Handle MCPS confirms and transmit data from UART */
//  384   if (events & gAppEvtMessageFromMCPS_c)
??AppTask_16:
        LSLS     R0,R6,#+28
        BPL      ??AppTask_17
//  385   {      
//  386     /* Get the message from MCPS */
//  387     pMsgIn = MSG_DeQueue(&mMcpsNwkInputQueue);
        LDR      R0,??DataTable7
        BL       List_RemoveHead
        MOVS     R4,R0
//  388     if (pMsgIn)
        CMP      R4,#+0
        BEQ      ??AppTask_17
//  389     {              
//  390       /* Process it */
//  391       App_HandleMcpsInput(pMsgIn);
        MOVS     R0,R4
        BL       App_HandleMcpsInput
//  392       /* Messages from the MCPS must always be freed. */
//  393       MSG_Free(pMsgIn);
        MOVS     R0,R4
        BL       MM_Free
        MOVS     R0,#+0
        MOVS     R4,R0
//  394     }
//  395   }
//  396   
//  397   /* Check for pending messages in the Queue */ 
//  398   if(MSG_Pending(&mMcpsNwkInputQueue))
??AppTask_17:
        LDR      R0,??DataTable7
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??AppTask_18
//  399     TS_SendEvent(gAppTaskID_c, gAppEvtMessageFromMCPS_c);
        MOVS     R1,#+8
        LDR      R0,??DataTable3
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
//  400   if(MSG_Pending(&mMlmeNwkInputQueue))
??AppTask_18:
        LDR      R0,??DataTable2
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??AppTask_19
//  401     TS_SendEvent(gAppTaskID_c, gAppEvtMessageFromMLME_c);  
        MOVS     R1,#+4
        LDR      R0,??DataTable3
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
//  402 }
??AppTask_19:
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable1:
        DC32     `?<Constant "to start.">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable1_1:
        DC32     gState

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable1_2:
        DC32     `?<Constant "Found a coordinator w...">`
//  403 
//  404 /************************************************************************************
//  405 *************************************************************************************
//  406 * Private functions
//  407 *************************************************************************************
//  408 ************************************************************************************/
//  409 
//  410 /*****************************************************************************
//  411 * UartRxCallBack
//  412 *
//  413 * This callback is triggered when a new byte is received over the UART
//  414 *
//  415 *****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  416 static void UartRxCallBack(void) 
//  417 {
UartRxCallBack:
        PUSH     {R7,LR}
//  418   uint8_t pressedKey;
//  419 	if(stateListen == gState){
        LDR      R0,??DataTable8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BNE      ??UartRxCallBack_0
//  420     TS_SendEvent(gAppTaskID_c, gAppEvtRxFromUart_c);
        MOVS     R1,#+2
        LDR      R0,??DataTable3
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
        B        ??UartRxCallBack_1
//  421   }else{
//  422 	  (void)UartX_GetByteFromRxBuffer(&pressedKey);
??UartRxCallBack_0:
        MOV      R0,SP
        BL       Uart2_GetByteFromRxBuffer
//  423   }
//  424 }
??UartRxCallBack_1:
        POP      {R0,R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2:
        DC32     mMlmeNwkInputQueue

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_1:
        DC32     `?<Constant "Received an MLME-Beac...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_2:
        DC32     `?<Constant "MyWirelessApp Demo No...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_3:
        DC32     `?<Constant "---------------------...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_4:
        DC32     `?<Constant "\\n\\rAddress...........0x">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_5:
        DC32     mCoordInfo

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_6:
        DC32     `?<Constant "\\n\\rPAN ID............0x">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_7:
        DC32     `?<Constant "\\n\\rLogical Channel...0x">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_8:
        DC32     `?<Constant "\\n\\rBeacon Spec.......0x">`
//  425 
//  426 /******************************************************************************
//  427 * The App_StartScan(scanType) function will start the scan process of the
//  428 * specified type in the MAC. This is accomplished by allocating a MAC message,
//  429 * which is then assigned the desired scan parameters and sent to the MLME
//  430 * service access point.
//  431 * The function may return either of the following values:
//  432 *   errorNoError:          The Scan message was sent successfully.
//  433 *   errorInvalidParameter: The MLME service access point rejected the
//  434 *                          message due to an invalid parameter.
//  435 *   errorAllocFailed:      A message buffer could not be allocated.
//  436 *
//  437 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  438 static uint8_t App_StartScan(uint8_t scanType)
//  439 {
App_StartScan:
        PUSH     {R4-R6,LR}
        MOVS     R6,R0
//  440   mlmeMessage_t *pMsg;
//  441   mlmeScanReq_t *pScanReq;
//  442 
//  443   UartUtil_Print("Sending the MLME-Scan Request message to the MAC...", gAllowToBlock_d);
        MOVS     R1,#+1
        LDR      R0,??DataTable8_1
        BL       UartUtil_Print
//  444 
//  445   /* Allocate a message for the MLME (We should check for NULL). */
//  446   pMsg = MSG_AllocType(mlmeMessage_t);
        MOVS     R0,#+15
        BL       MM_Alloc
        MOVS     R4,R0
//  447   if(pMsg != NULL)
        CMP      R4,#+0
        BEQ      ??App_StartScan_0
//  448   {
//  449     /* This is a MLME-SCAN.req command */
//  450     pMsg->msgType = gMlmeScanReq_c;
        MOVS     R0,#+8
        STRB     R0,[R4, #+0]
//  451     /* Create the Scan request message data. */
//  452     pScanReq = &pMsg->msgData.scanReq;
        MOVS     R0,R4
        ADDS     R0,R0,#+1
        MOVS     R5,R0
//  453     /* gScanModeED_c, gScanModeActive_c, gScanModePassive_c, or gScanModeOrphan_c */
//  454     pScanReq->scanType = scanType;
        STRB     R6,[R5, #+0]
//  455     /* ChannelsToScan & 0xFF - LSB, always 0x00 */
//  456     pScanReq->scanChannels[0] = (uint8_t)((mDefaultValueOfChannel_c)     & 0xFF);
        MOVS     R0,#+0
        STRB     R0,[R5, #+1]
//  457     /* ChannelsToScan>>8 & 0xFF  */
//  458     pScanReq->scanChannels[1] = (uint8_t)((mDefaultValueOfChannel_c>>8)  & 0xFF);
        MOVS     R0,#+128
        STRB     R0,[R5, #+2]
//  459     /* ChannelsToScan>>16 & 0xFF  */
//  460     pScanReq->scanChannels[2] = (uint8_t)((mDefaultValueOfChannel_c>>16) & 0xFF);
        MOVS     R0,#+0
        STRB     R0,[R5, #+3]
//  461     /* ChannelsToScan>>24 & 0xFF - MSB */
//  462     pScanReq->scanChannels[3] = (uint8_t)((mDefaultValueOfChannel_c>>24) & 0xFF);
        MOVS     R0,#+0
        STRB     R0,[R5, #+4]
//  463     /* Duration per channel 0-14 (dc). T[sec] = (16*960*((2^dc)+1))/1000000.
//  464        A scan duration of 3 on 16 channels approximately takes 2 secs. */
//  465     pScanReq->scanDuration = 3;
        MOVS     R0,#+3
        STRB     R0,[R5, #+5]
//  466 #ifdef gMAC2006_d
//  467 	pScanReq->securityLevel = 0;
//  468 #endif //gMAC2006_d	
//  469     
//  470     /* Send the Scan request to the MLME. */
//  471     if(MSG_Send(NWK_MLME, pMsg) == gSuccess_c)
        MOVS     R0,R4
        BL       NWK_MLME_SapHandler
        CMP      R0,#+0
        BNE      ??App_StartScan_1
//  472     {
//  473       UartUtil_Print("Done\n\r", gAllowToBlock_d);
        MOVS     R1,#+1
        LDR      R0,??DataTable8_2
        BL       UartUtil_Print
//  474       return errorNoError;
        MOVS     R0,#+0
        B        ??App_StartScan_2
//  475     }
//  476     else
//  477     {
//  478       UartUtil_Print("Invalid parameter!\n\r", gAllowToBlock_d);
??App_StartScan_1:
        MOVS     R1,#+1
        LDR      R0,??DataTable8_3
        BL       UartUtil_Print
//  479       return errorInvalidParameter;
        MOVS     R0,#+5
        B        ??App_StartScan_2
//  480     }
//  481   }
//  482   else
//  483   {
//  484     /* Allocation of a message buffer failed. */
//  485     UartUtil_Print("Message allocation failed!\n\r", gAllowToBlock_d);
??App_StartScan_0:
        MOVS     R1,#+1
        LDR      R0,??DataTable8_4
        BL       UartUtil_Print
//  486     return errorAllocFailed;
        MOVS     R0,#+4
??App_StartScan_2:
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return
//  487   }
//  488 }

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3:
        DC32     gAppTaskID_c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3_1:
        DC32     `?<Constant "\\n\\rLink Quality......0x">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3_2:
        DC32     `?<Constant "\\n\\r\\n\\r">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3_3:
        DC32     `?<Constant "Scan did not find a s...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3_4:
        DC32     `?<Constant "No coordinator">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3_5:
        DC32     `?<Constant "found.">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3_6:
        DC32     `?<Constant "Associating to PAN co...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3_7:
        DC32     `?<Constant "Associating to ">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3_8:
        DC32     `?<Constant "PAN coordinator">`
//  489 
//  490 /******************************************************************************
//  491 * The App_HandleScanActiveConfirm(nwkMessage_t *pMsg) function will handle the
//  492 * Active Scan confirm message received from the MLME when the Active scan has
//  493 * completed. The message contains a list of PAN descriptors. Based on link
//  494 * quality inforamtion in the pan descriptors the nearest coordinator is chosen.
//  495 * The corresponding pan descriptor is stored in the global variable mCoordInfo. 
//  496 *
//  497 * The function may return either of the following values:
//  498 *   errorNoError:       A suitable pan descriptor was found.
//  499 *   errorNoScanResults: No scan results were present in the confirm message.
//  500 *
//  501 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  502 static uint8_t App_HandleScanActiveConfirm(nwkMessage_t *pMsg)
//  503 {
App_HandleScanActiveConfirm:
        PUSH     {R0,R4-R7,LR}
        SUB      SP,SP,#+8
//  504   void    *pBlock;
//  505   uint8_t panDescListSize = pMsg->msgData.scanCnf.resultListSize;
        MOV      R0,SP
        LDR      R1,[SP, #+8]
        LDRB     R1,[R1, #+3]
        STRB     R1,[R0, #+1]
//  506   uint8_t rc = errorNoScanResults;
        MOV      R0,SP
        MOVS     R1,#+6
        STRB     R1,[R0, #+0]
//  507   uint8_t j;
//  508   uint8_t bestLinkQuality = 0;  
        MOVS     R0,#+0
        MOVS     R7,R0
//  509   panDescriptorBlock_t *pDescBlock = pMsg->msgData.scanCnf.resList.pPanDescriptorBlocks;  
        LDR      R0,[SP, #+8]
        ADDS     R0,R0,#+8
        BL       __aeabi_uread4
        MOVS     R6,R0
//  510   panDescriptor_t *pPanDesc;    
//  511   
//  512  
//  513   /* Check if the scan resulted in any coordinator responses. */  
//  514   
//  515   if (panDescListSize > 0)
        MOV      R0,SP
        LDRB     R0,[R0, #+1]
        CMP      R0,#+1
        BCC      ??App_HandleScanActiveConfirm_0
//  516   {    
//  517     /* Check all PAN descriptors. */
//  518     while (NULL != pDescBlock)
??App_HandleScanActiveConfirm_1:
        CMP      R6,#+0
        BEQ      ??App_HandleScanActiveConfirm_0
//  519     {
//  520       for (j = 0; j < pDescBlock->descriptorCount; j++)
        MOVS     R0,#+0
        MOVS     R4,R0
??App_HandleScanActiveConfirm_2:
        MOVS     R0,#+110
        LDRB     R0,[R6, R0]
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,R0
        BCS      ??App_HandleScanActiveConfirm_3
//  521       {            
//  522         pPanDesc = &pDescBlock->descriptorList[j];
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        MOVS     R0,#+22
        MULS     R0,R4,R0
        ADDS     R0,R6,R0
        MOVS     R5,R0
//  523 
//  524         /* Only attempt to associate if the coordinator
//  525            accepts associations and is non-beacon. */
//  526         if( ( pPanDesc->superFrameSpec[1] & gSuperFrameSpecMsbAssocPermit_c) && 
//  527             ((pPanDesc->superFrameSpec[0] & gSuperFrameSpecLsbBO_c) == 0x0F) )
        LDRB     R0,[R5, #+16]
        LSLS     R0,R0,#+24
        BPL      ??App_HandleScanActiveConfirm_4
        LDRB     R0,[R5, #+15]
        LSLS     R0,R0,#+28       ;; ZeroExtS R0,R0,#+28,#+28
        LSRS     R0,R0,#+28
        CMP      R0,#+15
        BNE      ??App_HandleScanActiveConfirm_4
//  528         {        
//  529           
//  530           /* Find the nearest coordinator using the link quality measure. */
//  531           if(pPanDesc->linkQuality > bestLinkQuality)
        LDRB     R0,[R5, #+18]
        LSLS     R7,R7,#+24       ;; ZeroExtS R7,R7,#+24,#+24
        LSRS     R7,R7,#+24
        CMP      R7,R0
        BCS      ??App_HandleScanActiveConfirm_4
//  532           {
//  533             /* Save the information of the coordinator candidate. If we
//  534                find a better candiate, the information will be replaced. */
//  535             FLib_MemCpy(&mCoordInfo, pPanDesc, sizeof(panDescriptor_t));
        MOVS     R2,#+22
        MOVS     R1,R5
        LDR      R0,??DataTable10
        BL       FLib_MemCpy
//  536             bestLinkQuality = pPanDesc->linkQuality;
        LDRB     R0,[R5, #+18]
        MOVS     R7,R0
//  537             rc = errorNoError;
        MOV      R0,SP
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  538           }
//  539         }      
//  540       }
??App_HandleScanActiveConfirm_4:
        ADDS     R4,R4,#+1
        B        ??App_HandleScanActiveConfirm_2
//  541       
//  542       /* Free current block */
//  543       pBlock = pDescBlock;
??App_HandleScanActiveConfirm_3:
        STR      R6,[SP, #+4]
//  544       pDescBlock = pDescBlock->pNext;              
        ADDS     R6,R6,#+111
        MOVS     R0,R6
        BL       __aeabi_uread4
        MOVS     R6,R0
//  545       MSG_Free(pBlock);
        LDR      R0,[SP, #+4]
        BL       MM_Free
        MOVS     R0,#+0
        STR      R0,[SP, #+4]
        B        ??App_HandleScanActiveConfirm_1
//  546     }
//  547   }
//  548   
//  549   if (pDescBlock)
??App_HandleScanActiveConfirm_0:
        CMP      R6,#+0
        BEQ      ??App_HandleScanActiveConfirm_5
//  550       MSG_Free(pDescBlock);
        MOVS     R0,R6
        BL       MM_Free
        MOVS     R0,#+0
        MOVS     R6,R0
//  551   
//  552   return rc;
??App_HandleScanActiveConfirm_5:
        MOV      R0,SP
        LDRB     R0,[R0, #+0]
        POP      {R1-R7}
        POP      {R3}
        BX       R3               ;; return
//  553 }

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4:
        DC32     `?<Constant "Successfully associat...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_1:
        DC32     `?<Constant "We were assigned the ...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_2:
        DC32     mAddrMode

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_3:
        DC32     maMyAddress

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_4:
        DC32     `?<Constant "\\n\\r\\n\\rReady to send and...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_5:
        DC32     `?<Constant "Ready to send">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_6:
        DC32     `?<Constant "and receive data">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_7:
        DC32     AppPollWaitTimeout

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_8:
        DC32     mPollInterval

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_9:
        DC32     mTimer_c
//  554 
//  555 /******************************************************************************
//  556 * The App_SendAssociateRequest(void) will create an Associate Request message
//  557 * and send it to the coordinator it wishes to associate to. The function uses
//  558 * information gained about the coordinator during the scan procedure.
//  559 *
//  560 * The function may return either of the following values:
//  561 *   errorNoError:          The Associate Request message was sent successfully.
//  562 *   errorInvalidParameter: The MLME service access point rejected the
//  563 *                          message due to an invalid parameter.
//  564 *   errorAllocFailed:      A message buffer could not be allocated.
//  565 *
//  566 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  567 static uint8_t App_SendAssociateRequest(void)
//  568 {
App_SendAssociateRequest:
        PUSH     {R3-R5,LR}
//  569   mlmeMessage_t *pMsg;
//  570   mlmeAssociateReq_t *pAssocReq;
//  571 
//  572   UartUtil_Print("Sending the MLME-Associate Request message to the MAC...", gAllowToBlock_d);
        MOVS     R1,#+1
        LDR      R0,??DataTable9
        BL       UartUtil_Print
//  573   
//  574   /* Allocate a message for the MLME message. */
//  575   pMsg = MSG_AllocType(mlmeMessage_t);
        MOVS     R0,#+15
        BL       MM_Alloc
        MOVS     R5,R0
//  576   if(pMsg != NULL)
        CMP      R5,#+0
        BEQ      ??App_SendAssociateRequest_0
//  577   {
//  578     /* This is a MLME-ASSOCIATE.req command. */
//  579     pMsg->msgType = gMlmeAssociateReq_c;
        MOVS     R0,#+0
        STRB     R0,[R5, #+0]
//  580     
//  581     /* Create the Associate request message data. */
//  582     pAssocReq = &pMsg->msgData.associateReq;
        MOVS     R0,R5
        ADDS     R0,R0,#+1
        MOVS     R4,R0
//  583  
//  584     /* Use the coordinator info we got from the Active Scan. */
//  585     FLib_MemCpy(pAssocReq->coordAddress, mCoordInfo.coordAddress, 8);
        MOVS     R2,#+8
        LDR      R1,??DataTable10
        MOVS     R0,R4
        BL       FLib_MemCpy
//  586     FLib_MemCpy(pAssocReq->coordPanId,   mCoordInfo.coordPanId, 2);
        MOVS     R2,#+2
        LDR      R1,??DataTable10
        ADDS     R1,R1,#+8
        MOVS     R0,R4
        ADDS     R0,R0,#+8
        BL       FLib_MemCpy
//  587     pAssocReq->coordAddrMode      = mCoordInfo.coordAddrMode;
        LDR      R0,??DataTable10
        LDRB     R0,[R0, #+10]
        STRB     R0,[R4, #+10]
//  588     pAssocReq->logicalChannel     = mCoordInfo.logicalChannel;
        LDR      R0,??DataTable10
        LDRB     R0,[R0, #+11]
        STRB     R0,[R4, #+11]
//  589 #ifdef gMAC2006_d
//  590 	pAssocReq->securityLevel = 0;
//  591 #else	
//  592     pAssocReq->securityEnable     = FALSE;
        MOVS     R0,#+0
        STRB     R0,[R4, #+12]
//  593 #endif //gMAC2006_d	
//  594     /* We want the coordinator to assign a short address to us. */
//  595     pAssocReq->capabilityInfo     = gCapInfoAllocAddr_c;
        MOVS     R0,#+128
        STRB     R0,[R4, #+13]
//  596       
//  597     /* Send the Associate Request to the MLME. */
//  598     if(MSG_Send(NWK_MLME, pMsg) == gSuccess_c)
        MOVS     R0,R5
        BL       NWK_MLME_SapHandler
        CMP      R0,#+0
        BNE      ??App_SendAssociateRequest_1
//  599     {
//  600       UartUtil_Print("Done\n\r", gAllowToBlock_d);
        MOVS     R1,#+1
        LDR      R0,??DataTable8_2
        BL       UartUtil_Print
//  601       return errorNoError;
        MOVS     R0,#+0
        B        ??App_SendAssociateRequest_2
//  602     }
//  603     else
//  604     {
//  605       /* One or more parameters in the message were invalid. */
//  606       UartUtil_Print("Invalid parameter!\n\r", gAllowToBlock_d);
??App_SendAssociateRequest_1:
        MOVS     R1,#+1
        LDR      R0,??DataTable8_3
        BL       UartUtil_Print
//  607       return errorInvalidParameter;
        MOVS     R0,#+5
        B        ??App_SendAssociateRequest_2
//  608     }
//  609   }
//  610   else
//  611   {
//  612     /* Allocation of a message buffer failed. */
//  613     UartUtil_Print("Message allocation failed!\n\r", gAllowToBlock_d);
??App_SendAssociateRequest_0:
        MOVS     R1,#+1
        LDR      R0,??DataTable8_4
        BL       UartUtil_Print
//  614     return errorAllocFailed;
        MOVS     R0,#+4
??App_SendAssociateRequest_2:
        POP      {R1,R4,R5}
        POP      {R3}
        BX       R3               ;; return
//  615   }
//  616 }

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable5:
        DC32     `?<Constant "\\n\\rAssociate Confirm w...">`
//  617 
//  618 /******************************************************************************
//  619 * The App_HandleAssociateConfirm(nwkMessage_t *pMsg) function will handle the
//  620 * Associate confirm message received from the MLME when the Association
//  621 * procedure has completed. The message contains the short address that the
//  622 * coordinator has assigned to us. This address is 0xfffe if we did not specify
//  623 * the gCapInfoAllocAddr_c flag in the capability info field of the Associate
//  624 * request. The address and address mode are saved in global variables. They
//  625 * will be used in the next demo application when sending data.
//  626 *
//  627 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  628 static uint8_t App_HandleAssociateConfirm(nwkMessage_t *pMsg)
//  629 {
App_HandleAssociateConfirm:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  630   /* This is our own extended address (MAC address). It cannot be modified. */
//  631   extern uint8_t aExtendedAddress[8];
//  632   
//  633   /* If the coordinator assigns a short address of 0xfffe then,
//  634      that means we must use our own extended address in all
//  635      communications with the coordinator. Otherwise, we use
//  636      the short address assigned to us. */
//  637   if ( pMsg->msgData.associateCnf.status == gSuccess_c) 
        LDRB     R0,[R4, #+3]
        CMP      R0,#+0
        BNE      ??App_HandleAssociateConfirm_0
//  638   {
//  639 
//  640 	  if( (pMsg->msgData.associateCnf.assocShortAddress[0] >= 0xFE) && 
//  641 	      (pMsg->msgData.associateCnf.assocShortAddress[1] == 0xFF) )
        LDRB     R0,[R4, #+1]
        CMP      R0,#+254
        BCC      ??App_HandleAssociateConfirm_1
        LDRB     R0,[R4, #+2]
        CMP      R0,#+255
        BNE      ??App_HandleAssociateConfirm_1
//  642 	  {
//  643 	    mAddrMode = gAddrModeLong_c;
        LDR      R0,??DataTable12
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
//  644 	    FLib_MemCpy(maMyAddress, (void *)aExtendedAddress, 8);
        MOVS     R2,#+8
        LDR      R1,??DataTable11
        LDR      R0,??DataTable13
        BL       FLib_MemCpy
        B        ??App_HandleAssociateConfirm_2
//  645 	  }
//  646 	  else
//  647 	  {
//  648 	    mAddrMode = gAddrModeShort_c;
??App_HandleAssociateConfirm_1:
        LDR      R0,??DataTable12
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
//  649 	    FLib_MemCpy(maMyAddress, pMsg->msgData.associateCnf.assocShortAddress, 2);
        MOVS     R2,#+2
        MOVS     R1,R4
        ADDS     R1,R1,#+1
        LDR      R0,??DataTable13
        BL       FLib_MemCpy
//  650 	  }
//  651 	    return gSuccess_c;
??App_HandleAssociateConfirm_2:
        MOVS     R0,#+0
        B        ??App_HandleAssociateConfirm_3
//  652   } 
//  653   
//  654   else 
//  655   {
//  656 	return pMsg->msgData.associateCnf.status; 
??App_HandleAssociateConfirm_0:
        LDRB     R0,[R4, #+3]
??App_HandleAssociateConfirm_3:
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  657   }
//  658 }

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable6:
        DC32     val

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable6_1:
        DC32     valc
//  659 /******************************************************************************
//  660 * The App_HandleMlmeInput(nwkMessage_t *pMsg) function will handle various
//  661 * messages from the MLME, e.g. poll confirm.
//  662 *
//  663 * The function may return either of the following values:
//  664 *   errorNoError:   The message was processed.
//  665 *   errorNoMessage: The message pointer is NULL.
//  666 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  667 static uint8_t App_HandleMlmeInput(nwkMessage_t *pMsg)
//  668 {
App_HandleMlmeInput:
        PUSH     {LR}
        MOVS     R1,R0
//  669   if(pMsg == NULL)
        CMP      R1,#+0
        BNE      ??App_HandleMlmeInput_0
//  670     return errorNoMessage;
        MOVS     R0,#+3
        B        ??App_HandleMlmeInput_1
//  671   
//  672   /* Handle the incoming message. The type determines the sort of processing.*/
//  673   switch(pMsg->msgType) {
??App_HandleMlmeInput_0:
        LDRB     R0,[R1, #+0]
        CMP      R0,#+16
        BNE      ??App_HandleMlmeInput_2
//  674   case gNwkPollCnf_c:
//  675     if(pMsg->msgData.pollCnf.status != gSuccess_c)
        LDRB     R0,[R1, #+1]
        CMP      R0,#+0
        BEQ      ??App_HandleMlmeInput_2
//  676     {
//  677       /* The Poll Confirm status was not successful. Usually this happens if
//  678          no data was available at the coordinator. In this case we start
//  679          polling at a lower rate to conserve power. */
//  680       mPollInterval = mDefaultValueOfPollIntervalSlow_c;
        LDR      R0,??DataTable13_1
        MOVS     R2,#+205
        LSLS     R2,R2,#+2        ;; #+820
        STRH     R2,[R0, #+0]
//  681       
//  682       /* If we get to this point, then no data was available, and we
//  683          allow a new poll request. Otherwise, we wait for the data
//  684          indication before allowing the next poll request. */
//  685       mWaitPollConfirm = FALSE;
        LDR      R0,??DataTable13_2
        MOVS     R2,#+0
        STRB     R2,[R0, #+0]
//  686     }
//  687     break;
//  688   }
//  689   return errorNoError;
??App_HandleMlmeInput_2:
        MOVS     R0,#+0
??App_HandleMlmeInput_1:
        POP      {R3}
        BX       R3               ;; return
//  690 }

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable7:
        DC32     mMcpsNwkInputQueue
//  691 
//  692 /******************************************************************************
//  693 * The App_HandleMcpsInput(mcpsToNwkMessage_t *pMsgIn) function will handle 
//  694 * messages from the MCPS, e.g. Data Confirm, and Data Indication.
//  695 *
//  696 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  697 static void App_HandleMcpsInput(mcpsToNwkMessage_t *pMsgIn)
//  698 {
App_HandleMcpsInput:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  699   switch(pMsgIn->msgType)
        LDRB     R0,[R4, #+0]
        CMP      R0,#+0
        BEQ      ??App_HandleMcpsInput_0
        SUBS     R0,R0,#+1
        BEQ      ??App_HandleMcpsInput_1
        B        ??App_HandleMcpsInput_2
//  700   {
//  701     /* The MCPS-Data confirm is sent by the MAC to the network 
//  702        or application layer when data has been sent. */
//  703   case gMcpsDataCnf_c:
//  704     if(mcPendingPackets)
??App_HandleMcpsInput_0:
        LDR      R0,??DataTable13_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??App_HandleMcpsInput_2
//  705     {
//  706       mcPendingPackets--;
        LDR      R0,??DataTable13_3
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR      R1,??DataTable13_3
        STRB     R0,[R1, #+0]
//  707       UartUtil_Print("The data packet has been sent to network layer ...\n\r", gAllowToBlock_d);
        MOVS     R1,#+1
        LDR      R0,??DataTable13_4
        BL       UartUtil_Print
        B        ??App_HandleMcpsInput_2
//  708     }
//  709     break;
//  710 
//  711   case gMcpsDataInd_c:
//  712     //DISPLAY DATA ON THE UART
//  713     UartUtil_Print("Data indication has come for a data packet\n\r", gAllowToBlock_d);
??App_HandleMcpsInput_1:
        MOVS     R1,#+1
        LDR      R0,??DataTable13_5
        BL       UartUtil_Print
//  714     /* Copy the received data to the UART. */
//  715     UartUtil_Tx(pMsgIn->msgData.dataInd.pMsdu, pMsgIn->msgData.dataInd.msduLength);
        MOVS     R0,R4
        ADDS     R0,R0,#+27
        BL       __aeabi_uread4
        LDRB     R1,[R4, #+23]
        BL       UartUtil_Tx
//  716     /* Since we received data, the coordinator might have more to send. We 
//  717        reduce the polling interval to raise the throughput while data is
//  718        available. */
//  719     mPollInterval = mDefaultValueOfPollIntervalFast_c;
        LDR      R0,??DataTable13_1
        MOVS     R1,#+82
        STRH     R1,[R0, #+0]
//  720     /* Allow another MLME-Poll request. */
//  721     mWaitPollConfirm = FALSE;
        LDR      R0,??DataTable13_2
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  722     break;
//  723   }
//  724 }
??App_HandleMcpsInput_2:
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8:
        DC32     gState

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8_1:
        DC32     `?<Constant "Sending the MLME-Scan...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8_2:
        DC32     `?<Constant "Done\\n\\r">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8_3:
        DC32     `?<Constant "Invalid parameter!\\n\\r">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8_4:
        DC32     `?<Constant "Message allocation fa...">`
//  725 
//  726 /******************************************************************************
//  727 * The App_WaitMsg(nwkMessage_t *pMsg, uint8_t msgType) function does not, as
//  728 * the name implies, wait for a message, thus blocking the execution of the
//  729 * state machine. Instead the function analyzes the supplied message to 
//  730 * determine whether or not the message is of the expected type.
//  731 * The function may return either of the following values:
//  732 *   errorNoError: The message was of the expected type.
//  733 *   errorNoMessage: The message pointer is NULL.
//  734 *   errorWrongConfirm: The message is not of the expected type.
//  735 *
//  736 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  737 static uint8_t App_WaitMsg(nwkMessage_t *pMsg, uint8_t msgType)
//  738 {
App_WaitMsg:
        PUSH     {LR}
        MOVS     R2,R0
//  739   /* Do we have a message? If not, the exit with error code */
//  740   if(pMsg == NULL)
        CMP      R2,#+0
        BNE      ??App_WaitMsg_0
//  741     return errorNoMessage;
        MOVS     R0,#+3
        B        ??App_WaitMsg_1
//  742 
//  743   /* Is it the expected message type? If not then exit with error code */
//  744   if(pMsg->msgType != msgType)
??App_WaitMsg_0:
        LDRB     R0,[R2, #+0]
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        CMP      R0,R1
        BEQ      ??App_WaitMsg_2
//  745     return errorWrongConfirm;
        MOVS     R0,#+1
        B        ??App_WaitMsg_1
//  746 
//  747   /* Found the expected message. Return with success code */
//  748   return errorNoError;
??App_WaitMsg_2:
        MOVS     R0,#+0
??App_WaitMsg_1:
        POP      {R3}
        BX       R3               ;; return
//  749 }
//  750 
//  751 /******************************************************************************
//  752 * The App_TransmitUartData() function will perform (single/multi buffered)
//  753 * data transmissions of data received by the UART. Data could also come from
//  754 * other sources such as sensors etc. This is completely determined by the
//  755 * application. The constant mDefaultValueOfMaxPendingDataPackets_c determine the maximum
//  756 * number of packets pending for transmission in the MAC. A global variable
//  757 * is incremented each time a data packet is sent to the MCPS, and decremented
//  758 * when the corresponding MCPS-Data Confirm message is received. If the counter
//  759 * reaches the defined maximum no more data buffers are allocated until the
//  760 * counter is decreased below the maximum number of pending packets.
//  761 *
//  762 * The function uses the coordinator information gained during the Active Scan,
//  763 * and the short address assigned to us by coordinator, for building an MCPS-
//  764 * Data Request message. The message is sent to the MCPS service access point
//  765 * in the MAC.
//  766 ******************************************************************************/
//  767 static void App_TransmitUartData(void)
//  768 {   
//  769   static uint8_t keysBuffer[mMaxKeysToReceive_c];
//  770   static uint8_t keysReceived = 0;
//  771   
//  772   /* get data from UART */
//  773   if( keysReceived < mMaxKeysToReceive_c ) 
//  774   {
//  775     if(Uart1_GetByteFromRxBuffer(&keysBuffer[keysReceived])) 
//  776     {
//  777     keysReceived++;
//  778     }
//  779   }
//  780 	/* Use multi buffering for increased TX performance. It does not really
//  781      have any effect at a UART baud rate of 19200bps but serves as an
//  782      example of how the throughput may be improved in a real-world 
//  783      application where the data rate is of concern. */
//  784   if( (mcPendingPackets < mDefaultValueOfMaxPendingDataPackets_c) && (mpPacket == NULL) ) 
//  785   {
//  786     /* If the maximum number of pending data buffes is below maximum limit 
//  787        and we do not have a data buffer already then allocate one. */
//  788     mpPacket = MSG_AllocType(nwkToMcpsMessage_t);
//  789   }
//  790 
//  791   if(mpPacket != NULL)
//  792   {
//  793     /* get data from UART */        
//  794       mpPacket->msgData.dataReq.pMsdu = &keysBuffer[0];
//  795       /* Data was available in the UART receive buffer. Now create an
//  796          MCPS-Data Request message containing the UART data. */
//  797       mpPacket->msgType = gMcpsDataReq_c;
//  798       /* Create the header using coordinator information gained during 
//  799          the scan procedure. Also use the short address we were assigned
//  800          by the coordinator during association. */
//  801       FLib_MemCpy(mpPacket->msgData.dataReq.dstAddr, mCoordInfo.coordAddress, 8);
//  802       FLib_MemCpy(mpPacket->msgData.dataReq.srcAddr, maMyAddress, 8);
//  803       FLib_MemCpy(mpPacket->msgData.dataReq.dstPanId, mCoordInfo.coordPanId, 2);
//  804       FLib_MemCpy(mpPacket->msgData.dataReq.srcPanId, mCoordInfo.coordPanId, 2);
//  805       mpPacket->msgData.dataReq.dstAddrMode = mCoordInfo.coordAddrMode;
//  806       mpPacket->msgData.dataReq.srcAddrMode = mAddrMode;
//  807       mpPacket->msgData.dataReq.msduLength = keysReceived;
//  808       /* Request MAC level acknowledgement of the data packet */
//  809       mpPacket->msgData.dataReq.txOptions = gTxOptsAck_c;
//  810       /* Give the data packet a handle. The handle is
//  811          returned in the MCPS-Data Confirm message. */
//  812       mpPacket->msgData.dataReq.msduHandle = mMsduHandle++;
//  813 #ifdef gMAC2006_d
//  814 	  /* Don't use security */
//  815 	  mpPacket->msgData.dataReq.securityLevel = 0;
//  816 #endif //gMAC2006_d      
//  817       /* Send the Data Request to the MCPS */
//  818       (void)MSG_Send(NWK_MCPS, mpPacket);
//  819       /* Prepare for another data buffer */
//  820       mpPacket = NULL;
//  821       mcPendingPackets++;
//  822       /* Receive another pressed keys */
//  823       keysReceived = 0;
//  824   }
//  825       
//  826   /* If the keysBuffer[] wasn't send over the air because there are too many pending packets, */
//  827   /* try to send it later   */
//  828   if (keysReceived)
//  829   {
//  830   TS_SendEvent(gAppTaskID_c, gAppEvtRxFromUart_c);
//  831   }
//  832 
//  833 }
//  834 
//  835 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  836 static void App_TransmitUart2Data(uint8_t value)
//  837 {   
App_TransmitUart2Data:
        PUSH     {R0,LR}
//  838   static uint8_t keysBuffer[mMaxKeysToReceive_c];
//  839   static uint8_t keysReceived = 0;
//  840   
//  841   /* get data from UART 
//  842   if( keysReceived < mMaxKeysToReceive_c ) 
//  843   {
//  844     if(Uart2_GetByteFromRxBuffer(&keysBuffer[keysReceived])) 
//  845     {
//  846       keysReceived++;
//  847     }
//  848   }*/
//  849 	/* Use multi buffering for increased TX performance. It does not really
//  850      have any effect at a UART baud rate of 19200bps but serves as an
//  851      example of how the throughput may be improved in a real-world 
//  852      application where the data rate is of concern. */
//  853   if( (mcPendingPackets < mDefaultValueOfMaxPendingDataPackets_c) && (mpPacket == NULL) ) 
        LDR      R0,??DataTable13_3
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BCS      ??App_TransmitUart2Data_0
        LDR      R0,??DataTable13_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??App_TransmitUart2Data_0
//  854   {
//  855     /* If the maximum number of pending data buffes is below maximum limit 
//  856        and we do not have a data buffer already then allocate one. */
//  857     mpPacket = MSG_AllocType(nwkToMcpsMessage_t);
        MOVS     R0,#+30
        BL       MM_Alloc
        LDR      R1,??DataTable13_6
        STR      R0,[R1, #+0]
//  858   }
//  859 
//  860   if(mpPacket != NULL)
??App_TransmitUart2Data_0:
        LDR      R0,??DataTable13_6
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??App_TransmitUart2Data_1
//  861   {
//  862     /* get data from UART */        
//  863       mpPacket->msgData.dataReq.pMsdu = &value;
        LDR      R0,??DataTable13_6
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+26
        MOV      R0,SP
        BL       __aeabi_uwrite4
//  864       /* Data was available in the UART receive buffer. Now create an
//  865          MCPS-Data Request message containing the UART data. */
//  866       mpPacket->msgType = gMcpsDataReq_c;
        LDR      R0,??DataTable13_6
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  867       /* Create the header using coordinator information gained during 
//  868          the scan procedure. Also use the short address we were assigned
//  869          by the coordinator during association. */
//  870       FLib_MemCpy(mpPacket->msgData.dataReq.dstAddr, mCoordInfo.coordAddress, 8);
        MOVS     R2,#+8
        LDR      R1,??DataTable10
        LDR      R0,??DataTable13_6
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        BL       FLib_MemCpy
//  871       FLib_MemCpy(mpPacket->msgData.dataReq.srcAddr, maMyAddress, 8);
        MOVS     R2,#+8
        LDR      R1,??DataTable13
        LDR      R0,??DataTable13_6
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+12
        BL       FLib_MemCpy
//  872       FLib_MemCpy(mpPacket->msgData.dataReq.dstPanId, mCoordInfo.coordPanId, 2);
        MOVS     R2,#+2
        LDR      R1,??DataTable10
        ADDS     R1,R1,#+8
        LDR      R0,??DataTable13_6
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+9
        BL       FLib_MemCpy
//  873       FLib_MemCpy(mpPacket->msgData.dataReq.srcPanId, mCoordInfo.coordPanId, 2);
        MOVS     R2,#+2
        LDR      R1,??DataTable10
        ADDS     R1,R1,#+8
        LDR      R0,??DataTable13_6
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+20
        BL       FLib_MemCpy
//  874       mpPacket->msgData.dataReq.dstAddrMode = mCoordInfo.coordAddrMode;
        LDR      R0,??DataTable13_6
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable10
        LDRB     R1,[R1, #+10]
        STRB     R1,[R0, #+11]
//  875       mpPacket->msgData.dataReq.srcAddrMode = mAddrMode;
        LDR      R0,??DataTable13_6
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable12
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+22]
//  876       mpPacket->msgData.dataReq.msduLength = sizeof(value);
        LDR      R0,??DataTable13_6
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        STRB     R1,[R0, #+23]
//  877       /* Request MAC level acknowledgement of the data packet */
//  878       mpPacket->msgData.dataReq.txOptions = gTxOptsAck_c;
        LDR      R0,??DataTable13_6
        LDR      R0,[R0, #+0]
        MOVS     R1,#+1
        STRB     R1,[R0, #+25]
//  879       /* Give the data packet a handle. The handle is
//  880          returned in the MCPS-Data Confirm message. */
//  881       mpPacket->msgData.dataReq.msduHandle = mMsduHandle++;
        LDR      R0,??DataTable13_6
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable13_7
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+24]
        LDR      R0,??DataTable13_7
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable13_7
        STRB     R0,[R1, #+0]
//  882 #ifdef gMAC2006_d
//  883 	  /* Don't use security */
//  884 	  mpPacket->msgData.dataReq.securityLevel = 0;
//  885 #endif //gMAC2006_d      
//  886       /* Send the Data Request to the MCPS */
//  887       (void)MSG_Send(NWK_MCPS, mpPacket);
        LDR      R0,??DataTable13_6
        LDR      R0,[R0, #+0]
        BL       NWK_MCPS_SapHandler
//  888       /* Prepare for another data buffer */
//  889       mpPacket = NULL;
        LDR      R0,??DataTable13_6
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  890       mcPendingPackets++;
        LDR      R0,??DataTable13_3
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable13_3
        STRB     R0,[R1, #+0]
//  891       /* Receive another pressed keys */
//  892       keysReceived = 0;
        LDR      R0,??DataTable13_8
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  893   }
//  894       
//  895   /* If the keysBuffer[] wasn't send over the air because there are too many pending packets, */
//  896   /* try to send it later   */
//  897   if (keysReceived)
??App_TransmitUart2Data_1:
        LDR      R0,??DataTable13_8
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??App_TransmitUart2Data_2
//  898   {
//  899   TS_SendEvent(gAppTaskID_c, gAppEvtRxFromUart_c);
        MOVS     R1,#+2
        LDR      R0,??DataTable13_9
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
//  900   }
//  901 
//  902 }
??App_TransmitUart2Data_2:
        POP      {R0,R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable9:
        DC32     `?<Constant "Sending the MLME-Asso...">`

        SECTION `.bss`:DATA:NOROOT(0)
??keysReceived:
        DS8 1
//  903 
//  904 /******************************************************************************
//  905 * The App_ReceiveUartData() function will check if it is time to send out an
//  906 * MLME-Poll request in order to receive data from the coordinator. If its time,
//  907 * and we are permitted then a poll request is created and sent.
//  908 * 
//  909 * The function uses the coordinator information gained during the Active Scan
//  910 * for building the MLME-Poll Request message. The message is sent to the MLME
//  911 * service access point in the MAC.
//  912 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  913 static void    AppPollWaitTimeout(uint8_t tmr)
//  914 { 
AppPollWaitTimeout:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  915   
//  916   /* Just to avoid the compiler warning */
//  917   tmr++;
        ADDS     R4,R4,#+1
//  918   
//  919   /* Check if we are permitted, and if it is time to send a poll request.
//  920      The poll interval is adjusted dynamically to the current band-width
//  921      requirements. */
//  922   if(mWaitPollConfirm == FALSE)
        LDR      R0,??DataTable13_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??AppPollWaitTimeout_0
//  923   {
//  924     /* This is an MLME-POLL.req command. */
//  925     mlmeMessage_t *pMlmeMsg = MSG_AllocType(mlmeMessage_t);
        MOVS     R0,#+15
        BL       MM_Alloc
        MOVS     R5,R0
//  926     if(pMlmeMsg)
        CMP      R5,#+0
        BEQ      ??AppPollWaitTimeout_0
//  927     {
//  928       /* Create the Poll Request message data. */
//  929       pMlmeMsg->msgType = gMlmePollReq_c;
        MOVS     R0,#+12
        STRB     R0,[R5, #+0]
//  930  
//  931       /* Use the coordinator information we got from the Active Scan. */
//  932       FLib_MemCpy(pMlmeMsg->msgData.pollReq.coordAddress, mCoordInfo.coordAddress, 8);
        MOVS     R2,#+8
        LDR      R1,??DataTable10
        MOVS     R0,R5
        ADDS     R0,R0,#+1
        BL       FLib_MemCpy
//  933       FLib_MemCpy(pMlmeMsg->msgData.pollReq.coordPanId, mCoordInfo.coordPanId, 2);
        MOVS     R2,#+2
        LDR      R1,??DataTable10
        ADDS     R1,R1,#+8
        MOVS     R0,R5
        ADDS     R0,R0,#+9
        BL       FLib_MemCpy
//  934       pMlmeMsg->msgData.pollReq.coordAddrMode = mCoordInfo.coordAddrMode;
        LDR      R0,??DataTable10
        LDRB     R0,[R0, #+10]
        STRB     R0,[R5, #+11]
//  935 #ifdef gMAC2006_d
//  936       pMlmeMsg->msgData.pollReq.securityLevel = 0;
//  937 #else      
//  938       pMlmeMsg->msgData.pollReq.securityEnable = FALSE;
        MOVS     R0,#+0
        STRB     R0,[R5, #+12]
//  939 #endif //gMAC2006_d      
//  940       
//  941       /* Send the Poll Request to the MLME. */
//  942       if(MSG_Send(NWK_MLME, pMlmeMsg) == gSuccess_c)
        MOVS     R0,R5
        BL       NWK_MLME_SapHandler
        CMP      R0,#+0
        BNE      ??AppPollWaitTimeout_0
//  943       {
//  944         /* Do not allow another Poll request before the confirm is received. */
//  945         mWaitPollConfirm = TRUE;
        LDR      R0,??DataTable13_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  946 
//  947       }
//  948     }
//  949   }
//  950  /* Restart timer. */
//  951  TMR_StartSingleShotTimer(mTimer_c, mPollInterval, AppPollWaitTimeout);
??AppPollWaitTimeout_0:
        LDR      R2,??DataTable13_10
        LDR      R0,??DataTable13_1
        LDRH     R1,[R0, #+0]
        LDR      R0,??DataTable13_11
        LDRB     R0,[R0, #+0]
        BL       TMR_StartSingleShotTimer
//  952 }
        POP      {R0,R4,R5}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable10:
        DC32     mCoordInfo
//  953 
//  954 /*****************************************************************************
//  955 * Handles all key events for this device.
//  956 * Interface assumptions: None
//  957 * Return value: None
//  958 *****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  959 static void App_HandleKeys
//  960   (
//  961   key_event_t events  /*IN: Events from keyboard modul */
//  962   )
//  963 {
App_HandleKeys:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  964   switch ( events ) 
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        MOVS     R0,R4
        SUBS     R0,R0,#+1
        CMP      R0,#+7
        BHI      ??App_HandleKeys_0
//  965     { 
//  966       case gKBD_EventSW1_c:
//  967       case gKBD_EventSW2_c:
//  968       case gKBD_EventSW3_c:
//  969       case gKBD_EventSW4_c:
//  970       case gKBD_EventLongSW1_c:
//  971       case gKBD_EventLongSW2_c:
//  972       case gKBD_EventLongSW3_c:
//  973       case gKBD_EventLongSW4_c:
//  974         if(gState == stateInit)
??App_HandleKeys_1:
        LDR      R0,??DataTable13_12
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??App_HandleKeys_0
//  975           {
//  976           StopLed1Flashing();
        MOVS     R0,#+1
        BL       LED_StopFlash
//  977           StopLed2Flashing();
        MOVS     R0,#+2
        BL       LED_StopFlash
//  978           StopLed3Flashing();
        MOVS     R0,#+4
        BL       LED_StopFlash
//  979           StopLed4Flashing();
        MOVS     R0,#+8
        BL       LED_StopFlash
//  980           Led1Off();
        MOVS     R1,#+0
        MOVS     R0,#+23
        BL       Gpio_SetPinData
//  981           Led2Off();
        MOVS     R1,#+0
        MOVS     R0,#+24
        BL       Gpio_SetPinData
//  982           Led3Off();
        MOVS     R1,#+0
        MOVS     R0,#+25
        BL       Gpio_SetPinData
//  983           Led4Off();
        MOVS     R1,#+0
        MOVS     R0,#+44
        BL       Gpio_SetPinData
//  984           LCD_ClearDisplay();
//  985           LCD_WriteString(1,"Application");
        LDR      R0,??DataTable13_13
//  986           LCD_WriteString(2,"    started");     
        LDR      R0,??DataTable13_14
//  987           TS_SendEvent(gAppTaskID_c, gAppEvtDummyEvent_c);       
        MOVS     R1,#+1
        LDR      R0,??DataTable13_9
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
//  988           }
//  989     }    
//  990 }
??App_HandleKeys_0:
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable11:
        DC32     aExtendedAddress
//  991 
//  992 /*****************************************************************************
//  993 * The DeepSleepWakeupStackProc(void) function is called each time the 
//  994 * application exits the DeepSleep mode .
//  995 * 
//  996 * Return value:
//  997 *     None
//  998 *****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  999 void DeepSleepWakeupStackProc(void){
// 1000   return;
DeepSleepWakeupStackProc:
        BX       LR               ;; return
// 1001 }
// 1002 
// 1003 /******************************************************************************
// 1004 * The following functions are called by the MAC to put messages into the
// 1005 * Application's queue. They need to be defined even if they are not used
// 1006 * in order to avoid linker errors.
// 1007 ******************************************************************************/
// 1008 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1009 uint8_t MLME_NWK_SapHandler(nwkMessage_t * pMsg)
// 1010 {
MLME_NWK_SapHandler:
        PUSH     {R4,LR}
        MOVS     R4,R0
// 1011   /* Put the incoming MLME message in the applications input queue. */
// 1012   MSG_Queue(&mMlmeNwkInputQueue, pMsg);
        MOVS     R1,R4
        LDR      R0,??DataTable13_15
        BL       List_AddTail
// 1013   TS_SendEvent(gAppTaskID_c, gAppEvtMessageFromMLME_c);
        MOVS     R1,#+4
        LDR      R0,??DataTable13_9
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
// 1014   return gSuccess_c;
        MOVS     R0,#+0
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
// 1015 }

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12:
        DC32     mAddrMode
// 1016 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1017 uint8_t MCPS_NWK_SapHandler(mcpsToNwkMessage_t *pMsg)
// 1018 {
MCPS_NWK_SapHandler:
        PUSH     {R4,LR}
        MOVS     R4,R0
// 1019   /* Put the incoming MCPS message in the applications input queue. */
// 1020   MSG_Queue(&mMcpsNwkInputQueue, pMsg);
        MOVS     R1,R4
        LDR      R0,??DataTable13_16
        BL       List_AddTail
// 1021   TS_SendEvent(gAppTaskID_c, gAppEvtMessageFromMCPS_c);
        MOVS     R1,#+8
        LDR      R0,??DataTable13_9
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
// 1022   return gSuccess_c;
        MOVS     R0,#+0
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
// 1023 }

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13:
        DC32     maMyAddress

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_1:
        DC32     mPollInterval

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_2:
        DC32     mWaitPollConfirm

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_3:
        DC32     mcPendingPackets

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_4:
        DC32     `?<Constant "The data packet has b...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_5:
        DC32     `?<Constant "Data indication has c...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_6:
        DC32     mpPacket

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_7:
        DC32     mMsduHandle

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_8:
        DC32     ??keysReceived

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_9:
        DC32     gAppTaskID_c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_10:
        DC32     AppPollWaitTimeout

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_11:
        DC32     mTimer_c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_12:
        DC32     gState

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_13:
        DC32     `?<Constant "Application">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_14:
        DC32     `?<Constant "    started">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_15:
        DC32     mMlmeNwkInputQueue

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable13_16:
        DC32     mMcpsNwkInputQueue
// 1024 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
// 1025 uint8_t ASP_APP_SapHandler(aspToAppMsg_t *pMsg)
// 1026 {
ASP_APP_SapHandler:
        PUSH     {R4,LR}
        MOVS     R4,R0
// 1027   /* If the message is not handled anywhere it must be freed. */
// 1028   MSG_Free(pMsg);
        MOVS     R0,R4
        BL       MM_Free
        MOVS     R0,#+0
        MOVS     R4,R0
// 1029   return gSuccess_c;
        MOVS     R0,#+0
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
// 1030 }

        END
// 1031 
// 1032 /******************************************************************************/
// 
//    62 bytes in section .bss
//     1 byte  in section .data
// 1 220 bytes in section .rodata
// 2 328 bytes in section .text
// 
// 2 328 bytes of CODE  memory
// 1 220 bytes of CONST memory
//    63 bytes of DATA  memory
//
//Errors: none
//Warnings: 2
