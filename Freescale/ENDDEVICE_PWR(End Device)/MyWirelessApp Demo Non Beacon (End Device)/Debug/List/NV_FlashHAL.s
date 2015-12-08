///////////////////////////////////////////////////////////////////////////////
//                                                                            /
//                                                      12/Oct/2015  10:21:27 /
// IAR ANSI C/C++ Compiler V5.50.7.22081/W32 EVALUATION for ARM               /
// Copyright (C) 1999-2010 IAR Systems AB.                                    /
//                                                                            /
//    Cpu mode     =  thumb                                                   /
//    Endian       =  little                                                  /
//    Source file  =  C:\Documents and Settings\Administrator\Desktop\MyWirel /
//                    essApp Demo Non Beacon (End Device)\MyWirelessApp Demo  /
//                    Non Beacon (End Device)\PLM\Source\NVM\NV_FlashHAL.c    /
//    Command line =  "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\PLM\Source\NVM\NV_FlashHAL /
//                    .c" -D gMacStandAlone_d=1 -D gSAPMessagesEnableLlc_d=0  /
//                    -D gZtcIncluded_d=0 -D gTargetMC1322xSRB=1              /
//                    --preprocess "C:\Documents and                          /
//                    Settings\Administrator\Desktop\MyWirelessApp Demo Non   /
//                    Beacon (End Device)\MyWirelessApp Demo Non Beacon (End  /
//                    Device)\Debug\List\" -lC "C:\Documents and              /
//                    Settings\Administrator\Desktop\MyWirelessApp Demo Non   /
//                    Beacon (End Device)\MyWirelessApp Demo Non Beacon (End  /
//                    Device)\Debug\List\" -lB "C:\Documents and              /
//                    Settings\Administrator\Desktop\MyWirelessApp Demo Non   /
//                    Beacon (End Device)\MyWirelessApp Demo Non Beacon (End  /
//                    Device)\Debug\List\" --diag_suppress                    /
//                    Pe014,Pe001,Pe991,Pa039,Pe520 -o "C:\Documents and      /
//                    Settings\Administrator\Desktop\MyWirelessApp Demo Non   /
//                    Beacon (End Device)\MyWirelessApp Demo Non Beacon (End  /
//                    Device)\Debug\Obj\" --no_cse --no_unroll --no_inline    /
//                    --no_code_motion --no_tbaa --no_clustering              /
//                    --no_scheduling --debug --endian=little                 /
//                    --cpu=ARM7TDMI-S --fpu=None --dlib_config "C:\Program   /
//                    Files\IAR Systems\Embedded Workbench 5.4                /
//                    Evaluation\arm\INC\DLib_Config_Normal.h" -I             /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\MacPhy\Interface\" -I      /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\Application\Init\" -I      /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\Application\Interface\"    /
//                    -I "C:\Documents and Settings\Administrator\Desktop\MyW /
//                    irelessApp Demo Non Beacon (End Device)\MyWirelessApp   /
//                    Demo Non Beacon (End Device)\Application\Configure\"    /
//                    -I "C:\Documents and Settings\Administrator\Desktop\MyW /
//                    irelessApp Demo Non Beacon (End Device)\MyWirelessApp   /
//                    Demo Non Beacon (End Device)\Application\UartUtil\" -I  /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\Application\Source\" -I    /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\SSM\TS\Interface\" -I      /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\SSM\TS\Source\" -I         /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\SSM\ZTC\Interface\" -I     /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\SSM\ZTC\Source\" -I        /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\PLM\Interface\" -I         /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\PLM\LibInterface\" -I      /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\PLM\Source\Display\" -I    /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\PLM\Source\Keyboard\" -I   /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\PLM\Source\NVM\" -I        /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\PLM\Source\TMR\" -I        /
//                    "C:\Documents and Settings\Administrator\Desktop\MyWire /
//                    lessApp Demo Non Beacon (End Device)\MyWirelessApp      /
//                    Demo Non Beacon (End Device)\PLM\Source\UART\" -I       /
//                    "C:\Program Files\IAR Systems\Embedded Workbench 5.4    /
//                    Evaluation\arm\INC\" --interwork --cpu_mode thumb -On   /
//    List file    =  C:\Documents and Settings\Administrator\Desktop\MyWirel /
//                    essApp Demo Non Beacon (End Device)\MyWirelessApp Demo  /
//                    Non Beacon (End Device)\Debug\List\NV_FlashHAL.s        /
//                                                                            /
//                                                                            /
///////////////////////////////////////////////////////////////////////////////

        NAME NV_FlashHAL

        EXTERN NVM_BlankCheck
        EXTERN NVM_Erase
        EXTERN NVM_Read
        EXTERN NVM_Verify
        EXTERN NVM_Write

        PUBLIC NvHalEraseSector
        PUBLIC NvHalInit
        PUBLIC NvHalIsBlank
        PUBLIC NvHalRead
        PUBLIC NvHalVerify
        PUBLIC NvHalWrite
        PUBLIC maNvRawSectorAddressTable

// C:\Documents and Settings\Administrator\Desktop\MyWirelessApp Demo Non Beacon (End Device)\MyWirelessApp Demo Non Beacon (End Device)\PLM\Source\NVM\NV_FlashHAL.c
//    1 /*****************************************************************************
//    2 * Implementation of the non-volatile storage module flash controller HAL.
//    3 *
//    4 * (c) Copyright 2006, Freescale, Inc. All rights reserved.
//    5 *
//    6 *
//    7 * No part of this document must be reproduced in any form - including copied,
//    8 * transcribed, printed or by any electronic means - without specific written
//    9 * permission from Freescale Semiconductor.
//   10 *
//   11 *****************************************************************************/
//   12 
//   13 /* Unsigned char is sometimes used in this module instead of uint8_t. The
//   14  * C standard guarantees that sizeof(char) == 1, and that this is the most
//   15  * basic unit of memory. That guarantee is sometimes valuable when working
//   16  * with memory hardware.
//   17  */
//   18 
//   19 /* Power supply variations can make both reading an writing flash unreliable,
//   20  * but there is no means available to this code to monitor power.
//   21  */
//   22 
//   23 #include "EmbeddedTypes.h"
//   24 #include "NVM.h"
//   25 #include "NV_FlashHAL.h"
//   26 #include "Platform.h"
//   27 
//   28 /*****************************************************************************
//   29 ******************************************************************************
//   30 * Private macros
//   31 ******************************************************************************
//   32 *****************************************************************************/
//   33 
//   34 /*****************************************************************************
//   35 ******************************************************************************
//   36 * Private prototypes
//   37 ******************************************************************************
//   38 *****************************************************************************/
//   39 
//   40 
//   41 /*****************************************************************************
//   42 ******************************************************************************
//   43 * Private type definitions
//   44 ******************************************************************************
//   45 *****************************************************************************/
//   46 
//   47 /*****************************************************************************
//   48 ******************************************************************************
//   49 * Private memory declarations
//   50 ******************************************************************************
//   51 *****************************************************************************/
//   52 
//   53 
//   54 /* Define the NV storage pages. */
//   55 
//   56 /* To support one data set, there must be at least two pages available. */
//   57 #if gNvStorageIncluded_d
//   58 #define gNvSector0Address_c 0x1E000
//   59 #define gNvSector1Address_c 0x1D000
//   60 #endif
//   61 
//   62 
//   63 
//   64 /*****************************************************************************
//   65 ******************************************************************************
//   66 * Public memory definitions
//   67 ******************************************************************************
//   68 *****************************************************************************/
//   69 
//   70 
//   71 
//   72 #if gNvStorageIncluded_d

        SECTION `.rodata`:CONST:NOROOT(2)
//   73 NvRawSectorAddress_t const maNvRawSectorAddressTable[ gNvNumberOfRawSectors_c] = {
maNvRawSectorAddressTable:
        DATA
        DC32 122880, 118784
//   74                                                                                    gNvSector0Address_c,
//   75                                                                                    gNvSector1Address_c
//   76                                                                                  };
//   77 #endif                                  /* #if gNvStorageIncluded_d */
//   78 /*****************************************************************************
//   79 ******************************************************************************
//   80 * Public functions
//   81 ******************************************************************************
//   82 *****************************************************************************/
//   83 
//   84 /* Erase a flash page, given an index in the NV storage page table
//   85  * (maNvRawPageAddressTable[]).
//   86  *
//   87 */
//   88 
//   89 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   90 void NvHalEraseSector
//   91   (
//   92   NvRawSectorAddress_t NvRawSectorAddress
//   93   )
//   94 {
NvHalEraseSector:
        PUSH     {R4-R6,LR}
        MOVS     R6,R0
//   95 #if !gNvStorageIncluded_d
//   96   ( void ) NvRawSectorAddress;
//   97 #else
//   98   
//   99   uint32_t sector_bitfield;
//  100   index_t retries = mNvFlashCmdRetries_c;
        MOVS     R0,#+32
        MOVS     R4,R0
//  101   sector_bitfield = 1<<(NvRawSectorAddress>>12);  
        MOVS     R0,#+1
        MOVS     R1,R6
        LSRS     R1,R1,#+12
        LSLS     R0,R0,R1
        MOVS     R5,R0
//  102   
//  103       while ( retries-- ) {
??NvHalEraseSector_0:
        MOVS     R0,R4
        SUBS     R4,R0,#+1
        LSLS     R0,R0,#+24       ;; ZeroExtS R0,R0,#+24,#+24
        LSRS     R0,R0,#+24
        CMP      R0,#+0
        BEQ      ??NvHalEraseSector_1
//  104 
//  105       if(gNvmErrNoError_c == NVM_Erase(gNvmInterface_c, gNvmType_SST_c , sector_bitfield))
        MOVS     R2,R5
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       NVM_Erase
        CMP      R0,#+0
        BNE      ??NvHalEraseSector_0
//  106          break;
//  107       
//  108     }                                   
//  109                                        
//  110 #endif                                  /* #if !gNvStorageIncluded_d #else */
//  111 }
??NvHalEraseSector_1:
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return
//  112 /*****************************************************************************/
//  113 
//  114 
//  115 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  116 void NvHalInit ( void )
//  117 {
//  118 #if gNvStorageIncluded_d
//  119 if(gNvmInterface_c == gNvmExternalInterface_c)
//  120  {
//  121  	
//  122  GPIO.FuncSel0 &= (~0xFF00); 
//  123  GPIO.FuncSel0 |= 0x5500;
//  124  }  
//  125 #endif                                  /* #if gNvStorageIncluded_d */
//  126 }
NvHalInit:
        BX       LR               ;; return
//  127 /****************************************************************************/
//  128 
//  129 /* Read data from a specified offset within a given page of NV storage. */

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  130 void NvHalRead
//  131   (
//  132   NvRawPageAddress_t nvRawPageAddress,
//  133   NvSize_t srcPageOffset,
//  134   unsigned char *pDst,
//  135   NvSize_t dstLen
//  136   )
//  137 {
NvHalRead:
        PUSH     {R3-R7,LR}
        MOVS     R6,R0
        MOVS     R5,R1
        MOVS     R7,R2
        MOVS     R4,R3
//  138 #if !gNvStorageIncluded_d
//  139   ( void ) nvRawPageAddress;
//  140   ( void ) srcPageOffset;
//  141   ( void ) pDst;
//  142   ( void ) dstLen;
//  143 #else
//  144 
//  145   NVM_Read(gNvmInterface_c , gNvmType_SST_c, (void *)pDst , nvRawPageAddress + srcPageOffset, (uint32_t)dstLen);
        LSLS     R4,R4,#+16       ;; ZeroExtS R4,R4,#+16,#+16
        LSRS     R4,R4,#+16
        STR      R4,[SP, #+0]
        LSLS     R5,R5,#+16       ;; ZeroExtS R5,R5,#+16,#+16
        LSRS     R5,R5,#+16
        ADDS     R3,R6,R5
        MOVS     R2,R7
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       NVM_Read
//  146 
//  147   
//  148   
//  149 #endif                                  /* #if !gNvStorageIncluded_d #else */
//  150 }                                       /* NvHalRead() */
        POP      {R0,R4-R7}
        POP      {R3}
        BX       R3               ;; return
//  151 
//  152 /****************************************************************************/
//  153 
//  154 /* Write data to a specified offset within a given page of NV storage.
//  155  * The caller must insure that a full page of data is written, across
//  156  * more than one call to NvWrite() if necessary.
//  157  * Since this routine only writes partial pages, it does not do retries.
//  158  * Return TRUE if the write succeeded;
//  159  *        FALSE if the flash controller reported an error.
//  160  */
//  161 
//  162 
//  163 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  164 bool_t NvHalWrite
//  165   (
//  166   NvRawPageAddress_t nvRawPageAddress,
//  167   NvSize_t dstPageOffset,
//  168   unsigned char *pSource,
//  169   NvSize_t sourceLen
//  170   )
//  171 {
NvHalWrite:
        PUSH     {R3-R7,LR}
        MOVS     R6,R0
        MOVS     R5,R1
        MOVS     R7,R2
        MOVS     R4,R3
//  172 #if !gNvStorageIncluded_d
//  173   ( void ) nvRawPageAddress;
//  174   ( void ) dstPageOffset;
//  175   ( void ) pSource;
//  176   ( void ) sourceLen;
//  177   return FALSE;
//  178 #else
//  179 
//  180  if(gNvmErrNoError_c ==  NVM_Write(gNvmInterface_c, gNvmType_SST_c ,(void *)pSource, nvRawPageAddress + dstPageOffset, (uint32_t)sourceLen))
        LSLS     R4,R4,#+16       ;; ZeroExtS R4,R4,#+16,#+16
        LSRS     R4,R4,#+16
        STR      R4,[SP, #+0]
        LSLS     R5,R5,#+16       ;; ZeroExtS R5,R5,#+16,#+16
        LSRS     R5,R5,#+16
        ADDS     R3,R6,R5
        MOVS     R2,R7
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       NVM_Write
        CMP      R0,#+0
        BNE      ??NvHalWrite_0
//  181    return TRUE;
        MOVS     R0,#+1
        B        ??NvHalWrite_1
//  182  
//  183  return FALSE;  
??NvHalWrite_0:
        MOVS     R0,#+0
??NvHalWrite_1:
        POP      {R1,R4-R7}
        POP      {R3}
        BX       R3               ;; return
//  184 
//  185 #endif                                  /* #if !gNvStorageIncluded_d #else */
//  186 }
//  187 
//  188 
//  189 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  190 bool_t NvHalVerify
//  191   (
//  192   NvRawPageAddress_t nvRawPageAddress,
//  193   NvSize_t dstPageOffset,
//  194   unsigned char *pSource,
//  195   NvSize_t sourceLen
//  196   )
//  197 {
NvHalVerify:
        PUSH     {R3-R7,LR}
        MOVS     R6,R0
        MOVS     R5,R1
        MOVS     R7,R2
        MOVS     R4,R3
//  198 #if !gNvStorageIncluded_d
//  199   ( void ) nvRawPageAddress;
//  200   ( void ) dstPageOffset;
//  201   ( void ) pSource;
//  202   ( void ) sourceLen;
//  203   return FALSE;
//  204 #else
//  205  
//  206  if(gNvmErrNoError_c ==  NVM_Verify(gNvmInterface_c , gNvmType_SST_c ,(void *)pSource, nvRawPageAddress + dstPageOffset , (uint32_t)sourceLen))
        LSLS     R4,R4,#+16       ;; ZeroExtS R4,R4,#+16,#+16
        LSRS     R4,R4,#+16
        STR      R4,[SP, #+0]
        LSLS     R5,R5,#+16       ;; ZeroExtS R5,R5,#+16,#+16
        LSRS     R5,R5,#+16
        ADDS     R3,R6,R5
        MOVS     R2,R7
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       NVM_Verify
        CMP      R0,#+0
        BNE      ??NvHalVerify_0
//  207    return TRUE;
        MOVS     R0,#+1
        B        ??NvHalVerify_1
//  208  return FALSE;  
??NvHalVerify_0:
        MOVS     R0,#+0
??NvHalVerify_1:
        POP      {R1,R4-R7}
        POP      {R3}
        BX       R3               ;; return
//  209 
//  210 #endif                                  /* #if !gNvStorageIncluded_d #else */
//  211 }
//  212 
//  213 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  214 bool_t NvHalIsBlank
//  215   (
//  216   NvRawPageAddress_t nvRawPageAddress,
//  217   NvSize_t dstPageOffset,
//  218   NvSize_t length
//  219   )
//  220 {
NvHalIsBlank:
        PUSH     {R4-R6,LR}
        MOVS     R6,R0
        MOVS     R5,R1
        MOVS     R4,R2
//  221 #if !gNvStorageIncluded_d
//  222   ( void ) nvRawPageAddress;
//  223   ( void ) dstPageOffset;
//  224   ( void ) length;
//  225   return FALSE;
//  226 #else
//  227  
//  228  if(gNvmErrNoError_c == NVM_BlankCheck(gNvmInterface_c, gNvmType_SST_c, nvRawPageAddress + dstPageOffset, length))  
        LSLS     R4,R4,#+16       ;; ZeroExtS R4,R4,#+16,#+16
        LSRS     R4,R4,#+16
        MOVS     R3,R4
        LSLS     R5,R5,#+16       ;; ZeroExtS R5,R5,#+16,#+16
        LSRS     R5,R5,#+16
        ADDS     R2,R6,R5
        MOVS     R1,#+1
        MOVS     R0,#+0
        BL       NVM_BlankCheck
        CMP      R0,#+0
        BNE      ??NvHalIsBlank_0
//  229    return TRUE;
        MOVS     R0,#+1
        B        ??NvHalIsBlank_1
//  230  return FALSE;  
??NvHalIsBlank_0:
        MOVS     R0,#+0
??NvHalIsBlank_1:
        POP      {R4-R6}
        POP      {R3}
        BX       R3               ;; return
//  231 
//  232 #endif                                  /* #if !gNvStorageIncluded_d #else */
//  233 }

        END
//  234 /****************************************************************************/
//  235 
//  236 
//  237 
//  238 /****************************************************************************
//  239 * Giving a command to the flash controller may disturb read access to flash
//  240 * addresses. This function is copied into RAM so it can run even if flash is
//  241 * not accessible.
//  242 *
//  243 * Retries here are not a good idea, both because it would add mode code that
//  244 * would reside in scarce RAM, and because some commands cannot be retried
//  245 * without doing something else first. In particular, no byte of flash should
//  246 * be written more than once without an erase between the write commands.
//  247 *
//  248 * This function should only be called while interrupts are disabled.
//  249 *
//  250 * Returns TRUE  if the command worked;
//  251 *         FALSE if the flash controller reported an error.
//  252 *****************************************************************************/
//  253 
// 
//   8 bytes in section .rodata
// 230 bytes in section .text
// 
// 230 bytes of CODE  memory
//   8 bytes of CONST memory
//
//Errors: none
//Warnings: none
