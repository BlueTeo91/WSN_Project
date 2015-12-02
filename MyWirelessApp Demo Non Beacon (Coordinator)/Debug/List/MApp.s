///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      22/Nov/2015  13:41:46 /
// IAR ANSI C/C++ Compiler V5.50.7.22081/W32 EVALUATION for ARM               /
// Copyright (C) 1999-2010 IAR Systems AB.                                    /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Documents and Settings\Administrator\Desktop\WSN     /
//                    Project\To use\MyWirelessApp Demo Non Beacon            /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\Application\Source\MApp.c                 /
//    Command line =  "C:\Documents and Settings\Administrator\Desktop\WSN    /
//                    Project\To use\MyWirelessApp Demo Non Beacon            /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\Application\Source\MApp.c" -D             /
//                    gMacStandAlone_d=1 -D gSAPMessagesEnableLlc_d=0 -D      /
//                    gZtcIncluded_d=0 -D gTargetMC1322xNCB=1 --preprocess    /
//                    "C:\Documents and Settings\Administrator\Desktop\WSN    /
//                    Project\To use\MyWirelessApp Demo Non Beacon            /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\Debug\List\" -lC "C:\Documents and        /
//                    Settings\Administrator\Desktop\WSN Project\To           /
//                    use\MyWirelessApp Demo Non Beacon                       /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\Debug\List\" -lB "C:\Documents and        /
//                    Settings\Administrator\Desktop\WSN Project\To           /
//                    use\MyWirelessApp Demo Non Beacon                       /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\Debug\List\" --diag_suppress              /
//                    Pe014,Pe001,Pe991,Pa039,Pe520 -o "C:\Documents and      /
//                    Settings\Administrator\Desktop\WSN Project\To           /
//                    use\MyWirelessApp Demo Non Beacon                       /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\Debug\Obj\" --no_cse --no_unroll          /
//                    --no_inline --no_code_motion --no_tbaa --no_clustering  /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=ARM7TDMI-S --fpu=None --dlib_config "C:\Program   /
//                    Files\IAR Systems\Embedded Workbench 5.4                /
//                    Evaluation\arm\INC\DLib_Config_Normal.h" -I             /
//                    "C:\Documents and Settings\Administrator\Desktop\WSN    /
//                    Project\To use\MyWirelessApp Demo Non Beacon            /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\MacPhy\Interface\" -I "C:\Documents and   /
//                    Settings\Administrator\Desktop\WSN Project\To           /
//                    use\MyWirelessApp Demo Non Beacon                       /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\Application\Init\" -I "C:\Documents and   /
//                    Settings\Administrator\Desktop\WSN Project\To           /
//                    use\MyWirelessApp Demo Non Beacon                       /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\Application\Interface\" -I "C:\Documents  /
//                    and Settings\Administrator\Desktop\WSN Project\To       /
//                    use\MyWirelessApp Demo Non Beacon                       /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\Application\Configure\" -I "C:\Documents  /
//                    and Settings\Administrator\Desktop\WSN Project\To       /
//                    use\MyWirelessApp Demo Non Beacon                       /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\Application\UartUtil\" -I "C:\Documents   /
//                    and Settings\Administrator\Desktop\WSN Project\To       /
//                    use\MyWirelessApp Demo Non Beacon                       /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\Application\Source\" -I "C:\Documents     /
//                    and Settings\Administrator\Desktop\WSN Project\To       /
//                    use\MyWirelessApp Demo Non Beacon                       /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\SSM\TS\Interface\" -I "C:\Documents and   /
//                    Settings\Administrator\Desktop\WSN Project\To           /
//                    use\MyWirelessApp Demo Non Beacon                       /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\SSM\TS\Source\" -I "C:\Documents and      /
//                    Settings\Administrator\Desktop\WSN Project\To           /
//                    use\MyWirelessApp Demo Non Beacon                       /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\SSM\ZTC\Interface\" -I "C:\Documents and  /
//                    Settings\Administrator\Desktop\WSN Project\To           /
//                    use\MyWirelessApp Demo Non Beacon                       /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\SSM\ZTC\Source\" -I "C:\Documents and     /
//                    Settings\Administrator\Desktop\WSN Project\To           /
//                    use\MyWirelessApp Demo Non Beacon                       /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\PLM\Interface\" -I "C:\Documents and      /
//                    Settings\Administrator\Desktop\WSN Project\To           /
//                    use\MyWirelessApp Demo Non Beacon                       /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\PLM\LibInterface\" -I "C:\Documents and   /
//                    Settings\Administrator\Desktop\WSN Project\To           /
//                    use\MyWirelessApp Demo Non Beacon                       /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\PLM\Source\Display\" -I "C:\Documents     /
//                    and Settings\Administrator\Desktop\WSN Project\To       /
//                    use\MyWirelessApp Demo Non Beacon                       /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\PLM\Source\Keyboard\" -I "C:\Documents    /
//                    and Settings\Administrator\Desktop\WSN Project\To       /
//                    use\MyWirelessApp Demo Non Beacon                       /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\PLM\Source\NVM\" -I "C:\Documents and     /
//                    Settings\Administrator\Desktop\WSN Project\To           /
//                    use\MyWirelessApp Demo Non Beacon                       /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\PLM\Source\TMR\" -I "C:\Documents and     /
//                    Settings\Administrator\Desktop\WSN Project\To           /
//                    use\MyWirelessApp Demo Non Beacon                       /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\PLM\Source\UART\" -I "C:\Program          /
//                    Files\IAR Systems\Embedded Workbench 5.4                /
//                    Evaluation\arm\INC\" --interwork --cpu_mode thumb -On   /
//    List file    =  C:\Documents and Settings\Administrator\Desktop\WSN     /
//                    Project\To use\MyWirelessApp Demo Non Beacon            /
//                    (Coordinator)\MyWirelessApp Demo Non Beacon             /
//                    (Coordinator)\Debug\List\MApp.s                         /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME MApp

        EXTERN FLib_MemCpy
        EXTERN Gpio_SetPinData
        EXTERN Init_MacExtendedAddress
        EXTERN IntRestoreAll
        EXTERN KBD_Init
        EXTERN LCD_ClearDisplay
        EXTERN LCD_Init
        EXTERN LCD_WriteString
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
        EXTERN TS_SendEvent
        EXTERN Uart1_GetByteFromRxBuffer
        EXTERN Uart1_SetBaud
        EXTERN Uart1_SetRxCallBack
        EXTERN UartUtil_Print
        EXTERN UartUtil_PrintHex
        EXTERN UartUtil_Tx
        EXTERN __aeabi_uread4
        EXTERN __aeabi_uwrite4
        EXTERN gAppTaskID_c

        PUBLIC ASP_APP_SapHandler
        PUBLIC AppTask
        PUBLIC DeepSleepWakeupStackProc
        PUBLIC MApp_init
        PUBLIC MCPS_NWK_SapHandler
        PUBLIC MLME_NWK_SapHandler
        PUBLIC gState
        PUBLIC gaNvAppDataSet


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
        DC8 65H, 61H, 63H, 6FH, 6EH, 20H, 43H, 6FH
        DC8 6FH, 72H, 64H, 69H, 6EH, 61H, 74H, 6FH
        DC8 72H, 20H, 61H, 70H, 70H, 6CH, 69H, 63H
        DC8 61H, 74H, 69H, 6FH, 6EH, 20H, 69H, 73H
        DC8 20H, 69H, 6EH, 69H, 74H, 69H, 61H, 6CH
        DC8 69H, 7AH, 65H, 64H, 20H, 61H, 6EH, 64H
        DC8 20H, 72H, 65H, 61H, 64H, 79H, 2EH, 0AH
        DC8 0DH, 0AH, 0DH, 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Initiating the Energy...">`:
        DATA
        DC8 "Initiating the Energy Detection Scan\012\015"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Starting Energy">`:
        DATA
        DC8 "Starting Energy"

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Detection Scan">`:
        DATA
        DC8 "Detection Scan"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "\\n\\rStarting as PAN coo...">`:
        DATA
        DC8 "\012\015Starting as PAN coordinator on channel 0x"

        SECTION `.rodata`:CONST:NOROOT(2)
        DATA
        DC8 "\012\015"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Starting">`:
        DATA
        DC8 "Starting"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "PAN coordinator">`:
        DATA
        DC8 "PAN coordinator"

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Started the coordinat...">`:
        DATA
        DC8 "Started the coordinator with PAN ID 0x"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant ", and short address 0x">`:
        DATA
        DC8 ", and short address 0x"
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant ".\\n\\r\\n\\rReady to send an...">`:
        DATA
        DC8 2EH, 0AH, 0DH, 0AH, 0DH, 52H, 65H, 61H
        DC8 64H, 79H, 20H, 74H, 6FH, 20H, 73H, 65H
        DC8 6EH, 64H, 20H, 61H, 6EH, 64H, 20H, 72H
        DC8 65H, 63H, 65H, 69H, 76H, 65H, 20H, 64H
        DC8 61H, 74H, 61H, 20H, 6FH, 76H, 65H, 72H
        DC8 20H, 74H, 68H, 65H, 20H, 55H, 41H, 52H
        DC8 54H, 2EH, 0AH, 0DH, 0AH, 0DH, 0
        DC8 0

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
`?<Constant "Received the MLME-Sca...">`:
        DATA
        DC8 52H, 65H, 63H, 65H, 69H, 76H, 65H, 64H
        DC8 20H, 74H, 68H, 65H, 20H, 4DH, 4CH, 4DH
        DC8 45H, 2DH, 53H, 63H, 61H, 6EH, 20H, 43H
        DC8 6FH, 6EH, 66H, 69H, 72H, 6DH, 20H, 6DH
        DC8 65H, 73H, 73H, 61H, 67H, 65H, 20H, 66H
        DC8 72H, 6FH, 6DH, 20H, 74H, 68H, 65H, 20H
        DC8 4DH, 41H, 43H, 0AH, 0DH, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "ED scan returned the ...">`:
        DATA
        DC8 "ED scan returned the following results:\012\015  ["
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "]\\n\\r\\n\\r">`:
        DATA
        DC8 "]\012\015\012\015"
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Based on the ED scan ...">`:
        DATA
        DC8 "Based on the ED scan the logical channel 0x"

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant " was selected\\n\\r">`:
        DATA
        DC8 " was selected\012\015"

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Sending the MLME-Star...">`:
        DATA
        DC8 53H, 65H, 6EH, 64H, 69H, 6EH, 67H, 20H
        DC8 74H, 68H, 65H, 20H, 4DH, 4CH, 4DH, 45H
        DC8 2DH, 53H, 74H, 61H, 72H, 74H, 20H, 52H
        DC8 65H, 71H, 75H, 65H, 73H, 74H, 20H, 6DH
        DC8 65H, 73H, 73H, 61H, 67H, 65H, 20H, 74H
        DC8 6FH, 20H, 74H, 68H, 65H, 20H, 4DH, 41H
        DC8 43H, 2EH, 2EH, 2EH, 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Sending the MLME-Asso...">`:
        DATA
        DC8 53H, 65H, 6EH, 64H, 69H, 6EH, 67H, 20H
        DC8 74H, 68H, 65H, 20H, 4DH, 4CH, 4DH, 45H
        DC8 2DH, 41H, 73H, 73H, 6FH, 63H, 69H, 61H
        DC8 74H, 65H, 20H, 52H, 65H, 73H, 70H, 6FH
        DC8 6EH, 73H, 65H, 20H, 6DH, 65H, 73H, 73H
        DC8 61H, 67H, 65H, 20H, 74H, 6FH, 20H, 74H
        DC8 68H, 65H, 20H, 4DH, 41H, 43H, 2EH, 2EH
        DC8 2EH, 0
        DC8 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Received an MLME-Asso...">`:
        DATA
        DC8 52H, 65H, 63H, 65H, 69H, 76H, 65H, 64H
        DC8 20H, 61H, 6EH, 20H, 4DH, 4CH, 4DH, 45H
        DC8 2DH, 41H, 73H, 73H, 6FH, 63H, 69H, 61H
        DC8 74H, 65H, 20H, 49H, 6EH, 64H, 69H, 63H
        DC8 61H, 74H, 69H, 6FH, 6EH, 20H, 66H, 72H
        DC8 6FH, 6DH, 20H, 74H, 68H, 65H, 20H, 4DH
        DC8 41H, 43H, 0AH, 0DH, 0
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Received an MLME-Comm...">`:
        DATA
        DC8 52H, 65H, 63H, 65H, 69H, 76H, 65H, 64H
        DC8 20H, 61H, 6EH, 20H, 4DH, 4CH, 4DH, 45H
        DC8 2DH, 43H, 6FH, 6DH, 6DH, 2DH, 53H, 74H
        DC8 61H, 74H, 75H, 73H, 20H, 49H, 6EH, 64H
        DC8 69H, 63H, 61H, 74H, 69H, 6FH, 6EH, 20H
        DC8 66H, 72H, 6FH, 6DH, 20H, 74H, 68H, 65H
        DC8 20H, 4DH, 41H, 43H, 0AH, 0DH, 0
        DC8 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Received the data pac...">`:
        DATA
        DC8 "Received the data packet from MCPS\012\015"
        DC8 0, 0, 0

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "Application">`:
        DATA
        DC8 "Application"

        SECTION `.rodata`:CONST:NOROOT(2)
`?<Constant "    started">`:
        DATA
        DC8 "    started"
// C:\Documents and Settings\Administrator\Desktop\WSN Project\To use\MyWirelessApp Demo Non Beacon (Coordinator)\MyWirelessApp Demo Non Beacon (Coordinator)\Application\Source\MApp.c
//    1 /*****************************************************************************
//    2 *  MyWirelessApp Demo Non Beacon Coordinator application.
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
//   36 static void    App_HandleScanEdConfirm(nwkMessage_t *pMsg);
//   37 static uint8_t App_StartCoordinator(void);
//   38 static uint8_t App_HandleMlmeInput(nwkMessage_t *pMsg);
//   39 static uint8_t App_SendAssociateResponse(nwkMessage_t *pMsgIn);
//   40 static void    App_HandleMcpsInput(mcpsToNwkMessage_t *pMsgIn);
//   41 static void    App_TransmitUartData(void);
//   42 static uint8_t App_WaitMsg(nwkMessage_t *pMsg, uint8_t msgType);
//   43 static void    App_HandleKeys(key_event_t events) ;
//   44 
//   45 /************************************************************************************
//   46 *************************************************************************************
//   47 * Private type definitions
//   48 *************************************************************************************
//   49 ************************************************************************************/
//   50 
//   51 
//   52 /************************************************************************************
//   53 *************************************************************************************
//   54 * Private memory declarations
//   55 *************************************************************************************
//   56 ************************************************************************************/
//   57 
//   58 /* The short address and PAN ID of the coordinator*/

        SECTION `.rodata`:CONST:NOROOT(1)
//   59 static const uint8_t maShortAddress[2] = { (mDefaultValueOfShortAddress_c & 0xff), (mDefaultValueOfShortAddress_c >> 8)};
maShortAddress:
        DATA
        DC8 25, 0

        SECTION `.rodata`:CONST:NOROOT(1)
//   60 static const uint8_t maPanId[2] = { (mDefaultValueOfPanId_c & 0xff), (mDefaultValueOfPanId_c >> 8)};
maPanId:
        DATA
        DC8 5, 0
//   61 
//   62 
//   63 /* The current logical channel (frequency band) */

        SECTION `.bss`:DATA:NOROOT(0)
//   64 static uint8_t mLogicalChannel;
mLogicalChannel:
        DS8 1
//   65 
//   66 /* These byte arrays stores an associated
//   67    devices long and short addresses. */

        SECTION `.bss`:DATA:NOROOT(1)
//   68 static uint8_t maDeviceShortAddress[2];
maDeviceShortAddress:
        DS8 2

        SECTION `.bss`:DATA:NOROOT(2)
//   69 static uint8_t maDeviceLongAddress[8];
maDeviceLongAddress:
        DS8 8
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
//   80 /* Application input queues */

        SECTION `.bss`:DATA:NOROOT(2)
//   81 static anchor_t mMlmeNwkInputQueue;
mMlmeNwkInputQueue:
        DS8 8

        SECTION `.bss`:DATA:NOROOT(2)
//   82 static anchor_t mMcpsNwkInputQueue;
mMcpsNwkInputQueue:
        DS8 8
//   83 
//   84 /************************************************************************************
//   85 *************************************************************************************
//   86 * Public memory declarations
//   87 *************************************************************************************
//   88 ************************************************************************************/
//   89 
//   90 /* The current state of the applications state machine */

        SECTION `.bss`:DATA:NOROOT(0)
//   91 uint8_t gState;
gState:
        DS8 1
//   92 
//   93 /* This data set contains application variables to be preserved across resets */

        SECTION `.rodata`:CONST:NOROOT(2)
//   94 NvDataItemDescription_t const gaNvAppDataSet[] = {
gaNvAppDataSet:
        DATA
        DC32 0H
        DC16 0
        DC8 0, 0
//   95   {NULL, 0}       /* Required end-of-table marker. */
//   96 };
//   97 
//   98 /************************************************************************************
//   99 *************************************************************************************
//  100 * Public functions
//  101 *************************************************************************************
//  102 ************************************************************************************/
//  103 
//  104 void DeepSleepWakeupStackProc(void);
//  105 
//  106 /*****************************************************************************
//  107 * Initialization function for the App Task. This is called during
//  108 * initialization and should contain any application specific initialization
//  109 * (ie. hardware initialization/setup, table initialization, power up
//  110 * notificaiton.
//  111 *
//  112 * Interface assumptions: None
//  113 *
//  114 * Return value: None
//  115 *
//  116 *****************************************************************************/
//  117 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  118 void MApp_init(void)
//  119 { 
MApp_init:
        PUSH     {R7,LR}
//  120   
//  121   /* The initial application state */
//  122   gState = stateInit;
        LDR      R0,??DataTable0
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  123   /* Reset number of pending packets */
//  124   mcPendingPackets = 0;    
        LDR      R0,??DataTable0_1
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  125 
//  126   /* Initialize the MAC 802.15.4 extended address */
//  127   Init_MacExtendedAddress();
        BL       Init_MacExtendedAddress
//  128   /* register keyboard callback function */
//  129   KBD_Init(App_HandleKeys);
        LDR      R0,??DataTable1
        BL       KBD_Init
//  130   /* initialize LCD Module */
//  131   LCD_Init();
        BL       LCD_Init
//  132   /* initialize LED Module */
//  133   LED_Init();
        BL       LED_Init
//  134   /* Initialize the UART so that we can print out status messages */
//  135   UartX_SetBaud(gUartDefaultBaud_c);
        MOVS     R0,#+150
        LSLS     R0,R0,#+7        ;; #+19200
        BL       Uart1_SetBaud
//  136   UartX_SetRxCallBack(UartRxCallBack);
        LDR      R0,??DataTable1_1
        BL       Uart1_SetRxCallBack
//  137   /* Prepare input queues.*/
//  138   MSG_InitQueue(&mMlmeNwkInputQueue); 
        LDR      R0,??DataTable1_2
        BL       List_ClearAnchor
//  139   MSG_InitQueue(&mMcpsNwkInputQueue);
        LDR      R0,??DataTable1_3
        BL       List_ClearAnchor
//  140   /* Enable MCU interrupts */
//  141   IntEnableAll();
        MOVS     R0,#+0
        BL       IntRestoreAll
//  142   /*signal app ready*/  
//  143   Led1Flashing();
        MOVS     R0,#+1
        BL       LED_StartFlash
//  144   Led2Flashing();
        MOVS     R0,#+2
        BL       LED_StartFlash
//  145   Led3Flashing();
        MOVS     R0,#+4
        BL       LED_StartFlash
//  146   Led4Flashing();
        MOVS     R0,#+8
        BL       LED_StartFlash
//  147     
//  148   UartUtil_Print("\n\rPress any switch on board to start running the application.\n\r", gAllowToBlock_d);  
        MOVS     R1,#+1
        LDR      R0,??DataTable2
        BL       UartUtil_Print
//  149   LCD_ClearDisplay();
        BL       LCD_ClearDisplay
//  150   LCD_WriteString(1,"Press any key");
        LDR      R1,??DataTable2_1
        MOVS     R0,#+1
        BL       LCD_WriteString
//  151   LCD_WriteString(2,"to start.");
        LDR      R1,??DataTable3
        MOVS     R0,#+2
        BL       LCD_WriteString
//  152 }
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
//  153 
//  154 /*****************************************************************************
//  155 *Mac Application Task event processor.  This function is called to
//  156 * process all events for the task. Events include timers, messages and any
//  157 * other user defined events
//  158 *
//  159 * Interface assumptions: None
//  160 *
//  161 * Return value: None
//  162 *****************************************************************************/
//  163 /* The Application Task */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  164 void AppTask(event_t events)
//  165 {
AppTask:
        PUSH     {R4-R6,LR}
        MOVS     R6,R0
//  166   /* Pointer for storing the messages from MLME */
//  167   void *pMsgIn;
//  168   /* Stores the error/success code returned by some functions. */
//  169   uint8_t ret;  
//  170   pMsgIn = NULL;
        MOVS     R0,#+0
        MOVS     R4,R0
//  171   
//  172   /* Dequeue the MLME message */
//  173   if (events & gAppEvtMessageFromMLME_c)
        LSLS     R0,R6,#+29
        BPL      ??AppTask_0
//  174   {
//  175     /* Get the message from MLME */
//  176     pMsgIn = MSG_DeQueue(&mMlmeNwkInputQueue);
        LDR      R0,??DataTable1_2
        BL       List_RemoveHead
        MOVS     R4,R0
//  177     
//  178     /* Any time a beacon might arrive. Always handle the beacon frame first */
//  179     if (pMsgIn)
        CMP      R4,#+0
        BEQ      ??AppTask_0
//  180     {               
//  181       ret = App_WaitMsg(pMsgIn, gNwkBeaconNotifyInd_c);
        MOVS     R1,#+4
        MOVS     R0,R4
        BL       App_WaitMsg
        MOVS     R5,R0
//  182       if(ret == errorNoError)
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        CMP      R5,#+0
        BNE      ??AppTask_0
//  183       {
//  184         /* ALWAYS free the beacon frame contained in the beacon notify indication.*/
//  185         /* ALSO the application can use the beacon payload.*/
//  186         MSG_Free(((nwkMessage_t *)pMsgIn)->msgData.beaconNotifyInd.pBufferRoot);
        MOVS     R0,R4
        ADDS     R0,R0,#+16
        BL       __aeabi_uread4
        BL       MM_Free
        MOVS     R1,R4
        ADDS     R1,R1,#+16
        MOVS     R0,#+0
        BL       __aeabi_uwrite4
//  187         UartUtil_Print("Received an MLME-Beacon Notify Indication\n\r", gAllowToBlock_d);
        MOVS     R1,#+1
        LDR      R0,??DataTable3_1
        BL       UartUtil_Print
//  188       }
//  189     }
//  190   }
//  191   /* The application state machine */
//  192   switch(gState)
??AppTask_0:
        LDR      R0,??DataTable3_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??AppTask_1
        CMP      R0,#+2
        BEQ      ??AppTask_2
        BCC      ??AppTask_3
        CMP      R0,#+4
        BEQ      ??AppTask_4
        BCC      ??AppTask_5
        CMP      R0,#+5
        BNE      .+4
        B        ??AppTask_6
        B        ??AppTask_7
//  193   {
//  194   case stateInit:    
//  195     /* Print a welcome message to the UART */
//  196     UartUtil_Print("MyWirelessApp Demo Non Beacon Coordinator application is initialized and ready.\n\r\n\r", gAllowToBlock_d);            
??AppTask_1:
        MOVS     R1,#+1
        LDR      R0,??DataTable3_3
        BL       UartUtil_Print
//  197     /* Goto Energy Detection state. */
//  198     gState = stateScanEdStart;
        LDR      R0,??DataTable3_2
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  199     TS_SendEvent(gAppTaskID_c, gAppEvtDummyEvent_c);
        MOVS     R1,#+1
        LDR      R0,??DataTable4
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
        B        ??AppTask_7
//  200     break;
//  201     
//  202   case stateScanEdStart:
//  203     /* Start the Energy Detection scan, and goto wait for confirm state. */
//  204     UartUtil_Print("Initiating the Energy Detection Scan\n\r", gAllowToBlock_d);
??AppTask_3:
        MOVS     R1,#+1
        LDR      R0,??DataTable3_4
        BL       UartUtil_Print
//  205     /*Print the message on the LCD also*/
//  206     LCD_ClearDisplay();
        BL       LCD_ClearDisplay
//  207     LCD_WriteString(1,"Starting Energy");
        LDR      R1,??DataTable3_5
        MOVS     R0,#+1
        BL       LCD_WriteString
//  208     LCD_WriteString(2,"Detection Scan");  
        LDR      R1,??DataTable3_6
        MOVS     R0,#+2
        BL       LCD_WriteString
//  209     ret = App_StartScan(gScanModeED_c);
        MOVS     R0,#+0
        BL       App_StartScan
        MOVS     R5,R0
//  210     if(ret == errorNoError)
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        CMP      R5,#+0
        BEQ      .+4
        B        ??AppTask_7
//  211     {
//  212       gState = stateScanEdWaitConfirm;
        LDR      R0,??DataTable3_2
        MOVS     R1,#+2
        STRB     R1,[R0, #+0]
        B        ??AppTask_7
//  213     }
//  214     break;
//  215     
//  216   case stateScanEdWaitConfirm:
//  217     /* Stay in this state until the MLME Scan confirm message arrives,
//  218        and has been processed. Then goto Start Coordinator state. */
//  219     if (events & gAppEvtMessageFromMLME_c)
??AppTask_2:
        LSLS     R0,R6,#+29
        BPL      ??AppTask_7
//  220     {
//  221       if (pMsgIn)
        CMP      R4,#+0
        BEQ      ??AppTask_7
//  222       {
//  223         ret = App_WaitMsg(pMsgIn, gNwkScanCnf_c);
        MOVS     R1,#+11
        MOVS     R0,R4
        BL       App_WaitMsg
        MOVS     R5,R0
//  224         if(ret == errorNoError)
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        CMP      R5,#+0
        BNE      ??AppTask_7
//  225         {
//  226           /* Process the ED scan confirm. The logical
//  227              channel is selected by this function. */
//  228           App_HandleScanEdConfirm(pMsgIn);
        MOVS     R0,R4
        BL       App_HandleScanEdConfirm
//  229           /* Go to the Start Coordinator state */
//  230           gState = stateStartCoordinator;
        LDR      R0,??DataTable3_2
        MOVS     R1,#+3
        STRB     R1,[R0, #+0]
//  231           TS_SendEvent(gAppTaskID_c, gAppEvtStartCoordinator_c);
        MOVS     R1,#+16
        LDR      R0,??DataTable4
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
        B        ??AppTask_7
//  232         }
//  233       }      
//  234     }        
//  235     break;
//  236     
//  237 
//  238   case stateStartCoordinator:
//  239     if (events & gAppEvtStartCoordinator_c)
??AppTask_5:
        LSLS     R0,R6,#+27
        BPL      ??AppTask_7
//  240     {
//  241       /* Start up as a PAN Coordinator on the selected channel. */
//  242       UartUtil_Print("\n\rStarting as PAN coordinator on channel 0x", gAllowToBlock_d);
        MOVS     R1,#+1
        LDR      R0,??DataTable4_1
        BL       UartUtil_Print
//  243       UartUtil_PrintHex(&mLogicalChannel, 1, FALSE);
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR      R0,??DataTable4_2
        BL       UartUtil_PrintHex
//  244       UartUtil_Print("\n\r", gAllowToBlock_d);
        MOVS     R1,#+1
        ADR      R0,??DataTable4_3  ;; 0x0A, 0x0D, 0x00, 0x00
        BL       UartUtil_Print
//  245       /*print a message on the LCD also*/
//  246       LCD_ClearDisplay();
        BL       LCD_ClearDisplay
//  247       LCD_WriteString(1,"Starting");
        LDR      R1,??DataTable4_4
        MOVS     R0,#+1
        BL       LCD_WriteString
//  248       LCD_WriteString(2,"PAN coordinator");    
        LDR      R1,??DataTable4_5
        MOVS     R0,#+2
        BL       LCD_WriteString
//  249     
//  250       ret = App_StartCoordinator();
        BL       App_StartCoordinator
        MOVS     R5,R0
//  251       if(ret == errorNoError)
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        CMP      R5,#+0
        BNE      ??AppTask_7
//  252       {
//  253         /* If the Start request was sent successfully to
//  254            the MLME, then goto Wait for confirm state. */
//  255         gState = stateStartCoordinatorWaitConfirm;
        LDR      R0,??DataTable3_2
        MOVS     R1,#+4
        STRB     R1,[R0, #+0]
        B        ??AppTask_7
//  256       }
//  257     }
//  258     break; 
//  259 
//  260   case stateStartCoordinatorWaitConfirm:
//  261     /* Stay in this state until the Start confirm message
//  262            arrives, and then goto the Listen state. */
//  263     if (events & gAppEvtMessageFromMLME_c)
??AppTask_4:
        LSLS     R0,R6,#+29
        BPL      ??AppTask_7
//  264     {
//  265       if (pMsgIn)
        CMP      R4,#+0
        BEQ      ??AppTask_7
//  266       {        
//  267         ret = App_WaitMsg(pMsgIn, gNwkStartCnf_c);
        MOVS     R1,#+14
        MOVS     R0,R4
        BL       App_WaitMsg
        MOVS     R5,R0
//  268         if(ret == errorNoError)
        LSLS     R5,R5,#+24       ;; ZeroExtS R5,R5,#+24,#+24
        LSRS     R5,R5,#+24
        CMP      R5,#+0
        BNE      ??AppTask_7
//  269         {
//  270           UartUtil_Print("Started the coordinator with PAN ID 0x", gAllowToBlock_d);
        MOVS     R1,#+1
        LDR      R0,??DataTable4_6
        BL       UartUtil_Print
//  271           UartUtil_PrintHex((uint8_t *)maPanId, 2, 0);
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR      R0,??DataTable5
        BL       UartUtil_PrintHex
//  272           UartUtil_Print(", and short address 0x", gAllowToBlock_d);
        MOVS     R1,#+1
        LDR      R0,??DataTable4_7
        BL       UartUtil_Print
//  273           UartUtil_PrintHex((uint8_t *)maShortAddress, 2, 0);
        MOVS     R2,#+0
        MOVS     R1,#+2
        LDR      R0,??DataTable5_1
        BL       UartUtil_PrintHex
//  274           UartUtil_Print(".\n\r\n\rReady to send and receive data over the UART.\n\r\n\r", gAllowToBlock_d);
        MOVS     R1,#+1
        LDR      R0,??DataTable5_2
        BL       UartUtil_Print
//  275           /*print a message on the LCD also*/
//  276           LCD_ClearDisplay();
        BL       LCD_ClearDisplay
//  277           LCD_WriteString(1,"Ready to send");
        LDR      R1,??DataTable5_3
        MOVS     R0,#+1
        BL       LCD_WriteString
//  278           LCD_WriteString(2,"and receive data");    
        LDR      R1,??DataTable5_4
        MOVS     R0,#+2
        BL       LCD_WriteString
//  279           gState = stateListen;
        LDR      R0,??DataTable3_2
        MOVS     R1,#+5
        STRB     R1,[R0, #+0]
//  280           TS_SendEvent(gAppTaskID_c, gAppEvtDummyEvent_c);
        MOVS     R1,#+1
        LDR      R0,??DataTable4
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
        B        ??AppTask_7
//  281         }
//  282       }
//  283     }
//  284     break; 
//  285     
//  286   case stateListen:
//  287     /* Stay in this state forever. 
//  288        Transmit the data received on UART */
//  289     if (events & gAppEvtMessageFromMLME_c)
??AppTask_6:
        LSLS     R0,R6,#+29
        BPL      ??AppTask_8
//  290     {
//  291       /* Get the message from MLME */
//  292       if (pMsgIn)
        CMP      R4,#+0
        BEQ      ??AppTask_8
//  293       {      
//  294         /* Process it */
//  295         ret = App_HandleMlmeInput(pMsgIn);
        MOVS     R0,R4
        BL       App_HandleMlmeInput
        MOVS     R5,R0
//  296         /* Messages from the MLME must always be freed. */
//  297       }
//  298     }
//  299 
//  300     if (events & gAppEvtRxFromUart_c)
??AppTask_8:
        LSLS     R0,R6,#+30
        BPL      ??AppTask_7
//  301     {      
//  302       /* get byte from UART */
//  303       App_TransmitUartData();
        BL       App_TransmitUartData
//  304     }  
//  305     break;
//  306   }
//  307   
//  308   if (pMsgIn)
??AppTask_7:
        CMP      R4,#+0
        BEQ      ??AppTask_9
//  309   {
//  310     /* Messages must always be freed. */ 
//  311     MSG_Free(pMsgIn);
        MOVS     R0,R4
        BL       MM_Free
        MOVS     R0,#+0
        MOVS     R4,R0
//  312   }
//  313   
//  314   if (events & gAppEvtMessageFromMCPS_c)
??AppTask_9:
        LSLS     R0,R6,#+28
        BPL      ??AppTask_10
//  315   {      
//  316      /* Get the message from MCPS */
//  317     pMsgIn = MSG_DeQueue(&mMcpsNwkInputQueue);
        LDR      R0,??DataTable1_3
        BL       List_RemoveHead
        MOVS     R4,R0
//  318     if (pMsgIn)
        CMP      R4,#+0
        BEQ      ??AppTask_10
//  319     {
//  320       /* Process it */
//  321       App_HandleMcpsInput(pMsgIn);
        MOVS     R0,R4
        BL       App_HandleMcpsInput
//  322       /* Messages from the MCPS must always be freed. */
//  323       MSG_Free(pMsgIn);
        MOVS     R0,R4
        BL       MM_Free
        MOVS     R0,#+0
        MOVS     R4,R0
//  324     }
//  325   }  
//  326   
//  327   
//  328   /* Check for pending messages in the Queue */ 
//  329   if(MSG_Pending(&mMcpsNwkInputQueue))
??AppTask_10:
        LDR      R0,??DataTable1_3
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??AppTask_11
//  330     TS_SendEvent(gAppTaskID_c, gAppEvtMessageFromMCPS_c);
        MOVS     R1,#+8
        LDR      R0,??DataTable4
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
//  331   if(MSG_Pending(&mMlmeNwkInputQueue))
??AppTask_11:
        LDR      R0,??DataTable1_2
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??AppTask_12
//  332     TS_SendEvent(gAppTaskID_c, gAppEvtMessageFromMLME_c);  
        MOVS     R1,#+4
        LDR      R0,??DataTable4
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
//  333 }
??AppTask_12:
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable1:
        DC32     App_HandleKeys

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable1_1:
        DC32     UartRxCallBack

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable1_2:
        DC32     mMlmeNwkInputQueue

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable1_3:
        DC32     mMcpsNwkInputQueue
//  334 
//  335 
//  336 
//  337 /************************************************************************************
//  338 *************************************************************************************
//  339 * Private functions
//  340 *************************************************************************************
//  341 ************************************************************************************/
//  342 
//  343 /*****************************************************************************
//  344 * UartRxCallBack
//  345 *
//  346 * This callback is triggered when a new byte is received over the UART
//  347 *
//  348 *****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  349 static void UartRxCallBack(void) 
//  350 {
UartRxCallBack:
        PUSH     {R7,LR}
//  351   uint8_t pressedKey;
//  352 	if(stateListen == gState){
        LDR      R0,??DataTable3_2
        LDRB     R0,[R0, #+0]
        CMP      R0,#+5
        BNE      ??UartRxCallBack_0
//  353     TS_SendEvent(gAppTaskID_c, gAppEvtRxFromUart_c);
        MOVS     R1,#+2
        LDR      R0,??DataTable4
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
        B        ??UartRxCallBack_1
//  354   }else{
//  355 	  (void)UartX_GetByteFromRxBuffer(&pressedKey);
??UartRxCallBack_0:
        MOV      R0,SP
        BL       Uart1_GetByteFromRxBuffer
//  356   }
//  357 }
??UartRxCallBack_1:
        POP      {R0,R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2:
        DC32     `?<Constant "\\n\\rPress any switch on...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable2_1:
        DC32     `?<Constant "Press any key">`
//  358 
//  359 /******************************************************************************
//  360 * The App_StartScan(scanType) function will start the scan process of the
//  361 * specified type in the MAC. This is accomplished by allocating a MAC message,
//  362 * which is then assigned the desired scan parameters and sent to the MLME
//  363 * service access point.
//  364 * The function may return either of the following values:
//  365 *   errorNoError:          The Scan message was sent successfully.
//  366 *   errorInvalidParameter: The MLME service access point rejected the
//  367 *                          message due to an invalid parameter.
//  368 *   errorAllocFailed:      A message buffer could not be allocated.
//  369 *
//  370 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  371 static uint8_t App_StartScan(uint8_t scanType)
//  372 {
App_StartScan:
        PUSH     {R4-R6,LR}
        MOVS     R6,R0
//  373   mlmeMessage_t *pMsg;
//  374   mlmeScanReq_t *pScanReq;
//  375 
//  376   UartUtil_Print("Sending the MLME-Scan Request message to the MAC...", gAllowToBlock_d);
        MOVS     R1,#+1
        LDR      R0,??DataTable7
        BL       UartUtil_Print
//  377 
//  378   /* Allocate a message for the MLME (We should check for NULL). */
//  379   pMsg = MSG_AllocType(mlmeMessage_t);
        MOVS     R0,#+15
        BL       MM_Alloc
        MOVS     R4,R0
//  380   if(pMsg != NULL)
        CMP      R4,#+0
        BEQ      ??App_StartScan_0
//  381   {
//  382     /* This is a MLME-SCAN.req command */
//  383     pMsg->msgType = gMlmeScanReq_c;
        MOVS     R0,#+8
        STRB     R0,[R4, #+0]
//  384     /* Create the Scan request message data. */
//  385     pScanReq = &pMsg->msgData.scanReq;
        MOVS     R0,R4
        ADDS     R0,R0,#+1
        MOVS     R5,R0
//  386     /* gScanModeED_c, gScanModeActive_c, gScanModePassive_c, or gScanModeOrphan_c */
//  387     pScanReq->scanType = scanType;
        STRB     R6,[R5, #+0]
//  388     /* ChannelsToScan & 0xFF - LSB, always 0x00 */
//  389     pScanReq->scanChannels[0] = (uint8_t)((mDefaultValueOfChannel_c)     & 0xFF);
        MOVS     R0,#+0
        STRB     R0,[R5, #+1]
//  390     /* ChannelsToScan>>8 & 0xFF  */
//  391     pScanReq->scanChannels[1] = (uint8_t)((mDefaultValueOfChannel_c>>8)  & 0xFF);
        MOVS     R0,#+128
        STRB     R0,[R5, #+2]
//  392     /* ChannelsToScan>>16 & 0xFF  */
//  393     pScanReq->scanChannels[2] = (uint8_t)((mDefaultValueOfChannel_c>>16) & 0xFF);
        MOVS     R0,#+0
        STRB     R0,[R5, #+3]
//  394     /* ChannelsToScan>>24 & 0xFF - MSB */
//  395     pScanReq->scanChannels[3] = (uint8_t)((mDefaultValueOfChannel_c>>24) & 0xFF);
        MOVS     R0,#+0
        STRB     R0,[R5, #+4]
//  396     /* Duration per channel 0-14 (dc). T[sec] = (16*960*((2^dc)+1))/1000000.
//  397        A scan duration of 3 on 16 channels approximately takes 2 secs. */
//  398     pScanReq->scanDuration = 3;
        MOVS     R0,#+3
        STRB     R0,[R5, #+5]
//  399 #ifdef gMAC2006_d
//  400 	/* Don't use security */
//  401 	pScanReq->securityLevel = 0;
//  402 #endif //gMAC2006_d	
//  403     
//  404     /* Send the Scan request to the MLME. */
//  405     if(MSG_Send(NWK_MLME, pMsg) == gSuccess_c)
        MOVS     R0,R4
        BL       NWK_MLME_SapHandler
        CMP      R0,#+0
        BNE      ??App_StartScan_1
//  406     {
//  407       UartUtil_Print("Done\n\r", gAllowToBlock_d);
        MOVS     R1,#+1
        LDR      R0,??DataTable8
        BL       UartUtil_Print
//  408       return errorNoError;
        MOVS     R0,#+0
        B        ??App_StartScan_2
//  409     }
//  410     else
//  411     {
//  412       UartUtil_Print("Invalid parameter!\n\r", gAllowToBlock_d);
??App_StartScan_1:
        MOVS     R1,#+1
        LDR      R0,??DataTable8_1
        BL       UartUtil_Print
//  413       return errorInvalidParameter;
        MOVS     R0,#+5
        B        ??App_StartScan_2
//  414     }
//  415   }
//  416   else
//  417   {
//  418     /* Allocation of a message buffer failed. */
//  419     UartUtil_Print("Message allocation failed!\n\r", gAllowToBlock_d);
??App_StartScan_0:
        MOVS     R1,#+1
        LDR      R0,??DataTable8_2
        BL       UartUtil_Print
//  420     return errorAllocFailed;
        MOVS     R0,#+4
??App_StartScan_2:
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return
//  421   }
//  422 }

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3:
        DC32     `?<Constant "to start.">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3_1:
        DC32     `?<Constant "Received an MLME-Beac...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3_2:
        DC32     gState

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3_3:
        DC32     `?<Constant "MyWirelessApp Demo No...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3_4:
        DC32     `?<Constant "Initiating the Energy...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3_5:
        DC32     `?<Constant "Starting Energy">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable3_6:
        DC32     `?<Constant "Detection Scan">`
//  423 
//  424 
//  425 /******************************************************************************
//  426 * The App_HandleScanEdConfirm(nwkMessage_t *pMsg) function will handle the
//  427 * ED scan confirm message received from the MLME when the ED scan has completed.
//  428 * The message contains the ED scan result list. This function will search the
//  429 * list in order to select the logical channel with the least energy. The
//  430 * selected channel is stored in the global variable called 'mLogicalChannel'.
//  431 *
//  432 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  433 static void App_HandleScanEdConfirm(nwkMessage_t *pMsg)
//  434 {  
App_HandleScanEdConfirm:
        PUSH     {R0,R4-R7,LR}
//  435   uint8_t n, minEnergy;
//  436   uint8_t *pEdList;
//  437   uint8_t ChannelMask;
//  438 
//  439   UartUtil_Print("Received the MLME-Scan Confirm message from the MAC\n\r", gAllowToBlock_d);
        MOVS     R1,#+1
        LDR      R0,??DataTable8_3
        BL       UartUtil_Print
//  440     
//  441   /* Get a pointer to the energy detect results */
//  442   pEdList = pMsg->msgData.scanCnf.resList.pEnergyDetectList;
        LDR      R0,[SP, #+0]
        ADDS     R0,R0,#+8
        BL       __aeabi_uread4
        MOVS     R5,R0
//  443   
//  444   /* Set the minimum energy to a large value */
//  445   minEnergy = 0xFF;
        MOVS     R0,#+255
        MOVS     R6,R0
//  446 
//  447   /* Select default channel */
//  448   mLogicalChannel = 11;
        LDR      R0,??DataTable4_2
        MOVS     R1,#+11
        STRB     R1,[R0, #+0]
//  449  
//  450   /* Search for the channel with least energy */
//  451   for(n=0; n<16; n++)
        MOVS     R0,#+0
        MOVS     R4,R0
??App_HandleScanEdConfirm_0:
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        CMP      R4,#+16
        BCS      ??App_HandleScanEdConfirm_1
//  452   {
//  453     ChannelMask = n + 11;
        MOVS     R0,R4
        ADDS     R0,R0,#+11
        MOVS     R7,R0
//  454 	if((pEdList[n] < minEnergy)&&((uint8_t)((mDefaultValueOfChannel_c>>ChannelMask) & 0x1)))
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        LDRB     R0,[R5, R4]
        LSLS     R6,R6,#+24       ;; ZeroExtS R6,R6,#+24,#+24
        LSRS     R6,R6,#+24
        CMP      R0,R6
        BCS      ??App_HandleScanEdConfirm_2
        MOVS     R0,#+128
        LSLS     R0,R0,#+8        ;; #+32768
        ASRS     R0,R0,R7
        LSLS     R0,R0,#+31
        BPL      ??App_HandleScanEdConfirm_2
//  455     {
//  456       minEnergy = pEdList[n];
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        LDRB     R0,[R5, R4]
        MOVS     R6,R0
//  457       /* Channel numbering is 11 to 26 both inclusive */
//  458       mLogicalChannel = n + 11; 
        MOVS     R0,R4
        ADDS     R0,R0,#+11
        LDR      R1,??DataTable4_2
        STRB     R0,[R1, #+0]
//  459     }
//  460   }
??App_HandleScanEdConfirm_2:
        ADDS     R4,R4,#+1
        B        ??App_HandleScanEdConfirm_0
//  461   
//  462   /* Print out the result of the ED scan */
//  463   UartUtil_Print("ED scan returned the following results:\n\r  [", gAllowToBlock_d);
??App_HandleScanEdConfirm_1:
        MOVS     R1,#+1
        LDR      R0,??DataTable8_4
        BL       UartUtil_Print
//  464   UartUtil_PrintHex(pEdList, 16, gPrtHexBigEndian_c | gPrtHexSpaces_c);
        MOVS     R2,#+9
        MOVS     R1,#+16
        MOVS     R0,R5
        BL       UartUtil_PrintHex
//  465   UartUtil_Print("]\n\r\n\r", gAllowToBlock_d);
        MOVS     R1,#+1
        LDR      R0,??DataTable8_5
        BL       UartUtil_Print
//  466   
//  467   /* Print out the selected logical channel */
//  468   UartUtil_Print("Based on the ED scan the logical channel 0x", gAllowToBlock_d);
        MOVS     R1,#+1
        LDR      R0,??DataTable8_6
        BL       UartUtil_Print
//  469   UartUtil_PrintHex(&mLogicalChannel, 1, 0);
        MOVS     R2,#+0
        MOVS     R1,#+1
        LDR      R0,??DataTable4_2
        BL       UartUtil_PrintHex
//  470   UartUtil_Print(" was selected\n\r", gAllowToBlock_d);
        MOVS     R1,#+1
        LDR      R0,??DataTable9
        BL       UartUtil_Print
//  471   
//  472   /* The list of detected energies must be freed. */
//  473   MSG_Free(pEdList);
        MOVS     R0,R5
        BL       MM_Free
        MOVS     R0,#+0
        MOVS     R5,R0
//  474 }
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4:
        DC32     gAppTaskID_c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_1:
        DC32     `?<Constant "\\n\\rStarting as PAN coo...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_2:
        DC32     mLogicalChannel

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_3:
        DC8      0x0A, 0x0D, 0x00, 0x00

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_4:
        DC32     `?<Constant "Starting">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_5:
        DC32     `?<Constant "PAN coordinator">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_6:
        DC32     `?<Constant "Started the coordinat...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable4_7:
        DC32     `?<Constant ", and short address 0x">`
//  475 
//  476 /******************************************************************************
//  477 * The App_StartScan(scanType) function will start the scan process of the
//  478 * specified type in the MAC. This is accomplished by allocating a MAC message,
//  479 * which is then assigned the desired scan parameters and sent to the MLME
//  480 * service access point. The MAC PIB attributes "macShortAddress", and 
//  481 * "macAssociatePermit" are modified.
//  482 *
//  483 * The function may return either of the following values:
//  484 *   errorNoError:          The Scan message was sent successfully.
//  485 *   errorInvalidParameter: The MLME service access point rejected the
//  486 *                          message due to an invalid parameter.
//  487 *   errorAllocFailed:      A message buffer could not be allocated.
//  488 *
//  489 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  490 static uint8_t App_StartCoordinator(void)
//  491 {
App_StartCoordinator:
        PUSH     {R3-R5,LR}
//  492   /* Message for the MLME will be allocated and attached to this pointer */
//  493   mlmeMessage_t *pMsg;
//  494 
//  495   UartUtil_Print("Sending the MLME-Start Request message to the MAC...", gAllowToBlock_d);
        MOVS     R1,#+1
        LDR      R0,??DataTable8_7
        BL       UartUtil_Print
//  496   
//  497   /* Allocate a message for the MLME (We should check for NULL). */
//  498   pMsg = MSG_AllocType(mlmeMessage_t);
        MOVS     R0,#+15
        BL       MM_Alloc
        MOVS     R4,R0
//  499   if(pMsg != NULL)
        CMP      R4,#+0
        BEQ      ??App_StartCoordinator_0
//  500   {
//  501     /* Pointer which is used for easy access inside the allocated message */
//  502     mlmeStartReq_t *pStartReq;    
//  503     /* Boolean value that will be written to the MAC PIB */
//  504     uint8_t boolFlag;
//  505     
//  506     /* Set-up MAC PIB attributes. Please note that Set, Get,
//  507        and Reset messages are not freed by the MLME. */
//  508     
//  509     /* We must always set the short address to something
//  510        else than 0xFFFF before starting a PAN. */
//  511     pMsg->msgType = gMlmeSetReq_c;
        MOVS     R0,#+9
        STRB     R0,[R4, #+0]
//  512     pMsg->msgData.setReq.pibAttribute = gMPibShortAddress_c;
        MOVS     R0,#+83
        STRB     R0,[R4, #+1]
//  513     pMsg->msgData.setReq.pibAttributeValue = (uint8_t *)maShortAddress;
        MOVS     R1,R4
        ADDS     R1,R1,#+2
        LDR      R0,??DataTable5_1
        BL       __aeabi_uwrite4
//  514     (void) MSG_Send(NWK_MLME, pMsg);
        MOVS     R0,R4
        BL       NWK_MLME_SapHandler
//  515     
//  516     /* We must set the Association Permit flag to TRUE 
//  517        in order to allow devices to associate to us. */
//  518     pMsg->msgType = gMlmeSetReq_c;
        MOVS     R0,#+9
        STRB     R0,[R4, #+0]
//  519     pMsg->msgData.setReq.pibAttribute = gMPibAssociationPermit_c;
        MOVS     R0,#+65
        STRB     R0,[R4, #+1]
//  520     boolFlag = TRUE;
        MOV      R0,SP
        MOVS     R1,#+1
        STRB     R1,[R0, #+0]
//  521     pMsg->msgData.setReq.pibAttributeValue = &boolFlag;
        MOVS     R1,R4
        ADDS     R1,R1,#+2
        MOV      R0,SP
        BL       __aeabi_uwrite4
//  522     (void) MSG_Send(NWK_MLME, pMsg);
        MOVS     R0,R4
        BL       NWK_MLME_SapHandler
//  523     
//  524     /* This is a MLME-START.req command */
//  525     pMsg->msgType = gMlmeStartReq_c;
        MOVS     R0,#+10
        STRB     R0,[R4, #+0]
//  526     
//  527     /* Create the Start request message data. */
//  528     pStartReq = &pMsg->msgData.startReq;
        MOVS     R0,R4
        ADDS     R0,R0,#+1
        MOVS     R5,R0
//  529     /* PAN ID - LSB, MSB. The example shows a PAN ID of 0xBEEF. */
//  530     FLib_MemCpy(pStartReq->panId, (void *)maPanId, 2);
        MOVS     R2,#+2
        LDR      R1,??DataTable5
        MOVS     R0,R5
        BL       FLib_MemCpy
//  531     /* Logical Channel - the default of 11 will be overridden */
//  532     pStartReq->logicalChannel = mLogicalChannel;
        LDR      R0,??DataTable9_1
        LDRB     R0,[R0, #+0]
        STRB     R0,[R5, #+2]
//  533     /* Beacon Order - 0xF = turn off beacons */
//  534     pStartReq->beaconOrder = 0x0F;  
        MOVS     R0,#+15
        STRB     R0,[R5, #+3]
//  535     /* Superframe Order - 0xF = turn off beacons */
//  536     pStartReq->superFrameOrder = 0x0F;
        MOVS     R0,#+15
        STRB     R0,[R5, #+4]
//  537     /* Be a PAN coordinator */
//  538     pStartReq->panCoordinator = TRUE;
        MOVS     R0,#+1
        STRB     R0,[R5, #+5]
//  539     /* Dont use battery life extension */
//  540     pStartReq->batteryLifeExt = FALSE;
        MOVS     R0,#+0
        STRB     R0,[R5, #+6]
//  541     /* This is not a Realignment command */
//  542     pStartReq->coordRealignment = FALSE;
        MOVS     R0,#+0
        STRB     R0,[R5, #+7]
//  543 #ifdef gMAC2006_d
//  544 	/* Don't use security */
//  545 	pStartReq->coordRealignSecurityLevel = 0;
//  546 	pStartReq->beaconSecurityLevel = 0;
//  547 #else	
//  548     /* Dont use security */
//  549     pStartReq->securityEnable = FALSE;
        MOVS     R0,#+0
        STRB     R0,[R5, #+8]
//  550 #endif //gMAC2006_d	
//  551       
//  552     /* Send the Start request to the MLME. */
//  553     if(MSG_Send(NWK_MLME, pMsg) == gSuccess_c)
        MOVS     R0,R4
        BL       NWK_MLME_SapHandler
        CMP      R0,#+0
        BNE      ??App_StartCoordinator_1
//  554     {
//  555       UartUtil_Print("Done\n\r", gAllowToBlock_d);
        MOVS     R1,#+1
        LDR      R0,??DataTable8
        BL       UartUtil_Print
//  556       return errorNoError;
        MOVS     R0,#+0
        B        ??App_StartCoordinator_2
//  557     }
//  558     else
//  559     {
//  560       /* One or more parameters in the Start Request message were invalid. */
//  561       UartUtil_Print("Invalid parameter!\n\r", gAllowToBlock_d);
??App_StartCoordinator_1:
        MOVS     R1,#+1
        LDR      R0,??DataTable8_1
        BL       UartUtil_Print
//  562       return errorInvalidParameter;
        MOVS     R0,#+5
        B        ??App_StartCoordinator_2
//  563     }
//  564   }
//  565   else
//  566   {
//  567     /* Allocation of a message buffer failed. */
//  568     UartUtil_Print("Message allocation failed!\n\r", gAllowToBlock_d);
??App_StartCoordinator_0:
        MOVS     R1,#+1
        LDR      R0,??DataTable8_2
        BL       UartUtil_Print
//  569     return errorAllocFailed;
        MOVS     R0,#+4
??App_StartCoordinator_2:
        POP      {R1,R4,R5}
        POP      {R3}
        BX       R3               ;; return
//  570   }
//  571 }

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable5:
        DC32     maPanId

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable5_1:
        DC32     maShortAddress

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable5_2:
        DC32     `?<Constant ".\\n\\r\\n\\rReady to send an...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable5_3:
        DC32     `?<Constant "Ready to send">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable5_4:
        DC32     `?<Constant "and receive data">`
//  572 
//  573 /******************************************************************************
//  574 * The App_SendAssociateResponse(nwkMessage_t *pMsgIn) will create the response
//  575 * message to an Associate Indication (device sends an Associate Request to its
//  576 * MAC. The request is transmitted to the coordinator where it is converted into
//  577 * an Associate Indication). This function will extract the devices long address,
//  578 * and various other flags from the incoming indication message for building the
//  579 * response message.
//  580 *
//  581 * The function may return either of the following values:
//  582 *   errorNoError:          The Associate Response message was sent successfully.
//  583 *   errorInvalidParameter: The MLME service access point rejected the
//  584 *                          message due to an invalid parameter.
//  585 *   errorAllocFailed:      A message buffer could not be allocated.
//  586 *
//  587 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  588 static uint8_t App_SendAssociateResponse(nwkMessage_t *pMsgIn)
//  589 {
App_SendAssociateResponse:
        PUSH     {R4-R6,LR}
        MOVS     R6,R0
//  590   mlmeMessage_t *pMsg;
//  591   mlmeAssociateRes_t *pAssocRes;
//  592  
//  593   UartUtil_Print("Sending the MLME-Associate Response message to the MAC...", gAllowToBlock_d);
        MOVS     R1,#+1
        LDR      R0,??DataTable10
        BL       UartUtil_Print
//  594  
//  595   /* Allocate a message for the MLME */
//  596   pMsg = MSG_AllocType(mlmeMessage_t);
        MOVS     R0,#+15
        BL       MM_Alloc
        MOVS     R5,R0
//  597   if(pMsg != NULL)
        CMP      R5,#+0
        BEQ      ??App_SendAssociateResponse_0
//  598   {
//  599     /* This is a MLME-ASSOCIATE.res command */
//  600     pMsg->msgType = gMlmeAssociateRes_c;
        MOVS     R0,#+1
        STRB     R0,[R5, #+0]
//  601     
//  602     /* Create the Associate response message data. */
//  603     pAssocRes = &pMsg->msgData.associateRes;
        MOVS     R0,R5
        ADDS     R0,R0,#+1
        MOVS     R4,R0
//  604     
//  605     /* Assign a short address to the device. In this example we simply
//  606        choose 0x0001. Though, all devices and coordinators in a PAN must have
//  607        different short addresses. However, if a device do not want to use 
//  608        short addresses at all in the PAN, a short address of 0xFFFE must
//  609        be assigned to it. */
//  610     if(pMsgIn->msgData.associateInd.capabilityInfo & gCapInfoAllocAddr_c)
        LDRB     R0,[R6, #+11]
        LSLS     R0,R0,#+24
        BPL      ??App_SendAssociateResponse_1
//  611     {
//  612       /* Assign a unique short address less than 0xfffe if the device requests so. */
//  613       pAssocRes->assocShortAddress[0] = 0x01;
        MOVS     R0,#+1
        STRB     R0,[R4, #+8]
//  614       pAssocRes->assocShortAddress[1] = 0x00;
        MOVS     R0,#+0
        STRB     R0,[R4, #+9]
        B        ??App_SendAssociateResponse_2
//  615     }
//  616     else
//  617     {
//  618       /* A short address of 0xfffe means that the device is granted access to
//  619          the PAN (Associate successful) but that long addressing is used.*/
//  620       pAssocRes->assocShortAddress[0] = 0xFE;
??App_SendAssociateResponse_1:
        MOVS     R0,#+254
        STRB     R0,[R4, #+8]
//  621       pAssocRes->assocShortAddress[1] = 0xFF;
        MOVS     R0,#+255
        STRB     R0,[R4, #+9]
//  622     }
//  623     /* Get the 64 bit address of the device requesting association. */
//  624     FLib_MemCpy(pAssocRes->deviceAddress, pMsgIn->msgData.associateInd.deviceAddress, 8);
??App_SendAssociateResponse_2:
        MOVS     R2,#+8
        MOVS     R1,R6
        ADDS     R1,R1,#+1
        MOVS     R0,R4
        BL       FLib_MemCpy
//  625     /* Association granted. May also be gPanAtCapacity_c or gPanAccessDenied_c. */
//  626     pAssocRes->status = gSuccess_c;
        MOVS     R0,#+0
        STRB     R0,[R4, #+11]
//  627     /* Do not use security */
//  628 #ifdef gMAC2006_d
//  629     pAssocRes->securityLevel = 0;
//  630 #else
//  631     pAssocRes->securityEnable = FALSE;
        MOVS     R0,#+0
        STRB     R0,[R4, #+10]
//  632 #endif //gMAC2006_d    
//  633     /* Save device info. */
//  634     FLib_MemCpy(maDeviceShortAddress, pAssocRes->assocShortAddress, 2);
        MOVS     R2,#+2
        MOVS     R1,R4
        ADDS     R1,R1,#+8
        LDR      R0,??DataTable12
        BL       FLib_MemCpy
//  635     FLib_MemCpy(maDeviceLongAddress,  pAssocRes->deviceAddress,     8);
        MOVS     R2,#+8
        MOVS     R1,R4
        LDR      R0,??DataTable12_1
        BL       FLib_MemCpy
//  636     
//  637     /* Send the Associate Response to the MLME. */
//  638     if(MSG_Send(NWK_MLME, pMsg) == gSuccess_c)
        MOVS     R0,R5
        BL       NWK_MLME_SapHandler
        CMP      R0,#+0
        BNE      ??App_SendAssociateResponse_3
//  639     {
//  640       UartUtil_Print("Done\n\r", gAllowToBlock_d);
        MOVS     R1,#+1
        LDR      R0,??DataTable8
        BL       UartUtil_Print
//  641       return errorNoError;
        MOVS     R0,#+0
        B        ??App_SendAssociateResponse_4
//  642     }
//  643     else
//  644     {
//  645       /* One or more parameters in the message were invalid. */
//  646       UartUtil_Print("Invalid parameter!\n\r", gAllowToBlock_d);
??App_SendAssociateResponse_3:
        MOVS     R1,#+1
        LDR      R0,??DataTable8_1
        BL       UartUtil_Print
//  647       return errorInvalidParameter;
        MOVS     R0,#+5
        B        ??App_SendAssociateResponse_4
//  648     }
//  649   }
//  650   else
//  651   {
//  652     /* Allocation of a message buffer failed. */
//  653     UartUtil_Print("Message allocation failed!\n\r", gAllowToBlock_d);
??App_SendAssociateResponse_0:
        MOVS     R1,#+1
        LDR      R0,??DataTable8_2
        BL       UartUtil_Print
//  654     return errorAllocFailed;
        MOVS     R0,#+4
??App_SendAssociateResponse_4:
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return
//  655   }
//  656 }
//  657 
//  658 /******************************************************************************
//  659 * The App_HandleMlmeInput(nwkMessage_t *pMsg) function will handle various
//  660 * messages from the MLME, e.g. (Dis)Associate Indication.
//  661 *
//  662 * The function may return either of the following values:
//  663 *   errorNoError:   The message was processed.
//  664 *   errorNoMessage: The message pointer is NULL.
//  665 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  666 static uint8_t App_HandleMlmeInput(nwkMessage_t *pMsg)
//  667 {
App_HandleMlmeInput:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  668   if(pMsg == NULL)
        CMP      R4,#+0
        BNE      ??App_HandleMlmeInput_0
//  669     return errorNoMessage;
        MOVS     R0,#+3
        B        ??App_HandleMlmeInput_1
//  670   
//  671   /* Handle the incoming message. The type determines the sort of processing.*/
//  672   switch(pMsg->msgType) {
??App_HandleMlmeInput_0:
        LDRB     R0,[R4, #+0]
        CMP      R0,#+0
        BEQ      ??App_HandleMlmeInput_2
        SUBS     R0,R0,#+12
        BEQ      ??App_HandleMlmeInput_3
        B        ??App_HandleMlmeInput_4
//  673   case gNwkAssociateInd_c:
//  674     UartUtil_Print("Received an MLME-Associate Indication from the MAC\n\r", gAllowToBlock_d);
??App_HandleMlmeInput_2:
        MOVS     R1,#+1
        LDR      R0,??DataTable12_2
        BL       UartUtil_Print
//  675     /* A device sent us an Associate Request. We must send back a response.  */
//  676     return App_SendAssociateResponse(pMsg);
        MOVS     R0,R4
        BL       App_SendAssociateResponse
        B        ??App_HandleMlmeInput_1
//  677     
//  678   case gNwkCommStatusInd_c:
//  679     /* Sent by the MLME after the Association Response has been transmitted. */
//  680     UartUtil_Print("Received an MLME-Comm-Status Indication from the MAC\n\r", gAllowToBlock_d);
??App_HandleMlmeInput_3:
        MOVS     R1,#+1
        LDR      R0,??DataTable12_3
        BL       UartUtil_Print
//  681     break;
//  682   }
//  683   return errorNoError;
??App_HandleMlmeInput_4:
        MOVS     R0,#+0
??App_HandleMlmeInput_1:
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  684 }

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable7:
        DC32     `?<Constant "Sending the MLME-Scan...">`
//  685 
//  686 /******************************************************************************
//  687 * The App_HandleMcpsInput(mcpsToNwkMessage_t *pMsgIn) function will handle 
//  688 * messages from the MCPS, e.g. Data Confirm, and Data Indication.
//  689 *
//  690 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  691 static void App_HandleMcpsInput(mcpsToNwkMessage_t *pMsgIn)
//  692 {
App_HandleMcpsInput:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  693   switch(pMsgIn->msgType)
        LDRB     R0,[R4, #+0]
        CMP      R0,#+0
        BEQ      ??App_HandleMcpsInput_0
        SUBS     R0,R0,#+1
        BEQ      ??App_HandleMcpsInput_1
        B        ??App_HandleMcpsInput_2
//  694   {
//  695     /* The MCPS-Data confirm is sent by the MAC to the network 
//  696        or application layer when data has been sent. */
//  697   case gMcpsDataCnf_c:
//  698     if(mcPendingPackets)
??App_HandleMcpsInput_0:
        LDR      R0,??DataTable12_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??App_HandleMcpsInput_2
//  699       mcPendingPackets--;
        LDR      R0,??DataTable12_4
        LDRB     R0,[R0, #+0]
        SUBS     R0,R0,#+1
        LDR      R1,??DataTable12_4
        STRB     R0,[R1, #+0]
        B        ??App_HandleMcpsInput_2
//  700     break;
//  701   
//  702   case gMcpsDataInd_c:
//  703     /* The MCPS-Data indication is sent by the MAC to the network 
//  704        or application layer when data has been received. We simply 
//  705        copy the received data to the UART. */
//  706     UartUtil_Print("Received the data packet from MCPS\n\r", gAllowToBlock_d);
??App_HandleMcpsInput_1:
        MOVS     R1,#+1
        LDR      R0,??DataTable12_5
        BL       UartUtil_Print
//  707     //UartUtil_PrintHex(pMsgIn->msgData.dataInd.pMsdu, pMsgIn->msgData.dataInd.msduLength,0);
//  708     UartUtil_Tx(pMsgIn->msgData.dataInd.pMsdu, pMsgIn->msgData.dataInd.msduLength);
        MOVS     R0,R4
        ADDS     R0,R0,#+27
        BL       __aeabi_uread4
        LDRB     R1,[R4, #+23]
        BL       UartUtil_Tx
//  709     break;
//  710   }
//  711 }
??App_HandleMcpsInput_2:
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8:
        DC32     `?<Constant "Done\\n\\r">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8_1:
        DC32     `?<Constant "Invalid parameter!\\n\\r">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8_2:
        DC32     `?<Constant "Message allocation fa...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8_3:
        DC32     `?<Constant "Received the MLME-Sca...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8_4:
        DC32     `?<Constant "ED scan returned the ...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8_5:
        DC32     `?<Constant "]\\n\\r\\n\\r">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8_6:
        DC32     `?<Constant "Based on the ED scan ...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable8_7:
        DC32     `?<Constant "Sending the MLME-Star...">`
//  712 
//  713 /******************************************************************************
//  714 * The App_WaitMsg(nwkMessage_t *pMsg, uint8_t msgType) function does not, as
//  715 * the name implies, wait for a message, thus blocking the execution of the
//  716 * state machine. Instead the function analyzes the supplied message to determine
//  717 * whether or not the message is of the expected type.
//  718 * The function may return either of the following values:
//  719 *   errorNoError: The message was of the expected type.
//  720 *   errorNoMessage: The message pointer is NULL.
//  721 *   errorWrongConfirm: The message is not of the expected type.
//  722 *
//  723 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  724 static uint8_t App_WaitMsg(nwkMessage_t *pMsg, uint8_t msgType)
//  725 {
App_WaitMsg:
        PUSH     {LR}
        MOVS     R2,R0
//  726   /* Do we have a message? If not, the exit with error code */
//  727   if(pMsg == NULL)
        CMP      R2,#+0
        BNE      ??App_WaitMsg_0
//  728     return errorNoMessage;
        MOVS     R0,#+3
        B        ??App_WaitMsg_1
//  729 
//  730   /* Is it the expected message type? If not then exit with error code */
//  731   if(pMsg->msgType != msgType)
??App_WaitMsg_0:
        LDRB     R0,[R2, #+0]
        LSLS     R1,R1,#+24       ;; ZeroExtS R1,R1,#+24,#+24
        LSRS     R1,R1,#+24
        CMP      R0,R1
        BEQ      ??App_WaitMsg_2
//  732     return errorWrongConfirm;
        MOVS     R0,#+1
        B        ??App_WaitMsg_1
//  733 
//  734   /* Found the expected message. Return with success code */
//  735   return errorNoError;
??App_WaitMsg_2:
        MOVS     R0,#+0
??App_WaitMsg_1:
        POP      {R3}
        BX       R3               ;; return
//  736 }
//  737 
//  738 /******************************************************************************
//  739 * The App_TransmitUartData() function will perform (single/multi buffered)
//  740 * data transmissions of data received by the UART. Data could also come from
//  741 * other sources such as sensors etc. This is completely determined by the
//  742 * application. The constant mDefaultValueOfMaxPendingDataPackets_c determine the maximum
//  743 * number of packets pending for transmission in the MAC. A global variable
//  744 * is incremented each time a data packet is sent to the MCPS, and decremented
//  745 * when the corresponding MCPS-Data Confirm message is received. If the counter
//  746 * reaches the defined maximum no more data buffers are allocated until the
//  747 * counter is decreased below the maximum number of pending packets.
//  748 *
//  749 * The function uses the device information, that was stored when the device,
//  750 * associated to us, for building an MCPS-Data Request message. The message
//  751 * is sent to the MCPS service access point in the MAC.
//  752 ******************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  753 static void App_TransmitUartData(void)
//  754 {   
App_TransmitUartData:
        PUSH     {R7,LR}
//  755   static uint8_t keysBuffer[mMaxKeysToReceive_c];
//  756   static uint8_t keysReceived = 0;
//  757   
//  758   /* get data from UART */
//  759   if( keysReceived < mMaxKeysToReceive_c) 
        LDR      R0,??DataTable12_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+32
        BCS      ??App_TransmitUartData_0
//  760   { 
//  761     if(UartX_GetByteFromRxBuffer(&keysBuffer[keysReceived])) 
        LDR      R0,??DataTable12_6
        LDRB     R0,[R0, #+0]
        LDR      R1,??DataTable12_7
        ADDS     R0,R1,R0
        BL       Uart1_GetByteFromRxBuffer
        CMP      R0,#+0
        BEQ      ??App_TransmitUartData_0
//  762     {
//  763     keysReceived++;
        LDR      R0,??DataTable12_6
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable12_6
        STRB     R0,[R1, #+0]
//  764     }
//  765   }
//  766   /* Use multi buffering for increased TX performance. It does not really
//  767      have any effect at a UART baud rate of 19200bps but serves as an
//  768      example of how the throughput may be improved in a real-world 
//  769      application where the data rate is of concern. */
//  770   if( (mcPendingPackets < mDefaultValueOfMaxPendingDataPackets_c) && (mpPacket == NULL) ) 
??App_TransmitUartData_0:
        LDR      R0,??DataTable12_4
        LDRB     R0,[R0, #+0]
        CMP      R0,#+2
        BCS      ??App_TransmitUartData_1
        LDR      R0,??DataTable12_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??App_TransmitUartData_1
//  771   {
//  772     /* If the maximum number of pending data buffes is below maximum limit 
//  773        and we do not have a data buffer already then allocate one. */
//  774     mpPacket = MSG_AllocType(nwkToMcpsMessage_t);
        MOVS     R0,#+30
        BL       MM_Alloc
        LDR      R1,??DataTable12_8
        STR      R0,[R1, #+0]
//  775   }
//  776 
//  777   if(mpPacket != NULL)
??App_TransmitUartData_1:
        LDR      R0,??DataTable12_8
        LDR      R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??App_TransmitUartData_2
//  778   {
//  779       /* get data from UART */        
//  780       mpPacket->msgData.dataReq.pMsdu = &keysBuffer[0];
        LDR      R0,??DataTable12_8
        LDR      R1,[R0, #+0]
        ADDS     R1,R1,#+26
        LDR      R0,??DataTable12_7
        BL       __aeabi_uwrite4
//  781       /* Data was available in the UART receive buffer. Now create an
//  782          MCPS-Data Request message containing the UART data. */
//  783       mpPacket->msgType = gMcpsDataReq_c;
        LDR      R0,??DataTable12_8
        LDR      R0,[R0, #+0]
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  784       /* Create the header using device information stored when creating 
//  785          the association response. In this simple example the use of short
//  786          addresses is hardcoded. In a real world application we must be
//  787          flexible, and use the address mode required by the given situation. */
//  788       FLib_MemCpy(mpPacket->msgData.dataReq.dstAddr, maDeviceShortAddress, 2);
        MOVS     R2,#+2
        LDR      R1,??DataTable12
        LDR      R0,??DataTable12_8
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+1
        BL       FLib_MemCpy
//  789       FLib_MemCpy(mpPacket->msgData.dataReq.srcAddr, (void *)maShortAddress, 2);
        MOVS     R2,#+2
        LDR      R1,??DataTable12_9
        LDR      R0,??DataTable12_8
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+12
        BL       FLib_MemCpy
//  790       FLib_MemCpy(mpPacket->msgData.dataReq.dstPanId, (void *)maPanId, 2);
        MOVS     R2,#+2
        LDR      R1,??DataTable12_10
        LDR      R0,??DataTable12_8
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+9
        BL       FLib_MemCpy
//  791       FLib_MemCpy(mpPacket->msgData.dataReq.srcPanId, (void *)maPanId, 2);
        MOVS     R2,#+2
        LDR      R1,??DataTable12_10
        LDR      R0,??DataTable12_8
        LDR      R0,[R0, #+0]
        ADDS     R0,R0,#+20
        BL       FLib_MemCpy
//  792       mpPacket->msgData.dataReq.dstAddrMode = gAddrModeShort_c;
        LDR      R0,??DataTable12_8
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        STRB     R1,[R0, #+11]
//  793       mpPacket->msgData.dataReq.srcAddrMode = gAddrModeShort_c;
        LDR      R0,??DataTable12_8
        LDR      R0,[R0, #+0]
        MOVS     R1,#+2
        STRB     R1,[R0, #+22]
//  794       mpPacket->msgData.dataReq.msduLength = keysReceived;
        LDR      R0,??DataTable12_8
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable12_6
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+23]
//  795       /* Request MAC level acknowledgement, and 
//  796          indirect transmission of the data packet */
//  797       mpPacket->msgData.dataReq.txOptions = gTxOptsAck_c | gTxOptsIndirect_c;
        LDR      R0,??DataTable12_8
        LDR      R0,[R0, #+0]
        MOVS     R1,#+5
        STRB     R1,[R0, #+25]
//  798       /* Give the data packet a handle. The handle is
//  799          returned in the MCPS-Data Confirm message. */
//  800       mpPacket->msgData.dataReq.msduHandle = mMsduHandle++;
        LDR      R0,??DataTable12_8
        LDR      R0,[R0, #+0]
        LDR      R1,??DataTable12_11
        LDRB     R1,[R1, #+0]
        STRB     R1,[R0, #+24]
        LDR      R0,??DataTable12_11
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable12_11
        STRB     R0,[R1, #+0]
//  801 #ifdef gMAC2006_d	  
//  802 	  /* Don't use security */      
//  803 	  mpPacket->msgData.dataReq.securityLevel = 0;
//  804 #endif //gMAC2006_d	  
//  805       /* Send the Data Request to the MCPS */
//  806       (void)MSG_Send(NWK_MCPS, mpPacket);
        LDR      R0,??DataTable12_8
        LDR      R0,[R0, #+0]
        BL       NWK_MCPS_SapHandler
//  807       /* Prepare for another data buffer */
//  808       mpPacket = NULL;
        LDR      R0,??DataTable12_8
        MOVS     R1,#+0
        STR      R1,[R0, #+0]
//  809       mcPendingPackets++;
        LDR      R0,??DataTable12_4
        LDRB     R0,[R0, #+0]
        ADDS     R0,R0,#+1
        LDR      R1,??DataTable12_4
        STRB     R0,[R1, #+0]
//  810       /* Receive another pressed keys */
//  811       keysReceived = 0;
        LDR      R0,??DataTable12_6
        MOVS     R1,#+0
        STRB     R1,[R0, #+0]
//  812   }
//  813   
//  814   /* If the keysBuffer[] wasn't send over the air because there are too many pending packets, */
//  815   /* try to send it later   */
//  816   if (keysReceived)
??App_TransmitUartData_2:
        LDR      R0,??DataTable12_6
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BEQ      ??App_TransmitUartData_3
//  817   {
//  818   TS_SendEvent(gAppTaskID_c, gAppEvtRxFromUart_c);
        MOVS     R1,#+2
        LDR      R0,??DataTable12_12
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
//  819   }
//  820 }
??App_TransmitUartData_3:
        POP      {R0,R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable9:
        DC32     `?<Constant " was selected\\n\\r">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable9_1:
        DC32     mLogicalChannel

        SECTION `.bss`:DATA:NOROOT(2)
??keysBuffer:
        DS8 32

        SECTION `.bss`:DATA:NOROOT(0)
??keysReceived:
        DS8 1
//  821 
//  822 
//  823 /*****************************************************************************
//  824 * Handles all key events for this device.
//  825 * Interface assumptions: None
//  826 * Return value: None
//  827 *****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  828 static void App_HandleKeys
//  829   (
//  830   key_event_t events  /*IN: Events from keyboard modul  */
//  831   )
//  832 {
App_HandleKeys:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  833   switch ( events ) 
        LSLS     R4,R4,#+24       ;; ZeroExtS R4,R4,#+24,#+24
        LSRS     R4,R4,#+24
        MOVS     R0,R4
        SUBS     R0,R0,#+1
        CMP      R0,#+7
        BHI      ??App_HandleKeys_0
//  834     { 
//  835       case gKBD_EventSW1_c:
//  836       case gKBD_EventSW2_c:
//  837       case gKBD_EventSW3_c:
//  838       case gKBD_EventSW4_c:
//  839       case gKBD_EventLongSW1_c:
//  840       case gKBD_EventLongSW2_c:
//  841       case gKBD_EventLongSW3_c:
//  842       case gKBD_EventLongSW4_c:
//  843         if(gState == stateInit)
??App_HandleKeys_1:
        LDR      R0,??DataTable12_13
        LDRB     R0,[R0, #+0]
        CMP      R0,#+0
        BNE      ??App_HandleKeys_0
//  844           {
//  845           StopLed1Flashing();
        MOVS     R0,#+1
        BL       LED_StopFlash
//  846           StopLed2Flashing();
        MOVS     R0,#+2
        BL       LED_StopFlash
//  847           StopLed3Flashing();
        MOVS     R0,#+4
        BL       LED_StopFlash
//  848           StopLed4Flashing();
        MOVS     R0,#+8
        BL       LED_StopFlash
//  849           Led1Off();
        MOVS     R1,#+0
        MOVS     R0,#+23
        BL       Gpio_SetPinData
//  850           Led2Off();
        MOVS     R1,#+0
        MOVS     R0,#+24
        BL       Gpio_SetPinData
//  851           Led3Off();
        MOVS     R1,#+0
        MOVS     R0,#+25
        BL       Gpio_SetPinData
//  852           Led4Off();
        MOVS     R1,#+0
        MOVS     R0,#+44
        BL       Gpio_SetPinData
//  853           LCD_ClearDisplay();
        BL       LCD_ClearDisplay
//  854           LCD_WriteString(1,"Application");
        LDR      R1,??DataTable12_14
        MOVS     R0,#+1
        BL       LCD_WriteString
//  855           LCD_WriteString(2,"    started");     
        LDR      R1,??DataTable12_15
        MOVS     R0,#+2
        BL       LCD_WriteString
//  856           TS_SendEvent(gAppTaskID_c, gAppEvtDummyEvent_c);       
        MOVS     R1,#+1
        LDR      R0,??DataTable12_12
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
//  857           }
//  858     break;  
//  859     }    
//  860 }                                                      
??App_HandleKeys_0:
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable10:
        DC32     `?<Constant "Sending the MLME-Asso...">`
//  861 
//  862 /*****************************************************************************
//  863 * The DeepSleepWakeupStackProc(void) function is called each time the 
//  864 * application exits the DeepSleep mode .
//  865 * 
//  866 * Return value:
//  867 *     None
//  868 *****************************************************************************/

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  869 void DeepSleepWakeupStackProc(void){
//  870   return;
DeepSleepWakeupStackProc:
        BX       LR               ;; return
//  871 }
//  872 
//  873 /******************************************************************************
//  874 * The following functions are called by the MAC to put messages into the
//  875 * Application's queue. They need to be defined even if they are not used
//  876 * in order to avoid linker errors.
//  877 ******************************************************************************/
//  878 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  879 uint8_t MLME_NWK_SapHandler(nwkMessage_t * pMsg)
//  880 {
MLME_NWK_SapHandler:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  881   /* Put the incoming MLME message in the applications input queue. */
//  882   MSG_Queue(&mMlmeNwkInputQueue, pMsg);
        MOVS     R1,R4
        LDR      R0,??DataTable12_16
        BL       List_AddTail
//  883   TS_SendEvent(gAppTaskID_c, gAppEvtMessageFromMLME_c);
        MOVS     R1,#+4
        LDR      R0,??DataTable12_12
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
//  884   return gSuccess_c;
        MOVS     R0,#+0
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  885 }
//  886 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  887 uint8_t MCPS_NWK_SapHandler(mcpsToNwkMessage_t *pMsg)
//  888 {
MCPS_NWK_SapHandler:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  889   /* Put the incoming MCPS message in the applications input queue. */
//  890   MSG_Queue(&mMcpsNwkInputQueue, pMsg);
        MOVS     R1,R4
        LDR      R0,??DataTable12_17
        BL       List_AddTail
//  891   TS_SendEvent(gAppTaskID_c, gAppEvtMessageFromMCPS_c);
        MOVS     R1,#+8
        LDR      R0,??DataTable12_12
        LDRB     R0,[R0, #+0]
        BL       TS_SendEvent
//  892   return gSuccess_c;
        MOVS     R0,#+0
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  893 }

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12:
        DC32     maDeviceShortAddress

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_1:
        DC32     maDeviceLongAddress

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_2:
        DC32     `?<Constant "Received an MLME-Asso...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_3:
        DC32     `?<Constant "Received an MLME-Comm...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_4:
        DC32     mcPendingPackets

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_5:
        DC32     `?<Constant "Received the data pac...">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_6:
        DC32     ??keysReceived

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_7:
        DC32     ??keysBuffer

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_8:
        DC32     mpPacket

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_9:
        DC32     maShortAddress

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_10:
        DC32     maPanId

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_11:
        DC32     mMsduHandle

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_12:
        DC32     gAppTaskID_c

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_13:
        DC32     gState

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_14:
        DC32     `?<Constant "Application">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_15:
        DC32     `?<Constant "    started">`

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_16:
        DC32     mMlmeNwkInputQueue

        SECTION `.text`:CODE:NOROOT(2)
        DATA
??DataTable12_17:
        DC32     mMcpsNwkInputQueue
//  894 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  895 uint8_t ASP_APP_SapHandler(aspToAppMsg_t *pMsg)
//  896 {
ASP_APP_SapHandler:
        PUSH     {R4,LR}
        MOVS     R4,R0
//  897   /* If the message is not handled anywhere it must be freed. */
//  898   MSG_Free(pMsg);
        MOVS     R0,R4
        BL       MM_Free
        MOVS     R0,#+0
        MOVS     R4,R0
//  899   return gSuccess_c;
        MOVS     R0,#+0
        POP      {R4}
        POP      {R3}
        BX       R3               ;; return
//  900 }

        END
//  901 
//  902 /******************************************************************************/
// 
//    67 bytes in section .bss
// 1 116 bytes in section .rodata
// 2 102 bytes in section .text
// 
// 2 102 bytes of CODE  memory
// 1 116 bytes of CONST memory
//    67 bytes of DATA  memory
//
//Errors: none
//Warnings: none
