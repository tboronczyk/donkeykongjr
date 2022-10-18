;-------------------------------------------------------------------------------
; DonkeyKongJr.nes disasembled by DISASM6 v1.5
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
; Registers
;-------------------------------------------------------------------------------
PPUCTRL              = $2000
PPUMASK              = $2001
PPUSTATUS            = $2002
OAMADDR              = $2003
OAMDATA              = $2004
PPUSCROLL            = $2005
PPUADDR              = $2006
PPUDATA              = $2007
SQ1_VOL              = $4000
SQ1_SWEEP            = $4001
SQ1_LO               = $4002
SQ1_HI               = $4003
SQ2_VOL              = $4004
SQ2_SWEEP            = $4005
SQ2_LO               = $4006
SQ2_HI               = $4007
TRI_LINEAR           = $4008
TRI_LO               = $400A
TRI_HI               = $400B
NOISE_VOL            = $400C
NOISE_LO             = $400E
NOISE_HI             = $400F
DMC_FREQ             = $4010
DMC_RAW              = $4011
DMC_START            = $4012
DMC_LEN              = $4013
OAM_DMA              = $4014
SND_CHN              = $4015
JOY1                 = $4016
JOY2                 = $4017

;-------------------------------------------------------------------------------
; iNES Header
;-------------------------------------------------------------------------------
            .db "NES", $1A     ; Header
            .db 1              ; 1 x 16k PRG banks
            .db 1              ; 1 x 8k CHR banks
            .db %00000001      ; Mirroring: Vertical
                               ; SRAM: Not used
                               ; 512k Trainer: Not used
                               ; 4 Screen VRAM: Not used
                               ; Mapper: 0
            .db %00000000      ; RomType: NES
            .hex 00 00 00 00   ; iNES Tail 
            .hex 00 00 00 00    

;-------------------------------------------------------------------------------
; Program Origin
;-------------------------------------------------------------------------------
            .org $c000         ; Set program counter

;-------------------------------------------------------------------------------
; ROM Start
;-------------------------------------------------------------------------------
            .hex 44 f0 40 f0   ; $c000: 44 f0 40 f0   Data
            .hex 38 f1 50 ef   ; $c004: 38 f1 50 ef   Data
            .hex bb ee         ; $c008: bb ee         Data
__c00a:     .hex 20 6e 06 00   ; $c00a: 20 6e 06 00   Data
            .hex 20 64 06 00   ; $c00e: 20 64 06 00   Data
            .hex 20 77 06 00   ; $c012: 20 77 06 00   Data
            .hex 20 b7 04 00   ; $c016: 20 b7 04 00   Data
            .hex 20 b5 01 00   ; $c01a: 20 b5 01 00   Data
__c01e:     .hex 50 60 70 80   ; $c01e: 50 60 70 80   Data
            .hex 80            ; $c022: 80            Data
__c023:     .hex 07            ; $c023: 07            Data
__c024:     .hex 07            ; $c024: 07            Data
__c025:     .hex b9            ; $c025: b9            Data
__c026:     .hex c0 03 02 ef   ; $c026: c0 03 02 ef   Data
            .hex c0 09 08 01   ; $c02a: c0 09 08 01   Data
            .hex c1            ; $c02e: c1            Data
__c02f:     .hex 02 33 40 80   ; $c02f: 02 33 40 80   Data
            .hex 90 90 a0 10   ; $c033: 90 90 a0 10   Data
            .hex 02 33 40 80   ; $c037: 02 33 40 80   Data
            .hex 00 90 a0 10   ; $c03b: 00 90 a0 10   Data
            .hex 02 33 40 80   ; $c03f: 02 33 40 80   Data
            .hex 90 a0 a4 10   ; $c043: 90 a0 a4 10   Data
            .hex 02 33 40 80   ; $c047: 02 33 40 80   Data
            .hex 00 a0 a4 10   ; $c04b: 00 a0 a4 10   Data
            .hex 03 33 40 80   ; $c04f: 03 33 40 80   Data
            .hex 90 90 a0 10   ; $c053: 90 90 a0 10   Data
            .hex 02 33 40 80   ; $c057: 02 33 40 80   Data
            .hex 00 a0 a8 10   ; $c05b: 00 a0 a8 10   Data
            .hex 03 50 50 90   ; $c05f: 03 50 50 90   Data
            .hex a0 a0 a0 10   ; $c063: a0 a0 a0 10   Data
            .hex 03 40 43 90   ; $c067: 03 40 43 90   Data
            .hex 00 a0 a0 10   ; $c06b: 00 a0 a0 10   Data
            .hex 04 60 60 b0   ; $c06f: 04 60 60 b0   Data
            .hex b0 b0 b0 10   ; $c073: b0 b0 b0 10   Data
            .hex 04 5c 4e ac   ; $c077: 04 5c 4e ac   Data
            .hex 00 b0 b0 10   ; $c07b: 00 b0 b0 10   Data
            .hex 04 70 70 d0   ; $c07f: 04 70 70 d0   Data
            .hex c0 c0 c0 10   ; $c083: c0 c0 c0 10   Data
            .hex 04 80 59 d8   ; $c087: 04 80 59 d8   Data
            .hex 00 c0 c0 10   ; $c08b: 00 c0 c0 10   Data
__c08f:     .hex ff 60 d0 b0   ; $c08f: ff 60 d0 b0   Data
            .hex a0 b0 c0 70   ; $c093: a0 b0 c0 70   Data
            .hex d8 b0 a0 b0   ; $c097: d8 b0 a0 b0   Data
            .hex a0 80 e0 b0   ; $c09b: a0 80 e0 b0   Data
            .hex a0 b0 90 90   ; $c09f: a0 b0 90 90   Data
            .hex e8 c0 a0 b0   ; $c0a3: e8 c0 a0 b0   Data
            .hex 80 a8 f4 d0   ; $c0a7: 80 a8 f4 d0   Data
            .hex a0 b0 70 c0   ; $c0ab: a0 b0 70 c0   Data
            .hex fc e0 a0 b0   ; $c0af: fc e0 a0 b0   Data
__c0b3:     .hex 01 00 02 01   ; $c0b3: 01 00 02 01   Data
            .hex 01 00 02 80   ; $c0b7: 01 00 02 80   Data
            .hex e0 00 02 01   ; $c0bb: e0 00 02 01   Data
            .hex 00 03 80 e0   ; $c0bf: 00 03 80 e0   Data
            .hex 00 02 01 00   ; $c0c3: 00 02 01 00   Data
            .hex 03 80 e0 01   ; $c0c7: 03 80 e0 01   Data
            .hex 00 02 01 03   ; $c0cb: 00 02 01 03   Data
            .hex 70 e4 02 01   ; $c0cf: 70 e4 02 01   Data
            .hex 00 02 04 64   ; $c0d3: 00 02 04 64   Data
            .hex e8 00 01 02   ; $c0d7: e8 00 01 02   Data
            .hex 01 04 54 f0   ; $c0db: 01 04 54 f0   Data
            .hex 01 02 01 00   ; $c0df: 01 02 01 00   Data
__c0e3:     .hex 04            ; $c0e3: 04            Data
__c0e4:     .hex c0 04 e0 04   ; $c0e4: c0 04 e0 04   Data
            .hex ff 04 ff 05   ; $c0e8: ff 04 ff 05   Data
            .hex ff 05 ff 02   ; $c0ec: ff 05 ff 02   Data
            .hex ff d0 02 d0   ; $c0f0: ff d0 02 d0   Data
            .hex e0 03 b0 ff   ; $c0f4: e0 03 b0 ff   Data
            .hex 04 90 ff 04   ; $c0f8: 04 90 ff 04   Data
            .hex 8c ff 05 88   ; $c0fc: 8c ff 05 88   Data
            .hex ff 02 80 f8   ; $c100: ff 02 80 f8   Data
            .hex 02 01 00 01   ; $c104: 02 01 00 01   Data
            .hex 02 01 03 80   ; $c108: 02 01 03 80   Data
            .hex f8 01 02 01   ; $c10c: f8 01 02 01   Data
            .hex 00 01 02 04   ; $c110: 00 01 02 04   Data
            .hex 80 f8 02 01   ; $c114: 80 f8 02 01   Data
            .hex 00 01 02 01   ; $c118: 00 01 02 01   Data
            .hex 04 80 f8 02   ; $c11c: 04 80 f8 02   Data
            .hex 00 01 02 01   ; $c120: 00 01 02 01   Data
            .hex 00 05 80 f8   ; $c124: 00 05 80 f8   Data
            .hex 01 00 01 02   ; $c128: 01 00 01 02   Data
            .hex 01 00 06 80   ; $c12c: 01 00 06 80   Data
            .hex f8 01 02 03   ; $c130: f8 01 02 03   Data
            .hex 00 03 02      ; $c134: 00 03 02      Data
__c137:     .hex 84 7c 68 88   ; $c137: 84 7c 68 88   Data
            .hex 80 6c 8c 00   ; $c13b: 80 6c 8c 00   Data
            .hex 70 50 5b 30   ; $c13f: 70 50 5b 30   Data
            .hex 2f 35 28 31   ; $c143: 2f 35 28 31   Data
            .hex 36 29 10 04   ; $c147: 36 29 10 04   Data
            .hex 10 a7 00 dd   ; $c14b: 10 a7 00 dd   Data
            .hex 2d 00 26 30   ; $c14f: 2d 00 26 30   Data
            .hex 00 28         ; $c153: 00 28         Data
__c155:     .hex 08            ; $c155: 08            Data
__c156:     .hex c7 08 b7 08   ; $c156: c7 08 b7 08   Data
            .hex c7 1b c7 70   ; $c15a: c7 1b c7 70   Data
            .hex c7            ; $c15e: c7            Data
__c15f:     .hex 38            ; $c15f: 38            Data
__c160:     .hex 8f            ; $c160: 8f            Data
__c161:     .hex 58            ; $c161: 58            Data
__c162:     .hex 12            ; $c162: 12            Data
__c163:     .hex c0 a0 3f 58   ; $c163: c0 a0 3f 58   Data
            .hex 12 c8 cd 7f   ; $c167: 12 c8 cd 7f   Data
            .hex 58 12 d0 30   ; $c16b: 58 12 d0 30   Data
            .hex 37 58 12 d8   ; $c16f: 37 58 12 d8   Data
            .hex a0 37 58 12   ; $c173: a0 37 58 12   Data
            .hex c0 90 37 58   ; $c177: c0 90 37 58   Data
            .hex 12 c8 b0 36   ; $c17b: 12 c8 b0 36   Data
            .hex 74 22 40 41   ; $c17f: 74 22 40 41   Data
            .hex 66 74 22 50   ; $c183: 66 74 22 50   Data
            .hex 78 8e 74 22   ; $c187: 78 8e 74 22   Data
            .hex 60 50 b6 74   ; $c18b: 60 50 b6 74   Data
            .hex 22 70 78 a0   ; $c18f: 22 70 78 a0   Data
            .hex 74 22 80 60   ; $c193: 74 22 80 60   Data
            .hex 66 7c 22 a0   ; $c197: 66 7c 22 a0   Data
            .hex b0 b6 7c 22   ; $c19b: b0 b6 7c 22   Data
            .hex b0 80 36 7c   ; $c19f: b0 80 36 7c   Data
            .hex 22 c0 60 8e   ; $c1a3: 22 c0 60 8e   Data
            .hex 7c 22 d0 40   ; $c1a7: 7c 22 d0 40   Data
            .hex cf 94 22 c0   ; $c1ab: cf 94 22 c0   Data
            .hex 3f 8b b2 21   ; $c1af: 3f 8b b2 21   Data
            .hex 90 70 8b b2   ; $c1b3: 90 70 8b b2   Data
            .hex 21 98 70 b0   ; $c1b7: 21 98 70 b0   Data
            .hex b0 12 a0 88   ; $c1bb: b0 12 a0 88   Data
            .hex cf b0 12 b0   ; $c1bf: cf b0 12 b0   Data
            .hex 98 cf b0 12   ; $c1c3: 98 cf b0 12   Data
            .hex b8            ; $c1c7: b8            Data
__c1c8:     .hex 00            ; $c1c8: 00            Data
__c1c9:     .hex 08            ; $c1c9: 08            Data
__c1ca:     .hex c0 03 08 e0   ; $c1ca: c0 03 08 e0   Data
            .hex ff 03 10 40   ; $c1ce: ff 03 10 40   Data
            .hex 03 01 0c 02   ; $c1d2: 03 01 0c 02   Data
            .hex 08 a0 02 04   ; $c1d6: 08 a0 02 04   Data
            .hex 90 03 04 c0   ; $c1da: 90 03 04 c0   Data
            .hex ff 02 18 40   ; $c1de: ff 02 18 40   Data
            .hex 03 18 a0 ff   ; $c1e2: 03 18 a0 ff   Data
            .hex 02 18 40 00   ; $c1e6: 02 18 40 00   Data
            .hex 0a c0 ff 01   ; $c1ea: 0a c0 ff 01   Data
            .hex 1c 30 02 04   ; $c1ee: 1c 30 02 04   Data
            .hex a0 ff 14 0f   ; $c1f2: a0 ff 14 0f   Data
            .hex 01 36 05      ; $c1f6: 01 36 05      Data
__c1f9:     .hex 48            ; $c1f9: 48            Data
__c1fa:     .hex bf            ; $c1fa: bf            Data
__c1fb:     .hex c1 78 31 2f   ; $c1fb: c1 78 31 2f   Data
            .hex a0 c0 c1 c8   ; $c1ff: a0 c0 c1 c8   Data
            .hex 30 31 a0 c0   ; $c203: 30 31 a0 c0   Data
            .hex c1 c8 30 31   ; $c207: c1 c8 30 31   Data
__c20b:     .hex b4 94 5c 3b   ; $c20b: b4 94 5c 3b   Data
            .hex 31 c2 36 c2   ; $c20f: 31 c2 36 c2   Data
            .hex 3b c2         ; $c213: 3b c2         Data
__c215:     .hex 65            ; $c215: 65            Data
__c216:     .hex c2 6e c2 77   ; $c216: c2 6e c2 77   Data
            .hex c2 80 c2 77   ; $c21a: c2 80 c2 77   Data
            .hex c2 80 c2 40   ; $c21e: c2 80 c2 40   Data
            .hex c2 40 c2 40   ; $c222: c2 40 c2 40   Data
            .hex c2 40 c2 89   ; $c226: c2 40 c2 89   Data
            .hex c2 96 c2 a3   ; $c22a: c2 96 c2 a3   Data
            .hex c2 b0 c2 02   ; $c22e: c2 b0 c2 02   Data
            .hex ab 44 00 44   ; $c232: ab 44 00 44   Data
            .hex 02 ab 53 00   ; $c236: 02 ab 53 00   Data
            .hex 53 02 ab 64   ; $c23a: 53 02 ab 64   Data
            .hex 00 64 12 60   ; $c23e: 00 64 12 60   Data
            .hex 36 c0 36 c0   ; $c242: 36 c0 36 c0   Data
            .hex 48 3c 48 b4   ; $c246: 48 3c 48 b4   Data
            .hex 66 30 66 30   ; $c24a: 66 30 66 30   Data
            .hex 78 3c 78 3c   ; $c24e: 78 3c 78 3c   Data
            .hex 8e c0 8e c0   ; $c252: 8e c0 8e c0   Data
            .hex a0 b4 a0 b4   ; $c256: a0 b4 a0 b4   Data
            .hex b6 30 b6 30   ; $c25a: b6 30 b6 30   Data
            .hex c8 3c c8 3c   ; $c25e: c8 3c c8 3c   Data
            .hex ed 00 ed 04   ; $c262: ed 00 ed 04   Data
            .hex c0 36 30 36   ; $c266: c0 36 30 36   Data
            .hex 2e 48 bf 48   ; $c26a: 2e 48 bf 48   Data
            .hex 04 30 66 c0   ; $c26e: 04 30 66 c0   Data
            .hex 66 c0 78 2f   ; $c272: 66 c0 78 2f   Data
            .hex 78 04 c0 8e   ; $c276: 78 04 c0 8e   Data
            .hex 30 8e 2e a0   ; $c27a: 30 8e 2e a0   Data
            .hex c0 a0 04 30   ; $c27e: c0 a0 04 30   Data
            .hex b6 c0 b6 c2   ; $c282: b6 c0 b6 c2   Data
            .hex c8 31 c8 06   ; $c286: c8 31 c8 06   Data
            .hex dd 50 10 50   ; $c28a: dd 50 10 50   Data
            .hex 10 70 dd 70   ; $c28e: 10 70 dd 70   Data
            .hex dd 90 00 90   ; $c292: dd 90 00 90   Data
            .hex 06 dd 60 10   ; $c296: 06 dd 60 10   Data
            .hex 60 10 80 dd   ; $c29a: 60 10 80 dd   Data
            .hex 80 dd a0 00   ; $c29e: 80 dd a0 00   Data
            .hex a0 06 dd 50   ; $c2a2: a0 06 dd 50   Data
            .hex 10 50 10 70   ; $c2a6: 10 50 10 70   Data
            .hex dd 70 dd b0   ; $c2aa: dd 70 dd b0   Data
            .hex 00 b0 08 dd   ; $c2ae: 00 b0 08 dd   Data
            .hex 60 10 60 10   ; $c2b2: 60 10 60 10   Data
            .hex 80 dd 80 dd   ; $c2b6: 80 dd 80 dd   Data
            .hex c0 00 c0 08   ; $c2ba: c0 00 c0 08   Data
            .hex 08 0f 0a      ; $c2be: 08 0f 0a      Data
__c2c1:     .hex 20 50 68 80   ; $c2c1: 20 50 68 80   Data
            .hex 98 c8         ; $c2c5: 98 c8         Data
__c2c7:     .hex c4 ca cd d0   ; $c2c7: c4 ca cd d0   Data
            .hex d3 d9         ; $c2cb: d3 d9         Data
__c2cd:     .hex 02 00 02 02   ; $c2cd: 02 00 02 02   Data
            .hex 02 00 02 00   ; $c2d1: 02 00 02 00   Data
            .hex 00 00 00 00   ; $c2d5: 00 00 00 00   Data
            .hex 00 00 00 00   ; $c2d9: 00 00 00 00   Data
            .hex 00 02 10 0f   ; $c2dd: 00 02 10 0f   Data
            .hex 03 03 0d 0a   ; $c2e1: 03 03 0d 0a   Data
__c2e5:     .hex d1 d3 d1 d2   ; $c2e5: d1 d3 d1 d2   Data
            .hex eb d4 da dd   ; $c2e9: eb d4 da dd   Data
__c2ed:     .hex 44            ; $c2ed: 44            Data
__c2ee:     .hex 21 4c 21 51   ; $c2ee: 21 4c 21 51   Data
            .hex 22 93 21 45   ; $c2f2: 22 93 21 45   Data
            .hex 21 4a 21 d3   ; $c2f6: 21 4a 21 d3   Data
            .hex 21 00 00 8c   ; $c2fa: 21 00 00 8c   Data
            .hex 22 12 22 4e   ; $c2fe: 22 12 22 4e   Data
            .hex 21 00 00 c8   ; $c302: 21 00 00 c8   Data
            .hex 21 d6 21      ; $c306: 21 d6 21      Data
__c309:     .hex 11            ; $c309: 11            Data
__c30a:     .hex c3 2e c3 44   ; $c30a: c3 2e c3 44   Data
            .hex c3 5a c3 1c   ; $c30e: c3 5a c3 1c   Data
            .hex 20 50 ac 24   ; $c312: 20 50 ac 24   Data
            .hex 24 5d 5c 60   ; $c316: 24 5d 5c 60   Data
            .hex 50 a4 24 24   ; $c31a: 50 a4 24 24   Data
            .hex 5c 5d 88 90   ; $c31e: 5c 5d 88 90   Data
            .hex a8 24 24 24   ; $c322: a8 24 24 24   Data
            .hex 24 98 60 ac   ; $c326: 24 98 60 ac   Data
            .hex 24 24 5c 5c   ; $c32a: 24 24 5c 5c   Data
            .hex 15 28 50 a8   ; $c32e: 15 28 50 a8   Data
            .hex 65 65 24 24   ; $c332: 65 65 24 24   Data
            .hex 50 50 a4 24   ; $c336: 50 50 a4 24   Data
            .hex 24 65 65 98   ; $c33a: 24 65 65 98   Data
            .hex 70 ac 24 24   ; $c33e: 70 ac 24 24   Data
            .hex 65 65 15 60   ; $c342: 65 65 15 60   Data
            .hex a0 a4 79 24   ; $c346: a0 a4 79 24   Data
            .hex 79 24 90 80   ; $c34a: 79 24 90 80   Data
            .hex a4 24 24 24   ; $c34e: a4 24 24 24   Data
            .hex 24 70 50 a4   ; $c352: 24 70 50 a4   Data
            .hex 24 24 24 24   ; $c356: 24 24 24 24   Data
            .hex 0e 40 70 a4   ; $c35a: 0e 40 70 a4   Data
            .hex 65 65 24 24   ; $c35e: 65 65 24 24   Data
            .hex b0 70 a4 24   ; $c362: b0 70 a4 24   Data
            .hex 24 65 65      ; $c366: 24 65 65      Data
__c369:     .hex 79            ; $c369: 79            Data
__c36a:     .hex c3 79 c3 7d   ; $c36a: c3 79 c3 7d   Data
            .hex c3 81 c3 89   ; $c36e: c3 81 c3 89   Data
            .hex c3 8d c3 85   ; $c372: c3 8d c3 85   Data
            .hex c3 85 c3 07   ; $c376: c3 85 c3 07   Data
            .hex 00 18 0f 03   ; $c37a: 00 18 0f 03   Data
            .hex 00 11 10 0f   ; $c37e: 00 11 10 0f   Data
            .hex 00 1b 10 03   ; $c382: 00 1b 10 03   Data
            .hex 00 1d 10 09   ; $c386: 00 1d 10 09   Data
            .hex 00 19 0f 05   ; $c38a: 00 19 0f 05   Data
            .hex 00 18 0f 07   ; $c38e: 00 18 0f 07   Data
            .hex 04 08 07 03   ; $c392: 04 08 07 03   Data
            .hex 07 04 08 08   ; $c396: 07 04 08 08   Data
            .hex 09 08 09 03   ; $c39a: 09 08 09 03   Data
            .hex 09 03 09 04   ; $c39e: 09 03 09 04   Data
            .hex 00 04 03 04   ; $c3a2: 00 04 03 04   Data
            .hex 01 0c 01 00   ; $c3a6: 01 0c 01 00   Data
            .hex 01 1f 01 04   ; $c3aa: 01 1f 01 04   Data
            .hex 01 0c 04 07   ; $c3ae: 01 0c 04 07   Data
            .hex 08 07 09 01   ; $c3b2: 08 07 09 01   Data
            .hex 01 04 01 00   ; $c3b6: 01 04 01 00   Data
            .hex 00 10 58      ; $c3ba: 00 10 58      Data
__c3bd:     .hex 8e            ; $c3bd: 8e            Data
__c3be:     .hex f3 6c f7 47   ; $c3be: f3 6c f7 47   Data
            .hex f6 ee f4 12   ; $c3c2: f6 ee f4 12   Data
            .hex c8 c9 12 24   ; $c3c6: c8 c9 12 24   Data
            .hex 24 42 d0 4f   ; $c3ca: 24 42 d0 4f   Data
            .hex df 22 a0 a1   ; $c3ce: df 22 a0 a1   Data
            .hex a2 a3 24 98   ; $c3d2: a2 a3 24 98   Data
            .hex 99 9a 9b 81   ; $c3d6: 99 9a 9b 81   Data
            .hex 82 24 83 22   ; $c3da: 82 24 83 22   Data
            .hex 48 49 4a 4b   ; $c3de: 48 49 4a 4b   Data
            .hex 24 9c 9d 9e   ; $c3e2: 24 9c 9d 9e   Data
            .hex 9f 24 a4 24   ; $c3e6: 9f 24 a4 24   Data
            .hex a5 00 c0 b4   ; $c3ea: a5 00 c0 b4   Data
            .hex bc b8 c0 12   ; $c3ee: bc b8 c0 12   Data
            .hex 24 24         ; $c3f2: 24 24         Data
__c3f4:     .hex 23 db 42 50   ; $c3f4: 23 db 42 50   Data
            .hex 21 ca 4c 24   ; $c3f8: 21 ca 4c 24   Data
            .hex 21 ea 0c 24   ; $c3fc: 21 ea 0c 24   Data
            .hex 24 19 15 0a   ; $c400: 24 19 15 0a   Data
            .hex 22 0e 1b 24   ; $c404: 22 0e 1b 24   Data
            .hex c0 24 24 00   ; $c408: c0 24 24 00   Data
__c40c:     .hex 23 e2 04 04   ; $c40c: 23 e2 04 04   Data
            .hex 05 05 01 22   ; $c410: 05 05 01 22   Data
            .hex 0a 4c 24 22   ; $c414: 0a 4c 24 22   Data
            .hex 2a 0c 24 10   ; $c418: 2a 0c 24 10   Data
            .hex 0a 16 0e 24   ; $c41c: 0a 16 0e 24   Data
            .hex 24 18 8c 0e   ; $c420: 24 18 8c 0e   Data
            .hex 1b 24 22 4a   ; $c424: 1b 24 22 4a   Data
            .hex 4c 24 00 12   ; $c428: 4c 24 00 12   Data
            .hex 24 24 22 69   ; $c42c: 24 24 22 69   Data
            .hex 6a 69 6a 21   ; $c430: 6a 69 6a 21   Data
            .hex 42 d1 67 21   ; $c434: 42 d1 67 21   Data
            .hex 5d d1 67 23   ; $c438: 5d d1 67 23   Data
            .hex 60 60 69 00   ; $c43c: 60 60 69 00   Data
__c440:     .hex 58            ; $c440: 58            Data
__c441:     .hex c4 00 04 aa   ; $c441: c4 00 04 aa   Data
            .hex c4 cb c4      ; $c445: c4 cb c4      Data
__c448:     .hex d4            ; $c448: d4            Data
__c449:     .hex c4 50 04 3e   ; $c449: c4 50 04 3e   Data
            .hex c5 53 c5      ; $c44d: c5 53 c5      Data
__c450:     .hex 74            ; $c450: 74            Data
__c451:     .hex c5 a0 04 d2   ; $c451: c5 a0 04 d2   Data
            .hex c5 07 c6 50   ; $c455: c5 07 c6 50   Data
            .hex 28 5f 28 14   ; $c459: 28 5f 28 14   Data
            .hex 40 92 40 90   ; $c45d: 40 92 40 90   Data
            .hex 48 cd 48 32   ; $c461: 48 cd 48 32   Data
            .hex 70 4b 70 c4   ; $c465: 70 4b 70 c4   Data
            .hex 88 ef 88 32   ; $c469: 88 ef 88 32   Data
            .hex 98 5e 98 d4   ; $c46d: 98 5e 98 d4   Data
            .hex c0 e5 c0 af   ; $c471: c0 e5 c0 af   Data
            .hex c8 c0 c8 68   ; $c475: c8 c0 c8 68   Data
            .hex c8 78 c8 8f   ; $c479: c8 78 c8 8f   Data
            .hex d0 98 d0 08   ; $c47d: d0 98 d0 08   Data
            .hex d8 40 d8 ff   ; $c481: d8 40 d8 ff   Data
__c485:     .hex 40 28 5f 28   ; $c485: 40 28 5f 28   Data
            .hex 40 40 a3 40   ; $c489: 40 40 a3 40   Data
            .hex bd 40 cf 40   ; $c48d: bd 40 cf 40   Data
            .hex 00 c8 2d c8   ; $c491: 00 c8 2d c8   Data
            .hex 62 c8 77 cb   ; $c495: 62 c8 77 cb   Data
            .hex b4 a8 cb a8   ; $c499: b4 a8 cb a8   Data
            .hex c8 d0 fe d0   ; $c49d: c8 d0 fe d0   Data
            .hex 18 68 20 68   ; $c4a1: 18 68 20 68   Data
            .hex 00 a8 20 a8   ; $c4a5: 00 a8 20 a8   Data
            .hex ff 40 28 5f   ; $c4a9: ff 40 28 5f   Data
            .hex 28 60 40 c6   ; $c4ad: 28 60 40 c6   Data
            .hex 40 38 70 c7   ; $c4b1: 40 38 70 c7   Data
            .hex 70 d0 70 ef   ; $c4b5: 70 d0 70 ef   Data
            .hex 70 10 98 2f   ; $c4b9: 70 10 98 2f   Data
            .hex 98 38 98 c6   ; $c4bd: 98 38 98 c6   Data
            .hex 98 38 c0 c6   ; $c4c1: 98 38 c0 c6   Data
            .hex c0 10 d8 40   ; $c4c5: c0 10 d8 40   Data
            .hex d8 ff 10 40   ; $c4c9: d8 ff 10 40   Data
            .hex ef 40 08 d8   ; $c4cd: ef 40 08 d8   Data
            .hex f8 da ff 9c   ; $c4d1: f8 da ff 9c   Data
            .hex 20 9c 24 d4   ; $c4d5: 20 9c 24 d4   Data
            .hex 30 d4 ad ec   ; $c4d9: 30 d4 ad ec   Data
            .hex 30 ec ad 14   ; $c4dd: 30 ec ad 14   Data
            .hex 40 14 c3 2c   ; $c4e1: 40 14 c3 2c   Data
            .hex 40 2c bd 6c   ; $c4e5: 40 2c bd 6c   Data
            .hex 40 6c ad 8c   ; $c4e9: 40 6c ad 8c   Data
            .hex 40 8c 8d a4   ; $c4ed: 40 8c 8d a4   Data
            .hex 48 a4 ab bc   ; $c4f1: 48 a4 ab bc   Data
            .hex 48 bc 9d 44   ; $c4f5: 48 bc 9d 44   Data
            .hex 70 44 c4 6c   ; $c4f9: 70 44 c4 6c   Data
            .hex 18 6c 2d ff   ; $c4fd: 18 6c 2d ff   Data
__c501:     .hex 14 47 14 5d   ; $c501: 14 47 14 5d   Data
            .hex 14 78 14 9d   ; $c505: 14 78 14 9d   Data
            .hex 2c 47 2c 9d   ; $c509: 2c 47 2c 9d   Data
            .hex 44 47 44 86   ; $c50d: 44 47 44 86   Data
            .hex 5c 47 5c 6d   ; $c511: 5c 47 5c 6d   Data
            .hex 74 47 74 76   ; $c515: 74 47 74 76   Data
            .hex 8c 47 8c 6d   ; $c519: 8c 47 8c 6d   Data
            .hex a4 47 a4 86   ; $c51d: a4 47 a4 86   Data
            .hex bc 47 bc 6d   ; $c521: bc 47 bc 6d   Data
            .hex d4 20 d4 6d   ; $c525: d4 20 d4 6d   Data
            .hex ec 20 ec 6d   ; $c529: ec 20 ec 6d   Data
            .hex 6c 18 6c 2d   ; $c52d: 6c 18 6c 2d   Data
            .hex d4 90 d4 bd   ; $c531: d4 90 d4 bd   Data
            .hex ec 90 ec bd   ; $c535: ec 90 ec bd   Data
            .hex 9c 18 9c 24   ; $c539: 9c 18 9c 24   Data
            .hex ff 14 4f 14   ; $c53d: ff 14 4f 14   Data
            .hex c5 2c 4f 2c   ; $c541: c5 2c 4f 2c   Data
            .hex c5 d4 20 d4   ; $c545: c5 d4 20 d4   Data
            .hex c7 ec 20 ec   ; $c549: c7 ec 20 ec   Data
            .hex c7 6c 18 6c   ; $c54d: c7 6c 18 6c   Data
            .hex 2d ff 2c 40   ; $c551: 2d ff 2c 40   Data
            .hex 2c c3 44 40   ; $c555: 2c c3 44 40   Data
            .hex 44 c3 5c 40   ; $c559: 44 c3 5c 40   Data
            .hex 5c c3 74 40   ; $c55d: 5c c3 74 40   Data
            .hex 74 c3 8c 40   ; $c561: 74 c3 8c 40   Data
            .hex 8c c3 a4 40   ; $c565: 8c c3 a4 40   Data
            .hex a4 c3 bc 40   ; $c569: a4 c3 bc 40   Data
            .hex bc c3 d4 40   ; $c56d: bc c3 d4 40   Data
            .hex d4 c3 ff 50   ; $c571: d4 c3 ff 50   Data
            .hex 10 d0 10 50   ; $c575: 10 d0 10 50   Data
            .hex 18 50 37 50   ; $c579: 18 50 37 50   Data
            .hex 2b 5d 40 d0   ; $c57d: 2b 5d 40 d0   Data
            .hex 24 f8 24 07   ; $c581: 24 f8 24 07   Data
            .hex 43 92 48 90   ; $c585: 43 92 48 90   Data
            .hex 49 cf 50 30   ; $c589: 49 cf 50 30   Data
            .hex 71 4b 78 c0   ; $c58d: 71 4b 78 c0   Data
            .hex 89 f7 90 30   ; $c591: 89 f7 90 30   Data
            .hex 99 5d a0 0a   ; $c595: 99 5d a0 0a   Data
            .hex 00 0a ff f5   ; $c599: 00 0a ff f5   Data
            .hex 00 f5 ff ff   ; $c59d: 00 f5 ff ff   Data
__c5a1:     .hex 40 14 d0 14   ; $c5a1: 40 14 d0 14   Data
            .hex d0 2b fe 2b   ; $c5a5: d0 2b fe 2b   Data
            .hex 00 41 a5 47   ; $c5a9: 00 41 a5 47   Data
            .hex 50 18 50 3f   ; $c5ad: 50 18 50 3f   Data
            .hex 50 2f 5d 2f   ; $c5b1: 50 2f 5d 2f   Data
            .hex bb 41 cf 47   ; $c5b5: bb 41 cf 47   Data
            .hex b4 a9 cb af   ; $c5b9: b4 a9 cb af   Data
            .hex d4 95 ec 95   ; $c5bd: d4 95 ec 95   Data
            .hex 10 69 28 6f   ; $c5c1: 10 69 28 6f   Data
            .hex d0 90 f0 94   ; $c5c5: d0 90 f0 94   Data
            .hex 0a 00 0a ff   ; $c5c9: 0a 00 0a ff   Data
            .hex f5 00 f5 ff   ; $c5cd: f5 00 f5 ff   Data
            .hex ff d0 1f ef   ; $c5d1: ff d0 1f ef   Data
            .hex 1f 5c 28 5c   ; $c5d5: 1f 5c 28 5c   Data
            .hex 40 60 42 c7   ; $c5d9: 40 60 42 c7   Data
            .hex 45 10 4f 2b   ; $c5dd: 45 10 4f 2b   Data
            .hex 4f 38 72 c7   ; $c5e1: 4f 38 72 c7   Data
            .hex 75 ca 7f ef   ; $c5e5: 75 ca 7f ef   Data
            .hex 70 38 9a c6   ; $c5e9: 70 38 9a c6   Data
            .hex 9c 10 a7 2f   ; $c5ed: 9c 10 a7 2f   Data
            .hex a7 38 c2 c6   ; $c5f1: a7 38 c2 c6   Data
            .hex c5 40 10 b8   ; $c5f5: c5 40 10 b8   Data
            .hex 10 48 00 48   ; $c5f9: 10 48 00 48   Data
            .hex 28 0a 00 0a   ; $c5fd: 28 0a 00 0a   Data
            .hex ff f5 00 f5   ; $c601: ff f5 00 f5   Data
            .hex ff ff 08 4f   ; $c605: ff ff 08 4f   Data
            .hex f8 4f 0a 00   ; $c609: f8 4f 0a 00   Data
            .hex 0a ff f5 00   ; $c60d: 0a ff f5 00   Data
            .hex f5 ff ff      ; $c611: f5 ff ff      Data
__c614:     .hex f1 f2 5e f3   ; $c614: f1 f2 5e f3   Data
            .hex f4 f5 f6      ; $c618: f4 f5 f6      Data
__c61b:     .hex 01 02 03 04   ; $c61b: 01 02 03 04   Data
            .hex 08 12 16      ; $c61f: 08 12 16      Data
__c622:     .hex 26            ; $c622: 26            Data
__c623:     .hex c6 2a c6 19   ; $c623: c6 2a c6 19   Data
            .hex 0f 1b 21 04   ; $c627: 0f 1b 21 04   Data
            .hex 0f 06 21      ; $c62b: 0f 06 21      Data
__c62e:     .hex 00 05 00 01   ; $c62e: 00 05 00 01   Data
            .hex 04 01 04 01   ; $c632: 04 01 04 01   Data
            .hex 04 02 04 05   ; $c636: 04 02 04 05   Data
            .hex 00 02 04 05   ; $c63a: 00 02 04 05   Data
            .hex 04 05 03 00   ; $c63e: 04 05 03 00   Data
            .hex 05 01 03 01   ; $c642: 05 01 03 01   Data
            .hex 00 04 02 01   ; $c646: 00 04 02 01   Data
            .hex 04 02 04 02   ; $c64a: 04 02 04 02   Data
__c64e:     .hex 2d 01 2d 2d   ; $c64e: 2d 01 2d 2d   Data
            .hex 03 96 02 0f   ; $c652: 03 96 02 0f   Data
            .hex 1e 1e 1f 01   ; $c656: 1e 1e 1f 01   Data
            .hex 2d 7e 06 01   ; $c65a: 2d 7e 06 01   Data
            .hex 0a 01 01 0f   ; $c65e: 0a 01 01 0f   Data
            .hex 01 96 0c 3c   ; $c662: 01 96 0c 3c   Data
            .hex 2d 02 01 0f   ; $c666: 2d 02 01 0f   Data
            .hex 04 2c 10 ff   ; $c66a: 04 2c 10 ff   Data

;-------------------------------------------------------------------------------
; reset vector
;-------------------------------------------------------------------------------
reset:      sei                ; $c66e: 78        
            cld                ; $c66f: d8        
            lda #$10           ; $c670: a9 10     
            sta PPUCTRL        ; $c672: 8d 00 20  
            ldx #$ff           ; $c675: a2 ff     
            txs                ; $c677: 9a        
__c678:     lda PPUSTATUS      ; $c678: ad 02 20  
            and #$80           ; $c67b: 29 80     
            beq __c678         ; $c67d: f0 f9     
            ldy #$07           ; $c67f: a0 07     
            sty $01            ; $c681: 84 01     
            ldy #$00           ; $c683: a0 00     
            sty $00            ; $c685: 84 00     
            lda #$00           ; $c687: a9 00     
__c689:     sta ($00),y        ; $c689: 91 00     
            dey                ; $c68b: 88        
            bne __c689         ; $c68c: d0 fb     
            dec $01            ; $c68e: c6 01     
            bpl __c689         ; $c690: 10 f7     
            jsr __c6b6         ; $c692: 20 b6 c6  
            lda #$6f           ; $c695: a9 6f     
            sta $ed            ; $c697: 85 ed     
            lda #$18           ; $c699: a9 18     
            sta $48            ; $c69b: 85 48     
            lda #$01           ; $c69d: a9 01     
            sta $4c            ; $c69f: 85 4c     
            sta $47            ; $c6a1: 85 47     
            lda #$00           ; $c6a3: a9 00     
            sta $46            ; $c6a5: 85 46     
            lda $10            ; $c6a7: a5 10     
            eor #$80           ; $c6a9: 49 80     
            sta PPUCTRL        ; $c6ab: 8d 00 20  
            sta $10            ; $c6ae: 85 10     
__c6b0:     jsr __f1f8         ; $c6b0: 20 f8 f1  
            jmp __c6b0         ; $c6b3: 4c b0 c6  

;-------------------------------------------------------------------------------
__c6b6:     lda #$10           ; $c6b6: a9 10     
            sta PPUCTRL        ; $c6b8: 8d 00 20  
            sta $10            ; $c6bb: 85 10     
            lda #$06           ; $c6bd: a9 06     
            sta PPUMASK        ; $c6bf: 8d 01 20  
            sta $11            ; $c6c2: 85 11     
            lda #$00           ; $c6c4: a9 00     
            sta PPUSCROLL      ; $c6c6: 8d 05 20  
            sta $12            ; $c6c9: 85 12     
            sta PPUSCROLL      ; $c6cb: 8d 05 20  
            sta $13            ; $c6ce: 85 13     
            lda #$ff           ; $c6d0: a9 ff     
            ldy #$00           ; $c6d2: a0 00     
__c6d4:     sta $0200,y        ; $c6d4: 99 00 02  
            dey                ; $c6d7: 88        
            beq __c6dd         ; $c6d8: f0 03     
            jmp __c6d4         ; $c6da: 4c d4 c6  

;-------------------------------------------------------------------------------
__c6dd:     jsr __ca16         ; $c6dd: 20 16 ca  
            lda #$00           ; $c6e0: a9 00     
            sta DMC_RAW        ; $c6e2: 8d 11 40  
            rts                ; $c6e5: 60        

;-------------------------------------------------------------------------------
; nmi vector
;-------------------------------------------------------------------------------
nmi:        pha                ; $c6e6: 48        
            txa                ; $c6e7: 8a        
            pha                ; $c6e8: 48        
            tya                ; $c6e9: 98        
            pha                ; $c6ea: 48        
            lda $00            ; $c6eb: a5 00     
            pha                ; $c6ed: 48        
            lda $01            ; $c6ee: a5 01     
            pha                ; $c6f0: 48        
            lda $02            ; $c6f1: a5 02     
            pha                ; $c6f3: 48        
            lda $03            ; $c6f4: a5 03     
            pha                ; $c6f6: 48        
            lda $04            ; $c6f7: a5 04     
            pha                ; $c6f9: 48        
            lda $05            ; $c6fa: a5 05     
            pha                ; $c6fc: 48        
            lda $06            ; $c6fd: a5 06     
            pha                ; $c6ff: 48        
            lda $07            ; $c700: a5 07     
            pha                ; $c702: 48        
            lda $10            ; $c703: a5 10     
            and #$7f           ; $c705: 29 7f     
            sta PPUCTRL        ; $c707: 8d 00 20  
            sta $10            ; $c70a: 85 10     
            jsr __eeb0         ; $c70c: 20 b0 ee  
            jsr __ee9c         ; $c70f: 20 9c ee  
            jsr __ca7a         ; $c712: 20 7a ca  
            jsr __f91f         ; $c715: 20 1f f9  
            jsr __f219         ; $c718: 20 19 f2  
            lda $47            ; $c71b: a5 47     
            bne __c733         ; $c71d: d0 14     
            lda $46            ; $c71f: a5 46     
            beq __c746         ; $c721: f0 23     
            lda $4d            ; $c723: a5 4d     
            bne __c72d         ; $c725: d0 06     
            jsr __cd6e         ; $c727: 20 6e cd  
            jmp __c749         ; $c72a: 4c 49 c7  

;-------------------------------------------------------------------------------
__c72d:     jsr __cfc1         ; $c72d: 20 c1 cf  
            jmp __c749         ; $c730: 4c 49 c7  

;-------------------------------------------------------------------------------
__c733:     lda $4c            ; $c733: a5 4c     
            bne __c73d         ; $c735: d0 06     
            jsr __c897         ; $c737: 20 97 c8  
            jmp __c749         ; $c73a: 4c 49 c7  

;-------------------------------------------------------------------------------
__c73d:     jsr __c773         ; $c73d: 20 73 c7  
            jsr __f1af         ; $c740: 20 af f1  
            jmp __c749         ; $c743: 4c 49 c7  

;-------------------------------------------------------------------------------
__c746:     jsr __c932         ; $c746: 20 32 c9  
__c749:     jsr __ee3a         ; $c749: 20 3a ee  
            lda $10            ; $c74c: a5 10     
            eor #$80           ; $c74e: 49 80     
            sta PPUCTRL        ; $c750: 8d 00 20  
            sta $10            ; $c753: 85 10     
            pla                ; $c755: 68        
            sta $07            ; $c756: 85 07     
            pla                ; $c758: 68        
            sta $06            ; $c759: 85 06     
            pla                ; $c75b: 68        
            sta $05            ; $c75c: 85 05     
            pla                ; $c75e: 68        
            sta $04            ; $c75f: 85 04     
            pla                ; $c761: 68        
            sta $03            ; $c762: 85 03     
            pla                ; $c764: 68        
            sta $02            ; $c765: 85 02     
            pla                ; $c767: 68        
            sta $01            ; $c768: 85 01     
            pla                ; $c76a: 68        
            sta $00            ; $c76b: 85 00     
            pla                ; $c76d: 68        
            tay                ; $c76e: a8        
            pla                ; $c76f: 68        
            tax                ; $c770: aa        
            pla                ; $c771: 68        
            rti                ; $c772: 40        

;-------------------------------------------------------------------------------
__c773:     lda $06a2          ; $c773: ad a2 06  
            bne __c77b         ; $c776: d0 03     
            sta SND_CHN        ; $c778: 8d 15 40  
__c77b:     lda $05b4          ; $c77b: ad b4 05  
            bne __c78e         ; $c77e: d0 0e     
            lda #$80           ; $c780: a9 80     
            sta $fd            ; $c782: 85 fd     
            lda #$04           ; $c784: a9 04     
            sta $05b4          ; $c786: 8d b4 05  
            lda #$0f           ; $c789: a9 0f     
            sta SND_CHN        ; $c78b: 8d 15 40  
__c78e:     lda $52            ; $c78e: a5 52     
            bne __c7bd         ; $c790: d0 2b     
            jsr __ca70         ; $c792: 20 70 ca  
            lda #$66           ; $c795: a9 66     
            sta $00            ; $c797: 85 00     
            lda #$f2           ; $c799: a9 f2     
            sta $01            ; $c79b: 85 01     
            jsr __ef3c         ; $c79d: 20 3c ef  
            lda $ed            ; $c7a0: a5 ed     
            sta $0200          ; $c7a2: 8d 00 02  
            lda #$5c           ; $c7a5: a9 5c     
            sta $0201          ; $c7a7: 8d 01 02  
            lda #$00           ; $c7aa: a9 00     
            sta $0202          ; $c7ac: 8d 02 02  
            sta $4e            ; $c7af: 85 4e     
            lda #$38           ; $c7b1: a9 38     
            sta $0203          ; $c7b3: 8d 03 02  
            sta $52            ; $c7b6: 85 52     
            lda #$20           ; $c7b8: a9 20     
            sta $3c            ; $c7ba: 85 3c     
            rts                ; $c7bc: 60        

;-------------------------------------------------------------------------------
__c7bd:     lda $15            ; $c7bd: a5 15     
            and #$20           ; $c7bf: 29 20     
            bne __c7dd         ; $c7c1: d0 1a     
            lda $15            ; $c7c3: a5 15     
            and #$10           ; $c7c5: 29 10     
            bne __c7fe         ; $c7c7: d0 35     
            lda #$00           ; $c7c9: a9 00     
            sta $6a            ; $c7cb: 85 6a     
            lda $3c            ; $c7cd: a5 3c     
            bne __c7dc         ; $c7cf: d0 0b     
            lda #$01           ; $c7d1: a9 01     
            sta $4e            ; $c7d3: 85 4e     
            lda #$01           ; $c7d5: a9 01     
            sta $ef            ; $c7d7: 85 ef     
            jmp __c826         ; $c7d9: 4c 26 c8  

;-------------------------------------------------------------------------------
__c7dc:     rts                ; $c7dc: 60        

;-------------------------------------------------------------------------------
__c7dd:     lda #$20           ; $c7dd: a9 20     
            sta $3c            ; $c7df: 85 3c     
            lda $6a            ; $c7e1: a5 6a     
            beq __c7e6         ; $c7e3: f0 01     
            rts                ; $c7e5: 60        

;-------------------------------------------------------------------------------
__c7e6:     lda $0200          ; $c7e6: ad 00 02  
            clc                ; $c7e9: 18        
            adc #$10           ; $c7ea: 69 10     
            cmp #$af           ; $c7ec: c9 af     
            bne __c7f2         ; $c7ee: d0 02     
            lda #$6f           ; $c7f0: a9 6f     
__c7f2:     sta $0200          ; $c7f2: 8d 00 02  
            sta $ed            ; $c7f5: 85 ed     
            inc $6a            ; $c7f7: e6 6a     
            lda #$0a           ; $c7f9: a9 0a     
            sta $7d            ; $c7fb: 85 7d     
            rts                ; $c7fd: 60        

;-------------------------------------------------------------------------------
__c7fe:     sta $ec            ; $c7fe: 85 ec     
            ldx #$0a           ; $c800: a2 0a     
            lda #$00           ; $c802: a9 00     
__c804:     sta $24,x          ; $c804: 95 24     
            dex                ; $c806: ca        
            bne __c804         ; $c807: d0 fb     
            lda $ed            ; $c809: a5 ed     
            lsr                ; $c80b: 4a        
            lsr                ; $c80c: 4a        
            lsr                ; $c80d: 4a        
            lsr                ; $c80e: 4a        
            sec                ; $c80f: 38        
            sbc #$06           ; $c810: e9 06     
            sta $ef            ; $c812: 85 ef     
            cmp #$02           ; $c814: c9 02     
            bmi __c81f         ; $c816: 30 07     
            lda #$1c           ; $c818: a9 1c     
            sta $48            ; $c81a: 85 48     
            jmp __c823         ; $c81c: 4c 23 c8  

;-------------------------------------------------------------------------------
__c81f:     lda #$18           ; $c81f: a9 18     
            sta $48            ; $c821: 85 48     
__c823:     jsr __edff         ; $c823: 20 ff ed  
__c826:     lda #$0f           ; $c826: a9 0f     
            sta $18            ; $c828: 85 18     
            lda #$13           ; $c82a: a9 13     
            sta $19            ; $c82c: 85 19     
            lda #$00           ; $c82e: a9 00     
            sta $47            ; $c830: 85 47     
            sta $0586          ; $c832: 8d 86 05  
            sta $0587          ; $c835: 8d 87 05  
            sta $46            ; $c838: 85 46     
            lda #$00           ; $c83a: a9 00     
            sta $52            ; $c83c: 85 52     
            sta $e8            ; $c83e: 85 e8     
            sta $6a            ; $c840: 85 6a     
            lda #$01           ; $c842: a9 01     
            sta $4a            ; $c844: 85 4a     
            sta $0580          ; $c846: 8d 80 05  
            sta $0581          ; $c849: 8d 81 05  
            lda $ef            ; $c84c: a5 ef     
            and #$01           ; $c84e: 29 01     
            beq __c854         ; $c850: f0 02     
            lda #$02           ; $c852: a9 02     
__c854:     sta $4b            ; $c854: 85 4b     
            sta $0582          ; $c856: 8d 82 05  
            sta $0583          ; $c859: 8d 83 05  
            lda #$00           ; $c85c: a9 00     
            sta $49            ; $c85e: 85 49     
            sta $05b0          ; $c860: 8d b0 05  
            sta $05b1          ; $c863: 8d b1 05  
            sta $fc            ; $c866: 85 fc     
            lda #$03           ; $c868: a9 03     
            ldx $4e            ; $c86a: a6 4e     
            beq __c870         ; $c86c: f0 02     
            lda #$01           ; $c86e: a9 01     
__c870:     sta $4c            ; $c870: 85 4c     
            sta $0584          ; $c872: 8d 84 05  
            sta $0585          ; $c875: 8d 85 05  
            sta $e9            ; $c878: 85 e9     
            lda $4e            ; $c87a: a5 4e     
            bne __c88c         ; $c87c: d0 0e     
            lda #$80           ; $c87e: a9 80     
            sta $39            ; $c880: 85 39     
            lda #$01           ; $c882: a9 01     
            sta $fd            ; $c884: 85 fd     
            lda #$0f           ; $c886: a9 0f     
            sta SND_CHN        ; $c888: 8d 15 40  
            rts                ; $c88b: 60        

;-------------------------------------------------------------------------------
__c88c:     dec $05b4          ; $c88c: ce b4 05  
            lda #$6f           ; $c88f: a9 6f     
            sta $39            ; $c891: 85 39     
            jsr __ca08         ; $c893: 20 08 ca  
            rts                ; $c896: 60        

;-------------------------------------------------------------------------------
__c897:     jsr __f1af         ; $c897: 20 af f1  
            lda $4e            ; $c89a: a5 4e     
            bne __c8b1         ; $c89c: d0 13     
            lda $39            ; $c89e: a5 39     
            cmp #$75           ; $c8a0: c9 75     
            beq __c8c0         ; $c8a2: f0 1c     
            cmp #$74           ; $c8a4: c9 74     
            beq __c8cf         ; $c8a6: f0 27     
            cmp #$73           ; $c8a8: c9 73     
            beq __c8d5         ; $c8aa: f0 29     
            cmp #$5f           ; $c8ac: c9 5f     
            beq __c8de         ; $c8ae: f0 2e     
            rts                ; $c8b0: 60        

;-------------------------------------------------------------------------------
__c8b1:     sta $4c            ; $c8b1: 85 4c     
            lda #$00           ; $c8b3: a9 00     
            sta $4e            ; $c8b5: 85 4e     
            sta $52            ; $c8b7: 85 52     
            jsr __ca16         ; $c8b9: 20 16 ca  
            jsr __ca08         ; $c8bc: 20 08 ca  
            rts                ; $c8bf: 60        

;-------------------------------------------------------------------------------
__c8c0:     lda $4a            ; $c8c0: a5 4a     
            cmp #$02           ; $c8c2: c9 02     
            bne __c8c9         ; $c8c4: d0 03     
            jsr __e244         ; $c8c6: 20 44 e2  
__c8c9:     jsr __ca08         ; $c8c9: 20 08 ca  
            dec $39            ; $c8cc: c6 39     
            rts                ; $c8ce: 60        

;-------------------------------------------------------------------------------
__c8cf:     jsr __ca33         ; $c8cf: 20 33 ca  
            dec $39            ; $c8d2: c6 39     
            rts                ; $c8d4: 60        

;-------------------------------------------------------------------------------
__c8d5:     jsr __ca5e         ; $c8d5: 20 5e ca  
            jsr __edee         ; $c8d8: 20 ee ed  
            dec $39            ; $c8db: c6 39     
            rts                ; $c8dd: 60        

;-------------------------------------------------------------------------------
__c8de:     ldx $49            ; $c8de: a6 49     
            lda #$01           ; $c8e0: a9 01     
            sta $0586,x        ; $c8e2: 9d 86 05  
            sta $47            ; $c8e5: 85 47     
            lda $48            ; $c8e7: a5 48     
            cmp #$1c           ; $c8e9: c9 1c     
            bne __c8f9         ; $c8eb: d0 0c     
            lda $49            ; $c8ed: a5 49     
            eor #$01           ; $c8ef: 49 01     
            tax                ; $c8f1: aa        
            lda $0586,x        ; $c8f2: bd 86 05  
            sta $47            ; $c8f5: 85 47     
            beq __c902         ; $c8f7: f0 09     
__c8f9:     sta $4c            ; $c8f9: 85 4c     
            jsr __ca08         ; $c8fb: 20 08 ca  
            jsr __ca16         ; $c8fe: 20 16 ca  
            rts                ; $c901: 60        

;-------------------------------------------------------------------------------
__c902:     ldy #$00           ; $c902: a0 00     
            sty $46            ; $c904: 84 46     
            stx $49            ; $c906: 86 49     
            jsr __c912         ; $c908: 20 12 c9  
            lda #$85           ; $c90b: a9 85     
            sta $39            ; $c90d: 85 39     
            sta $e9            ; $c90f: 85 e9     
            rts                ; $c911: 60        

;-------------------------------------------------------------------------------
__c912:     ldy #$00           ; $c912: a0 00     
__c914:     lda $0580,x        ; $c914: bd 80 05  
            sta $004a,y        ; $c917: 99 4a 00  
            inx                ; $c91a: e8        
            inx                ; $c91b: e8        
            iny                ; $c91c: c8        
            cpy #$03           ; $c91d: c0 03     
            bne __c914         ; $c91f: d0 f3     
            rts                ; $c921: 60        

;-------------------------------------------------------------------------------
__c922:     ldy #$00           ; $c922: a0 00     
__c924:     lda $004a,y        ; $c924: b9 4a 00  
            sta $0580,x        ; $c927: 9d 80 05  
            inx                ; $c92a: e8        
            inx                ; $c92b: e8        
            iny                ; $c92c: c8        
            cpy #$03           ; $c92d: c0 03     
            bne __c924         ; $c92f: d0 f3     
            rts                ; $c931: 60        

;-------------------------------------------------------------------------------
__c932:     jsr __f1af         ; $c932: 20 af f1  
            lda $39            ; $c935: a5 39     
            cmp #$84           ; $c937: c9 84     
            beq __c94f         ; $c939: f0 14     
            cmp #$6e           ; $c93b: c9 6e     
            bcs __c965         ; $c93d: b0 26     
            cmp #$68           ; $c93f: c9 68     
            bne __c94e         ; $c941: d0 0b     
            jsr __ca82         ; $c943: 20 82 ca  
            lda #$01           ; $c946: a9 01     
            sta $46            ; $c948: 85 46     
            lda #$00           ; $c94a: a9 00     
            sta $39            ; $c94c: 85 39     
__c94e:     rts                ; $c94e: 60        

;-------------------------------------------------------------------------------
__c94f:     ldx $49            ; $c94f: a6 49     
            lda $4a            ; $c951: a5 4a     
            cmp $0580,x        ; $c953: dd 80 05  
            beq __c962         ; $c956: f0 0a     
            cmp #$01           ; $c958: c9 01     
            beq __c962         ; $c95a: f0 06     
            jsr __d04e         ; $c95c: 20 4e d0  
            jsr __ced4         ; $c95f: 20 d4 ce  
__c962:     dec $39            ; $c962: c6 39     
            rts                ; $c964: 60        

;-------------------------------------------------------------------------------
__c965:     jsr __c969         ; $c965: 20 69 c9  
            rts                ; $c968: 60        

;-------------------------------------------------------------------------------
__c969:     cmp #$74           ; $c969: c9 74     
            beq __c976         ; $c96b: f0 09     
            cmp #$6f           ; $c96d: c9 6f     
            beq __c982         ; $c96f: f0 11     
            cmp #$6e           ; $c971: c9 6e     
            beq __c988         ; $c973: f0 13     
            rts                ; $c975: 60        

;-------------------------------------------------------------------------------
__c976:     jsr __ca08         ; $c976: 20 08 ca  
            jsr __ca16         ; $c979: 20 16 ca  
            jsr __ca33         ; $c97c: 20 33 ca  
            dec $39            ; $c97f: c6 39     
            rts                ; $c981: 60        

;-------------------------------------------------------------------------------
__c982:     jsr __ca16         ; $c982: 20 16 ca  
            dec $39            ; $c985: c6 39     
            rts                ; $c987: 60        

;-------------------------------------------------------------------------------
__c988:     jsr __ca70         ; $c988: 20 70 ca  
            ldx $4a            ; $c98b: a6 4a     
            dex                ; $c98d: ca        
            txa                ; $c98e: 8a        
            asl                ; $c98f: 0a        
            sta $08            ; $c990: 85 08     
            tax                ; $c992: aa        
            lda __c3bd,x       ; $c993: bd bd c3  
            sta $00            ; $c996: 85 00     
            lda __c3be,x       ; $c998: bd be c3  
            sta $01            ; $c99b: 85 01     
            jsr __ef3c         ; $c99d: 20 3c ef  
            lda $4a            ; $c9a0: a5 4a     
            cmp #$04           ; $c9a2: c9 04     
            beq __c9b1         ; $c9a4: f0 0b     
            lda #$b6           ; $c9a6: a9 b6     
            sta $00            ; $c9a8: 85 00     
            lda #$f8           ; $c9aa: a9 f8     
            sta $01            ; $c9ac: 85 01     
            jsr __ef3c         ; $c9ae: 20 3c ef  
__c9b1:     lda $48            ; $c9b1: a5 48     
            cmp #$1c           ; $c9b3: c9 1c     
            beq __c9ca         ; $c9b5: f0 13     
            lda #$75           ; $c9b7: a9 75     
            sta $00            ; $c9b9: 85 00     
            lda #$20           ; $c9bb: a9 20     
            sta $01            ; $c9bd: 85 01     
            lda #$2b           ; $c9bf: a9 2b     
            sta $02            ; $c9c1: 85 02     
            lda #$c4           ; $c9c3: a9 c4     
            sta $03            ; $c9c5: 85 03     
            jsr __efce         ; $c9c7: 20 ce ef  
__c9ca:     jsr __eca4         ; $c9ca: 20 a4 ec  
            jsr __ca25         ; $c9cd: 20 25 ca  
            lda #$bc           ; $c9d0: a9 bc     
            sta $00            ; $c9d2: 85 00     
            ldy $4b            ; $c9d4: a4 4b     
            lda $ef            ; $c9d6: a5 ef     
            and #$01           ; $c9d8: 29 01     
            beq __c9de         ; $c9da: f0 02     
            dey                ; $c9dc: 88        
            dey                ; $c9dd: 88        
__c9de:     iny                ; $c9de: c8        
            jsr __f1c5         ; $c9df: 20 c5 f1  
            lda #$00           ; $c9e2: a9 00     
            sta $2c            ; $c9e4: 85 2c     
            lda #$80           ; $c9e6: a9 80     
            dey                ; $c9e8: 88        
            cpy #$04           ; $c9e9: c0 04     
            bpl __c9f0         ; $c9eb: 10 03     
            lda __c01e,y       ; $c9ed: b9 1e c0  
__c9f0:     sta $2e            ; $c9f0: 85 2e     
            lda #$1b           ; $c9f2: a9 1b     
            sta $3c            ; $c9f4: 85 3c     
            lda #$02           ; $c9f6: a9 02     
            sta $00            ; $c9f8: 85 00     
            jsr __ef50         ; $c9fa: 20 50 ef  
            dec $39            ; $c9fd: c6 39     
            lda $4e            ; $c9ff: a5 4e     
            beq __ca07         ; $ca01: f0 04     
            lda #$69           ; $ca03: a9 69     
            sta $39            ; $ca05: 85 39     
__ca07:     rts                ; $ca07: 60        

;-------------------------------------------------------------------------------
__ca08:     lda #$00           ; $ca08: a9 00     
            sta $04            ; $ca0a: 85 04     
            lda #$ff           ; $ca0c: a9 ff     
            sta $03            ; $ca0e: 85 03     
            lda #$0f           ; $ca10: a9 0f     
            jsr __ea08         ; $ca12: 20 08 ea  
            rts                ; $ca15: 60        

;-------------------------------------------------------------------------------
__ca16:     lda #$24           ; $ca16: a9 24     
            sta $00            ; $ca18: 85 00     
            lda #$01           ; $ca1a: a9 01     
            sta $01            ; $ca1c: 85 01     
            jsr __ca70         ; $ca1e: 20 70 ca  
            jsr __eebb         ; $ca21: 20 bb ee  
            rts                ; $ca24: 60        

;-------------------------------------------------------------------------------
__ca25:     lda #$b5           ; $ca25: a9 b5     
            sta $00            ; $ca27: 85 00     
            lda #$20           ; $ca29: a9 20     
            sta $01            ; $ca2b: 85 01     
            ldy $4c            ; $ca2d: a4 4c     
            jsr __f1c5         ; $ca2f: 20 c5 f1  
            rts                ; $ca32: 60        

;-------------------------------------------------------------------------------
__ca33:     lda $4e            ; $ca33: a5 4e     
            bne __ca5d         ; $ca35: d0 26     
            lda $48            ; $ca37: a5 48     
            cmp #$1c           ; $ca39: c9 1c     
            bne __ca5d         ; $ca3b: d0 20     
            ldx $49            ; $ca3d: a6 49     
            lda $4a            ; $ca3f: a5 4a     
            cmp $0580,x        ; $ca41: dd 80 05  
            bne __ca5d         ; $ca44: d0 17     
            ldy #$00           ; $ca46: a0 00     
__ca48:     lda __c3f4,y       ; $ca48: b9 f4 c3  
            sta $0331,y        ; $ca4b: 99 31 03  
            beq __ca54         ; $ca4e: f0 04     
            iny                ; $ca50: c8        
            jmp __ca48         ; $ca51: 4c 48 ca  

;-------------------------------------------------------------------------------
__ca54:     lda $49            ; $ca54: a5 49     
            beq __ca5d         ; $ca56: f0 05     
            lda #$c1           ; $ca58: a9 c1     
            sta $0345          ; $ca5a: 8d 45 03  
__ca5d:     rts                ; $ca5d: 60        

;-------------------------------------------------------------------------------
__ca5e:     ldy #$00           ; $ca5e: a0 00     
__ca60:     lda __c40c,y       ; $ca60: b9 0c c4  
            sta $0331,y        ; $ca63: 99 31 03  
            beq __ca6c         ; $ca66: f0 04     
            iny                ; $ca68: c8        
            jmp __ca60         ; $ca69: 4c 60 ca  

;-------------------------------------------------------------------------------
__ca6c:     jsr __edee         ; $ca6c: 20 ee ed  
            rts                ; $ca6f: 60        

;-------------------------------------------------------------------------------
__ca70:     lda $11            ; $ca70: a5 11     
            and #$e7           ; $ca72: 29 e7     
            sta PPUMASK        ; $ca74: 8d 01 20  
            sta $11            ; $ca77: 85 11     
            rts                ; $ca79: 60        

;-------------------------------------------------------------------------------
__ca7a:     lda $11            ; $ca7a: a5 11     
            eor #$18           ; $ca7c: 49 18     
            sta PPUMASK        ; $ca7e: 8d 01 20  
            rts                ; $ca81: 60        

;-------------------------------------------------------------------------------
__ca82:     lda #$00           ; $ca82: a9 00     
            ldx #$53           ; $ca84: a2 53     
__ca86:     sta $00,x          ; $ca86: 95 00     
            inx                ; $ca88: e8        
            cpx #$e9           ; $ca89: e0 e9     
            bne __ca86         ; $ca8b: d0 f9     
            lda #$01           ; $ca8d: a9 01     
            sta $6b            ; $ca8f: 85 6b     
            sta $9a            ; $ca91: 85 9a     
            sta $9b            ; $ca93: 85 9b     
            sta $9c            ; $ca95: 85 9c     
            sta $9d            ; $ca97: 85 9d     
            sta $87            ; $ca99: 85 87     
            sta $89            ; $ca9b: 85 89     
            lda $4a            ; $ca9d: a5 4a     
            and #$01           ; $ca9f: 29 01     
            eor #$01           ; $caa1: 49 01     
            sta $6d            ; $caa3: 85 6d     
            lda #$02           ; $caa5: a9 02     
            sta $7a            ; $caa7: 85 7a     
            lda #$60           ; $caa9: a9 60     
            sta $86            ; $caab: 85 86     
            sta $88            ; $caad: 85 88     
            lda #$a0           ; $caaf: a9 a0     
            sta $7c            ; $cab1: 85 7c     
            lda #$16           ; $cab3: a9 16     
            sta $7b            ; $cab5: 85 7b     
            lda #$32           ; $cab7: a9 32     
            sta $64            ; $cab9: 85 64     
            lda #$24           ; $cabb: a9 24     
            sta $65            ; $cabd: 85 65     
            ldx $08            ; $cabf: a6 08     
            lda __c309,x       ; $cac1: bd 09 c3  
            sta $91            ; $cac4: 85 91     
            lda __c30a,x       ; $cac6: bd 0a c3  
            sta $92            ; $cac9: 85 92     
            ldy #$00           ; $cacb: a0 00     
            lda ($91),y        ; $cacd: b1 91     
            sta $93            ; $cacf: 85 93     
            lda #$01           ; $cad1: a9 01     
            sta $02            ; $cad3: 85 02     
            lda #$08           ; $cad5: a9 08     
            sta $03            ; $cad7: 85 03     
            lda #$10           ; $cad9: a9 10     
            sta $04            ; $cadb: 85 04     
            jsr __ea06         ; $cadd: 20 06 ea  
            lda $08            ; $cae0: a5 08     
            asl                ; $cae2: 0a        
            tay                ; $cae3: a8        
            ldx #$00           ; $cae4: a2 00     
__cae6:     lda __c2cd,y       ; $cae6: b9 cd c2  
            sta $8d,x          ; $cae9: 95 8d     
            iny                ; $caeb: c8        
            inx                ; $caec: e8        
            cpx #$04           ; $caed: e0 04     
            bne __cae6         ; $caef: d0 f5     
            ldy $4a            ; $caf1: a4 4a     
            jsr __cb85         ; $caf3: 20 85 cb  
            ldx $08            ; $caf6: a6 08     
            jsr __cc58         ; $caf8: 20 58 cc  
            lda $e9            ; $cafb: a5 e9     
            beq __cb08         ; $cafd: f0 09     
            lda #$00           ; $caff: a9 00     
            sta $e9            ; $cb01: 85 e9     
            dec $4c            ; $cb03: c6 4c     
            jsr __ca25         ; $cb05: 20 25 ca  
__cb08:     lda $4b            ; $cb08: a5 4b     
            pha                ; $cb0a: 48        
            cmp #$06           ; $cb0b: c9 06     
            bmi __cb13         ; $cb0d: 30 04     
            lda #$05           ; $cb0f: a9 05     
            sta $4b            ; $cb11: 85 4b     
__cb13:     jsr __cb1f         ; $cb13: 20 1f cb  
            pla                ; $cb16: 68        
            sta $4b            ; $cb17: 85 4b     
            ldx $49            ; $cb19: a6 49     
            jsr __c922         ; $cb1b: 20 22 c9  
            rts                ; $cb1e: 60        

;-------------------------------------------------------------------------------
__cb1f:     lda $4a            ; $cb1f: a5 4a     
            cmp #$01           ; $cb21: c9 01     
            beq __cb45         ; $cb23: f0 20     
            cmp #$02           ; $cb25: c9 02     
            beq __cb5a         ; $cb27: f0 31     
            cmp #$03           ; $cb29: c9 03     
            beq __cb6e         ; $cb2b: f0 41     
            jsr __cc2a         ; $cb2d: 20 2a cc  
            jsr __ccbd         ; $cb30: 20 bd cc  
            jsr __cd23         ; $cb33: 20 23 cd  
            jsr __cd59         ; $cb36: 20 59 cd  
            lda #$02           ; $cb39: a9 02     
            sta $00            ; $cb3b: 85 00     
            jsr __cc6c         ; $cb3d: 20 6c cc  
            lda #$10           ; $cb40: a9 10     
            sta $fc            ; $cb42: 85 fc     
            rts                ; $cb44: 60        

;-------------------------------------------------------------------------------
__cb45:     jsr __cba8         ; $cb45: 20 a8 cb  
            jsr __ccbd         ; $cb48: 20 bd cc  
            jsr __ccea         ; $cb4b: 20 ea cc  
            lda $a0            ; $cb4e: a5 a0     
            sta $00            ; $cb50: 85 00     
            jsr __cc6c         ; $cb52: 20 6c cc  
            lda #$02           ; $cb55: a9 02     
            sta $fc            ; $cb57: 85 fc     
            rts                ; $cb59: 60        

;-------------------------------------------------------------------------------
__cb5a:     jsr __cbb1         ; $cb5a: 20 b1 cb  
            jsr __cd07         ; $cb5d: 20 07 cd  
            jsr __cd59         ; $cb60: 20 59 cd  
            jsr __cc94         ; $cb63: 20 94 cc  
            jsr __e239         ; $cb66: 20 39 e2  
            lda #$04           ; $cb69: a9 04     
            sta $fc            ; $cb6b: 85 fc     
            rts                ; $cb6d: 60        

;-------------------------------------------------------------------------------
__cb6e:     jsr __cc0d         ; $cb6e: 20 0d cc  
            jsr __cd0d         ; $cb71: 20 0d cd  
            jsr __cd1d         ; $cb74: 20 1d cd  
            jsr __cd59         ; $cb77: 20 59 cd  
            jsr __cc7e         ; $cb7a: 20 7e cc  
            jsr __cc86         ; $cb7d: 20 86 cc  
            lda #$08           ; $cb80: a9 08     
            sta $fc            ; $cb82: 85 fc     
            rts                ; $cb84: 60        

;-------------------------------------------------------------------------------
__cb85:     ldx #$00           ; $cb85: a2 00     
__cb87:     lda __c1c8,x       ; $cb87: bd c8 c1  
            cmp #$ff           ; $cb8a: c9 ff     
            beq __cba3         ; $cb8c: f0 15     
            sta $02            ; $cb8e: 85 02     
            lda __c1c9,x       ; $cb90: bd c9 c1  
            sta $03            ; $cb93: 85 03     
            lda __c1ca,x       ; $cb95: bd ca c1  
            sta $04            ; $cb98: 85 04     
            jsr __ea06         ; $cb9a: 20 06 ea  
            inx                ; $cb9d: e8        
            inx                ; $cb9e: e8        
            inx                ; $cb9f: e8        
            jmp __cb87         ; $cba0: 4c 87 cb  

;-------------------------------------------------------------------------------
__cba3:     inx                ; $cba3: e8        
            dey                ; $cba4: 88        
            bne __cb87         ; $cba5: d0 e0     
            rts                ; $cba7: 60        

;-------------------------------------------------------------------------------
__cba8:     lda #$01           ; $cba8: a9 01     
            sta $a2            ; $cbaa: 85 a2     
            lda #$04           ; $cbac: a9 04     
            sta $b0            ; $cbae: 85 b0     
            rts                ; $cbb0: 60        

;-------------------------------------------------------------------------------
__cbb1:     lda $4b            ; $cbb1: a5 4b     
            cmp #$04           ; $cbb3: c9 04     
            bcc __cbc0         ; $cbb5: 90 09     
            lda #$38           ; $cbb7: a9 38     
            sta $a3            ; $cbb9: 85 a3     
            lda #$64           ; $cbbb: a9 64     
            jmp __cbc6         ; $cbbd: 4c c6 cb  

;-------------------------------------------------------------------------------
__cbc0:     lda #$38           ; $cbc0: a9 38     
            sta $a3            ; $cbc2: 85 a3     
            lda #$57           ; $cbc4: a9 57     
__cbc6:     sta $a4            ; $cbc6: 85 a4     
            lda #$84           ; $cbc8: a9 84     
            sta $a5            ; $cbca: 85 a5     
            lda #$68           ; $cbcc: a9 68     
            sta $a6            ; $cbce: 85 a6     
            lda #$78           ; $cbd0: a9 78     
            sta $a7            ; $cbd2: 85 a7     
            lda #$9d           ; $cbd4: a9 9d     
            sta $a8            ; $cbd6: 85 a8     
            lda #$0f           ; $cbd8: a9 0f     
            sta $b4            ; $cbda: 85 b4     
            lda #$c2           ; $cbdc: a9 c2     
            sta $b5            ; $cbde: 85 b5     
            ldy #$00           ; $cbe0: a0 00     
__cbe2:     lda __c485,y       ; $cbe2: b9 85 c4  
            sta $0400,y        ; $cbe5: 99 00 04  
            lda __c501,y       ; $cbe8: b9 01 c5  
            sta $0450,y        ; $cbeb: 99 50 04  
            lda __c5a1,y       ; $cbee: b9 a1 c5  
            sta $04a0,y        ; $cbf1: 99 a0 04  
            iny                ; $cbf4: c8        
            cpy #$40           ; $cbf5: c0 40     
            bne __cbe2         ; $cbf7: d0 e9     
            lda #$ff           ; $cbf9: a9 ff     
            sta $042c          ; $cbfb: 8d 2c 04  
            sta $0494          ; $cbfe: 8d 94 04  
            sta $04d4          ; $cc01: 8d d4 04  
            ldx $4b            ; $cc04: a6 4b     
            lda __c0b3,x       ; $cc06: bd b3 c0  
            sta $0530          ; $cc09: 8d 30 05  
            rts                ; $cc0c: 60        

;-------------------------------------------------------------------------------
__cc0d:     lda #$ff           ; $cc0d: a9 ff     
            sta $c3            ; $cc0f: 85 c3     
            lda #$60           ; $cc11: a9 60     
            sta $cf            ; $cc13: 85 cf     
            lda #$01           ; $cc15: a9 01     
            sta $b2            ; $cc17: 85 b2     
            ldx #$05           ; $cc19: a2 05     
__cc1b:     sta $0522,x        ; $cc1b: 9d 22 05  
            dex                ; $cc1e: ca        
            bpl __cc1b         ; $cc1f: 10 fa     
            lda #$21           ; $cc21: a9 21     
            sta $b4            ; $cc23: 85 b4     
            lda #$c2           ; $cc25: a9 c2     
            sta $b5            ; $cc27: 85 b5     
            rts                ; $cc29: 60        

;-------------------------------------------------------------------------------
__cc2a:     lda #$01           ; $cc2a: a9 01     
            sta $a2            ; $cc2c: 85 a2     
            lda #$29           ; $cc2e: a9 29     
            sta $b4            ; $cc30: 85 b4     
            lda #$c2           ; $cc32: a9 c2     
            sta $b5            ; $cc34: 85 b5     
            ldx #$0b           ; $cc36: a2 0b     
            ldy #$05           ; $cc38: a0 05     
__cc3a:     lda #$b0           ; $cc3a: a9 b0     
            sta $05e7,x        ; $cc3c: 9d e7 05  
            lda #$22           ; $cc3f: a9 22     
            sta $db,x          ; $cc41: 95 db     
            dex                ; $cc43: ca        
            lda __c2c1,y       ; $cc44: b9 c1 c2  
            sta $05e7,x        ; $cc47: 9d e7 05  
            lda __c2c7,y       ; $cc4a: b9 c7 c2  
            sta $db,x          ; $cc4d: 95 db     
            dey                ; $cc4f: 88        
            dex                ; $cc50: ca        
            bpl __cc3a         ; $cc51: 10 e7     
            lda #$24           ; $cc53: a9 24     
            sta $da            ; $cc55: 85 da     
            rts                ; $cc57: 60        

;-------------------------------------------------------------------------------
__cc58:     lda __c155,x       ; $cc58: bd 55 c1  
            sta $00            ; $cc5b: 85 00     
            lda __c156,x       ; $cc5d: bd 56 c1  
            sta $01            ; $cc60: 85 01     
            lda #$50           ; $cc62: a9 50     
            sta $02            ; $cc64: 85 02     
            lda #$00           ; $cc66: a9 00     
            jsr __e9ee         ; $cc68: 20 ee e9  
            rts                ; $cc6b: 60        

;-------------------------------------------------------------------------------
__cc6c:     ldx $4a            ; $cc6c: a6 4a     
            dex                ; $cc6e: ca        
            bne __cc76         ; $cc6f: d0 05     
            ldy #$00           ; $cc71: a0 00     
            jmp __cc78         ; $cc73: 4c 78 cc  

;-------------------------------------------------------------------------------
__cc76:     ldy #$14           ; $cc76: a0 14     
__cc78:     ldx $00            ; $cc78: a6 00     
            jsr __cc98         ; $cc7a: 20 98 cc  
            rts                ; $cc7d: 60        

;-------------------------------------------------------------------------------
__cc7e:     ldx $a0            ; $cc7e: a6 a0     
            ldy #$1e           ; $cc80: a0 1e     
            jsr __cc98         ; $cc82: 20 98 cc  
            rts                ; $cc85: 60        

;-------------------------------------------------------------------------------
__cc86:     ldx $b0            ; $cc86: a6 b0     
            cpx #$05           ; $cc88: e0 05     
            bmi __cc8e         ; $cc8a: 30 02     
            ldx #$04           ; $cc8c: a2 04     
__cc8e:     ldy #$37           ; $cc8e: a0 37     
            jsr __cc98         ; $cc90: 20 98 cc  
            rts                ; $cc93: 60        

;-------------------------------------------------------------------------------
__cc94:     ldx #$06           ; $cc94: a2 06     
            ldy #$4b           ; $cc96: a0 4b     
__cc98:     lda __c15f,y       ; $cc98: b9 5f c1  
            sta $00            ; $cc9b: 85 00     
            lda __c160,y       ; $cc9d: b9 60 c1  
            sta $01            ; $cca0: 85 01     
            lda __c161,y       ; $cca2: b9 61 c1  
            sta $02            ; $cca5: 85 02     
            lda __c162,y       ; $cca7: b9 62 c1  
            sta $03            ; $ccaa: 85 03     
            lda __c163,y       ; $ccac: b9 63 c1  
            sta $04            ; $ccaf: 85 04     
            jsr __e9fc         ; $ccb1: 20 fc e9  
            iny                ; $ccb4: c8        
            iny                ; $ccb5: c8        
            iny                ; $ccb6: c8        
            iny                ; $ccb7: c8        
            iny                ; $ccb8: c8        
            dex                ; $ccb9: ca        
            bne __cc98         ; $ccba: d0 dc     
            rts                ; $ccbc: 60        

;-------------------------------------------------------------------------------
__ccbd:     lda #$00           ; $ccbd: a9 00     
            ldx $4b            ; $ccbf: a6 4b     
__ccc1:     cpx #$00           ; $ccc1: e0 00     
            beq __cccc         ; $ccc3: f0 07     
            clc                ; $ccc5: 18        
            adc #$10           ; $ccc6: 69 10     
            dex                ; $ccc8: ca        
            jmp __ccc1         ; $ccc9: 4c c1 cc  

;-------------------------------------------------------------------------------
__cccc:     ldy $4a            ; $cccc: a4 4a     
            dey                ; $ccce: 88        
            beq __ccd4         ; $cccf: f0 03     
            clc                ; $ccd1: 18        
            adc #$08           ; $ccd2: 69 08     
__ccd4:     tay                ; $ccd4: a8        
            lda __c02f,y       ; $ccd5: b9 2f c0  
            sta $a0            ; $ccd8: 85 a0     
            ldx #$00           ; $ccda: a2 00     
            iny                ; $ccdc: c8        
__ccdd:     lda __c02f,y       ; $ccdd: b9 2f c0  
            sta $0500,x        ; $cce0: 9d 00 05  
            iny                ; $cce3: c8        
            inx                ; $cce4: e8        
            cpx #$07           ; $cce5: e0 07     
            bne __ccdd         ; $cce7: d0 f4     
            rts                ; $cce9: 60        

;-------------------------------------------------------------------------------
__ccea:     lda #$00           ; $ccea: a9 00     
            ldx $4b            ; $ccec: a6 4b     
__ccee:     cpx #$00           ; $ccee: e0 00     
            beq __ccf9         ; $ccf0: f0 07     
            clc                ; $ccf2: 18        
            adc #$06           ; $ccf3: 69 06     
            dex                ; $ccf5: ca        
            jmp __ccee         ; $ccf6: 4c ee cc  

;-------------------------------------------------------------------------------
__ccf9:     tay                ; $ccf9: a8        
__ccfa:     lda __c08f,y       ; $ccfa: b9 8f c0  
            sta $0510,x        ; $ccfd: 9d 10 05  
            iny                ; $cd00: c8        
            inx                ; $cd01: e8        
            cpx #$06           ; $cd02: e0 06     
            bne __ccfa         ; $cd04: d0 f4     
            rts                ; $cd06: 60        

;-------------------------------------------------------------------------------
__cd07:     ldy #$00           ; $cd07: a0 00     
            jsr __cd25         ; $cd09: 20 25 cd  
            rts                ; $cd0c: 60        

;-------------------------------------------------------------------------------
__cd0d:     lda $4b            ; $cd0d: a5 4b     
            asl                ; $cd0f: 0a        
            tay                ; $cd10: a8        
            lda __c0e3,y       ; $cd11: b9 e3 c0  
            sta $a0            ; $cd14: 85 a0     
            lda __c0e4,y       ; $cd16: b9 e4 c0  
            sta $0540          ; $cd19: 8d 40 05  
            rts                ; $cd1c: 60        

;-------------------------------------------------------------------------------
__cd1d:     ldy #$04           ; $cd1d: a0 04     
            jsr __cd25         ; $cd1f: 20 25 cd  
            rts                ; $cd22: 60        

;-------------------------------------------------------------------------------
__cd23:     ldy #$08           ; $cd23: a0 08     
__cd25:     lda __c023,y       ; $cd25: b9 23 c0  
            sta $00            ; $cd28: 85 00     
            lda __c024,y       ; $cd2a: b9 24 c0  
            sta $01            ; $cd2d: 85 01     
            lda __c025,y       ; $cd2f: b9 25 c0  
            sta $02            ; $cd32: 85 02     
            lda __c026,y       ; $cd34: b9 26 c0  
            sta $03            ; $cd37: 85 03     
            lda #$00           ; $cd39: a9 00     
            ldx $4b            ; $cd3b: a6 4b     
__cd3d:     cpx #$00           ; $cd3d: e0 00     
            beq __cd47         ; $cd3f: f0 06     
            clc                ; $cd41: 18        
            adc $00            ; $cd42: 65 00     
            dex                ; $cd44: ca        
            bne __cd3d         ; $cd45: d0 f6     
__cd47:     tay                ; $cd47: a8        
            lda ($02),y        ; $cd48: b1 02     
            sta $b0            ; $cd4a: 85 b0     
            iny                ; $cd4c: c8        
__cd4d:     lda ($02),y        ; $cd4d: b1 02     
            sta $0520,x        ; $cd4f: 9d 20 05  
            iny                ; $cd52: c8        
            inx                ; $cd53: e8        
            cpx $01            ; $cd54: e4 01     
            bne __cd4d         ; $cd56: d0 f5     
            rts                ; $cd58: 60        

;-------------------------------------------------------------------------------
__cd59:     ldy $4a            ; $cd59: a4 4a     
            dey                ; $cd5b: 88        
            dey                ; $cd5c: 88        
            ldx #$00           ; $cd5d: a2 00     
__cd5f:     lda __c137,y       ; $cd5f: b9 37 c1  
            sta $0570,x        ; $cd62: 9d 70 05  
            iny                ; $cd65: c8        
            iny                ; $cd66: c8        
            iny                ; $cd67: c8        
            inx                ; $cd68: e8        
            cpx #$0a           ; $cd69: e0 0a     
            bne __cd5f         ; $cd6b: d0 f2     
            rts                ; $cd6d: 60        

;-------------------------------------------------------------------------------
__cd6e:     lda $4e            ; $cd6e: a5 4e     
            beq __cd83         ; $cd70: f0 11     
            lda $06a2          ; $cd72: ad a2 06  
            bne __cd7a         ; $cd75: d0 03     
            sta SND_CHN        ; $cd77: 8d 15 40  
__cd7a:     lda $15            ; $cd7a: a5 15     
            and #$20           ; $cd7c: 29 20     
            beq __cd83         ; $cd7e: f0 03     
            jmp __cde4         ; $cd80: 4c e4 cd  

;-------------------------------------------------------------------------------
__cd83:     lda $eb            ; $cd83: a5 eb     
            bne __cde0         ; $cd85: d0 59     
            lda $ee            ; $cd87: a5 ee     
            beq __cd8e         ; $cd89: f0 03     
            dec $ee            ; $cd8b: c6 ee     
            rts                ; $cd8d: 60        

;-------------------------------------------------------------------------------
__cd8e:     jsr __ee10         ; $cd8e: 20 10 ee  
            lda $68            ; $cd91: a5 68     
            bne __cdd7         ; $cd93: d0 42     
            lda $6b            ; $cd95: a5 6b     
            cmp #$05           ; $cd97: c9 05     
            beq __cddd         ; $cd99: f0 42     
            cmp #$04           ; $cd9b: c9 04     
            beq __cdb2         ; $cd9d: f0 13     
            lda $6b            ; $cd9f: a5 6b     
            cmp #$03           ; $cda1: c9 03     
            beq __cdb2         ; $cda3: f0 0d     
            lda $4e            ; $cda5: a5 4e     
            beq __cdaf         ; $cda7: f0 06     
            jsr __edab         ; $cda9: 20 ab ed  
            jmp __cdb2         ; $cdac: 4c b2 cd  

;-------------------------------------------------------------------------------
__cdaf:     jsr __ce6c         ; $cdaf: 20 6c ce  
__cdb2:     jsr __cea2         ; $cdb2: 20 a2 ce  
            jsr __d251         ; $cdb5: 20 51 d2  
            jsr __d412         ; $cdb8: 20 12 d4  
            jsr __d2fc         ; $cdbb: 20 fc d2  
            jsr __cef4         ; $cdbe: 20 f4 ce  
            jsr __ced4         ; $cdc1: 20 d4 ce  
            jsr __ec17         ; $cdc4: 20 17 ec  
            jsr __cf9d         ; $cdc7: 20 9d cf  
            jsr __cec9         ; $cdca: 20 c9 ce  
            jsr __f1af         ; $cdcd: 20 af f1  
            lda $54            ; $cdd0: a5 54     
            sta $55            ; $cdd2: 85 55     
            jmp __cde0         ; $cdd4: 4c e0 cd  

;-------------------------------------------------------------------------------
__cdd7:     jsr __d1ae         ; $cdd7: 20 ae d1  
            jmp __cde0         ; $cdda: 4c e0 cd  

;-------------------------------------------------------------------------------
__cddd:     jsr __cf37         ; $cddd: 20 37 cf  
__cde0:     jsr __cdfd         ; $cde0: 20 fd cd  
            rts                ; $cde3: 60        

;-------------------------------------------------------------------------------
__cde4:     lda #$01           ; $cde4: a9 01     
            sta $47            ; $cde6: 85 47     
            sta $6a            ; $cde8: 85 6a     
            sta $4c            ; $cdea: 85 4c     
            lda #$40           ; $cdec: a9 40     
            sta $36            ; $cdee: 85 36     
            lda #$00           ; $cdf0: a9 00     
            sta $4e            ; $cdf2: 85 4e     
            sta $52            ; $cdf4: 85 52     
            jsr __ca16         ; $cdf6: 20 16 ca  
            jsr __ca08         ; $cdf9: 20 08 ca  
            rts                ; $cdfc: 60        

;-------------------------------------------------------------------------------
__cdfd:     lda $15            ; $cdfd: a5 15     
            and #$10           ; $cdff: 29 10     
            beq __ce4e         ; $ce01: f0 4b     
            lda $4e            ; $ce03: a5 4e     
            beq __ce0e         ; $ce05: f0 07     
            lda #$00           ; $ce07: a9 00     
            sta $4e            ; $ce09: 85 4e     
            jmp __c7fe         ; $ce0b: 4c fe c7  

;-------------------------------------------------------------------------------
__ce0e:     lda $15            ; $ce0e: a5 15     
            cmp $ec            ; $ce10: c5 ec     
            beq __ce50         ; $ce12: f0 3c     
            sta $ec            ; $ce14: 85 ec     
            lda $eb            ; $ce16: a5 eb     
            beq __ce39         ; $ce18: f0 1f     
            lda $ee            ; $ce1a: a5 ee     
            bne __ce38         ; $ce1c: d0 1a     
            lda #$00           ; $ce1e: a9 00     
            sta $eb            ; $ce20: 85 eb     
            lda $0f            ; $ce22: a5 0f     
            sta $fc            ; $ce24: 85 fc     
            lda $4a            ; $ce26: a5 4a     
            cmp #$02           ; $ce28: c9 02     
            bne __ce2f         ; $ce2a: d0 03     
            jsr __e239         ; $ce2c: 20 39 e2  
__ce2f:     lda $11            ; $ce2f: a5 11     
            and #$ef           ; $ce31: 29 ef     
            sta $11            ; $ce33: 85 11     
            jmp __ce45         ; $ce35: 4c 45 ce  

;-------------------------------------------------------------------------------
__ce38:     rts                ; $ce38: 60        

;-------------------------------------------------------------------------------
__ce39:     lda #$01           ; $ce39: a9 01     
            sta $eb            ; $ce3b: 85 eb     
            lda $fc            ; $ce3d: a5 fc     
            sta $0f            ; $ce3f: 85 0f     
            lda #$00           ; $ce41: a9 00     
            sta $fc            ; $ce43: 85 fc     
__ce45:     lda #$40           ; $ce45: a9 40     
            sta $ee            ; $ce47: 85 ee     
            lda #$40           ; $ce49: a9 40     
            sta $fd            ; $ce4b: 85 fd     
            rts                ; $ce4d: 60        

;-------------------------------------------------------------------------------
__ce4e:     sta $ec            ; $ce4e: 85 ec     
__ce50:     lda $ee            ; $ce50: a5 ee     
            beq __ce57         ; $ce52: f0 03     
            dec $ee            ; $ce54: c6 ee     
            rts                ; $ce56: 60        

;-------------------------------------------------------------------------------
__ce57:     lda $eb            ; $ce57: a5 eb     
            bne __ce5c         ; $ce59: d0 01     
            rts                ; $ce5b: 60        

;-------------------------------------------------------------------------------
__ce5c:     lda $4a            ; $ce5c: a5 4a     
            cmp #$02           ; $ce5e: c9 02     
            bne __ce65         ; $ce60: d0 03     
            jsr __e244         ; $ce62: 20 44 e2  
__ce65:     lda $11            ; $ce65: a5 11     
            ora #$10           ; $ce67: 09 10     
            sta $11            ; $ce69: 85 11     
            rts                ; $ce6b: 60        

;-------------------------------------------------------------------------------
__ce6c:     lda $49            ; $ce6c: a5 49     
            asl                ; $ce6e: 0a        
            tax                ; $ce6f: aa        
            inx                ; $ce70: e8        
            ldy #$00           ; $ce71: a0 00     
            lda $14,x          ; $ce73: b5 14     
            and #$0f           ; $ce75: 29 0f     
            beq __ce8d         ; $ce77: f0 14     
            cmp #$08           ; $ce79: c9 08     
            beq __ce8c         ; $ce7b: f0 0f     
            cmp #$04           ; $ce7d: c9 04     
            beq __ce8b         ; $ce7f: f0 0a     
            cmp #$02           ; $ce81: c9 02     
            beq __ce8a         ; $ce83: f0 05     
            cmp #$01           ; $ce85: c9 01     
            bne __ce8d         ; $ce87: d0 04     
            iny                ; $ce89: c8        
__ce8a:     iny                ; $ce8a: c8        
__ce8b:     iny                ; $ce8b: c8        
__ce8c:     iny                ; $ce8c: c8        
__ce8d:     sty $54            ; $ce8d: 84 54     
            lda $6b            ; $ce8f: a5 6b     
            cmp #$02           ; $ce91: c9 02     
            beq __cea1         ; $ce93: f0 0c     
            lda $14,x          ; $ce95: b5 14     
            and #$80           ; $ce97: 29 80     
            cmp #$00           ; $ce99: c9 00     
            beq __cea1         ; $ce9b: f0 04     
            lda #$03           ; $ce9d: a9 03     
            sta $6b            ; $ce9f: 85 6b     
__cea1:     rts                ; $cea1: 60        

;-------------------------------------------------------------------------------
__cea2:     lda $63            ; $cea2: a5 63     
            beq __cebf         ; $cea4: f0 19     
            lda $0213          ; $cea6: ad 13 02  
            sta $00            ; $cea9: 85 00     
            lda $0210          ; $ceab: ad 10 02  
            sta $01            ; $ceae: 85 01     
            lda #$08           ; $ceb0: a9 08     
            sta $02            ; $ceb2: 85 02     
            lda $6d            ; $ceb4: a5 6d     
            eor #$01           ; $ceb6: 49 01     
            jsr __e9ee         ; $ceb8: 20 ee e9  
            lda #$00           ; $cebb: a9 00     
            sta $63            ; $cebd: 85 63     
__cebf:     lda $38            ; $cebf: a5 38     
            bne __cec8         ; $cec1: d0 05     
            lda #$ff           ; $cec3: a9 ff     
            sta $0208          ; $cec5: 8d 08 02  
__cec8:     rts                ; $cec8: 60        

;-------------------------------------------------------------------------------
__cec9:     lda $2e            ; $cec9: a5 2e     
            cmp #$10           ; $cecb: c9 10     
            bpl __ced3         ; $cecd: 10 04     
            lda #$20           ; $cecf: a9 20     
            sta $fc            ; $ced1: 85 fc     
__ced3:     rts                ; $ced3: 60        

;-------------------------------------------------------------------------------
__ced4:     lda $4e            ; $ced4: a5 4e     
            bne __cef3         ; $ced6: d0 1b     
            ldx $49            ; $ced8: a6 49     
            lda $05b0,x        ; $ceda: bd b0 05  
            bne __cef3         ; $cedd: d0 14     
            txa                ; $cedf: 8a        
            tay                ; $cee0: a8        
            clc                ; $cee1: 18        
            asl                ; $cee2: 0a        
            asl                ; $cee3: 0a        
            tax                ; $cee4: aa        
            lda $25,x          ; $cee5: b5 25     
            cmp #$02           ; $cee7: c9 02     
            bcc __cef3         ; $cee9: 90 08     
            sta $05b0,y        ; $ceeb: 99 b0 05  
            inc $4c            ; $ceee: e6 4c     
            jsr __ca25         ; $cef0: 20 25 ca  
__cef3:     rts                ; $cef3: 60        

;-------------------------------------------------------------------------------
__cef4:     jsr __db5a         ; $cef4: 20 5a db  
            jsr __dbb3         ; $cef7: 20 b3 db  
            lda $6b            ; $cefa: a5 6b     
            cmp #$05           ; $cefc: c9 05     
            bne __cf01         ; $cefe: d0 01     
            rts                ; $cf00: 60        

;-------------------------------------------------------------------------------
__cf01:     lda $4a            ; $cf01: a5 4a     
            cmp #$01           ; $cf03: c9 01     
            beq __cf19         ; $cf05: f0 12     
            cmp #$02           ; $cf07: c9 02     
            beq __cf20         ; $cf09: f0 15     
            cmp #$03           ; $cf0b: c9 03     
            beq __cf30         ; $cf0d: f0 21     
            jsr __e402         ; $cf0f: 20 02 e4  
            jsr __dbe9         ; $cf12: 20 e9 db  
            jsr __e5f9         ; $cf15: 20 f9 e5  
            rts                ; $cf18: 60        

;-------------------------------------------------------------------------------
__cf19:     jsr __dbe9         ; $cf19: 20 e9 db  
            jsr __dee3         ; $cf1c: 20 e3 de  
            rts                ; $cf1f: 60        

;-------------------------------------------------------------------------------
__cf20:     jsr __e5f9         ; $cf20: 20 f9 e5  
            jsr __e0e4         ; $cf23: 20 e4 e0  
            jsr __e13e         ; $cf26: 20 3e e1  
            jsr __e258         ; $cf29: 20 58 e2  
            jsr __e10d         ; $cf2c: 20 0d e1  
            rts                ; $cf2f: 60        

;-------------------------------------------------------------------------------
__cf30:     jsr __e4f5         ; $cf30: 20 f5 e4  
            jsr __e5f9         ; $cf33: 20 f9 e5  
            rts                ; $cf36: 60        

;-------------------------------------------------------------------------------
__cf37:     lda #$00           ; $cf37: a9 00     
            sta $fc            ; $cf39: 85 fc     
            lda $64            ; $cf3b: a5 64     
            bne __cf58         ; $cf3d: d0 19     
            lda $65            ; $cf3f: a5 65     
            beq __cf49         ; $cf41: f0 06     
            jsr __db20         ; $cf43: 20 20 db  
            jmp __cf5b         ; $cf46: 4c 5b cf  

;-------------------------------------------------------------------------------
__cf49:     jsr __e89f         ; $cf49: 20 9f e8  
            cmp #$00           ; $cf4c: c9 00     
            beq __cf54         ; $cf4e: f0 04     
            jsr __cf62         ; $cf50: 20 62 cf  
            rts                ; $cf53: 60        

;-------------------------------------------------------------------------------
__cf54:     jsr __daf7         ; $cf54: 20 f7 da  
            rts                ; $cf57: 60        

;-------------------------------------------------------------------------------
__cf58:     dec $64            ; $cf58: c6 64     
            rts                ; $cf5a: 60        

;-------------------------------------------------------------------------------
__cf5b:     lda #$03           ; $cf5b: a9 03     
            sta $64            ; $cf5d: 85 64     
            dec $65            ; $cf5f: c6 65     
            rts                ; $cf61: 60        

;-------------------------------------------------------------------------------
__cf62:     ldx $49            ; $cf62: a6 49     
            jsr __c922         ; $cf64: 20 22 c9  
            lda $4c            ; $cf67: a5 4c     
            bne __cf74         ; $cf69: d0 09     
            lda #$01           ; $cf6b: a9 01     
            sta $47            ; $cf6d: 85 47     
            lda #$87           ; $cf6f: a9 87     
            sta $39            ; $cf71: 85 39     
            rts                ; $cf73: 60        

;-------------------------------------------------------------------------------
__cf74:     lda $48            ; $cf74: a5 48     
            cmp #$1c           ; $cf76: c9 1c     
            bne __cf92         ; $cf78: d0 18     
            lda $49            ; $cf7a: a5 49     
            eor #$01           ; $cf7c: 49 01     
            tax                ; $cf7e: aa        
            stx $49            ; $cf7f: 86 49     
            lda $0586,x        ; $cf81: bd 86 05  
            beq __cf8f         ; $cf84: f0 09     
            txa                ; $cf86: 8a        
            eor #$01           ; $cf87: 49 01     
            tax                ; $cf89: aa        
            stx $49            ; $cf8a: 86 49     
            jmp __cf92         ; $cf8c: 4c 92 cf  

;-------------------------------------------------------------------------------
__cf8f:     jsr __c912         ; $cf8f: 20 12 c9  
__cf92:     lda #$87           ; $cf92: a9 87     
            sta $39            ; $cf94: 85 39     
            sta $e9            ; $cf96: 85 e9     
            lda #$00           ; $cf98: a9 00     
            sta $46            ; $cf9a: 85 46     
            rts                ; $cf9c: 60        

;-------------------------------------------------------------------------------
__cf9d:     jsr __d2bd         ; $cf9d: 20 bd d2  
            lda $4a            ; $cfa0: a5 4a     
            cmp #$04           ; $cfa2: c9 04     
            bmi __cfaf         ; $cfa4: 30 09     
            lda $53            ; $cfa6: a5 53     
            cmp #$06           ; $cfa8: c9 06     
            bne __cfae         ; $cfaa: d0 02     
            sta $4d            ; $cfac: 85 4d     
__cfae:     rts                ; $cfae: 60        

;-------------------------------------------------------------------------------
__cfaf:     lda #$fc           ; $cfaf: a9 fc     
            sta $02            ; $cfb1: 85 02     
            lda #$c4           ; $cfb3: a9 c4     
            sta $03            ; $cfb5: 85 03     
            jsr __eb73         ; $cfb7: 20 73 eb  
            beq __cfbe         ; $cfba: f0 02     
            sta $54            ; $cfbc: 85 54     
__cfbe:     sta $4d            ; $cfbe: 85 4d     
            rts                ; $cfc0: 60        

;-------------------------------------------------------------------------------
__cfc1:     lda $4d            ; $cfc1: a5 4d     
            cmp #$06           ; $cfc3: c9 06     
            beq __d029         ; $cfc5: f0 62     
            lda $6b            ; $cfc7: a5 6b     
            cmp #$02           ; $cfc9: c9 02     
            beq __cfdf         ; $cfcb: f0 12     
            cmp #$03           ; $cfcd: c9 03     
            beq __cfdf         ; $cfcf: f0 0e     
            lda $78            ; $cfd1: a5 78     
            cmp #$01           ; $cfd3: c9 01     
            bne __cfe5         ; $cfd5: d0 0e     
            lda $0210          ; $cfd7: ad 10 02  
            cmp #$28           ; $cfda: c9 28     
            bcc __cff9         ; $cfdc: 90 1b     
            rts                ; $cfde: 60        

;-------------------------------------------------------------------------------
__cfdf:     lda $78            ; $cfdf: a5 78     
            cmp #$01           ; $cfe1: c9 01     
            bne __cfe9         ; $cfe3: d0 04     
__cfe5:     lda #$03           ; $cfe5: a9 03     
            sta $54            ; $cfe7: 85 54     
__cfe9:     jsr __d251         ; $cfe9: 20 51 d2  
            jsr __d2bd         ; $cfec: 20 bd d2  
            jsr __d412         ; $cfef: 20 12 d4  
            jsr __cef4         ; $cff2: 20 f4 ce  
            jsr __f1af         ; $cff5: 20 af f1  
            rts                ; $cff8: 60        

;-------------------------------------------------------------------------------
__cff9:     lda #$00           ; $cff9: a9 00     
            sta $fc            ; $cffb: 85 fc     
            lda $4a            ; $cffd: a5 4a     
            cmp #$01           ; $cfff: c9 01     
            beq __d00c         ; $d001: f0 09     
            cmp #$02           ; $d003: c9 02     
            beq __d011         ; $d005: f0 0a     
            lda #$08           ; $d007: a9 08     
            jmp __d013         ; $d009: 4c 13 d0  

;-------------------------------------------------------------------------------
__d00c:     lda #$02           ; $d00c: a9 02     
            jmp __d013         ; $d00e: 4c 13 d0  

;-------------------------------------------------------------------------------
__d011:     lda #$04           ; $d011: a9 04     
__d013:     sta $fd            ; $d013: 85 fd     
            lda #$44           ; $d015: a9 44     
            sta $00            ; $d017: 85 00     
            lda #$18           ; $d019: a9 18     
            sta $01            ; $d01b: 85 01     
            lda #$50           ; $d01d: a9 50     
            sta $02            ; $d01f: 85 02     
            lda #$00           ; $d021: a9 00     
            jsr __e9ee         ; $d023: 20 ee e9  
            jmp __d041         ; $d026: 4c 41 d0  

;-------------------------------------------------------------------------------
__d029:     lda $eb            ; $d029: a5 eb     
            bne __d037         ; $d02b: d0 0a     
            jsr __d05f         ; $d02d: 20 5f d0  
            jsr __f1af         ; $d030: 20 af f1  
            lda $39            ; $d033: a5 39     
            beq __d03b         ; $d035: f0 04     
__d037:     jsr __cdfd         ; $d037: 20 fd cd  
            rts                ; $d03a: 60        

;-------------------------------------------------------------------------------
__d03b:     lda #$00           ; $d03b: a9 00     
            sta $4a            ; $d03d: 85 4a     
            inc $4b            ; $d03f: e6 4b     
__d041:     inc $4a            ; $d041: e6 4a     
            lda #$8d           ; $d043: a9 8d     
            sta $39            ; $d045: 85 39     
            lda #$00           ; $d047: a9 00     
            sta $46            ; $d049: 85 46     
            sta $4d            ; $d04b: 85 4d     
            rts                ; $d04d: 60        

;-------------------------------------------------------------------------------
__d04e:     lda $2e            ; $d04e: a5 2e     
            sta $00            ; $d050: 85 00     
            lda $49            ; $d052: a5 49     
            ora #$08           ; $d054: 09 08     
            sta $01            ; $d056: 85 01     
            jsr __f044         ; $d058: 20 44 f0  
            jsr __eca4         ; $d05b: 20 a4 ec  
            rts                ; $d05e: 60        

;-------------------------------------------------------------------------------
__d05f:     lda $a0            ; $d05f: a5 a0     
            beq __d087         ; $d061: f0 24     
            lda #$d5           ; $d063: a9 d5     
            sta $39            ; $d065: 85 39     
            lda #$00           ; $d067: a9 00     
            sta $a0            ; $d069: 85 a0     
            sta $fc            ; $d06b: 85 fc     
            lda #$01           ; $d06d: a9 01     
            sta $a1            ; $d06f: 85 a1     
            sta $0592          ; $d071: 8d 92 05  
            lda #$20           ; $d074: a9 20     
            sta $0593          ; $d076: 8d 93 05  
            lda #$60           ; $d079: a9 60     
            sta $86            ; $d07b: 85 86     
            lda #$01           ; $d07d: a9 01     
            sta $87            ; $d07f: 85 87     
            jsr __d04e         ; $d081: 20 4e d0  
            jsr __ced4         ; $d084: 20 d4 ce  
__d087:     lda $39            ; $d087: a5 39     
            cmp #$ca           ; $d089: c9 ca     
            bcs __d09a         ; $d08b: b0 0d     
            cmp #$c0           ; $d08d: c9 c0     
            bcs __d09e         ; $d08f: b0 0d     
            cmp #$b9           ; $d091: c9 b9     
            bcs __d0a2         ; $d093: b0 0d     
            lda #$00           ; $d095: a9 00     
            sta $39            ; $d097: 85 39     
            rts                ; $d099: 60        

;-------------------------------------------------------------------------------
__d09a:     jsr __d0a6         ; $d09a: 20 a6 d0  
            rts                ; $d09d: 60        

;-------------------------------------------------------------------------------
__d09e:     jsr __d0c7         ; $d09e: 20 c7 d0  
            rts                ; $d0a1: 60        

;-------------------------------------------------------------------------------
__d0a2:     jsr __d14e         ; $d0a2: 20 4e d1  
            rts                ; $d0a5: 60        

;-------------------------------------------------------------------------------
__d0a6:     cmp #$d0           ; $d0a6: c9 d0     
            beq __d0ab         ; $d0a8: f0 01     
            rts                ; $d0aa: 60        

;-------------------------------------------------------------------------------
__d0ab:     jsr __ca08         ; $d0ab: 20 08 ca  
            lda #$18           ; $d0ae: a9 18     
            sta $00            ; $d0b0: 85 00     
            lda #$3f           ; $d0b2: a9 3f     
            sta $01            ; $d0b4: 85 01     
            lda #$f4           ; $d0b6: a9 f4     
            sta $02            ; $d0b8: 85 02     
            lda #$c1           ; $d0ba: a9 c1     
            sta $03            ; $d0bc: 85 03     
            jsr __efce         ; $d0be: 20 ce ef  
            ldy #$05           ; $d0c1: a0 05     
            jsr __cb85         ; $d0c3: 20 85 cb  
            rts                ; $d0c6: 60        

;-------------------------------------------------------------------------------
__d0c7:     cmp #$c9           ; $d0c7: c9 c9     
            beq __d0d2         ; $d0c9: f0 07     
            and #$01           ; $d0cb: 29 01     
            tax                ; $d0cd: aa        
            jsr __d11c         ; $d0ce: 20 1c d1  
            rts                ; $d0d1: 60        

;-------------------------------------------------------------------------------
__d0d2:     jsr __d0dc         ; $d0d2: 20 dc d0  
            lda #$10           ; $d0d5: a9 10     
            sta $fd            ; $d0d7: 85 fd     
            dec $39            ; $d0d9: c6 39     
            rts                ; $d0db: 60        

;-------------------------------------------------------------------------------
__d0dc:     jsr __ca16         ; $d0dc: 20 16 ca  
            lda #$02           ; $d0df: a9 02     
            sta $00            ; $d0e1: 85 00     
            lda #$21           ; $d0e3: a9 21     
            sta $01            ; $d0e5: 85 01     
            lda #$2e           ; $d0e7: a9 2e     
            sta $02            ; $d0e9: 85 02     
            lda #$c4           ; $d0eb: a9 c4     
            sta $03            ; $d0ed: 85 03     
            jsr __efce         ; $d0ef: 20 ce ef  
            lda #$1c           ; $d0f2: a9 1c     
            sta $00            ; $d0f4: 85 00     
            lda #$21           ; $d0f6: a9 21     
            sta $01            ; $d0f8: 85 01     
            jsr __efce         ; $d0fa: 20 ce ef  
            lda #$c4           ; $d0fd: a9 c4     
            sta $03            ; $d0ff: 85 03     
            lda #$33           ; $d101: a9 33     
            sta $00            ; $d103: 85 00     
            lda #$c4           ; $d105: a9 c4     
            sta $01            ; $d107: 85 01     
            jsr __ef3c         ; $d109: 20 3c ef  
            ldx #$00           ; $d10c: a2 00     
            jsr __d11c         ; $d10e: 20 1c d1  
            ldx #$08           ; $d111: a2 08     
            jsr __cc58         ; $d113: 20 58 cc  
            ldx #$00           ; $d116: a2 00     
            jsr __d135         ; $d118: 20 35 d1  
            rts                ; $d11b: 60        

;-------------------------------------------------------------------------------
__d11c:     lda #$1f           ; $d11c: a9 1f     
            sta $01            ; $d11e: 85 01     
__d120:     lda #$68           ; $d120: a9 68     
            sta $00            ; $d122: 85 00     
            lda #$d4           ; $d124: a9 d4     
            sta $02            ; $d126: 85 02     
            lda #$46           ; $d128: a9 46     
            sta $03            ; $d12a: 85 03     
            lda #$40           ; $d12c: a9 40     
            sta $04            ; $d12e: 85 04     
            txa                ; $d130: 8a        
            jsr __ea08         ; $d131: 20 08 ea  
            rts                ; $d134: 60        

;-------------------------------------------------------------------------------
__d135:     lda #$30           ; $d135: a9 30     
            sta $01            ; $d137: 85 01     
__d139:     lda #$20           ; $d139: a9 20     
            sta $00            ; $d13b: 85 00     
            lda #$c0           ; $d13d: a9 c0     
            sta $02            ; $d13f: 85 02     
__d141:     lda #$22           ; $d141: a9 22     
            sta $03            ; $d143: 85 03     
            lda #$a0           ; $d145: a9 a0     
            sta $04            ; $d147: 85 04     
            txa                ; $d149: 8a        
            jsr __ea08         ; $d14a: 20 08 ea  
            rts                ; $d14d: 60        

;-------------------------------------------------------------------------------
__d14e:     lda $0240          ; $d14e: ad 40 02  
            cmp #$a7           ; $d151: c9 a7     
            bcs __d181         ; $d153: b0 2c     
            cmp #$90           ; $d155: c9 90     
            bcc __d16c         ; $d157: 90 13     
            lda $0213          ; $d159: ad 13 02  
            sta $00            ; $d15c: 85 00     
            lda $0210          ; $d15e: ad 10 02  
            sta $01            ; $d161: 85 01     
            lda #$cc           ; $d163: a9 cc     
            sta $02            ; $d165: 85 02     
            lda #$01           ; $d167: a9 01     
            jsr __e9ee         ; $d169: 20 ee e9  
__d16c:     lda $0240          ; $d16c: ad 40 02  
            cmp #$1f           ; $d16f: c9 1f     
            bne __d177         ; $d171: d0 04     
            ldx #$01           ; $d173: a2 01     
            stx $ff            ; $d175: 86 ff     
__d177:     clc                ; $d177: 18        
            adc #$02           ; $d178: 69 02     
            sta $01            ; $d17a: 85 01     
            ldx #$00           ; $d17c: a2 00     
            jsr __d120         ; $d17e: 20 20 d1  
__d181:     lda $02a0          ; $d181: ad a0 02  
            cmp #$ba           ; $d184: c9 ba     
            bne __d18c         ; $d186: d0 04     
            ldx #$10           ; $d188: a2 10     
            stx $ff            ; $d18a: 86 ff     
__d18c:     cmp #$c1           ; $d18c: c9 c1     
            bcs __d19b         ; $d18e: b0 0b     
            clc                ; $d190: 18        
            adc #$02           ; $d191: 69 02     
            sta $01            ; $d193: 85 01     
            ldx #$00           ; $d195: a2 00     
            jsr __d139         ; $d197: 20 39 d1  
            rts                ; $d19a: 60        

;-------------------------------------------------------------------------------
__d19b:     lda #$c7           ; $d19b: a9 c7     
            sta $01            ; $d19d: 85 01     
            lda $02a3          ; $d19f: ad a3 02  
            sta $00            ; $d1a2: 85 00     
            lda #$64           ; $d1a4: a9 64     
            sta $02            ; $d1a6: 85 02     
            ldx #$01           ; $d1a8: a2 01     
            jsr __d141         ; $d1aa: 20 41 d1  
            rts                ; $d1ad: 60        

;-------------------------------------------------------------------------------
__d1ae:     lda $66            ; $d1ae: a5 66     
            bne __d1b8         ; $d1b0: d0 06     
            jsr __d1bc         ; $d1b2: 20 bc d1  
            jmp __d1bb         ; $d1b5: 4c bb d1  

;-------------------------------------------------------------------------------
__d1b8:     jsr __d218         ; $d1b8: 20 18 d2  
__d1bb:     rts                ; $d1bb: 60        

;-------------------------------------------------------------------------------
__d1bc:     lda #$01           ; $d1bc: a9 01     
            sta $fe            ; $d1be: 85 fe     
            ldx $69            ; $d1c0: a6 69     
            lda $68            ; $d1c2: a5 68     
            cmp #$01           ; $d1c4: c9 01     
            beq __d1e9         ; $d1c6: f0 21     
            lda $0240,x        ; $d1c8: bd 40 02  
            sta $0208          ; $d1cb: 8d 08 02  
            lda #$ff           ; $d1ce: a9 ff     
            sta $0240,x        ; $d1d0: 9d 40 02  
            lda $0243,x        ; $d1d3: bd 43 02  
            sta $020b          ; $d1d6: 8d 0b 02  
            ldy #$03           ; $d1d9: a0 03     
            lda #$ff           ; $d1db: a9 ff     
            sta $0244,x        ; $d1dd: 9d 44 02  
            sta $0248,x        ; $d1e0: 9d 48 02  
            sta $024c,x        ; $d1e3: 9d 4c 02  
            jmp __d1ff         ; $d1e6: 4c ff d1  

;-------------------------------------------------------------------------------
__d1e9:     lda $02c0,x        ; $d1e9: bd c0 02  
            sta $0208          ; $d1ec: 8d 08 02  
            lda #$ff           ; $d1ef: a9 ff     
            sta $02c0,x        ; $d1f1: 9d c0 02  
            lda $02c3,x        ; $d1f4: bd c3 02  
            sta $020b          ; $d1f7: 8d 0b 02  
            lda #$ff           ; $d1fa: a9 ff     
            sta $02c4,x        ; $d1fc: 9d c4 02  
__d1ff:     lda #$90           ; $d1ff: a9 90     
            sta $0209          ; $d201: 8d 09 02  
            lda #$00           ; $d204: a9 00     
            sta $020a          ; $d206: 8d 0a 02  
            lda #$07           ; $d209: a9 07     
            sta $09            ; $d20b: 85 09     
            lda #$04           ; $d20d: a9 04     
            sta $08            ; $d20f: 85 08     
            lda #$01           ; $d211: a9 01     
            sta $66            ; $d213: 85 66     
            sta $67            ; $d215: 85 67     
            rts                ; $d217: 60        

;-------------------------------------------------------------------------------
__d218:     dec $08            ; $d218: c6 08     
            bpl __d250         ; $d21a: 10 34     
            dec $09            ; $d21c: c6 09     
            bne __d237         ; $d21e: d0 17     
            lda #$ff           ; $d220: a9 ff     
            sta $0200          ; $d222: 8d 00 02  
            jsr __ed44         ; $d225: 20 44 ed  
            ldx #$40           ; $d228: a2 40     
            stx $38            ; $d22a: 86 38     
            lda #$00           ; $d22c: a9 00     
            sta $66            ; $d22e: 85 66     
            sta $68            ; $d230: 85 68     
            ldx #$93           ; $d232: a2 93     
            jmp __d243         ; $d234: 4c 43 d2  

;-------------------------------------------------------------------------------
__d237:     ldx $0209          ; $d237: ae 09 02  
            lda $67            ; $d23a: a5 67     
            beq __d242         ; $d23c: f0 04     
            inx                ; $d23e: e8        
            jmp __d243         ; $d23f: 4c 43 d2  

;-------------------------------------------------------------------------------
__d242:     dex                ; $d242: ca        
__d243:     lda $09            ; $d243: a5 09     
            and #$02           ; $d245: 29 02     
            sta $67            ; $d247: 85 67     
            stx $0209          ; $d249: 8e 09 02  
            lda #$08           ; $d24c: a9 08     
            sta $08            ; $d24e: 85 08     
__d250:     rts                ; $d250: 60        

;-------------------------------------------------------------------------------
__d251:     lda $6b            ; $d251: a5 6b     
            cmp $6c            ; $d253: c5 6c     
            beq __d2bc         ; $d255: f0 65     
            lda #$00           ; $d257: a9 00     
            sta $56            ; $d259: 85 56     
            sta $78            ; $d25b: 85 78     
            lda $6b            ; $d25d: a5 6b     
            cmp #$01           ; $d25f: c9 01     
            beq __d27b         ; $d261: f0 18     
            cmp #$02           ; $d263: c9 02     
            beq __d288         ; $d265: f0 21     
            cmp #$03           ; $d267: c9 03     
            beq __d291         ; $d269: f0 26     
            cmp #$04           ; $d26b: c9 04     
            beq __d2a4         ; $d26d: f0 35     
            lda $6c            ; $d26f: a5 6c     
            cmp #$04           ; $d271: c9 04     
            bne __d2b8         ; $d273: d0 43     
            jsr __daa5         ; $d275: 20 a5 da  
            jmp __d2b4         ; $d278: 4c b4 d2  

;-------------------------------------------------------------------------------
__d27b:     lda #$00           ; $d27b: a9 00     
            sta $75            ; $d27d: 85 75     
            sta $02            ; $d27f: 85 02     
            sta $70            ; $d281: 85 70     
            sta $6f            ; $d283: 85 6f     
            jmp __d2b8         ; $d285: 4c b8 d2  

;-------------------------------------------------------------------------------
__d288:     lda #$01           ; $d288: a9 01     
            sta $71            ; $d28a: 85 71     
            sta $79            ; $d28c: 85 79     
            jmp __d2b8         ; $d28e: 4c b8 d2  

;-------------------------------------------------------------------------------
__d291:     lda #$00           ; $d291: a9 00     
            sta $7e            ; $d293: 85 7e     
            sta $05c6          ; $d295: 8d c6 05  
            lda #$40           ; $d298: a9 40     
            sta $ff            ; $d29a: 85 ff     
            lda $0210          ; $d29c: ad 10 02  
            sta $76            ; $d29f: 85 76     
            jmp __d2b8         ; $d2a1: 4c b8 d2  

;-------------------------------------------------------------------------------
__d2a4:     lda $0210          ; $d2a4: ad 10 02  
            sta $76            ; $d2a7: 85 76     
            lda #$01           ; $d2a9: a9 01     
            sta $09            ; $d2ab: 85 09     
            lda #$00           ; $d2ad: a9 00     
            sta $71            ; $d2af: 85 71     
            jmp __d2b8         ; $d2b1: 4c b8 d2  

;-------------------------------------------------------------------------------
__d2b4:     lda #$01           ; $d2b4: a9 01     
            sta $ff            ; $d2b6: 85 ff     
__d2b8:     lda $6b            ; $d2b8: a5 6b     
            sta $6c            ; $d2ba: 85 6c     
__d2bc:     rts                ; $d2bc: 60        

;-------------------------------------------------------------------------------
__d2bd:     lda $0210          ; $d2bd: ad 10 02  
            sta $01            ; $d2c0: 85 01     
            lda $0213          ; $d2c2: ad 13 02  
            sta $00            ; $d2c5: 85 00     
            lda $6b            ; $d2c7: a5 6b     
            cmp #$04           ; $d2c9: c9 04     
            bmi __d2cf         ; $d2cb: 30 02     
            lda #$01           ; $d2cd: a9 01     
__d2cf:     sec                ; $d2cf: 38        
            sbc #$01           ; $d2d0: e9 01     
            asl                ; $d2d2: 0a        
            asl                ; $d2d3: 0a        
            clc                ; $d2d4: 18        
            ldx $6d            ; $d2d5: a6 6d     
            bne __d2db         ; $d2d7: d0 02     
            adc #$02           ; $d2d9: 69 02     
__d2db:     ldx $71            ; $d2db: a6 71     
            cpx #$02           ; $d2dd: e0 02     
            bne __d2e3         ; $d2df: d0 02     
            adc #$07           ; $d2e1: 69 07     
__d2e3:     tax                ; $d2e3: aa        
            lda __c369,x       ; $d2e4: bd 69 c3  
            sta $02            ; $d2e7: 85 02     
            lda __c36a,x       ; $d2e9: bd 6a c3  
            sta $03            ; $d2ec: 85 03     
            jsr __eb69         ; $d2ee: 20 69 eb  
            ldx #$03           ; $d2f1: a2 03     
__d2f3:     lda $3e,x          ; $d2f3: b5 3e     
            sta $05fc,x        ; $d2f5: 9d fc 05  
            dex                ; $d2f8: ca        
            bpl __d2f3         ; $d2f9: 10 f8     
            rts                ; $d2fb: 60        

;-------------------------------------------------------------------------------
__d2fc:     jsr __d43a         ; $d2fc: 20 3a d4  
            cmp #$00           ; $d2ff: c9 00     
            beq __d304         ; $d301: f0 01     
            rts                ; $d303: 60        

;-------------------------------------------------------------------------------
__d304:     jsr __d2bd         ; $d304: 20 bd d2  
            lda $4a            ; $d307: a5 4a     
            cmp #$01           ; $d309: c9 01     
            beq __d31c         ; $d30b: f0 0f     
            cmp #$02           ; $d30d: c9 02     
            beq __d323         ; $d30f: f0 12     
            cmp #$03           ; $d311: c9 03     
            beq __d333         ; $d313: f0 1e     
            jsr __d3d8         ; $d315: 20 d8 d3  
            jsr __d3f9         ; $d318: 20 f9 d3  
            rts                ; $d31b: 60        

;-------------------------------------------------------------------------------
__d31c:     jsr __d3d8         ; $d31c: 20 d8 d3  
            jsr __d3df         ; $d31f: 20 df d3  
            rts                ; $d322: 60        

;-------------------------------------------------------------------------------
__d323:     jsr __d3f9         ; $d323: 20 f9 d3  
            jsr __d3bc         ; $d326: 20 bc d3  
            jsr __d33a         ; $d329: 20 3a d3  
            jsr __d387         ; $d32c: 20 87 d3  
            jsr __d3d0         ; $d32f: 20 d0 d3  
            rts                ; $d332: 60        

;-------------------------------------------------------------------------------
__d333:     jsr __d3eb         ; $d333: 20 eb d3  
            jsr __d3f2         ; $d336: 20 f2 d3  
            rts                ; $d339: 60        

;-------------------------------------------------------------------------------
__d33a:     lda $ae            ; $d33a: a5 ae     
            beq __d34a         ; $d33c: f0 0c     
            lda $0210          ; $d33e: ad 10 02  
            cmp #$b0           ; $d341: c9 b0     
            bcc __d349         ; $d343: 90 04     
            lda #$00           ; $d345: a9 00     
            sta $ae            ; $d347: 85 ae     
__d349:     rts                ; $d349: 60        

;-------------------------------------------------------------------------------
__d34a:     lda $0210          ; $d34a: ad 10 02  
            cmp #$8b           ; $d34d: c9 8b     
            bcs __d35a         ; $d34f: b0 09     
            lda $0213          ; $d351: ad 13 02  
            cmp #$20           ; $d354: c9 20     
            bcs __d35a         ; $d356: b0 02     
            sta $ae            ; $d358: 85 ae     
__d35a:     lda #$a1           ; $d35a: a9 a1     
            sta $02            ; $d35c: 85 02     
            lda #$c3           ; $d35e: a9 c3     
            sta $03            ; $d360: 85 03     
            ldy #$00           ; $d362: a0 00     
__d364:     lda $0294,y        ; $d364: b9 94 02  
            sta $01            ; $d367: 85 01     
            lda $0297,y        ; $d369: b9 97 02  
            sta $00            ; $d36c: 85 00     
            jsr __eb6e         ; $d36e: 20 6e eb  
            beq __d37d         ; $d371: f0 0a     
            sta $ad            ; $d373: 85 ad     
            cpy #$00           ; $d375: c0 00     
            bne __d37d         ; $d377: d0 04     
            lda #$08           ; $d379: a9 08     
            sta $36            ; $d37b: 85 36     
__d37d:     cpy #$08           ; $d37d: c0 08     
            beq __d386         ; $d37f: f0 05     
            ldy #$08           ; $d381: a0 08     
            jmp __d364         ; $d383: 4c 64 d3  

;-------------------------------------------------------------------------------
__d386:     rts                ; $d386: 60        

;-------------------------------------------------------------------------------
__d387:     ldx #$01           ; $d387: a2 01     
            ldy #$00           ; $d389: a0 00     
            lda #$a5           ; $d38b: a9 a5     
            sta $02            ; $d38d: 85 02     
            lda #$c3           ; $d38f: a9 c3     
            sta $03            ; $d391: 85 03     
__d393:     lda $02a3,y        ; $d393: b9 a3 02  
            sta $00            ; $d396: 85 00     
            lda $02a0,y        ; $d398: b9 a0 02  
            sec                ; $d39b: 38        
            sbc #$04           ; $d39c: e9 04     
            sta $01            ; $d39e: 85 01     
            jsr __eb6e         ; $d3a0: 20 6e eb  
            tya                ; $d3a3: 98        
            clc                ; $d3a4: 18        
            adc $44            ; $d3a5: 65 44     
            sta $44            ; $d3a7: 85 44     
            jsr __ebe3         ; $d3a9: 20 e3 eb  
            beq __d3b1         ; $d3ac: f0 03     
            inx                ; $d3ae: e8        
            stx $ad            ; $d3af: 86 ad     
__d3b1:     cpy #$10           ; $d3b1: c0 10     
            beq __d3bb         ; $d3b3: f0 06     
            ldy #$10           ; $d3b5: a0 10     
            inx                ; $d3b7: e8        
            jmp __d393         ; $d3b8: 4c 93 d3  

;-------------------------------------------------------------------------------
__d3bb:     rts                ; $d3bb: 60        

;-------------------------------------------------------------------------------
__d3bc:     lda #$00           ; $d3bc: a9 00     
            sta $00            ; $d3be: 85 00     
            sta $01            ; $d3c0: 85 01     
            lda #$cb           ; $d3c2: a9 cb     
            sta $02            ; $d3c4: 85 02     
            lda #$c3           ; $d3c6: a9 c3     
            sta $03            ; $d3c8: 85 03     
            jsr __eb6e         ; $d3ca: 20 6e eb  
            sta $bd            ; $d3cd: 85 bd     
            rts                ; $d3cf: 60        

;-------------------------------------------------------------------------------
__d3d0:     jsr __d545         ; $d3d0: 20 45 d5  
            cmp #$00           ; $d3d3: c9 00     
            bne __d405         ; $d3d5: d0 2e     
            rts                ; $d3d7: 60        

;-------------------------------------------------------------------------------
__d3d8:     ldx $a0            ; $d3d8: a6 a0     
            ldy #$00           ; $d3da: a0 00     
            jmp __d3e3         ; $d3dc: 4c e3 d3  

;-------------------------------------------------------------------------------
__d3df:     ldx $b0            ; $d3df: a6 b0     
            ldy #$20           ; $d3e1: a0 20     
__d3e3:     jsr __d4d6         ; $d3e3: 20 d6 d4  
            cmp #$00           ; $d3e6: c9 00     
            bne __d405         ; $d3e8: d0 1b     
            rts                ; $d3ea: 60        

;-------------------------------------------------------------------------------
__d3eb:     ldx $a0            ; $d3eb: a6 a0     
            ldy #$00           ; $d3ed: a0 00     
            jmp __d3fd         ; $d3ef: 4c fd d3  

;-------------------------------------------------------------------------------
__d3f2:     ldx $b0            ; $d3f2: a6 b0     
            ldy #$60           ; $d3f4: a0 60     
            jmp __d3fd         ; $d3f6: 4c fd d3  

;-------------------------------------------------------------------------------
__d3f9:     ldx $b0            ; $d3f9: a6 b0     
            ldy #$00           ; $d3fb: a0 00     
__d3fd:     jsr __d51e         ; $d3fd: 20 1e d5  
            cmp #$00           ; $d400: c9 00     
            bne __d405         ; $d402: d0 01     
            rts                ; $d404: 60        

;-------------------------------------------------------------------------------
__d405:     lda #$05           ; $d405: a9 05     
            sta $6b            ; $d407: 85 6b     
            lda #$04           ; $d409: a9 04     
            sta $ff            ; $d40b: 85 ff     
            lda #$01           ; $d40d: a9 01     
            sta $09            ; $d40f: 85 09     
            rts                ; $d411: 60        

;-------------------------------------------------------------------------------
__d412:     jsr __d2bd         ; $d412: 20 bd d2  
            lda $6b            ; $d415: a5 6b     
            cmp #$01           ; $d417: c9 01     
            beq __d427         ; $d419: f0 0c     
            cmp #$02           ; $d41b: c9 02     
            beq __d42d         ; $d41d: f0 0e     
            cmp #$03           ; $d41f: c9 03     
            beq __d433         ; $d421: f0 10     
            jsr __d631         ; $d423: 20 31 d6  
            rts                ; $d426: 60        

;-------------------------------------------------------------------------------
__d427:     jsr __d56e         ; $d427: 20 6e d5  
            jmp __d436         ; $d42a: 4c 36 d4  

;-------------------------------------------------------------------------------
__d42d:     jsr __d58c         ; $d42d: 20 8c d5  
            jmp __d436         ; $d430: 4c 36 d4  

;-------------------------------------------------------------------------------
__d433:     jsr __d5d7         ; $d433: 20 d7 d5  
__d436:     jsr __d955         ; $d436: 20 55 d9  
            rts                ; $d439: 60        

;-------------------------------------------------------------------------------
__d43a:     lda $8c            ; $d43a: a5 8c     
            beq __d476         ; $d43c: f0 38     
            lda $0230          ; $d43e: ad 30 02  
            sta $01            ; $d441: 85 01     
            lda $0233          ; $d443: ad 33 02  
            sta $00            ; $d446: 85 00     
            lda #$dd           ; $d448: a9 dd     
            sta $02            ; $d44a: 85 02     
            lda #$c2           ; $d44c: a9 c2     
            sta $03            ; $d44e: 85 03     
            jsr __eb69         ; $d450: 20 69 eb  
            lda $4a            ; $d453: a5 4a     
            cmp #$01           ; $d455: c9 01     
            beq __d467         ; $d457: f0 0e     
            cmp #$02           ; $d459: c9 02     
            beq __d46d         ; $d45b: f0 10     
            cmp #$03           ; $d45d: c9 03     
            beq __d473         ; $d45f: f0 12     
            jsr __d4b8         ; $d461: 20 b8 d4  
            jmp __d476         ; $d464: 4c 76 d4  

;-------------------------------------------------------------------------------
__d467:     jsr __d479         ; $d467: 20 79 d4  
            jmp __d476         ; $d46a: 4c 76 d4  

;-------------------------------------------------------------------------------
__d46d:     jsr __d496         ; $d46d: 20 96 d4  
            jmp __d476         ; $d470: 4c 76 d4  

;-------------------------------------------------------------------------------
__d473:     jsr __d49a         ; $d473: 20 9a d4  
__d476:     sta $68            ; $d476: 85 68     
            rts                ; $d478: 60        

;-------------------------------------------------------------------------------
__d479:     ldx $a0            ; $d479: a6 a0     
            ldy #$00           ; $d47b: a0 00     
            jsr __d4d6         ; $d47d: 20 d6 d4  
            cmp #$00           ; $d480: c9 00     
            bne __d491         ; $d482: d0 0d     
            ldx $b0            ; $d484: a6 b0     
            ldy #$20           ; $d486: a0 20     
            jsr __d4d6         ; $d488: 20 d6 d4  
            cmp #$00           ; $d48b: c9 00     
            beq __d495         ; $d48d: f0 06     
            dec $b1            ; $d48f: c6 b1     
__d491:     lda #$01           ; $d491: a9 01     
            sty $69            ; $d493: 84 69     
__d495:     rts                ; $d495: 60        

;-------------------------------------------------------------------------------
__d496:     jsr __d4c3         ; $d496: 20 c3 d4  
            rts                ; $d499: 60        

;-------------------------------------------------------------------------------
__d49a:     ldx $a0            ; $d49a: a6 a0     
            ldy #$00           ; $d49c: a0 00     
            jsr __d51e         ; $d49e: 20 1e d5  
            cmp #$00           ; $d4a1: c9 00     
            bne __d4b2         ; $d4a3: d0 0d     
            ldx $b0            ; $d4a5: a6 b0     
            ldy #$60           ; $d4a7: a0 60     
            jsr __d51e         ; $d4a9: 20 1e d5  
            cmp #$00           ; $d4ac: c9 00     
            beq __d4b7         ; $d4ae: f0 07     
            dec $b1            ; $d4b0: c6 b1     
__d4b2:     clc                ; $d4b2: 18        
            adc #$01           ; $d4b3: 69 01     
            sty $69            ; $d4b5: 84 69     
__d4b7:     rts                ; $d4b7: 60        

;-------------------------------------------------------------------------------
__d4b8:     ldx $a0            ; $d4b8: a6 a0     
            ldy #$00           ; $d4ba: a0 00     
            jsr __d4d6         ; $d4bc: 20 d6 d4  
            cmp #$00           ; $d4bf: c9 00     
            bne __d4d3         ; $d4c1: d0 10     
__d4c3:     ldx $b0            ; $d4c3: a6 b0     
            ldy #$00           ; $d4c5: a0 00     
            jsr __d51e         ; $d4c7: 20 1e d5  
            cmp #$00           ; $d4ca: c9 00     
            beq __d4d5         ; $d4cc: f0 07     
            clc                ; $d4ce: 18        
            adc #$01           ; $d4cf: 69 01     
            dec $b1            ; $d4d1: c6 b1     
__d4d3:     sty $69            ; $d4d3: 84 69     
__d4d5:     rts                ; $d4d5: 60        

;-------------------------------------------------------------------------------
__d4d6:     stx $05            ; $d4d6: 86 05     
            ldx #$00           ; $d4d8: a2 00     
__d4da:     cpy #$20           ; $d4da: c0 20     
            bpl __d4e3         ; $d4dc: 10 05     
            lda $a3,x          ; $d4de: b5 a3     
            jmp __d4e5         ; $d4e0: 4c e5 d4  

;-------------------------------------------------------------------------------
__d4e3:     lda $b4,x          ; $d4e3: b5 b4     
__d4e5:     cmp #$02           ; $d4e5: c9 02     
            bpl __d4f4         ; $d4e7: 10 0b     
            lda #$91           ; $d4e9: a9 91     
            sta $02            ; $d4eb: 85 02     
            lda #$c3           ; $d4ed: a9 c3     
            sta $03            ; $d4ef: 85 03     
            jmp __d4fc         ; $d4f1: 4c fc d4  

;-------------------------------------------------------------------------------
__d4f4:     lda #$95           ; $d4f4: a9 95     
            sta $02            ; $d4f6: 85 02     
            lda #$c3           ; $d4f8: a9 c3     
            sta $03            ; $d4fa: 85 03     
__d4fc:     lda $02c0,y        ; $d4fc: b9 c0 02  
            cmp #$ff           ; $d4ff: c9 ff     
            beq __d511         ; $d501: f0 0e     
            sta $01            ; $d503: 85 01     
            lda $02c3,y        ; $d505: b9 c3 02  
            sta $00            ; $d508: 85 00     
            jsr __eb6e         ; $d50a: 20 6e eb  
            cmp #$00           ; $d50d: c9 00     
            bne __d51d         ; $d50f: d0 0c     
__d511:     tya                ; $d511: 98        
            clc                ; $d512: 18        
            adc #$08           ; $d513: 69 08     
            tay                ; $d515: a8        
            inx                ; $d516: e8        
            cpx $05            ; $d517: e4 05     
            bne __d4da         ; $d519: d0 bf     
            lda #$00           ; $d51b: a9 00     
__d51d:     rts                ; $d51d: 60        

;-------------------------------------------------------------------------------
__d51e:     lda #$b1           ; $d51e: a9 b1     
            sta $02            ; $d520: 85 02     
            lda #$c3           ; $d522: a9 c3     
            sta $03            ; $d524: 85 03     
__d526:     lda $0240,y        ; $d526: b9 40 02  
            cmp #$ff           ; $d529: c9 ff     
            beq __d53b         ; $d52b: f0 0e     
            sta $01            ; $d52d: 85 01     
            lda $0243,y        ; $d52f: b9 43 02  
            sta $00            ; $d532: 85 00     
            jsr __eb6e         ; $d534: 20 6e eb  
            cmp #$00           ; $d537: c9 00     
            bne __d544         ; $d539: d0 09     
__d53b:     tya                ; $d53b: 98        
            clc                ; $d53c: 18        
            adc #$10           ; $d53d: 69 10     
            tay                ; $d53f: a8        
            dex                ; $d540: ca        
            bne __d526         ; $d541: d0 e3     
            txa                ; $d543: 8a        
__d544:     rts                ; $d544: 60        

;-------------------------------------------------------------------------------
__d545:     lda $020f          ; $d545: ad 0f 02  
            sta $00            ; $d548: 85 00     
            lda $020c          ; $d54a: ad 0c 02  
            sta $01            ; $d54d: 85 01     
            lda #$b5           ; $d54f: a9 b5     
            sta $02            ; $d551: 85 02     
            lda #$c3           ; $d553: a9 c3     
            sta $03            ; $d555: 85 03     
            jsr __eb6e         ; $d557: 20 6e eb  
            rts                ; $d55a: 60        

;-------------------------------------------------------------------------------
__d55b:     lda $01            ; $d55b: a5 01     
            sec                ; $d55d: 38        
            sbc #$58           ; $d55e: e9 58     
            sta $01            ; $d560: 85 01     
__d562:     lda #$b9           ; $d562: a9 b9     
            sta $02            ; $d564: 85 02     
            lda #$c3           ; $d566: a9 c3     
            sta $03            ; $d568: 85 03     
            jsr __eb6e         ; $d56a: 20 6e eb  
            rts                ; $d56d: 60        

;-------------------------------------------------------------------------------
__d56e:     jsr __e893         ; $d56e: 20 93 e8  
            cmp #$00           ; $d571: c9 00     
            bne __d581         ; $d573: d0 0c     
            jsr __e89f         ; $d575: 20 9f e8  
            cmp #$00           ; $d578: c9 00     
            bne __d585         ; $d57a: d0 09     
            lda #$04           ; $d57c: a9 04     
            sta $6b            ; $d57e: 85 6b     
            rts                ; $d580: 60        

;-------------------------------------------------------------------------------
__d581:     jsr __d612         ; $d581: 20 12 d6  
            rts                ; $d584: 60        

;-------------------------------------------------------------------------------
__d585:     jsr __da14         ; $d585: 20 14 da  
            jsr __d681         ; $d588: 20 81 d6  
            rts                ; $d58b: 60        

;-------------------------------------------------------------------------------
__d58c:     lda $79            ; $d58c: a5 79     
            bne __d5cb         ; $d58e: d0 3b     
            jsr __da14         ; $d590: 20 14 da  
            jsr __e89f         ; $d593: 20 9f e8  
            beq __d5a2         ; $d596: f0 0a     
            lda $54            ; $d598: a5 54     
            cmp #$02           ; $d59a: c9 02     
            bne __d5a2         ; $d59c: d0 04     
            eor #$02           ; $d59e: 49 02     
            sta $54            ; $d5a0: 85 54     
__d5a2:     inc $ea            ; $d5a2: e6 ea     
            jsr __e893         ; $d5a4: 20 93 e8  
            cmp #$00           ; $d5a7: c9 00     
            beq __d5c6         ; $d5a9: f0 1b     
            lda $71            ; $d5ab: a5 71     
            cmp #$01           ; $d5ad: c9 01     
            beq __d5c2         ; $d5af: f0 11     
            jsr __e897         ; $d5b1: 20 97 e8  
            sta $72            ; $d5b4: 85 72     
            cmp #$11           ; $d5b6: c9 11     
            bne __d5be         ; $d5b8: d0 04     
            jsr __d87e         ; $d5ba: 20 7e d8  
            rts                ; $d5bd: 60        

;-------------------------------------------------------------------------------
__d5be:     jsr __d82c         ; $d5be: 20 2c d8  
            rts                ; $d5c1: 60        

;-------------------------------------------------------------------------------
__d5c2:     jsr __d71b         ; $d5c2: 20 1b d7  
            rts                ; $d5c5: 60        

;-------------------------------------------------------------------------------
__d5c6:     lda #$04           ; $d5c6: a9 04     
            sta $6b            ; $d5c8: 85 6b     
            rts                ; $d5ca: 60        

;-------------------------------------------------------------------------------
__d5cb:     lda $77            ; $d5cb: a5 77     
            sta $00            ; $d5cd: 85 00     
            jsr __da66         ; $d5cf: 20 66 da  
            lda #$00           ; $d5d2: a9 00     
            sta $79            ; $d5d4: 85 79     
            rts                ; $d5d6: 60        

;-------------------------------------------------------------------------------
__d5d7:     jsr __e893         ; $d5d7: 20 93 e8  
            cmp #$00           ; $d5da: c9 00     
            bne __d600         ; $d5dc: d0 22     
            jsr __ecb7         ; $d5de: 20 b7 ec  
            lda $7e            ; $d5e1: a5 7e     
            cmp #$03           ; $d5e3: c9 03     
            bcc __d5ee         ; $d5e5: 90 07     
            jsr __e89f         ; $d5e7: 20 9f e8  
            cmp #$00           ; $d5ea: c9 00     
            bne __d604         ; $d5ec: d0 16     
__d5ee:     jsr __e89b         ; $d5ee: 20 9b e8  
            cmp #$00           ; $d5f1: c9 00     
            bne __d608         ; $d5f3: d0 13     
            lda $0210          ; $d5f5: ad 10 02  
            cmp #$d8           ; $d5f8: c9 d8     
            bcs __d60d         ; $d5fa: b0 11     
            jsr __d913         ; $d5fc: 20 13 d9  
            rts                ; $d5ff: 60        

;-------------------------------------------------------------------------------
__d600:     jsr __d612         ; $d600: 20 12 d6  
            rts                ; $d603: 60        

;-------------------------------------------------------------------------------
__d604:     jsr __da22         ; $d604: 20 22 da  
            rts                ; $d607: 60        

;-------------------------------------------------------------------------------
__d608:     lda #$04           ; $d608: a9 04     
            sta $6b            ; $d60a: 85 6b     
            rts                ; $d60c: 60        

;-------------------------------------------------------------------------------
__d60d:     lda #$05           ; $d60d: a9 05     
            sta $6b            ; $d60f: 85 6b     
            rts                ; $d611: 60        

;-------------------------------------------------------------------------------
__d612:     lda $42            ; $d612: a5 42     
            sec                ; $d614: 38        
            sbc #$10           ; $d615: e9 10     
            sta $77            ; $d617: 85 77     
            lda #$02           ; $d619: a9 02     
            sta $6b            ; $d61b: 85 6b     
            lda $42            ; $d61d: a5 42     
            cmp #$14           ; $d61f: c9 14     
            beq __d62c         ; $d621: f0 09     
            cmp #$ec           ; $d623: c9 ec     
            bne __d630         ; $d625: d0 09     
            lda #$01           ; $d627: a9 01     
            sta $6d            ; $d629: 85 6d     
            rts                ; $d62b: 60        

;-------------------------------------------------------------------------------
__d62c:     lda #$00           ; $d62c: a9 00     
            sta $6d            ; $d62e: 85 6d     
__d630:     rts                ; $d630: 60        

;-------------------------------------------------------------------------------
__d631:     jsr __e89f         ; $d631: 20 9f e8  
            cmp #$00           ; $d634: c9 00     
            beq __d640         ; $d636: f0 08     
            jsr __da22         ; $d638: 20 22 da  
            lda #$10           ; $d63b: a9 10     
            sta $ff            ; $d63d: 85 ff     
            rts                ; $d63f: 60        

;-------------------------------------------------------------------------------
__d640:     lda $0210          ; $d640: ad 10 02  
            cmp #$d8           ; $d643: c9 d8     
            bcc __d650         ; $d645: 90 09     
            lda #$10           ; $d647: a9 10     
            sta $ff            ; $d649: 85 ff     
            lda #$05           ; $d64b: a9 05     
            sta $6b            ; $d64d: 85 6b     
            rts                ; $d64f: 60        

;-------------------------------------------------------------------------------
__d650:     jsr __da34         ; $d650: 20 34 da  
            beq __d65d         ; $d653: f0 08     
            lda $09            ; $d655: a5 09     
            sta $ff            ; $d657: 85 ff     
            lda #$00           ; $d659: a9 00     
            sta $09            ; $d65b: 85 09     
__d65d:     lda $0213          ; $d65d: ad 13 02  
            sta $00            ; $d660: 85 00     
            lda $0210          ; $d662: ad 10 02  
            clc                ; $d665: 18        
            adc $7a            ; $d666: 65 7a     
            sta $01            ; $d668: 85 01     
            lda $0211          ; $d66a: ad 11 02  
            ldx $0212          ; $d66d: ae 12 02  
            cpx #$40           ; $d670: e0 40     
            bmi __d677         ; $d672: 30 03     
            sec                ; $d674: 38        
            sbc #$06           ; $d675: e9 06     
__d677:     sta $02            ; $d677: 85 02     
            lda $6d            ; $d679: a5 6d     
            eor #$01           ; $d67b: 49 01     
            jsr __e9ee         ; $d67d: 20 ee e9  
            rts                ; $d680: 60        

;-------------------------------------------------------------------------------
__d681:     lda $0210          ; $d681: ad 10 02  
            sta $01            ; $d684: 85 01     
            lda $54            ; $d686: a5 54     
            cmp #$03           ; $d688: c9 03     
            beq __d696         ; $d68a: f0 0a     
            cmp #$04           ; $d68c: c9 04     
            bne __d6b8         ; $d68e: d0 28     
            jsr __d6b9         ; $d690: 20 b9 d6  
            jmp __d699         ; $d693: 4c 99 d6  

;-------------------------------------------------------------------------------
__d696:     jsr __d6d7         ; $d696: 20 d7 d6  
__d699:     sta $00            ; $d699: 85 00     
            and #$02           ; $d69b: 29 02     
            pha                ; $d69d: 48        
            cmp $6f            ; $d69e: c5 6f     
            beq __d6a5         ; $d6a0: f0 03     
            jsr __d6f5         ; $d6a2: 20 f5 d6  
__d6a5:     pla                ; $d6a5: 68        
            sta $6f            ; $d6a6: 85 6f     
            lda $75            ; $d6a8: a5 75     
            sta $02            ; $d6aa: 85 02     
            lda $0210          ; $d6ac: ad 10 02  
            sta $01            ; $d6af: 85 01     
            lda $6d            ; $d6b1: a5 6d     
            eor #$01           ; $d6b3: 49 01     
            jsr __e9ee         ; $d6b5: 20 ee e9  
__d6b8:     rts                ; $d6b8: 60        

;-------------------------------------------------------------------------------
__d6b9:     lda #$01           ; $d6b9: a9 01     
            sta $6d            ; $d6bb: 85 6d     
            lda $78            ; $d6bd: a5 78     
            cmp #$04           ; $d6bf: c9 04     
            beq __d6d0         ; $d6c1: f0 0d     
            lda $56            ; $d6c3: a5 56     
            clc                ; $d6c5: 18        
            adc #$a0           ; $d6c6: 69 a0     
            sta $56            ; $d6c8: 85 56     
            lda $0213          ; $d6ca: ad 13 02  
            adc #$00           ; $d6cd: 69 00     
            rts                ; $d6cf: 60        

;-------------------------------------------------------------------------------
__d6d0:     lda $0213          ; $d6d0: ad 13 02  
            sec                ; $d6d3: 38        
            sbc #$02           ; $d6d4: e9 02     
            rts                ; $d6d6: 60        

;-------------------------------------------------------------------------------
__d6d7:     lda #$00           ; $d6d7: a9 00     
            sta $6d            ; $d6d9: 85 6d     
            lda $78            ; $d6db: a5 78     
            cmp #$03           ; $d6dd: c9 03     
            beq __d6ee         ; $d6df: f0 0d     
            lda $56            ; $d6e1: a5 56     
            sec                ; $d6e3: 38        
            sbc #$a0           ; $d6e4: e9 a0     
            sta $56            ; $d6e6: 85 56     
            lda $0213          ; $d6e8: ad 13 02  
            sbc #$00           ; $d6eb: e9 00     
            rts                ; $d6ed: 60        

;-------------------------------------------------------------------------------
__d6ee:     lda $0213          ; $d6ee: ad 13 02  
            clc                ; $d6f1: 18        
            adc #$02           ; $d6f2: 69 02     
            rts                ; $d6f4: 60        

;-------------------------------------------------------------------------------
__d6f5:     lda $75            ; $d6f5: a5 75     
            beq __d709         ; $d6f7: f0 10     
            cmp #$10           ; $d6f9: c9 10     
            bpl __d701         ; $d6fb: 10 04     
            ldx $70            ; $d6fd: a6 70     
            beq __d709         ; $d6ff: f0 08     
__d701:     sec                ; $d701: 38        
            sbc #$08           ; $d702: e9 08     
            ldx #$01           ; $d704: a2 01     
            jmp __d70e         ; $d706: 4c 0e d7  

;-------------------------------------------------------------------------------
__d709:     clc                ; $d709: 18        
            adc #$08           ; $d70a: 69 08     
            ldx #$00           ; $d70c: a2 00     
__d70e:     stx $70            ; $d70e: 86 70     
            sta $75            ; $d710: 85 75     
            lda $6d            ; $d712: a5 6d     
            sta $6e            ; $d714: 85 6e     
            lda #$80           ; $d716: a9 80     
            sta $ff            ; $d718: 85 ff     
            rts                ; $d71a: 60        

;-------------------------------------------------------------------------------
__d71b:     lda $54            ; $d71b: a5 54     
            beq __d72a         ; $d71d: f0 0b     
            cmp #$03           ; $d71f: c9 03     
            bmi __d727         ; $d721: 30 04     
            jsr __d79c         ; $d723: 20 9c d7  
            rts                ; $d726: 60        

;-------------------------------------------------------------------------------
__d727:     jsr __d72b         ; $d727: 20 2b d7  
__d72a:     rts                ; $d72a: 60        

;-------------------------------------------------------------------------------
__d72b:     lda $0213          ; $d72b: ad 13 02  
            sta $00            ; $d72e: 85 00     
            lda $54            ; $d730: a5 54     
            cmp #$01           ; $d732: c9 01     
            bne __d73c         ; $d734: d0 06     
            jsr __d75a         ; $d736: 20 5a d7  
            jmp __d73f         ; $d739: 4c 3f d7  

;-------------------------------------------------------------------------------
__d73c:     jsr __d77e         ; $d73c: 20 7e d7  
__d73f:     sta $01            ; $d73f: 85 01     
            and #$01           ; $d741: 29 01     
            beq __d74a         ; $d743: f0 05     
            lda #$28           ; $d745: a9 28     
            jmp __d74c         ; $d747: 4c 4c d7  

;-------------------------------------------------------------------------------
__d74a:     lda #$30           ; $d74a: a9 30     
__d74c:     sta $02            ; $d74c: 85 02     
            lda $6d            ; $d74e: a5 6d     
            eor #$01           ; $d750: 49 01     
            jsr __e9ee         ; $d752: 20 ee e9  
            lda #$01           ; $d755: a9 01     
            sta $71            ; $d757: 85 71     
            rts                ; $d759: 60        

;-------------------------------------------------------------------------------
__d75a:     lda $ea            ; $d75a: a5 ea     
            and #$0a           ; $d75c: 29 0a     
            bne __d764         ; $d75e: d0 04     
            lda #$20           ; $d760: a9 20     
            sta $ff            ; $d762: 85 ff     
__d764:     lda $78            ; $d764: a5 78     
            cmp #$01           ; $d766: c9 01     
            beq __d777         ; $d768: f0 0d     
            lda $56            ; $d76a: a5 56     
            sec                ; $d76c: 38        
            sbc #$40           ; $d76d: e9 40     
            sta $56            ; $d76f: 85 56     
            lda $0210          ; $d771: ad 10 02  
            sbc #$00           ; $d774: e9 00     
            rts                ; $d776: 60        

;-------------------------------------------------------------------------------
__d777:     lda $0210          ; $d777: ad 10 02  
            clc                ; $d77a: 18        
            adc #$01           ; $d77b: 69 01     
            rts                ; $d77d: 60        

;-------------------------------------------------------------------------------
__d77e:     lda $78            ; $d77e: a5 78     
            cmp #$02           ; $d780: c9 02     
            bne __d78b         ; $d782: d0 07     
            sec                ; $d784: 38        
            lda $0210          ; $d785: ad 10 02  
            sbc #$01           ; $d788: e9 01     
            rts                ; $d78a: 60        

;-------------------------------------------------------------------------------
__d78b:     clc                ; $d78b: 18        
            lda $56            ; $d78c: a5 56     
            adc #$50           ; $d78e: 69 50     
            sta $56            ; $d790: 85 56     
            lda $0210          ; $d792: ad 10 02  
            adc #$01           ; $d795: 69 01     
            ldx #$20           ; $d797: a2 20     
            stx $ff            ; $d799: 86 ff     
            rts                ; $d79b: 60        

;-------------------------------------------------------------------------------
__d79c:     jsr __d7d3         ; $d79c: 20 d3 d7  
            beq __d7a2         ; $d79f: f0 01     
            rts                ; $d7a1: 60        

;-------------------------------------------------------------------------------
__d7a2:     lda #$0b           ; $d7a2: a9 0b     
            ldx #$00           ; $d7a4: a2 00     
            jsr __e98b         ; $d7a6: 20 8b e9  
            bne __d7ac         ; $d7a9: d0 01     
            rts                ; $d7ab: 60        

;-------------------------------------------------------------------------------
__d7ac:     lda $54            ; $d7ac: a5 54     
            cmp #$04           ; $d7ae: c9 04     
            bne __d7bf         ; $d7b0: d0 0d     
            lda $6d            ; $d7b2: a5 6d     
            beq __d7bb         ; $d7b4: f0 05     
            lda #$00           ; $d7b6: a9 00     
            jmp __d7c9         ; $d7b8: 4c c9 d7  

;-------------------------------------------------------------------------------
__d7bb:     jsr __da76         ; $d7bb: 20 76 da  
            rts                ; $d7be: 60        

;-------------------------------------------------------------------------------
__d7bf:     lda $6d            ; $d7bf: a5 6d     
            beq __d7c7         ; $d7c1: f0 04     
            jsr __da76         ; $d7c3: 20 76 da  
            rts                ; $d7c6: 60        

;-------------------------------------------------------------------------------
__d7c7:     lda #$01           ; $d7c7: a9 01     
__d7c9:     sta $6d            ; $d7c9: 85 6d     
            jsr __da48         ; $d7cb: 20 48 da  
            lda #$20           ; $d7ce: a9 20     
            sta $ff            ; $d7d0: 85 ff     
            rts                ; $d7d2: 60        

;-------------------------------------------------------------------------------
__d7d3:     lda $3e            ; $d7d3: a5 3e     
            pha                ; $d7d5: 48        
            lda $40            ; $d7d6: a5 40     
            pha                ; $d7d8: 48        
            lda $54            ; $d7d9: a5 54     
            cmp #$03           ; $d7db: c9 03     
            beq __d7e5         ; $d7dd: f0 06     
            jsr __d7f8         ; $d7df: 20 f8 d7  
            jmp __d7e8         ; $d7e2: 4c e8 d7  

;-------------------------------------------------------------------------------
__d7e5:     jsr __d810         ; $d7e5: 20 10 d8  
__d7e8:     cmp #$00           ; $d7e8: c9 00     
            bne __d7ef         ; $d7ea: d0 03     
            jsr __e89b         ; $d7ec: 20 9b e8  
__d7ef:     pla                ; $d7ef: 68        
            sta $40            ; $d7f0: 85 40     
            pla                ; $d7f2: 68        
            sta $3e            ; $d7f3: 85 3e     
            lda $0f            ; $d7f5: a5 0f     
            rts                ; $d7f7: 60        

;-------------------------------------------------------------------------------
__d7f8:     lda $40            ; $d7f8: a5 40     
            sec                ; $d7fa: 38        
            sbc $3e            ; $d7fb: e5 3e     
            clc                ; $d7fd: 18        
            adc $40            ; $d7fe: 65 40     
            bcs __d80d         ; $d800: b0 0b     
            ldx $40            ; $d802: a6 40     
            sta $40            ; $d804: 85 40     
            stx $3e            ; $d806: 86 3e     
            inc $41            ; $d808: e6 41     
            lda #$00           ; $d80a: a9 00     
            rts                ; $d80c: 60        

;-------------------------------------------------------------------------------
__d80d:     lda #$01           ; $d80d: a9 01     
            rts                ; $d80f: 60        

;-------------------------------------------------------------------------------
__d810:     lda $40            ; $d810: a5 40     
            sec                ; $d812: 38        
            sbc $3e            ; $d813: e5 3e     
            sta $40            ; $d815: 85 40     
            lda $3e            ; $d817: a5 3e     
            sec                ; $d819: 38        
            sbc $40            ; $d81a: e5 40     
            bcc __d829         ; $d81c: 90 0b     
            ldx $3e            ; $d81e: a6 3e     
            sta $3e            ; $d820: 85 3e     
            stx $40            ; $d822: 86 40     
            inc $41            ; $d824: e6 41     
            lda #$00           ; $d826: a9 00     
            rts                ; $d828: 60        

;-------------------------------------------------------------------------------
__d829:     lda #$01           ; $d829: a9 01     
            rts                ; $d82b: 60        

;-------------------------------------------------------------------------------
__d82c:     lda $54            ; $d82c: a5 54     
            cmp #$02           ; $d82e: c9 02     
            bmi __d83e         ; $d830: 30 0c     
            lda #$0f           ; $d832: a9 0f     
            ldx #$00           ; $d834: a2 00     
            jsr __e98b         ; $d836: 20 8b e9  
            beq __d83e         ; $d839: f0 03     
            jsr __d83f         ; $d83b: 20 3f d8  
__d83e:     rts                ; $d83e: 60        

;-------------------------------------------------------------------------------
__d83f:     lda $54            ; $d83f: a5 54     
            cmp #$02           ; $d841: c9 02     
            beq __d856         ; $d843: f0 11     
            cmp #$03           ; $d845: c9 03     
            beq __d869         ; $d847: f0 20     
            lda #$01           ; $d849: a9 01     
            sta $6d            ; $d84b: 85 6d     
            lda $72            ; $d84d: a5 72     
            cmp #$01           ; $d84f: c9 01     
            beq __d87a         ; $d851: f0 27     
            jmp __d876         ; $d853: 4c 76 d8  

;-------------------------------------------------------------------------------
__d856:     lda $72            ; $d856: a5 72     
            cmp #$01           ; $d858: c9 01     
            beq __d861         ; $d85a: f0 05     
            lda #$00           ; $d85c: a9 00     
            jmp __d863         ; $d85e: 4c 63 d8  

;-------------------------------------------------------------------------------
__d861:     lda #$01           ; $d861: a9 01     
__d863:     sta $6d            ; $d863: 85 6d     
            jsr __da48         ; $d865: 20 48 da  
            rts                ; $d868: 60        

;-------------------------------------------------------------------------------
__d869:     lda #$00           ; $d869: a9 00     
            sta $6d            ; $d86b: 85 6d     
            lda $72            ; $d86d: a5 72     
            cmp #$01           ; $d86f: c9 01     
            beq __d876         ; $d871: f0 03     
            jmp __d87a         ; $d873: 4c 7a d8  

;-------------------------------------------------------------------------------
__d876:     jsr __dad7         ; $d876: 20 d7 da  
            rts                ; $d879: 60        

;-------------------------------------------------------------------------------
__d87a:     jsr __da48         ; $d87a: 20 48 da  
            rts                ; $d87d: 60        

;-------------------------------------------------------------------------------
__d87e:     lda $54            ; $d87e: a5 54     
            bne __d883         ; $d880: d0 01     
            rts                ; $d882: 60        

;-------------------------------------------------------------------------------
__d883:     cmp #$03           ; $d883: c9 03     
            bpl __d88b         ; $d885: 10 04     
            jsr __d8a3         ; $d887: 20 a3 d8  
            rts                ; $d88a: 60        

;-------------------------------------------------------------------------------
__d88b:     lda #$0b           ; $d88b: a9 0b     
            ldx #$00           ; $d88d: a2 00     
            jsr __e98b         ; $d88f: 20 8b e9  
            beq __d8a2         ; $d892: f0 0e     
            lda $54            ; $d894: a5 54     
            sec                ; $d896: 38        
            sbc #$03           ; $d897: e9 03     
            sta $6d            ; $d899: 85 6d     
            jsr __da48         ; $d89b: 20 48 da  
            lda #$20           ; $d89e: a9 20     
            sta $ff            ; $d8a0: 85 ff     
__d8a2:     rts                ; $d8a2: 60        

;-------------------------------------------------------------------------------
__d8a3:     lda $0213          ; $d8a3: ad 13 02  
            sta $00            ; $d8a6: 85 00     
            lda #$38           ; $d8a8: a9 38     
            sta $02            ; $d8aa: 85 02     
            lda $54            ; $d8ac: a5 54     
            cmp #$01           ; $d8ae: c9 01     
            beq __d8b8         ; $d8b0: f0 06     
            jsr __d8ef         ; $d8b2: 20 ef d8  
            jmp __d8bb         ; $d8b5: 4c bb d8  

;-------------------------------------------------------------------------------
__d8b8:     jsr __d8cb         ; $d8b8: 20 cb d8  
__d8bb:     sta $01            ; $d8bb: 85 01     
            lda $01            ; $d8bd: a5 01     
            and #$04           ; $d8bf: 29 04     
            lsr                ; $d8c1: 4a        
            lsr                ; $d8c2: 4a        
            jsr __e9ee         ; $d8c3: 20 ee e9  
            lda #$02           ; $d8c6: a9 02     
            sta $71            ; $d8c8: 85 71     
            rts                ; $d8ca: 60        

;-------------------------------------------------------------------------------
__d8cb:     lda $ea            ; $d8cb: a5 ea     
            and #$08           ; $d8cd: 29 08     
            bne __d8d5         ; $d8cf: d0 04     
            lda #$20           ; $d8d1: a9 20     
            sta $ff            ; $d8d3: 85 ff     
__d8d5:     lda $78            ; $d8d5: a5 78     
            cmp #$01           ; $d8d7: c9 01     
            beq __d8e8         ; $d8d9: f0 0d     
            lda $56            ; $d8db: a5 56     
            sec                ; $d8dd: 38        
            sbc #$a0           ; $d8de: e9 a0     
            sta $56            ; $d8e0: 85 56     
            lda $0210          ; $d8e2: ad 10 02  
            sbc #$00           ; $d8e5: e9 00     
            rts                ; $d8e7: 60        

;-------------------------------------------------------------------------------
__d8e8:     lda $0210          ; $d8e8: ad 10 02  
            clc                ; $d8eb: 18        
            adc #$01           ; $d8ec: 69 01     
            rts                ; $d8ee: 60        

;-------------------------------------------------------------------------------
__d8ef:     lda $78            ; $d8ef: a5 78     
            cmp #$02           ; $d8f1: c9 02     
            bne __d8fc         ; $d8f3: d0 07     
            lda $0210          ; $d8f5: ad 10 02  
            sec                ; $d8f8: 38        
            sbc #$01           ; $d8f9: e9 01     
            rts                ; $d8fb: 60        

;-------------------------------------------------------------------------------
__d8fc:     lda $ea            ; $d8fc: a5 ea     
            and #$09           ; $d8fe: 29 09     
            bne __d906         ; $d900: d0 04     
            lda #$20           ; $d902: a9 20     
            sta $ff            ; $d904: 85 ff     
__d906:     lda $56            ; $d906: a5 56     
            clc                ; $d908: 18        
            adc #$90           ; $d909: 69 90     
            sta $56            ; $d90b: 85 56     
            lda $0210          ; $d90d: ad 10 02  
            adc #$00           ; $d910: 69 00     
            rts                ; $d912: 60        

;-------------------------------------------------------------------------------
__d913:     lda $0210          ; $d913: ad 10 02  
            sta $01            ; $d916: 85 01     
            lda #$00           ; $d918: a9 00     
            jsr __e9ae         ; $d91a: 20 ae e9  
            lda $54            ; $d91d: a5 54     
            cmp #$03           ; $d91f: c9 03     
            bpl __d929         ; $d921: 10 06     
            lda $0213          ; $d923: ad 13 02  
            jmp __d947         ; $d926: 4c 47 d9  

;-------------------------------------------------------------------------------
__d929:     clc                ; $d929: 18        
            lda $56            ; $d92a: a5 56     
            adc $7c            ; $d92c: 65 7c     
            sta $56            ; $d92e: 85 56     
            lda #$00           ; $d930: a9 00     
            rol                ; $d932: 2a        
            sta $00            ; $d933: 85 00     
            lda $0213          ; $d935: ad 13 02  
            ldx $54            ; $d938: a6 54     
            cpx #$03           ; $d93a: e0 03     
            beq __d944         ; $d93c: f0 06     
            clc                ; $d93e: 18        
            adc $00            ; $d93f: 65 00     
            jmp __d947         ; $d941: 4c 47 d9  

;-------------------------------------------------------------------------------
__d944:     sec                ; $d944: 38        
            sbc $00            ; $d945: e5 00     
__d947:     sta $00            ; $d947: 85 00     
            lda #$18           ; $d949: a9 18     
            sta $02            ; $d94b: 85 02     
            lda $6d            ; $d94d: a5 6d     
            eor #$01           ; $d94f: 49 01     
            jsr __e9ee         ; $d951: 20 ee e9  
            rts                ; $d954: 60        

;-------------------------------------------------------------------------------
__d955:     lda $0591          ; $d955: ad 91 05  
            bne __d95e         ; $d958: d0 04     
            lda $8c            ; $d95a: a5 8c     
            beq __d95f         ; $d95c: f0 01     
__d95e:     rts                ; $d95e: 60        

;-------------------------------------------------------------------------------
__d95f:     lda #$e1           ; $d95f: a9 e1     
            sta $02            ; $d961: 85 02     
            lda #$c2           ; $d963: a9 c2     
            sta $03            ; $d965: 85 03     
            lda #$00           ; $d967: a9 00     
            sta $8c            ; $d969: 85 8c     
            ldx #$00           ; $d96b: a2 00     
            ldy #$01           ; $d96d: a0 01     
__d96f:     lda $9a,x          ; $d96f: b5 9a     
            beq __d986         ; $d971: f0 13     
            lda ($91),y        ; $d973: b1 91     
            sta $00            ; $d975: 85 00     
            iny                ; $d977: c8        
            lda ($91),y        ; $d978: b1 91     
            sta $01            ; $d97a: 85 01     
            jsr __eb6e         ; $d97c: 20 6e eb  
            cmp #$00           ; $d97f: c9 00     
            bne __d992         ; $d981: d0 0f     
            jmp __d987         ; $d983: 4c 87 d9  

;-------------------------------------------------------------------------------
__d986:     iny                ; $d986: c8        
__d987:     inx                ; $d987: e8        
            tya                ; $d988: 98        
            clc                ; $d989: 18        
            adc #$06           ; $d98a: 69 06     
            tay                ; $d98c: a8        
            cpy $93            ; $d98d: c4 93     
            bcc __d96f         ; $d98f: 90 de     
            rts                ; $d991: 60        

;-------------------------------------------------------------------------------
__d992:     lda #$02           ; $d992: a9 02     
            sta $fe            ; $d994: 85 fe     
            lda #$ff           ; $d996: a9 ff     
            sta $0200          ; $d998: 8d 00 02  
            lda $8d,x          ; $d99b: b5 8d     
            sta $02            ; $d99d: 85 02     
            lda #$04           ; $d99f: a9 04     
            sta $03            ; $d9a1: 85 03     
            lda #$30           ; $d9a3: a9 30     
            sta $04            ; $d9a5: 85 04     
            jsr __ea06         ; $d9a7: 20 06 ea  
            lda #$00           ; $d9aa: a9 00     
            sta $9a,x          ; $d9ac: 95 9a     
            txa                ; $d9ae: 8a        
            pha                ; $d9af: 48        
            inx                ; $d9b0: e8        
            stx $8c            ; $d9b1: 86 8c     
            stx $9e            ; $d9b3: 86 9e     
            iny                ; $d9b5: c8        
            lda ($91),y        ; $d9b6: b1 91     
            sta $02            ; $d9b8: 85 02     
            lda #$22           ; $d9ba: a9 22     
            sta $95            ; $d9bc: 85 95     
            sta $03            ; $d9be: 85 03     
            dex                ; $d9c0: ca        
            jsr __e9fc         ; $d9c1: 20 fc e9  
            ldx #$02           ; $d9c4: a2 02     
__d9c6:     iny                ; $d9c6: c8        
            lda ($91),y        ; $d9c7: b1 91     
            sta $94,x          ; $d9c9: 95 94     
            inx                ; $d9cb: e8        
            cpx #$06           ; $d9cc: e0 06     
            bne __d9c6         ; $d9ce: d0 f6     
            pla                ; $d9d0: 68        
            asl                ; $d9d1: 0a        
            sta $01            ; $d9d2: 85 01     
            ldx $4a            ; $d9d4: a6 4a     
            dex                ; $d9d6: ca        
            txa                ; $d9d7: 8a        
            asl                ; $d9d8: 0a        
            sta $09            ; $d9d9: 85 09     
            asl                ; $d9db: 0a        
            asl                ; $d9dc: 0a        
            clc                ; $d9dd: 18        
            adc $01            ; $d9de: 65 01     
            tax                ; $d9e0: aa        
            lda __c2ed,x       ; $d9e1: bd ed c2  
            sta $00            ; $d9e4: 85 00     
            lda __c2ee,x       ; $d9e6: bd ee c2  
            sta $01            ; $d9e9: 85 01     
            lda #$95           ; $d9eb: a9 95     
            sta $02            ; $d9ed: 85 02     
            lda #$00           ; $d9ef: a9 00     
            sta $03            ; $d9f1: 85 03     
            jsr __efce         ; $d9f3: 20 ce ef  
            ldx $8c            ; $d9f6: a6 8c     
            cpx #$03           ; $d9f8: e0 03     
            bpl __da10         ; $d9fa: 10 14     
            dex                ; $d9fc: ca        
            txa                ; $d9fd: 8a        
            clc                ; $d9fe: 18        
            adc $09            ; $d9ff: 65 09     
            tax                ; $da01: aa        
            lda __c2e5,x       ; $da02: bd e5 c2  
            sta $00            ; $da05: 85 00     
            ldy #$00           ; $da07: a0 00     
            lda #$23           ; $da09: a9 23     
            sta $01            ; $da0b: 85 01     
            jsr __f1c5         ; $da0d: 20 c5 f1  
__da10:     jsr __ed7b         ; $da10: 20 7b ed  
            rts                ; $da13: 60        

;-------------------------------------------------------------------------------
__da14:     jsr __e89b         ; $da14: 20 9b e8  
            cmp #$00           ; $da17: c9 00     
            beq __da1f         ; $da19: f0 04     
            lda $55            ; $da1b: a5 55     
            sta $54            ; $da1d: 85 54     
__da1f:     sta $78            ; $da1f: 85 78     
            rts                ; $da21: 60        

;-------------------------------------------------------------------------------
__da22:     jsr __da34         ; $da22: 20 34 da  
            bne __da2f         ; $da25: d0 08     
            jsr __daa5         ; $da27: 20 a5 da  
            lda #$01           ; $da2a: a9 01     
            jmp __da31         ; $da2c: 4c 31 da  

;-------------------------------------------------------------------------------
__da2f:     lda #$05           ; $da2f: a9 05     
__da31:     sta $6b            ; $da31: 85 6b     
            rts                ; $da33: 60        

;-------------------------------------------------------------------------------
__da34:     lda $0210          ; $da34: ad 10 02  
            cmp $76            ; $da37: c5 76     
            bcc __da42         ; $da39: 90 07     
            sec                ; $da3b: 38        
            sbc $76            ; $da3c: e5 76     
            cmp $7b            ; $da3e: c5 7b     
            bcs __da45         ; $da40: b0 03     
__da42:     lda #$00           ; $da42: a9 00     
            rts                ; $da44: 60        

;-------------------------------------------------------------------------------
__da45:     lda #$01           ; $da45: a9 01     
            rts                ; $da47: 60        

;-------------------------------------------------------------------------------
__da48:     lda $0210          ; $da48: ad 10 02  
            sta $01            ; $da4b: 85 01     
            lda $0213          ; $da4d: ad 13 02  
            ldx $71            ; $da50: a6 71     
            cpx #$02           ; $da52: e0 02     
            bne __da64         ; $da54: d0 0e     
            ldx $6d            ; $da56: a6 6d     
            beq __da5f         ; $da58: f0 05     
            lda $73            ; $da5a: a5 73     
            jmp __da61         ; $da5c: 4c 61 da  

;-------------------------------------------------------------------------------
__da5f:     lda $74            ; $da5f: a5 74     
__da61:     sec                ; $da61: 38        
            sbc #$10           ; $da62: e9 10     
__da64:     sta $00            ; $da64: 85 00     
__da66:     lda #$28           ; $da66: a9 28     
            sta $02            ; $da68: 85 02     
            lda $6d            ; $da6a: a5 6d     
            eor #$01           ; $da6c: 49 01     
            jsr __e9ee         ; $da6e: 20 ee e9  
            lda #$01           ; $da71: a9 01     
            sta $71            ; $da73: 85 71     
            rts                ; $da75: 60        

;-------------------------------------------------------------------------------
__da76:     txa                ; $da76: 8a        
            pha                ; $da77: 48        
            lda $0210          ; $da78: ad 10 02  
            sta $01            ; $da7b: 85 01     
            lda $0213          ; $da7d: ad 13 02  
            ldx $6d            ; $da80: a6 6d     
            beq __da8c         ; $da82: f0 08     
            sec                ; $da84: 38        
            sbc #$0c           ; $da85: e9 0c     
            sta $00            ; $da87: 85 00     
            jmp __da91         ; $da89: 4c 91 da  

;-------------------------------------------------------------------------------
__da8c:     clc                ; $da8c: 18        
            adc #$0c           ; $da8d: 69 0c     
            sta $00            ; $da8f: 85 00     
__da91:     lda #$38           ; $da91: a9 38     
            sta $02            ; $da93: 85 02     
            lda $6d            ; $da95: a5 6d     
            eor #$01           ; $da97: 49 01     
            jsr __e9ee         ; $da99: 20 ee e9  
            lda #$02           ; $da9c: a9 02     
            sta $71            ; $da9e: 85 71     
            sta $6b            ; $daa0: 85 6b     
            pla                ; $daa2: 68        
            tax                ; $daa3: aa        
            rts                ; $daa4: 60        

;-------------------------------------------------------------------------------
__daa5:     lda $43            ; $daa5: a5 43     
            sec                ; $daa7: 38        
            sbc #$11           ; $daa8: e9 11     
            sta $01            ; $daaa: 85 01     
            lda $0213          ; $daac: ad 13 02  
            sta $00            ; $daaf: 85 00     
            lda #$20           ; $dab1: a9 20     
            sta $02            ; $dab3: 85 02     
            sta $63            ; $dab5: 85 63     
            lda $6d            ; $dab7: a5 6d     
            eor #$01           ; $dab9: 49 01     
            jsr __e9ee         ; $dabb: 20 ee e9  
            lda #$60           ; $dabe: a9 60     
            sta $86            ; $dac0: 85 86     
            lda #$01           ; $dac2: a9 01     
            sta $87            ; $dac4: 85 87     
            lda #$02           ; $dac6: a9 02     
            sta $7a            ; $dac8: 85 7a     
            lda #$18           ; $daca: a9 18     
            sta $7b            ; $dacc: 85 7b     
            lda #$a0           ; $dace: a9 a0     
            sta $7c            ; $dad0: 85 7c     
            lda #$10           ; $dad2: a9 10     
            sta $ff            ; $dad4: 85 ff     
            rts                ; $dad6: 60        

;-------------------------------------------------------------------------------
__dad7:     lda $0210          ; $dad7: ad 10 02  
            sta $01            ; $dada: 85 01     
            sta $76            ; $dadc: 85 76     
            lda $0213          ; $dade: ad 13 02  
            sta $00            ; $dae1: 85 00     
            lda #$18           ; $dae3: a9 18     
            sta $02            ; $dae5: 85 02     
            lda $6d            ; $dae7: a5 6d     
            eor #$01           ; $dae9: 49 01     
            jsr __e9ee         ; $daeb: 20 ee e9  
            lda #$00           ; $daee: a9 00     
            sta $71            ; $daf0: 85 71     
            lda #$04           ; $daf2: a9 04     
            sta $6b            ; $daf4: 85 6b     
            rts                ; $daf6: 60        

;-------------------------------------------------------------------------------
__daf7:     lda $0210          ; $daf7: ad 10 02  
            cmp #$d8           ; $dafa: c9 d8     
            bcs __db18         ; $dafc: b0 1a     
            clc                ; $dafe: 18        
            adc #$02           ; $daff: 69 02     
            sta $01            ; $db01: 85 01     
            lda $09            ; $db03: a5 09     
            sta $ff            ; $db05: 85 ff     
            lda $0213          ; $db07: ad 13 02  
            sta $00            ; $db0a: 85 00     
            lda #$40           ; $db0c: a9 40     
            sta $02            ; $db0e: 85 02     
            lda #$00           ; $db10: a9 00     
            sta $09            ; $db12: 85 09     
            jsr __e9ee         ; $db14: 20 ee e9  
            rts                ; $db17: 60        

;-------------------------------------------------------------------------------
__db18:     lda $08            ; $db18: a5 08     
            sta $ff            ; $db1a: 85 ff     
            jsr __cf62         ; $db1c: 20 62 cf  
            rts                ; $db1f: 60        

;-------------------------------------------------------------------------------
__db20:     lda $65            ; $db20: a5 65     
            cmp #$24           ; $db22: c9 24     
            bne __db2a         ; $db24: d0 04     
            lda #$02           ; $db26: a9 02     
            sta $ff            ; $db28: 85 ff     
__db2a:     lda $0210          ; $db2a: ad 10 02  
            sta $01            ; $db2d: 85 01     
            lda $0213          ; $db2f: ad 13 02  
            sta $00            ; $db32: 85 00     
            ldx #$40           ; $db34: a2 40     
            lda $65            ; $db36: a5 65     
            and #$02           ; $db38: 29 02     
            bne __db3e         ; $db3a: d0 02     
            ldx #$48           ; $db3c: a2 48     
__db3e:     stx $02            ; $db3e: 86 02     
            lda #$00           ; $db40: a9 00     
            jsr __e9ee         ; $db42: 20 ee e9  
            lda #$20           ; $db45: a9 20     
            sta $39            ; $db47: 85 39     
            lda $0210          ; $db49: ad 10 02  
            cmp #$d8           ; $db4c: c9 d8     
            bcs __db55         ; $db4e: b0 05     
            lda #$10           ; $db50: a9 10     
            jmp __db57         ; $db52: 4c 57 db  

;-------------------------------------------------------------------------------
__db55:     lda #$00           ; $db55: a9 00     
__db57:     sta $08            ; $db57: 85 08     
            rts                ; $db59: 60        

;-------------------------------------------------------------------------------
__db5a:     lda $0590          ; $db5a: ad 90 05  
            bne __db66         ; $db5d: d0 07     
            lda #$20           ; $db5f: a9 20     
            sta $35            ; $db61: 85 35     
            sta $0590          ; $db63: 8d 90 05  
__db66:     ldy $35            ; $db66: a4 35     
            bne __db70         ; $db68: d0 06     
            lda #$00           ; $db6a: a9 00     
            sta $0591          ; $db6c: 8d 91 05  
            rts                ; $db6f: 60        

;-------------------------------------------------------------------------------
__db70:     lda #$20           ; $db70: a9 20     
            sta $01            ; $db72: 85 01     
            lda #$c8           ; $db74: a9 c8     
            ldx $4a            ; $db76: a6 4a     
            cpx #$04           ; $db78: e0 04     
            bne __db7e         ; $db7a: d0 02     
            lda #$c4           ; $db7c: a9 c4     
__db7e:     sta $00            ; $db7e: 85 00     
            cpx #$03           ; $db80: e0 03     
            beq __db8d         ; $db82: f0 09     
            lda #$cf           ; $db84: a9 cf     
            sta $02            ; $db86: 85 02     
            lda #$c3           ; $db88: a9 c3     
            jmp __db93         ; $db8a: 4c 93 db  

;-------------------------------------------------------------------------------
__db8d:     lda #$d4           ; $db8d: a9 d4     
            sta $02            ; $db8f: 85 02     
            lda #$c3           ; $db91: a9 c3     
__db93:     sta $03            ; $db93: 85 03     
            cpy #$10           ; $db95: c0 10     
            beq __dbaa         ; $db97: f0 11     
            cpy #$01           ; $db99: c0 01     
            beq __dba3         ; $db9b: f0 06     
            lda #$00           ; $db9d: a9 00     
            sta $0591          ; $db9f: 8d 91 05  
            rts                ; $dba2: 60        

;-------------------------------------------------------------------------------
__dba3:     lda $02            ; $dba3: a5 02     
            clc                ; $dba5: 18        
            adc #$0e           ; $dba6: 69 0e     
            sta $02            ; $dba8: 85 02     
__dbaa:     jsr __efce         ; $dbaa: 20 ce ef  
            lda #$01           ; $dbad: a9 01     
            sta $0591          ; $dbaf: 8d 91 05  
            rts                ; $dbb2: 60        

;-------------------------------------------------------------------------------
__dbb3:     ldx $8c            ; $dbb3: a6 8c     
            beq __dbe8         ; $dbb5: f0 31     
            lda #$30           ; $dbb7: a9 30     
            sta $04            ; $dbb9: 85 04     
            lda $0230          ; $dbbb: ad 30 02  
            cmp #$d8           ; $dbbe: c9 d8     
            bcs __dbcd         ; $dbc0: b0 0b     
            clc                ; $dbc2: 18        
            adc #$02           ; $dbc3: 69 02     
            sta $01            ; $dbc5: 85 01     
            lda #$00           ; $dbc7: a9 00     
            pha                ; $dbc9: 48        
            jmp __dbd6         ; $dbca: 4c d6 db  

;-------------------------------------------------------------------------------
__dbcd:     lda #$00           ; $dbcd: a9 00     
            sta $8c            ; $dbcf: 85 8c     
            lda #$ff           ; $dbd1: a9 ff     
            sta $01            ; $dbd3: 85 01     
            pha                ; $dbd5: 48        
__dbd6:     lda $0231          ; $dbd6: ad 31 02  
            sta $02            ; $dbd9: 85 02     
            lda #$22           ; $dbdb: a9 22     
            sta $03            ; $dbdd: 85 03     
            lda $0233          ; $dbdf: ad 33 02  
            sta $00            ; $dbe2: 85 00     
            pla                ; $dbe4: 68        
            jsr __ea08         ; $dbe5: 20 08 ea  
__dbe8:     rts                ; $dbe8: 60        

;-------------------------------------------------------------------------------
__dbe9:     lda #$c0           ; $dbe9: a9 c0     
            sta $04            ; $dbeb: 85 04     
            lda #$00           ; $dbed: a9 00     
            ldx #$00           ; $dbef: a2 00     
            ldy #$00           ; $dbf1: a0 00     
__dbf3:     pha                ; $dbf3: 48        
            lda $02c0,y        ; $dbf4: b9 c0 02  
            cmp #$ff           ; $dbf7: c9 ff     
            bne __dc01         ; $dbf9: d0 06     
            jsr __dc9d         ; $dbfb: 20 9d dc  
            jmp __dc41         ; $dbfe: 4c 41 dc  

;-------------------------------------------------------------------------------
__dc01:     sta $01            ; $dc01: 85 01     
            lda $02c3,y        ; $dc03: b9 c3 02  
            sta $00            ; $dc06: 85 00     
            lda $a3,x          ; $dc08: b5 a3     
            cmp #$02           ; $dc0a: c9 02     
            bpl __dc17         ; $dc0c: 10 09     
            lda #$99           ; $dc0e: a9 99     
            sta $02            ; $dc10: 85 02     
            lda #$c3           ; $dc12: a9 c3     
            jmp __dc1d         ; $dc14: 4c 1d dc  

;-------------------------------------------------------------------------------
__dc17:     lda #$9d           ; $dc17: a9 9d     
            sta $02            ; $dc19: 85 02     
            lda #$c3           ; $dc1b: a9 c3     
__dc1d:     sta $03            ; $dc1d: 85 03     
            jsr __eb69         ; $dc1f: 20 69 eb  
            jsr __e893         ; $dc22: 20 93 e8  
            cmp #$00           ; $dc25: c9 00     
            bne __dc56         ; $dc27: d0 2d     
            jsr __e8a3         ; $dc29: 20 a3 e8  
            cmp #$00           ; $dc2c: c9 00     
            bne __dc73         ; $dc2e: d0 43     
            dec $a2            ; $dc30: c6 a2     
            cpy $a2            ; $dc32: c4 a2     
            beq __dc87         ; $dc34: f0 51     
            inc $a2            ; $dc36: e6 a2     
            lda $a3,x          ; $dc38: b5 a3     
            cmp #$02           ; $dc3a: c9 02     
            bpl __dc91         ; $dc3c: 10 53     
            jmp __dc97         ; $dc3e: 4c 97 dc  

;-------------------------------------------------------------------------------
__dc41:     pla                ; $dc41: 68        
            tax                ; $dc42: aa        
            inx                ; $dc43: e8        
            cpx $a0            ; $dc44: e4 a0     
            beq __dc55         ; $dc46: f0 0d     
            tya                ; $dc48: 98        
            clc                ; $dc49: 18        
            adc #$08           ; $dc4a: 69 08     
            tay                ; $dc4c: a8        
            adc #$c0           ; $dc4d: 69 c0     
            sta $04            ; $dc4f: 85 04     
            txa                ; $dc51: 8a        
            jmp __dbf3         ; $dc52: 4c f3 db  

;-------------------------------------------------------------------------------
__dc55:     rts                ; $dc55: 60        

;-------------------------------------------------------------------------------
__dc56:     jsr __e8a3         ; $dc56: 20 a3 e8  
            cmp #$00           ; $dc59: c9 00     
            beq __dc69         ; $dc5b: f0 0c     
            jsr __de28         ; $dc5d: 20 28 de  
            lda $a3,x          ; $dc60: b5 a3     
            cmp #$02           ; $dc62: c9 02     
            bmi __dc77         ; $dc64: 30 11     
            jmp __dc6d         ; $dc66: 4c 6d dc  

;-------------------------------------------------------------------------------
__dc69:     lda #$00           ; $dc69: a9 00     
            sta $a8,x          ; $dc6b: 95 a8     
__dc6d:     jsr __dcef         ; $dc6d: 20 ef dc  
            jmp __dc41         ; $dc70: 4c 41 dc  

;-------------------------------------------------------------------------------
__dc73:     lda #$00           ; $dc73: a9 00     
            sta $a8,x          ; $dc75: 95 a8     
__dc77:     iny                ; $dc77: c8        
            cpy $a2            ; $dc78: c4 a2     
            bne __dc80         ; $dc7a: d0 04     
            lda #$00           ; $dc7c: a9 00     
            sta $a2            ; $dc7e: 85 a2     
__dc80:     dey                ; $dc80: 88        
            jsr __dd43         ; $dc81: 20 43 dd  
            jmp __dc41         ; $dc84: 4c 41 dc  

;-------------------------------------------------------------------------------
__dc87:     jsr __dccc         ; $dc87: 20 cc dc  
            inc $a2            ; $dc8a: e6 a2     
            sta $a3,x          ; $dc8c: 95 a3     
            jmp __dc41         ; $dc8e: 4c 41 dc  

;-------------------------------------------------------------------------------
__dc91:     jsr __dda7         ; $dc91: 20 a7 dd  
            jmp __dc41         ; $dc94: 4c 41 dc  

;-------------------------------------------------------------------------------
__dc97:     jsr __dde4         ; $dc97: 20 e4 dd  
            jmp __dc41         ; $dc9a: 4c 41 dc  

;-------------------------------------------------------------------------------
__dc9d:     lda $0211          ; $dc9d: ad 11 02  
            cmp #$50           ; $dca0: c9 50     
            beq __dcaa         ; $dca2: f0 06     
            lda $4b            ; $dca4: a5 4b     
            cmp #$03           ; $dca6: c9 03     
            bmi __dccb         ; $dca8: 30 21     
__dcaa:     lda $a2            ; $dcaa: a5 a2     
            bne __dccb         ; $dcac: d0 1d     
            iny                ; $dcae: c8        
            sty $a2            ; $dcaf: 84 a2     
            dey                ; $dcb1: 88        
            lda #$40           ; $dcb2: a9 40     
            sta $00            ; $dcb4: 85 00     
            lda #$34           ; $dcb6: a9 34     
            sta $01            ; $dcb8: 85 01     
            lda #$58           ; $dcba: a9 58     
            sta $02            ; $dcbc: 85 02     
            lda #$12           ; $dcbe: a9 12     
            sta $03            ; $dcc0: 85 03     
            lda #$00           ; $dcc2: a9 00     
            sta $80            ; $dcc4: 85 80     
            sta $a3,x          ; $dcc6: 95 a3     
            jsr __ea01         ; $dcc8: 20 01 ea  
__dccb:     rts                ; $dccb: 60        

;-------------------------------------------------------------------------------
__dccc:     lda $02c0,y        ; $dccc: b9 c0 02  
            sta $01            ; $dccf: 85 01     
            lda #$01           ; $dcd1: a9 01     
            jsr __e9ae         ; $dcd3: 20 ae e9  
            lda $57,x          ; $dcd6: b5 57     
            adc #$80           ; $dcd8: 69 80     
            sta $57,x          ; $dcda: 95 57     
            lda #$00           ; $dcdc: a9 00     
            adc $02c3,y        ; $dcde: 79 c3 02  
            sta $00            ; $dce1: 85 00     
            lda #$58           ; $dce3: a9 58     
            sta $02            ; $dce5: 85 02     
            lda #$12           ; $dce7: a9 12     
            sta $03            ; $dce9: 85 03     
            jsr __ea01         ; $dceb: 20 01 ea  
            rts                ; $dcee: 60        

;-------------------------------------------------------------------------------
__dcef:     lda $a3,x          ; $dcef: b5 a3     
            cmp #$02           ; $dcf1: c9 02     
            bne __dcfd         ; $dcf3: d0 08     
            jsr __dd1d         ; $dcf5: 20 1d dd  
            ldx #$00           ; $dcf8: a2 00     
            jmp __dd02         ; $dcfa: 4c 02 dd  

;-------------------------------------------------------------------------------
__dcfd:     jsr __dd33         ; $dcfd: 20 33 dd  
            ldx #$02           ; $dd00: a2 02     
__dd02:     and #$02           ; $dd02: 29 02     
            beq __dd0b         ; $dd04: f0 05     
            lda #$60           ; $dd06: a9 60     
            jmp __dd0d         ; $dd08: 4c 0d dd  

;-------------------------------------------------------------------------------
__dd0b:     lda #$62           ; $dd0b: a9 62     
__dd0d:     sta $02            ; $dd0d: 85 02     
            lda $02c3,y        ; $dd0f: b9 c3 02  
            sta $00            ; $dd12: 85 00     
            lda #$21           ; $dd14: a9 21     
            sta $03            ; $dd16: 85 03     
            txa                ; $dd18: 8a        
            jsr __ea08         ; $dd19: 20 08 ea  
            rts                ; $dd1c: 60        

;-------------------------------------------------------------------------------
__dd1d:     lda $57,x          ; $dd1d: b5 57     
            clc                ; $dd1f: 18        
            adc $0501          ; $dd20: 6d 01 05  
            sta $57,x          ; $dd23: 95 57     
            lda #$00           ; $dd25: a9 00     
            rol                ; $dd27: 2a        
            sta $01            ; $dd28: 85 01     
            lda $02c0,y        ; $dd2a: b9 c0 02  
            sec                ; $dd2d: 38        
            sbc $01            ; $dd2e: e5 01     
            sta $01            ; $dd30: 85 01     
            rts                ; $dd32: 60        

;-------------------------------------------------------------------------------
__dd33:     lda $57,x          ; $dd33: b5 57     
            clc                ; $dd35: 18        
            adc $0502          ; $dd36: 6d 02 05  
            sta $57,x          ; $dd39: 95 57     
            lda #$00           ; $dd3b: a9 00     
            adc $02c0,y        ; $dd3d: 79 c0 02  
            sta $01            ; $dd40: 85 01     
            rts                ; $dd42: 60        

;-------------------------------------------------------------------------------
__dd43:     lda $0210          ; $dd43: ad 10 02  
            cmp $02c0,y        ; $dd46: d9 c0 02  
            bcc __dd50         ; $dd49: 90 05     
            lda #$40           ; $dd4b: a9 40     
            jmp __dd53         ; $dd4d: 4c 53 dd  

;-------------------------------------------------------------------------------
__dd50:     lda $0506          ; $dd50: ad 06 05  
__dd53:     cmp $18,x          ; $dd53: d5 18     
            bcc __dd58         ; $dd55: 90 01     
            rts                ; $dd57: 60        

;-------------------------------------------------------------------------------
__dd58:     lda $a3,x          ; $dd58: b5 a3     
            cmp #$00           ; $dd5a: c9 00     
            bne __dd64         ; $dd5c: d0 06     
            jsr __dd85         ; $dd5e: 20 85 dd  
            jmp __dd67         ; $dd61: 4c 67 dd  

;-------------------------------------------------------------------------------
__dd64:     jsr __dd93         ; $dd64: 20 93 dd  
__dd67:     sta $00            ; $dd67: 85 00     
            and #$02           ; $dd69: 29 02     
            bne __dd72         ; $dd6b: d0 05     
            lda #$58           ; $dd6d: a9 58     
            jmp __dd74         ; $dd6f: 4c 74 dd  

;-------------------------------------------------------------------------------
__dd72:     lda #$5a           ; $dd72: a9 5a     
__dd74:     sta $02            ; $dd74: 85 02     
            lda $02c0,y        ; $dd76: b9 c0 02  
            sta $01            ; $dd79: 85 01     
            lda #$12           ; $dd7b: a9 12     
            sta $03            ; $dd7d: 85 03     
            lda $a3,x          ; $dd7f: b5 a3     
            jsr __ea08         ; $dd81: 20 08 ea  
            rts                ; $dd84: 60        

;-------------------------------------------------------------------------------
__dd85:     lda $57,x          ; $dd85: b5 57     
            clc                ; $dd87: 18        
            adc $0500          ; $dd88: 6d 00 05  
            sta $57,x          ; $dd8b: 95 57     
            lda #$00           ; $dd8d: a9 00     
            adc $02c3,y        ; $dd8f: 79 c3 02  
            rts                ; $dd92: 60        

;-------------------------------------------------------------------------------
__dd93:     lda $57,x          ; $dd93: b5 57     
            clc                ; $dd95: 18        
            adc $0500          ; $dd96: 6d 00 05  
            sta $57,x          ; $dd99: 95 57     
            lda #$00           ; $dd9b: a9 00     
            rol                ; $dd9d: 2a        
            sta $00            ; $dd9e: 85 00     
            lda $02c3,y        ; $dda0: b9 c3 02  
            sec                ; $dda3: 38        
            sbc $00            ; $dda4: e5 00     
            rts                ; $dda6: 60        

;-------------------------------------------------------------------------------
__dda7:     lda $a3,x          ; $dda7: b5 a3     
            cmp #$02           ; $dda9: c9 02     
            bne __ddb7         ; $ddab: d0 0a     
            lda #$03           ; $ddad: a9 03     
            sta $a3,x          ; $ddaf: 95 a3     
            ldx #$00           ; $ddb1: a2 00     
            jsr __ddc1         ; $ddb3: 20 c1 dd  
            rts                ; $ddb6: 60        

;-------------------------------------------------------------------------------
__ddb7:     lda #$02           ; $ddb7: a9 02     
            sta $a3,x          ; $ddb9: 95 a3     
            ldx #$01           ; $ddbb: a2 01     
            jsr __ddca         ; $ddbd: 20 ca dd  
            rts                ; $ddc0: 60        

;-------------------------------------------------------------------------------
__ddc1:     lda $02c0,y        ; $ddc1: b9 c0 02  
            clc                ; $ddc4: 18        
            adc #$01           ; $ddc5: 69 01     
            jmp __ddd0         ; $ddc7: 4c d0 dd  

;-------------------------------------------------------------------------------
__ddca:     lda $02c0,y        ; $ddca: b9 c0 02  
            sec                ; $ddcd: 38        
            sbc #$01           ; $ddce: e9 01     
__ddd0:     sta $01            ; $ddd0: 85 01     
            lda $02c3,y        ; $ddd2: b9 c3 02  
            sta $00            ; $ddd5: 85 00     
            lda #$62           ; $ddd7: a9 62     
            sta $02            ; $ddd9: 85 02     
            lda #$21           ; $dddb: a9 21     
            sta $03            ; $dddd: 85 03     
            txa                ; $dddf: 8a        
            jsr __ea08         ; $dde0: 20 08 ea  
            rts                ; $dde3: 60        

;-------------------------------------------------------------------------------
__dde4:     lda $a3,x          ; $dde4: b5 a3     
            cmp #$00           ; $dde6: c9 00     
            bne __ddf6         ; $dde8: d0 0c     
            lda #$5a           ; $ddea: a9 5a     
            sta $02            ; $ddec: 85 02     
            lda #$01           ; $ddee: a9 01     
            sta $a3,x          ; $ddf0: 95 a3     
            jsr __de02         ; $ddf2: 20 02 de  
            rts                ; $ddf5: 60        

;-------------------------------------------------------------------------------
__ddf6:     lda #$58           ; $ddf6: a9 58     
            sta $02            ; $ddf8: 85 02     
            lda #$00           ; $ddfa: a9 00     
            sta $a3,x          ; $ddfc: 95 a3     
            jsr __de02         ; $ddfe: 20 02 de  
            rts                ; $de01: 60        

;-------------------------------------------------------------------------------
__de02:     pha                ; $de02: 48        
            lda $02c0,y        ; $de03: b9 c0 02  
            sta $01            ; $de06: 85 01     
            pla                ; $de08: 68        
            beq __de14         ; $de09: f0 09     
            lda $02c3,y        ; $de0b: b9 c3 02  
            sec                ; $de0e: 38        
            sbc #$01           ; $de0f: e9 01     
            jmp __de1a         ; $de11: 4c 1a de  

;-------------------------------------------------------------------------------
__de14:     lda $02c3,y        ; $de14: b9 c3 02  
            clc                ; $de17: 18        
            adc #$01           ; $de18: 69 01     
__de1a:     sta $00            ; $de1a: 85 00     
            lda #$12           ; $de1c: a9 12     
            sta $03            ; $de1e: 85 03     
            lda $a3,x          ; $de20: b5 a3     
            eor #$01           ; $de22: 49 01     
            jsr __ea08         ; $de24: 20 08 ea  
            rts                ; $de27: 60        

;-------------------------------------------------------------------------------
__de28:     txa                ; $de28: 8a        
            pha                ; $de29: 48        
            lda $a8,x          ; $de2a: b5 a8     
            beq __de31         ; $de2c: f0 03     
            jmp __de69         ; $de2e: 4c 69 de  

;-------------------------------------------------------------------------------
__de31:     lda #$01           ; $de31: a9 01     
            sta $a8,x          ; $de33: 95 a8     
            lda $a3,x          ; $de35: b5 a3     
            sta $08            ; $de37: 85 08     
            lda #$00           ; $de39: a9 00     
            sta $a3,x          ; $de3b: 95 a3     
            jsr __de6c         ; $de3d: 20 6c de  
            lda $19            ; $de40: a5 19     
            cmp $05            ; $de42: c5 05     
            bcc __de57         ; $de44: 90 11     
            lda $1a            ; $de46: a5 1a     
            cmp $06            ; $de48: c5 06     
            bcc __de55         ; $de4a: 90 09     
            lda $1b            ; $de4c: a5 1b     
            cmp $07            ; $de4e: c5 07     
            bcs __de59         ; $de50: b0 07     
            jmp __de5b         ; $de52: 4c 5b de  

;-------------------------------------------------------------------------------
__de55:     inc $a3,x          ; $de55: f6 a3     
__de57:     inc $a3,x          ; $de57: f6 a3     
__de59:     inc $a3,x          ; $de59: f6 a3     
__de5b:     lda $a3,x          ; $de5b: b5 a3     
            ldx $08            ; $de5d: a6 08     
            jsr __e0cc         ; $de5f: 20 cc e0  
            clc                ; $de62: 18        
            adc $02c3,y        ; $de63: 79 c3 02  
            sta $02c3,y        ; $de66: 99 c3 02  
__de69:     pla                ; $de69: 68        
            tax                ; $de6a: aa        
            rts                ; $de6b: 60        

;-------------------------------------------------------------------------------
__de6c:     lda $02c3,y        ; $de6c: b9 c3 02  
            sta $00            ; $de6f: 85 00     
            lda $02c0,y        ; $de71: b9 c0 02  
            sta $01            ; $de74: 85 01     
            lda #$30           ; $de76: a9 30     
            sta $05            ; $de78: 85 05     
            lda #$40           ; $de7a: a9 40     
            sta $06            ; $de7c: 85 06     
            lda #$80           ; $de7e: a9 80     
            sta $07            ; $de80: 85 07     
            jsr __ded4         ; $de82: 20 d4 de  
            lda $4a            ; $de85: a5 4a     
            cmp #$04           ; $de87: c9 04     
            beq __dea6         ; $de89: f0 1b     
            dec $3f            ; $de8b: c6 3f     
            dec $41            ; $de8d: c6 41     
            jsr __e893         ; $de8f: 20 93 e8  
            inc $3f            ; $de92: e6 3f     
            inc $41            ; $de94: e6 41     
            cmp #$00           ; $de96: c9 00     
            beq __dea6         ; $de98: f0 0c     
            jsr __d55b         ; $de9a: 20 5b d5  
            cmp #$00           ; $de9d: c9 00     
            bne __deb9         ; $de9f: d0 18     
            lda $02c0,y        ; $dea1: b9 c0 02  
            sta $01            ; $dea4: 85 01     
__dea6:     jsr __d562         ; $dea6: 20 62 d5  
            cmp #$00           ; $dea9: c9 00     
            bne __debf         ; $deab: d0 12     
            lda $0223          ; $dead: ad 23 02  
            cmp $00            ; $deb0: c5 00     
            bcc __decb         ; $deb2: 90 17     
            beq __deb8         ; $deb4: f0 02     
            bcs __dec5         ; $deb6: b0 0d     
__deb8:     rts                ; $deb8: 60        

;-------------------------------------------------------------------------------
__deb9:     lda $0503          ; $deb9: ad 03 05  
            sta $05            ; $debc: 85 05     
            rts                ; $debe: 60        

;-------------------------------------------------------------------------------
__debf:     lda $0504          ; $debf: ad 04 05  
            sta $06            ; $dec2: 85 06     
            rts                ; $dec4: 60        

;-------------------------------------------------------------------------------
__dec5:     lda $0505          ; $dec5: ad 05 05  
            sta $07            ; $dec8: 85 07     
            rts                ; $deca: 60        

;-------------------------------------------------------------------------------
__decb:     sec                ; $decb: 38        
            lda #$ff           ; $decc: a9 ff     
            sbc $0505          ; $dece: ed 05 05  
            sta $07            ; $ded1: 85 07     
            rts                ; $ded3: 60        

;-------------------------------------------------------------------------------
__ded4:     txa                ; $ded4: 8a        
            pha                ; $ded5: 48        
            ldx #$03           ; $ded6: a2 03     
__ded8:     lda $05fc,x        ; $ded8: bd fc 05  
            sta $3e,x          ; $dedb: 95 3e     
            dex                ; $dedd: ca        
            bpl __ded8         ; $dede: 10 f8     
            pla                ; $dee0: 68        
            tax                ; $dee1: aa        
            rts                ; $dee2: 60        

;-------------------------------------------------------------------------------
__dee3:     lda #$e0           ; $dee3: a9 e0     
            sta $04            ; $dee5: 85 04     
            lda #$00           ; $dee7: a9 00     
            ldx #$00           ; $dee9: a2 00     
            ldy #$00           ; $deeb: a0 00     
__deed:     pha                ; $deed: 48        
            txa                ; $deee: 8a        
            pha                ; $deef: 48        
            lda $02e0,y        ; $def0: b9 e0 02  
            cmp #$ff           ; $def3: c9 ff     
            beq __df0b         ; $def5: f0 14     
            lda $b9,x          ; $def7: b5 b9     
            bne __df11         ; $def9: d0 16     
            lda $b4,x          ; $defb: b5 b4     
            cmp #$03           ; $defd: c9 03     
            beq __df1d         ; $deff: f0 1c     
            cmp #$01           ; $df01: c9 01     
            beq __df23         ; $df03: f0 1e     
            jsr __dff9         ; $df05: 20 f9 df  
            jmp __df26         ; $df08: 4c 26 df  

;-------------------------------------------------------------------------------
__df0b:     jsr __df68         ; $df0b: 20 68 df  
            jmp __df52         ; $df0e: 4c 52 df  

;-------------------------------------------------------------------------------
__df11:     sec                ; $df11: 38        
            sbc #$01           ; $df12: e9 01     
            sta $b9,x          ; $df14: 95 b9     
            bne __df52         ; $df16: d0 3a     
            sta $b3            ; $df18: 85 b3     
            jmp __df52         ; $df1a: 4c 52 df  

;-------------------------------------------------------------------------------
__df1d:     jsr __e055         ; $df1d: 20 55 e0  
            jmp __df26         ; $df20: 4c 26 df  

;-------------------------------------------------------------------------------
__df23:     jsr __dfc1         ; $df23: 20 c1 df  
__df26:     and #$04           ; $df26: 29 04     
            beq __df2f         ; $df28: f0 05     
            lda #$58           ; $df2a: a9 58     
            jmp __df31         ; $df2c: 4c 31 df  

;-------------------------------------------------------------------------------
__df2f:     lda #$5a           ; $df2f: a9 5a     
__df31:     sta $02            ; $df31: 85 02     
            ldy $b4,x          ; $df33: b4 b4     
            cpy #$03           ; $df35: c0 03     
            beq __df44         ; $df37: f0 0b     
            lda #$12           ; $df39: a9 12     
            sta $03            ; $df3b: 85 03     
            lda $b4,x          ; $df3d: b5 b4     
            eor #$00           ; $df3f: 49 00     
            jmp __df4f         ; $df41: 4c 4f df  

;-------------------------------------------------------------------------------
__df44:     clc                ; $df44: 18        
            adc #$08           ; $df45: 69 08     
            sta $02            ; $df47: 85 02     
            lda #$21           ; $df49: a9 21     
            sta $03            ; $df4b: 85 03     
            lda #$02           ; $df4d: a9 02     
__df4f:     jsr __ea08         ; $df4f: 20 08 ea  
__df52:     pla                ; $df52: 68        
            tax                ; $df53: aa        
            pla                ; $df54: 68        
            inx                ; $df55: e8        
            cpx $b0            ; $df56: e4 b0     
            beq __df67         ; $df58: f0 0d     
            clc                ; $df5a: 18        
            adc #$08           ; $df5b: 69 08     
            tay                ; $df5d: a8        
            clc                ; $df5e: 18        
            adc #$e0           ; $df5f: 69 e0     
            sta $04            ; $df61: 85 04     
            tya                ; $df63: 98        
            jmp __deed         ; $df64: 4c ed de  

;-------------------------------------------------------------------------------
__df67:     rts                ; $df67: 60        

;-------------------------------------------------------------------------------
__df68:     lda $36            ; $df68: a5 36     
            bne __dfc0         ; $df6a: d0 54     
            lda $0510          ; $df6c: ad 10 05  
            sta $36            ; $df6f: 85 36     
            lda $b3            ; $df71: a5 b3     
            bne __dfc0         ; $df73: d0 4b     
            lda $b0            ; $df75: a5 b0     
            cmp $b1            ; $df77: c5 b1     
            beq __dfc0         ; $df79: f0 45     
            bmi __dfc0         ; $df7b: 30 43     
            inc $b1            ; $df7d: e6 b1     
            lda #$01           ; $df7f: a9 01     
            sta $b3            ; $df81: 85 b3     
            lda #$30           ; $df83: a9 30     
            sta $b9,x          ; $df85: 95 b9     
            sta $35            ; $df87: 85 35     
            lda #$50           ; $df89: a9 50     
            sta $00            ; $df8b: 85 00     
            lda #$37           ; $df8d: a9 37     
            sta $01            ; $df8f: 85 01     
            lda #$58           ; $df91: a9 58     
            sta $02            ; $df93: 85 02     
            lda #$12           ; $df95: a9 12     
            sta $03            ; $df97: 85 03     
            lda $0213          ; $df99: ad 13 02  
            cmp #$45           ; $df9c: c9 45     
            bcs __dfa9         ; $df9e: b0 09     
            lda #$ff           ; $dfa0: a9 ff     
            sec                ; $dfa2: 38        
            sbc $0515          ; $dfa3: ed 15 05  
            jmp __dfac         ; $dfa6: 4c ac df  

;-------------------------------------------------------------------------------
__dfa9:     lda $0515          ; $dfa9: ad 15 05  
__dfac:     cmp $19            ; $dfac: c5 19     
            bcc __dfb5         ; $dfae: 90 05     
            lda #$00           ; $dfb0: a9 00     
            jmp __dfb7         ; $dfb2: 4c b7 df  

;-------------------------------------------------------------------------------
__dfb5:     lda #$01           ; $dfb5: a9 01     
__dfb7:     sta $b4,x          ; $dfb7: 95 b4     
            lda #$00           ; $dfb9: a9 00     
            sta $b2            ; $dfbb: 85 b2     
            jsr __e9fc         ; $dfbd: 20 fc e9  
__dfc0:     rts                ; $dfc0: 60        

;-------------------------------------------------------------------------------
__dfc1:     lda $02e3,y        ; $dfc1: b9 e3 02  
            clc                ; $dfc4: 18        
            adc #$08           ; $dfc5: 69 08     
            cmp #$2c           ; $dfc7: c9 2c     
            beq __dfda         ; $dfc9: f0 0f     
            cmp #$14           ; $dfcb: c9 14     
            bne __dfd6         ; $dfcd: d0 07     
            jsr __e0b3         ; $dfcf: 20 b3 e0  
            jsr __e055         ; $dfd2: 20 55 e0  
            rts                ; $dfd5: 60        

;-------------------------------------------------------------------------------
__dfd6:     jsr __dfe4         ; $dfd6: 20 e4 df  
            rts                ; $dfd9: 60        

;-------------------------------------------------------------------------------
__dfda:     jsr __e081         ; $dfda: 20 81 e0  
            lda $b4,x          ; $dfdd: b5 b4     
            cmp #$03           ; $dfdf: c9 03     
            bne __dfe4         ; $dfe1: d0 01     
            rts                ; $dfe3: 60        

;-------------------------------------------------------------------------------
__dfe4:     lda $02e0,y        ; $dfe4: b9 e0 02  
            sta $01            ; $dfe7: 85 01     
            lda $5d,x          ; $dfe9: b5 5d     
            sec                ; $dfeb: 38        
            sbc $0511          ; $dfec: ed 11 05  
            sta $5d,x          ; $dfef: 95 5d     
            lda $02e3,y        ; $dff1: b9 e3 02  
            sbc #$00           ; $dff4: e9 00     
            sta $00            ; $dff6: 85 00     
            rts                ; $dff8: 60        

;-------------------------------------------------------------------------------
__dff9:     lda $02e3,y        ; $dff9: b9 e3 02  
            clc                ; $dffc: 18        
            adc #$07           ; $dffd: 69 07     
            cmp #$94           ; $dfff: c9 94     
            beq __e022         ; $e001: f0 1f     
            cmp #$6b           ; $e003: c9 6b     
            beq __e026         ; $e005: f0 1f     
            cmp #$8b           ; $e007: c9 8b     
            beq __e026         ; $e009: f0 1b     
            cmp #$a3           ; $e00b: c9 a3     
            beq __e026         ; $e00d: f0 17     
            cmp #$bb           ; $e00f: c9 bb     
            beq __e026         ; $e011: f0 13     
            cmp #$d3           ; $e013: c9 d3     
            bne __e01e         ; $e015: d0 07     
            jsr __e0b3         ; $e017: 20 b3 e0  
            jsr __e055         ; $e01a: 20 55 e0  
            rts                ; $e01d: 60        

;-------------------------------------------------------------------------------
__e01e:     jsr __e030         ; $e01e: 20 30 e0  
            rts                ; $e021: 60        

;-------------------------------------------------------------------------------
__e022:     jsr __e045         ; $e022: 20 45 e0  
            rts                ; $e025: 60        

;-------------------------------------------------------------------------------
__e026:     jsr __e081         ; $e026: 20 81 e0  
            lda $b4,x          ; $e029: b5 b4     
            cmp #$03           ; $e02b: c9 03     
            bne __e030         ; $e02d: d0 01     
            rts                ; $e02f: 60        

;-------------------------------------------------------------------------------
__e030:     lda $02e0,y        ; $e030: b9 e0 02  
            sta $01            ; $e033: 85 01     
            lda $5d,x          ; $e035: b5 5d     
            clc                ; $e037: 18        
            adc $0511          ; $e038: 6d 11 05  
            sta $5d,x          ; $e03b: 95 5d     
            lda #$00           ; $e03d: a9 00     
            adc $02e3,y        ; $e03f: 79 e3 02  
            sta $00            ; $e042: 85 00     
            rts                ; $e044: 60        

;-------------------------------------------------------------------------------
__e045:     lda $02e0,y        ; $e045: b9 e0 02  
            clc                ; $e048: 18        
            adc #$08           ; $e049: 69 08     
            sta $01            ; $e04b: 85 01     
            lda $02e3,y        ; $e04d: b9 e3 02  
            sta $00            ; $e050: 85 00     
            inc $00            ; $e052: e6 00     
            rts                ; $e054: 60        

;-------------------------------------------------------------------------------
__e055:     lda $02e0,y        ; $e055: b9 e0 02  
            cmp #$e0           ; $e058: c9 e0     
            bcc __e069         ; $e05a: 90 0d     
            lda #$ff           ; $e05c: a9 ff     
            sta $00            ; $e05e: 85 00     
            sta $01            ; $e060: 85 01     
            dec $b1            ; $e062: c6 b1     
            lda #$00           ; $e064: a9 00     
            sta $b4,x          ; $e066: 95 b4     
            rts                ; $e068: 60        

;-------------------------------------------------------------------------------
__e069:     lda #$03           ; $e069: a9 03     
            sta $b4,x          ; $e06b: 95 b4     
            lda $02e3,y        ; $e06d: b9 e3 02  
            sta $00            ; $e070: 85 00     
            lda $5d,x          ; $e072: b5 5d     
            adc $0512          ; $e074: 6d 12 05  
            sta $5d,x          ; $e077: 95 5d     
            lda #$00           ; $e079: a9 00     
            adc $02e0,y        ; $e07b: 79 e0 02  
            sta $01            ; $e07e: 85 01     
            rts                ; $e080: 60        

;-------------------------------------------------------------------------------
__e081:     lda $02e3,y        ; $e081: b9 e3 02  
            sta $00            ; $e084: 85 00     
            lda $02e0,y        ; $e086: b9 e0 02  
            sta $01            ; $e089: 85 01     
            jsr __ded4         ; $e08b: 20 d4 de  
            jsr __d562         ; $e08e: 20 62 d5  
            beq __e099         ; $e091: f0 06     
            lda $0514          ; $e093: ad 14 05  
            jmp __e0a7         ; $e096: 4c a7 e0  

;-------------------------------------------------------------------------------
__e099:     lda $0210          ; $e099: ad 10 02  
            cmp #$47           ; $e09c: c9 47     
            bcc __e0a5         ; $e09e: 90 05     
            lda #$40           ; $e0a0: a9 40     
            jmp __e0a7         ; $e0a2: 4c a7 e0  

;-------------------------------------------------------------------------------
__e0a5:     lda #$10           ; $e0a5: a9 10     
__e0a7:     cmp $18,x          ; $e0a7: d5 18     
            bcs __e0ac         ; $e0a9: b0 01     
            rts                ; $e0ab: 60        

;-------------------------------------------------------------------------------
__e0ac:     jsr __e0b3         ; $e0ac: 20 b3 e0  
            jsr __e055         ; $e0af: 20 55 e0  
            rts                ; $e0b2: 60        

;-------------------------------------------------------------------------------
__e0b3:     txa                ; $e0b3: 8a        
            pha                ; $e0b4: 48        
            lda $b4,x          ; $e0b5: b5 b4     
            sta $00            ; $e0b7: 85 00     
            lda #$03           ; $e0b9: a9 03     
            sta $b4,x          ; $e0bb: 95 b4     
            ldx $00            ; $e0bd: a6 00     
            jsr __e0cc         ; $e0bf: 20 cc e0  
            clc                ; $e0c2: 18        
            adc $02e3,y        ; $e0c3: 79 e3 02  
            sta $02e3,y        ; $e0c6: 99 e3 02  
            pla                ; $e0c9: 68        
            tax                ; $e0ca: aa        
            rts                ; $e0cb: 60        

;-------------------------------------------------------------------------------
__e0cc:     cpx #$02           ; $e0cc: e0 02     
            bpl __e0da         ; $e0ce: 10 0a     
            cmp #$02           ; $e0d0: c9 02     
            bpl __e0d7         ; $e0d2: 10 03     
            lda #$00           ; $e0d4: a9 00     
            rts                ; $e0d6: 60        

;-------------------------------------------------------------------------------
__e0d7:     lda #$05           ; $e0d7: a9 05     
            rts                ; $e0d9: 60        

;-------------------------------------------------------------------------------
__e0da:     cmp #$02           ; $e0da: c9 02     
            bpl __e0e1         ; $e0dc: 10 03     
            lda #$fb           ; $e0de: a9 fb     
            rts                ; $e0e0: 60        

;-------------------------------------------------------------------------------
__e0e1:     lda #$00           ; $e0e1: a9 00     
            rts                ; $e0e3: 60        

;-------------------------------------------------------------------------------
__e0e4:     lda $d0            ; $e0e4: a5 d0     
            beq __e10c         ; $e0e6: f0 24     
            ldx $020c          ; $e0e8: ae 0c 02  
            cpx #$a0           ; $e0eb: e0 a0     
            beq __e100         ; $e0ed: f0 11     
            inx                ; $e0ef: e8        
            stx $020c          ; $e0f0: 8e 0c 02  
            lda #$f0           ; $e0f3: a9 f0     
            sta $020d          ; $e0f5: 8d 0d 02  
            lda #$ab           ; $e0f8: a9 ab     
            sta $020f          ; $e0fa: 8d 0f 02  
            jmp __e10c         ; $e0fd: 4c 0c e1  

;-------------------------------------------------------------------------------
__e100:     lda #$ff           ; $e100: a9 ff     
            sta $020c          ; $e102: 8d 0c 02  
            sta $020f          ; $e105: 8d 0f 02  
            lda #$00           ; $e108: a9 00     
            sta $d0            ; $e10a: 85 d0     
__e10c:     rts                ; $e10c: 60        

;-------------------------------------------------------------------------------
__e10d:     ldx $ad            ; $e10d: a6 ad     
            bne __e112         ; $e10f: d0 01     
            rts                ; $e111: 60        

;-------------------------------------------------------------------------------
__e112:     lda $0210          ; $e112: ad 10 02  
            cmp #$8b           ; $e115: c9 8b     
            bcs __e11b         ; $e117: b0 02     
            lda #$8c           ; $e119: a9 8c     
__e11b:     sta $01            ; $e11b: 85 01     
            dex                ; $e11d: ca        
            lda #$00           ; $e11e: a9 00     
            sta $ad            ; $e120: 85 ad     
            lda $0213          ; $e122: ad 13 02  
            clc                ; $e125: 18        
            adc $a0,x          ; $e126: 75 a0     
            sta $00            ; $e128: 85 00     
            lda $0211          ; $e12a: ad 11 02  
            ldx $6d            ; $e12d: a6 6d     
            bne __e134         ; $e12f: d0 03     
            sec                ; $e131: 38        
            sbc #$06           ; $e132: e9 06     
__e134:     sta $02            ; $e134: 85 02     
            lda $6d            ; $e136: a5 6d     
            eor #$01           ; $e138: 49 01     
            jsr __e9ee         ; $e13a: 20 ee e9  
            rts                ; $e13d: 60        

;-------------------------------------------------------------------------------
__e13e:     lda $bd            ; $e13e: a5 bd     
            bne __e185         ; $e140: d0 43     
            cmp $bc            ; $e142: c5 bc     
            beq __e184         ; $e144: f0 3e     
            sta $bc            ; $e146: 85 bc     
            lda $0210          ; $e148: ad 10 02  
            cmp #$c2           ; $e14b: c9 c2     
            bcs __e170         ; $e14d: b0 21     
            lda #$01           ; $e14f: a9 01     
            sta $6c            ; $e151: 85 6c     
            lda #$03           ; $e153: a9 03     
            sta $6b            ; $e155: 85 6b     
            ldx $6d            ; $e157: a6 6d     
            inx                ; $e159: e8        
            inx                ; $e15a: e8        
            inx                ; $e15b: e8        
            stx $54            ; $e15c: 86 54     
            lda $87            ; $e15e: a5 87     
            cmp #$02           ; $e160: c9 02     
            beq __e170         ; $e162: f0 0c     
            lda #$01           ; $e164: a9 01     
            sta $87            ; $e166: 85 87     
            lda #$90           ; $e168: a9 90     
            sta $7c            ; $e16a: 85 7c     
            lda #$60           ; $e16c: a9 60     
            sta $86            ; $e16e: 85 86     
__e170:     lda #$02           ; $e170: a9 02     
            sta $7a            ; $e172: 85 7a     
            lda #$00           ; $e174: a9 00     
            sta $be            ; $e176: 85 be     
            sta $38            ; $e178: 85 38     
            lda #$94           ; $e17a: a9 94     
            sta $02            ; $e17c: 85 02     
            jsr __e225         ; $e17e: 20 25 e2  
            jsr __e239         ; $e181: 20 39 e2  
__e184:     rts                ; $e184: 60        

;-------------------------------------------------------------------------------
__e185:     cmp $bc            ; $e185: c5 bc     
            beq __e1bf         ; $e187: f0 36     
            sta $bc            ; $e189: 85 bc     
            lda $0213          ; $e18b: ad 13 02  
            sta $00            ; $e18e: 85 00     
            lda $0210          ; $e190: ad 10 02  
            sta $01            ; $e193: 85 01     
            lda #$08           ; $e195: a9 08     
            sta $02            ; $e197: 85 02     
            lda $6d            ; $e199: a5 6d     
            eor #$01           ; $e19b: 49 01     
            jsr __e9ee         ; $e19d: 20 ee e9  
            lda #$04           ; $e1a0: a9 04     
            sta $6b            ; $e1a2: 85 6b     
            lda #$fe           ; $e1a4: a9 fe     
            sta $38            ; $e1a6: 85 38     
            lda #$01           ; $e1a8: a9 01     
            sta $7a            ; $e1aa: 85 7a     
            lda #$90           ; $e1ac: a9 90     
            sta $86            ; $e1ae: 85 86     
            lda #$01           ; $e1b0: a9 01     
            sta $87            ; $e1b2: 85 87     
            lda #$20           ; $e1b4: a9 20     
            sta $7b            ; $e1b6: 85 7b     
            lda #$70           ; $e1b8: a9 70     
            sta $7c            ; $e1ba: 85 7c     
            jsr __e244         ; $e1bc: 20 44 e2  
__e1bf:     lda $38            ; $e1bf: a5 38     
            and #$02           ; $e1c1: 29 02     
            bne __e1f0         ; $e1c3: d0 2b     
            lda $be            ; $e1c5: a5 be     
            bne __e1df         ; $e1c7: d0 16     
            lda $0210          ; $e1c9: ad 10 02  
            cmp #$c8           ; $e1cc: c9 c8     
            bcc __e1d2         ; $e1ce: 90 02     
            sta $be            ; $e1d0: 85 be     
__e1d2:     lda $02c1          ; $e1d2: ad c1 02  
            cmp #$a0           ; $e1d5: c9 a0     
            beq __e1f3         ; $e1d7: f0 1a     
            clc                ; $e1d9: 18        
            adc #$04           ; $e1da: 69 04     
            jmp __e1f3         ; $e1dc: 4c f3 e1  

;-------------------------------------------------------------------------------
__e1df:     lda #$fe           ; $e1df: a9 fe     
            sta $7a            ; $e1e1: 85 7a     
            lda $02c1          ; $e1e3: ad c1 02  
            cmp #$94           ; $e1e6: c9 94     
            beq __e1f3         ; $e1e8: f0 09     
            sec                ; $e1ea: 38        
            sbc #$04           ; $e1eb: e9 04     
            jmp __e1f3         ; $e1ed: 4c f3 e1  

;-------------------------------------------------------------------------------
__e1f0:     lda $02c1          ; $e1f0: ad c1 02  
__e1f3:     sta $02            ; $e1f3: 85 02     
            cmp #$a0           ; $e1f5: c9 a0     
            bne __e225         ; $e1f7: d0 2c     
            lda $6d            ; $e1f9: a5 6d     
            beq __e225         ; $e1fb: f0 28     
            lda $76            ; $e1fd: a5 76     
            cmp #$c0           ; $e1ff: c9 c0     
            bcc __e225         ; $e201: 90 22     
            lda $14            ; $e203: a5 14     
            and #$80           ; $e205: 29 80     
            cmp #$80           ; $e207: c9 80     
            beq __e213         ; $e209: f0 08     
            lda $16            ; $e20b: a5 16     
            and #$80           ; $e20d: 29 80     
            cmp #$80           ; $e20f: c9 80     
            bne __e225         ; $e211: d0 12     
__e213:     lda #$d0           ; $e213: a9 d0     
            cmp $19            ; $e215: c5 19     
            bcc __e225         ; $e217: 90 0c     
            lda #$40           ; $e219: a9 40     
            sta $86            ; $e21b: 85 86     
            lda #$02           ; $e21d: a9 02     
            sta $87            ; $e21f: 85 87     
            lda #$60           ; $e221: a9 60     
            sta $7c            ; $e223: 85 7c     
__e225:     lda #$40           ; $e225: a9 40     
            sta $00            ; $e227: 85 00     
            lda #$cf           ; $e229: a9 cf     
            sta $01            ; $e22b: 85 01     
            lda #$22           ; $e22d: a9 22     
            sta $03            ; $e22f: 85 03     
            lda #$c0           ; $e231: a9 c0     
            sta $04            ; $e233: 85 04     
            jsr __e9fc         ; $e235: 20 fc e9  
            rts                ; $e238: 60        

;-------------------------------------------------------------------------------
__e239:     lda #$c5           ; $e239: a9 c5     
            sta $02            ; $e23b: 85 02     
            lda #$c3           ; $e23d: a9 c3     
            sta $03            ; $e23f: 85 03     
            jmp __e24c         ; $e241: 4c 4c e2  

;-------------------------------------------------------------------------------
__e244:     lda #$c8           ; $e244: a9 c8     
            sta $02            ; $e246: 85 02     
            lda #$c3           ; $e248: a9 c3     
            sta $03            ; $e24a: 85 03     
__e24c:     lda #$48           ; $e24c: a9 48     
            sta $00            ; $e24e: 85 00     
            lda #$23           ; $e250: a9 23     
            sta $01            ; $e252: 85 01     
            jsr __efce         ; $e254: 20 ce ef  
            rts                ; $e257: 60        

;-------------------------------------------------------------------------------
__e258:     ldx #$00           ; $e258: a2 00     
            ldy #$00           ; $e25a: a0 00     
__e25c:     lda $0293,y        ; $e25c: b9 93 02  
            cmp $a3,x          ; $e25f: d5 a3     
            bne __e26a         ; $e261: d0 07     
            lda #$01           ; $e263: a9 01     
            sta $a9,x          ; $e265: 95 a9     
            jmp __e272         ; $e267: 4c 72 e2  

;-------------------------------------------------------------------------------
__e26a:     cmp $a6,x          ; $e26a: d5 a6     
            bne __e272         ; $e26c: d0 04     
            lda #$00           ; $e26e: a9 00     
            sta $a9,x          ; $e270: 95 a9     
__e272:     lda $a9,x          ; $e272: b5 a9     
            cpx #$00           ; $e274: e0 00     
            beq __e28e         ; $e276: f0 16     
            cpx #$01           ; $e278: e0 01     
            beq __e282         ; $e27a: f0 06     
            jsr __e311         ; $e27c: 20 11 e3  
            jmp __e285         ; $e27f: 4c 85 e2  

;-------------------------------------------------------------------------------
__e282:     jsr __e2f6         ; $e282: 20 f6 e2  
__e285:     jsr __e380         ; $e285: 20 80 e3  
            jsr __e3b9         ; $e288: 20 b9 e3  
            jmp __e294         ; $e28b: 4c 94 e2  

;-------------------------------------------------------------------------------
__e28e:     jsr __e2a2         ; $e28e: 20 a2 e2  
            jsr __e33c         ; $e291: 20 3c e3  
__e294:     cpx #$02           ; $e294: e0 02     
            beq __e2a1         ; $e296: f0 09     
            inx                ; $e298: e8        
            tya                ; $e299: 98        
            clc                ; $e29a: 18        
            adc #$10           ; $e29b: 69 10     
            tay                ; $e29d: a8        
            jmp __e25c         ; $e29e: 4c 5c e2  

;-------------------------------------------------------------------------------
__e2a1:     rts                ; $e2a1: 60        

;-------------------------------------------------------------------------------
__e2a2:     jsr __e3dd         ; $e2a2: 20 dd e3  
            clc                ; $e2a5: 18        
            adc $0293          ; $e2a6: 6d 93 02  
            sta $0293          ; $e2a9: 8d 93 02  
            sta $0297          ; $e2ac: 8d 97 02  
            clc                ; $e2af: 18        
            adc #$30           ; $e2b0: 69 30     
            sta $029b          ; $e2b2: 8d 9b 02  
            sta $029f          ; $e2b5: 8d 9f 02  
            lda $0294          ; $e2b8: ad 94 02  
            cmp #$8b           ; $e2bb: c9 8b     
            beq __e2c5         ; $e2bd: f0 06     
            cmp #$92           ; $e2bf: c9 92     
            bne __e2d3         ; $e2c1: d0 10     
            lda #$00           ; $e2c3: a9 00     
__e2c5:     sta $00            ; $e2c5: 85 00     
            cmp $ac            ; $e2c7: c5 ac     
            beq __e2cf         ; $e2c9: f0 04     
            lda #$43           ; $e2cb: a9 43     
            sta $36            ; $e2cd: 85 36     
__e2cf:     lda $00            ; $e2cf: a5 00     
            sta $ac            ; $e2d1: 85 ac     
__e2d3:     lda $36            ; $e2d3: a5 36     
            cmp #$00           ; $e2d5: c9 00     
            bne __e2f5         ; $e2d7: d0 1c     
            lda $ac            ; $e2d9: a5 ac     
            cmp #$00           ; $e2db: c9 00     
            bne __e2e8         ; $e2dd: d0 09     
            lda $0294          ; $e2df: ad 94 02  
            sec                ; $e2e2: 38        
            sbc #$01           ; $e2e3: e9 01     
            jmp __e2ee         ; $e2e5: 4c ee e2  

;-------------------------------------------------------------------------------
__e2e8:     lda $0294          ; $e2e8: ad 94 02  
            clc                ; $e2eb: 18        
            adc #$01           ; $e2ec: 69 01     
__e2ee:     sta $0294          ; $e2ee: 8d 94 02  
            lda #$06           ; $e2f1: a9 06     
            sta $36            ; $e2f3: 85 36     
__e2f5:     rts                ; $e2f5: 60        

;-------------------------------------------------------------------------------
__e2f6:     jsr __e3dd         ; $e2f6: 20 dd e3  
            clc                ; $e2f9: 18        
            adc $02a3          ; $e2fa: 6d a3 02  
            sta $00            ; $e2fd: 85 00     
            lda #$b0           ; $e2ff: a9 b0     
            sta $01            ; $e301: 85 01     
            sta $02            ; $e303: 85 02     
            lda #$12           ; $e305: a9 12     
            sta $03            ; $e307: 85 03     
            lda #$a0           ; $e309: a9 a0     
            sta $04            ; $e30b: 85 04     
            jsr __e9fc         ; $e30d: 20 fc e9  
            rts                ; $e310: 60        

;-------------------------------------------------------------------------------
__e311:     jsr __e3dd         ; $e311: 20 dd e3  
            clc                ; $e314: 18        
            adc $02b3          ; $e315: 6d b3 02  
            sta $00            ; $e318: 85 00     
            lda #$cf           ; $e31a: a9 cf     
            sta $01            ; $e31c: 85 01     
            lda #$b0           ; $e31e: a9 b0     
            sta $02            ; $e320: 85 02     
            lda #$12           ; $e322: a9 12     
            sta $03            ; $e324: 85 03     
            lda #$b0           ; $e326: a9 b0     
            sta $04            ; $e328: 85 04     
            jsr __e9fc         ; $e32a: 20 fc e9  
            lda $00            ; $e32d: a5 00     
            clc                ; $e32f: 18        
            adc #$10           ; $e330: 69 10     
            sta $00            ; $e332: 85 00     
            lda #$b8           ; $e334: a9 b8     
            sta $04            ; $e336: 85 04     
            jsr __e9fc         ; $e338: 20 fc e9  
            rts                ; $e33b: 60        

;-------------------------------------------------------------------------------
__e33c:     lda $ae            ; $e33c: a5 ae     
            bne __e371         ; $e33e: d0 31     
            lda $0297          ; $e340: ad 97 02  
            sta $00            ; $e343: 85 00     
            lda $0294          ; $e345: ad 94 02  
            sta $01            ; $e348: 85 01     
            lda #$a1           ; $e34a: a9 a1     
            sta $02            ; $e34c: 85 02     
            lda #$c3           ; $e34e: a9 c3     
            sta $03            ; $e350: 85 03     
            jsr __eb69         ; $e352: 20 69 eb  
            lda $029f          ; $e355: ad 9f 02  
            sta $00            ; $e358: 85 00     
            lda $029c          ; $e35a: ad 9c 02  
            sta $01            ; $e35d: 85 01     
            jsr __eb6e         ; $e35f: 20 6e eb  
            stx $05            ; $e362: 86 05     
            ldx #$07           ; $e364: a2 07     
__e366:     lda $3e,x          ; $e366: b5 3e     
            sta $048c,x        ; $e368: 9d 8c 04  
            dex                ; $e36b: ca        
            bpl __e366         ; $e36c: 10 f8     
            ldx $05            ; $e36e: a6 05     
            rts                ; $e370: 60        

;-------------------------------------------------------------------------------
__e371:     stx $05            ; $e371: 86 05     
            lda #$00           ; $e373: a9 00     
            ldx #$07           ; $e375: a2 07     
__e377:     sta $048c,x        ; $e377: 9d 8c 04  
            dex                ; $e37a: ca        
            bpl __e377         ; $e37b: 10 fa     
            ldx $05            ; $e37d: a6 05     
            rts                ; $e37f: 60        

;-------------------------------------------------------------------------------
__e380:     lda $02a3          ; $e380: ad a3 02  
            sta $00            ; $e383: 85 00     
            lda $02a0          ; $e385: ad a0 02  
            sta $01            ; $e388: 85 01     
            lda #$a5           ; $e38a: a9 a5     
            sta $02            ; $e38c: 85 02     
            lda #$c3           ; $e38e: a9 c3     
            sta $03            ; $e390: 85 03     
            jsr __eb69         ; $e392: 20 69 eb  
            lda $02b3          ; $e395: ad b3 02  
            sta $00            ; $e398: 85 00     
            lda $02b0          ; $e39a: ad b0 02  
            sta $01            ; $e39d: 85 01     
            lda #$a9           ; $e39f: a9 a9     
            sta $02            ; $e3a1: 85 02     
            lda #$c3           ; $e3a3: a9 c3     
            sta $03            ; $e3a5: 85 03     
            jsr __eb6e         ; $e3a7: 20 6e eb  
            stx $05            ; $e3aa: 86 05     
            ldx #$07           ; $e3ac: a2 07     
__e3ae:     lda $3e,x          ; $e3ae: b5 3e     
            sta $0424,x        ; $e3b0: 9d 24 04  
            dex                ; $e3b3: ca        
            bpl __e3ae         ; $e3b4: 10 f8     
            ldx $05            ; $e3b6: a6 05     
            rts                ; $e3b8: 60        

;-------------------------------------------------------------------------------
__e3b9:     lda $02a3          ; $e3b9: ad a3 02  
            sta $00            ; $e3bc: 85 00     
            lda $02a0          ; $e3be: ad a0 02  
            sta $01            ; $e3c1: 85 01     
            lda #$ad           ; $e3c3: a9 ad     
            sta $02            ; $e3c5: 85 02     
            lda #$c3           ; $e3c7: a9 c3     
            sta $03            ; $e3c9: 85 03     
            jsr __eb69         ; $e3cb: 20 69 eb  
            stx $05            ; $e3ce: 86 05     
            ldx #$03           ; $e3d0: a2 03     
__e3d2:     lda $3e,x          ; $e3d2: b5 3e     
            sta $04d0,x        ; $e3d4: 9d d0 04  
            dex                ; $e3d7: ca        
            bpl __e3d2         ; $e3d8: 10 f8     
            ldx $05            ; $e3da: a6 05     
            rts                ; $e3dc: 60        

;-------------------------------------------------------------------------------
__e3dd:     cmp #$00           ; $e3dd: c9 00     
            beq __e3ee         ; $e3df: f0 0d     
            lda $57,x          ; $e3e1: b5 57     
            clc                ; $e3e3: 18        
            adc #$3a           ; $e3e4: 69 3a     
            sta $57,x          ; $e3e6: 95 57     
            lda #$00           ; $e3e8: a9 00     
            rol                ; $e3ea: 2a        
            jmp __e3ff         ; $e3eb: 4c ff e3  

;-------------------------------------------------------------------------------
__e3ee:     lda $57,x          ; $e3ee: b5 57     
            sec                ; $e3f0: 38        
            sbc #$3a           ; $e3f1: e9 3a     
            sta $57,x          ; $e3f3: 95 57     
            lda #$00           ; $e3f5: a9 00     
            rol                ; $e3f7: 2a        
            eor #$01           ; $e3f8: 49 01     
            eor #$ff           ; $e3fa: 49 ff     
            clc                ; $e3fc: 18        
            adc #$01           ; $e3fd: 69 01     
__e3ff:     sta $a0,x          ; $e3ff: 95 a0     
            rts                ; $e401: 60        

;-------------------------------------------------------------------------------
__e402:     lda $0591          ; $e402: ad 91 05  
            beq __e408         ; $e405: f0 01     
            rts                ; $e407: 60        

;-------------------------------------------------------------------------------
__e408:     ldx #$00           ; $e408: a2 00     
            sta $e7            ; $e40a: 85 e7     
            ldy #$06           ; $e40c: a0 06     
__e40e:     tya                ; $e40e: 98        
            pha                ; $e40f: 48        
            txa                ; $e410: 8a        
            pha                ; $e411: 48        
            lda $05e7,x        ; $e412: bd e7 05  
            sta $00            ; $e415: 85 00     
            lda $05e8,x        ; $e417: bd e8 05  
            cmp #$40           ; $e41a: c9 40     
            beq __e441         ; $e41c: f0 23     
            sta $01            ; $e41e: 85 01     
            lda #$bd           ; $e420: a9 bd     
            sta $02            ; $e422: 85 02     
            lda #$c2           ; $e424: a9 c2     
            sta $03            ; $e426: 85 03     
            jsr __eb6e         ; $e428: 20 6e eb  
            cmp #$00           ; $e42b: c9 00     
            beq __e441         ; $e42d: f0 12     
            lda $55            ; $e42f: a5 55     
            beq __e441         ; $e431: f0 0e     
            cmp $54            ; $e433: c5 54     
            bne __e441         ; $e435: d0 0a     
            cmp #$01           ; $e437: c9 01     
            bne __e441         ; $e439: d0 06     
            jsr __e45f         ; $e43b: 20 5f e4  
            jsr __e47e         ; $e43e: 20 7e e4  
__e441:     pla                ; $e441: 68        
            tax                ; $e442: aa        
            pla                ; $e443: 68        
            tay                ; $e444: a8        
            dey                ; $e445: 88        
            beq __e453         ; $e446: f0 0b     
            lda $0d            ; $e448: a5 0d     
            cmp #$02           ; $e44a: c9 02     
            beq __e453         ; $e44c: f0 05     
            inx                ; $e44e: e8        
            inx                ; $e44f: e8        
            jmp __e40e         ; $e450: 4c 0e e4  

;-------------------------------------------------------------------------------
__e453:     lda $e7            ; $e453: a5 e7     
            beq __e45e         ; $e455: f0 07     
            jsr __eca4         ; $e457: 20 a4 ec  
            lda #$00           ; $e45a: a9 00     
            sta $e7            ; $e45c: 85 e7     
__e45e:     rts                ; $e45e: 60        

;-------------------------------------------------------------------------------
__e45f:     pha                ; $e45f: 48        
            txa                ; $e460: 8a        
            pha                ; $e461: 48        
            tya                ; $e462: 98        
            pha                ; $e463: 48        
            lda #$6d           ; $e464: a9 6d     
            ldx #$01           ; $e466: a2 01     
            clc                ; $e468: 18        
__e469:     ldy #$02           ; $e469: a0 02     
__e46b:     sta $d1,x          ; $e46b: 95 d1     
            adc #$01           ; $e46d: 69 01     
            inx                ; $e46f: e8        
            dey                ; $e470: 88        
            bne __e46b         ; $e471: d0 f8     
            inx                ; $e473: e8        
            cpx #$0a           ; $e474: e0 0a     
            bne __e469         ; $e476: d0 f1     
            pla                ; $e478: 68        
            tay                ; $e479: a8        
            pla                ; $e47a: 68        
            tax                ; $e47b: aa        
            pla                ; $e47c: 68        
            rts                ; $e47d: 60        

;-------------------------------------------------------------------------------
__e47e:     lda #$33           ; $e47e: a9 33     
            sta $d1            ; $e480: 85 d1     
            lda #$24           ; $e482: a9 24     
            sta $d4            ; $e484: 85 d4     
            lda #$65           ; $e486: a9 65     
            sta $d7            ; $e488: 85 d7     
            lda $db,x          ; $e48a: b5 db     
            sec                ; $e48c: 38        
            sbc #$20           ; $e48d: e9 20     
            sta $db,x          ; $e48f: 95 db     
            sta $00            ; $e491: 85 00     
            lda $dc,x          ; $e493: b5 dc     
            sbc #$00           ; $e495: e9 00     
            sta $dc,x          ; $e497: 95 dc     
            sta $01            ; $e499: 85 01     
            lda $05e8,x        ; $e49b: bd e8 05  
            sec                ; $e49e: 38        
            sbc #$08           ; $e49f: e9 08     
            sta $05e8,x        ; $e4a1: 9d e8 05  
            pha                ; $e4a4: 48        
            cmp #$40           ; $e4a5: c9 40     
            beq __e4b8         ; $e4a7: f0 0f     
            cmp #$48           ; $e4a9: c9 48     
            beq __e4cf         ; $e4ab: f0 22     
            cmp #$b0           ; $e4ad: c9 b0     
            bne __e4d9         ; $e4af: d0 28     
            lda #$66           ; $e4b1: a9 66     
            sta $d7            ; $e4b3: 85 d7     
            jmp __e4d9         ; $e4b5: 4c d9 e4  

;-------------------------------------------------------------------------------
__e4b8:     lda #$69           ; $e4b8: a9 69     
            sta $d2            ; $e4ba: 85 d2     
            sta $d8            ; $e4bc: 85 d8     
            lda #$6a           ; $e4be: a9 6a     
            sta $d3            ; $e4c0: 85 d3     
            sta $d9            ; $e4c2: 85 d9     
            lda #$8a           ; $e4c4: a9 8a     
            sta $d5            ; $e4c6: 85 d5     
            lda #$ff           ; $e4c8: a9 ff     
            sta $d6            ; $e4ca: 85 d6     
            jmp __e4d9         ; $e4cc: 4c d9 e4  

;-------------------------------------------------------------------------------
__e4cf:     lda #$6a           ; $e4cf: a9 6a     
            sta $d2            ; $e4d1: 85 d2     
            sta $d8            ; $e4d3: 85 d8     
            lda #$6f           ; $e4d5: a9 6f     
            sta $d5            ; $e4d7: 85 d5     
__e4d9:     lda #$d1           ; $e4d9: a9 d1     
            sta $02            ; $e4db: 85 02     
            lda #$00           ; $e4dd: a9 00     
            sta $03            ; $e4df: 85 03     
            jsr __efce         ; $e4e1: 20 ce ef  
            pla                ; $e4e4: 68        
            cmp #$40           ; $e4e5: c9 40     
            bne __e4f4         ; $e4e7: d0 0b     
            lda #$04           ; $e4e9: a9 04     
            sta $fe            ; $e4eb: 85 fe     
            inc $e7            ; $e4ed: e6 e7     
            inc $53            ; $e4ef: e6 53     
            jsr __ed8e         ; $e4f1: 20 8e ed  
__e4f4:     rts                ; $e4f4: 60        

;-------------------------------------------------------------------------------
__e4f5:     lda #$40           ; $e4f5: a9 40     
            sta $04            ; $e4f7: 85 04     
            ldx #$00           ; $e4f9: a2 00     
            ldy #$00           ; $e4fb: a0 00     
            stx $05            ; $e4fd: 86 05     
            stx $06            ; $e4ff: 86 06     
__e501:     txa                ; $e501: 8a        
            asl                ; $e502: 0a        
            tax                ; $e503: aa        
            lda __c215,x       ; $e504: bd 15 c2  
            sta $02            ; $e507: 85 02     
            lda __c216,x       ; $e509: bd 16 c2  
            sta $03            ; $e50c: 85 03     
            lda $0240,y        ; $e50e: b9 40 02  
            cmp #$ff           ; $e511: c9 ff     
            bne __e518         ; $e513: d0 03     
            jmp __e5a0         ; $e515: 4c a0 e5  

;-------------------------------------------------------------------------------
__e518:     ldx $06            ; $e518: a6 06     
            cmp __c1f9,x       ; $e51a: dd f9 c1  
            beq __e538         ; $e51d: f0 19     
            bcs __e535         ; $e51f: b0 14     
            lda __c1f9,x       ; $e521: bd f9 c1  
            sec                ; $e524: 38        
            sbc #$12           ; $e525: e9 12     
            cmp $0240,y        ; $e527: d9 40 02  
            bcc __e52f         ; $e52a: 90 03     
            jmp __e538         ; $e52c: 4c 38 e5  

;-------------------------------------------------------------------------------
__e52f:     lda $0240,y        ; $e52f: b9 40 02  
            jmp __e538         ; $e532: 4c 38 e5  

;-------------------------------------------------------------------------------
__e535:     lda __c1f9,x       ; $e535: bd f9 c1  
__e538:     sta $01            ; $e538: 85 01     
            lda $0243,y        ; $e53a: b9 43 02  
            sta $00            ; $e53d: 85 00     
            jsr __e840         ; $e53f: 20 40 e8  
            sta $07            ; $e542: 85 07     
            cmp #$02           ; $e544: c9 02     
            bne __e558         ; $e546: d0 10     
            lda $00            ; $e548: a5 00     
            cmp __c1fa,x       ; $e54a: dd fa c1  
            beq __e554         ; $e54d: f0 05     
            cmp __c1fb,x       ; $e54f: dd fb c1  
            bne __e558         ; $e552: d0 04     
__e554:     lda #$03           ; $e554: a9 03     
            sta $07            ; $e556: 85 07     
__e558:     lda $05            ; $e558: a5 05     
            tax                ; $e55a: aa        
            beq __e571         ; $e55b: f0 14     
            cpx #$02           ; $e55d: e0 02     
            bpl __e567         ; $e55f: 10 06     
            lda $4b            ; $e561: a5 4b     
            cmp #$05           ; $e563: c9 05     
            bpl __e571         ; $e565: 10 0a     
__e567:     lda $0540          ; $e567: ad 40 05  
            sta $a1            ; $e56a: 85 a1     
            lda #$00           ; $e56c: a9 00     
            jmp __e577         ; $e56e: 4c 77 e5  

;-------------------------------------------------------------------------------
__e571:     lda #$ef           ; $e571: a9 ef     
            sta $a1            ; $e573: 85 a1     
            lda #$01           ; $e575: a9 01     
__e577:     sta $a2            ; $e577: 85 a2     
            lda $07            ; $e579: a5 07     
            cmp #$02           ; $e57b: c9 02     
            bmi __e587         ; $e57d: 30 08     
            jsr __e5c1         ; $e57f: 20 c1 e5  
            sta $01            ; $e582: 85 01     
            jmp __e58c         ; $e584: 4c 8c e5  

;-------------------------------------------------------------------------------
__e587:     jsr __e5dd         ; $e587: 20 dd e5  
            sta $00            ; $e58a: 85 00     
__e58c:     and #$04           ; $e58c: 29 04     
            bne __e595         ; $e58e: d0 05     
            lda #$74           ; $e590: a9 74     
            jmp __e597         ; $e592: 4c 97 e5  

;-------------------------------------------------------------------------------
__e595:     lda #$78           ; $e595: a9 78     
__e597:     sta $02            ; $e597: 85 02     
            lda #$22           ; $e599: a9 22     
            sta $03            ; $e59b: 85 03     
            jsr __e9fc         ; $e59d: 20 fc e9  
__e5a0:     ldx $05            ; $e5a0: a6 05     
            inx                ; $e5a2: e8        
            cpx $a0            ; $e5a3: e4 a0     
            beq __e5c0         ; $e5a5: f0 19     
            stx $05            ; $e5a7: 86 05     
            inc $06            ; $e5a9: e6 06     
            inc $06            ; $e5ab: e6 06     
            inc $06            ; $e5ad: e6 06     
            tya                ; $e5af: 98        
            clc                ; $e5b0: 18        
            adc #$10           ; $e5b1: 69 10     
            tay                ; $e5b3: a8        
            clc                ; $e5b4: 18        
            lda $04            ; $e5b5: a5 04     
            adc #$10           ; $e5b7: 69 10     
            sta $04            ; $e5b9: 85 04     
            ldx $05            ; $e5bb: a6 05     
            jmp __e501         ; $e5bd: 4c 01 e5  

;-------------------------------------------------------------------------------
__e5c0:     rts                ; $e5c0: 60        

;-------------------------------------------------------------------------------
__e5c1:     cmp #$02           ; $e5c1: c9 02     
            beq __e5d1         ; $e5c3: f0 0c     
            lda $57,x          ; $e5c5: b5 57     
            sec                ; $e5c7: 38        
            sbc $a1            ; $e5c8: e5 a1     
            sta $57,x          ; $e5ca: 95 57     
            lda $01            ; $e5cc: a5 01     
            sbc $a2            ; $e5ce: e5 a2     
            rts                ; $e5d0: 60        

;-------------------------------------------------------------------------------
__e5d1:     lda $57,x          ; $e5d1: b5 57     
            clc                ; $e5d3: 18        
            adc $a1            ; $e5d4: 65 a1     
            sta $57,x          ; $e5d6: 95 57     
            lda $01            ; $e5d8: a5 01     
            adc $a2            ; $e5da: 65 a2     
            rts                ; $e5dc: 60        

;-------------------------------------------------------------------------------
__e5dd:     cmp #$00           ; $e5dd: c9 00     
            bne __e5ed         ; $e5df: d0 0c     
            lda $57,x          ; $e5e1: b5 57     
            clc                ; $e5e3: 18        
            adc $a1            ; $e5e4: 65 a1     
            sta $57,x          ; $e5e6: 95 57     
            lda $00            ; $e5e8: a5 00     
            adc $a2            ; $e5ea: 65 a2     
            rts                ; $e5ec: 60        

;-------------------------------------------------------------------------------
__e5ed:     lda $57,x          ; $e5ed: b5 57     
            sec                ; $e5ef: 38        
            sbc $a1            ; $e5f0: e5 a1     
            sta $57,x          ; $e5f2: 95 57     
            lda $00            ; $e5f4: a5 00     
            sbc $a2            ; $e5f6: e5 a2     
            rts                ; $e5f8: 60        

;-------------------------------------------------------------------------------
__e5f9:     ldx #$00           ; $e5f9: a2 00     
            ldy $cf            ; $e5fb: a4 cf     
__e5fd:     sty $05            ; $e5fd: 84 05     
            lda $0240,y        ; $e5ff: b9 40 02  
            cmp #$ff           ; $e602: c9 ff     
            beq __e66d         ; $e604: f0 67     
            cmp $0575          ; $e606: cd 75 05  
            bcc __e676         ; $e609: 90 6b     
            sta $01            ; $e60b: 85 01     
            iny                ; $e60d: c8        
            iny                ; $e60e: c8        
            iny                ; $e60f: c8        
            lda $0240,y        ; $e610: b9 40 02  
            cmp #$01           ; $e613: c9 01     
            bcs __e61c         ; $e615: b0 05     
            lda #$0f           ; $e617: a9 0f     
            jmp __e64f         ; $e619: 4c 4f e6  

;-------------------------------------------------------------------------------
__e61c:     sta $00            ; $e61c: 85 00     
            tya                ; $e61e: 98        
            pha                ; $e61f: 48        
            lda $0522,x        ; $e620: bd 22 05  
            asl                ; $e623: 0a        
            tay                ; $e624: a8        
            lda ($b4),y        ; $e625: b1 b4     
            sta $02            ; $e627: 85 02     
            iny                ; $e629: c8        
            lda ($b4),y        ; $e62a: b1 b4     
            sta $03            ; $e62c: 85 03     
            jsr __e840         ; $e62e: 20 40 e8  
            sta $06            ; $e631: 85 06     
            lda $b2            ; $e633: a5 b2     
            beq __e63a         ; $e635: f0 03     
            jsr __e7d9         ; $e637: 20 d9 e7  
__e63a:     pla                ; $e63a: 68        
            tay                ; $e63b: a8        
            lda $06            ; $e63c: a5 06     
            cmp #$08           ; $e63e: c9 08     
            beq __e64f         ; $e640: f0 0d     
            cmp #$02           ; $e642: c9 02     
            beq __e64c         ; $e644: f0 06     
            jsr __e67c         ; $e646: 20 7c e6  
            jmp __e64f         ; $e649: 4c 4f e6  

;-------------------------------------------------------------------------------
__e64c:     jsr __e6e3         ; $e64c: 20 e3 e6  
__e64f:     pha                ; $e64f: 48        
            lda #$22           ; $e650: a9 22     
            sta $03            ; $e652: 85 03     
            lda #$40           ; $e654: a9 40     
            clc                ; $e656: 18        
            adc $05            ; $e657: 65 05     
            sta $04            ; $e659: 85 04     
            pla                ; $e65b: 68        
            and #$07           ; $e65c: 29 07     
            jsr __ea08         ; $e65e: 20 08 ea  
__e661:     lda $05            ; $e661: a5 05     
            clc                ; $e663: 18        
            adc #$10           ; $e664: 69 10     
            tay                ; $e666: a8        
            inx                ; $e667: e8        
            cpx $b0            ; $e668: e4 b0     
            bne __e5fd         ; $e66a: d0 91     
            rts                ; $e66c: 60        

;-------------------------------------------------------------------------------
__e66d:     jsr __e71d         ; $e66d: 20 1d e7  
            jsr __e740         ; $e670: 20 40 e7  
            jmp __e661         ; $e673: 4c 61 e6  

;-------------------------------------------------------------------------------
__e676:     jsr __e762         ; $e676: 20 62 e7  
            jmp __e64f         ; $e679: 4c 4f e6  

;-------------------------------------------------------------------------------
__e67c:     pha                ; $e67c: 48        
            cmp #$00           ; $e67d: c9 00     
            beq __e687         ; $e67f: f0 06     
            jsr __e6af         ; $e681: 20 af e6  
            jmp __e68a         ; $e684: 4c 8a e6  

;-------------------------------------------------------------------------------
__e687:     jsr __e6a1         ; $e687: 20 a1 e6  
__e68a:     sta $00            ; $e68a: 85 00     
            and $0576          ; $e68c: 2d 76 05  
            beq __e697         ; $e68f: f0 06     
            lda $0570          ; $e691: ad 70 05  
            jmp __e69a         ; $e694: 4c 9a e6  

;-------------------------------------------------------------------------------
__e697:     lda $0571          ; $e697: ad 71 05  
__e69a:     sta $02            ; $e69a: 85 02     
            dey                ; $e69c: 88        
            dey                ; $e69d: 88        
            dey                ; $e69e: 88        
            pla                ; $e69f: 68        
            rts                ; $e6a0: 60        

;-------------------------------------------------------------------------------
__e6a1:     lda $5d,x          ; $e6a1: b5 5d     
            clc                ; $e6a3: 18        
            adc $0521          ; $e6a4: 6d 21 05  
            sta $5d,x          ; $e6a7: 95 5d     
            lda $0240,y        ; $e6a9: b9 40 02  
            adc #$00           ; $e6ac: 69 00     
            rts                ; $e6ae: 60        

;-------------------------------------------------------------------------------
__e6af:     lda $4a            ; $e6af: a5 4a     
            cmp #$02           ; $e6b1: c9 02     
            bne __e6d5         ; $e6b3: d0 20     
            lda $0240,y        ; $e6b5: b9 40 02  
            cmp $0577          ; $e6b8: cd 77 05  
            bne __e6d5         ; $e6bb: d0 18     
            pha                ; $e6bd: 48        
            lda #$04           ; $e6be: a9 04     
            sta $fc            ; $e6c0: 85 fc     
            pla                ; $e6c2: 68        
            cpx $0530          ; $e6c3: ec 30 05  
            bne __e6d5         ; $e6c6: d0 0d     
            lda #$01           ; $e6c8: a9 01     
            sta $d0            ; $e6ca: 85 d0     
            lda $023d,y        ; $e6cc: b9 3d 02  
            clc                ; $e6cf: 18        
            adc #$08           ; $e6d0: 69 08     
            sta $020c          ; $e6d2: 8d 0c 02  
__e6d5:     lda $5d,x          ; $e6d5: b5 5d     
            sec                ; $e6d7: 38        
            sbc $0521          ; $e6d8: ed 21 05  
            sta $5d,x          ; $e6db: 95 5d     
            lda $0240,y        ; $e6dd: b9 40 02  
            sbc #$00           ; $e6e0: e9 00     
            rts                ; $e6e2: 60        

;-------------------------------------------------------------------------------
__e6e3:     dey                ; $e6e3: 88        
            dey                ; $e6e4: 88        
            dey                ; $e6e5: 88        
            lda $4a            ; $e6e6: a5 4a     
            cmp #$02           ; $e6e8: c9 02     
            bne __e6f2         ; $e6ea: d0 06     
            lda $fc            ; $e6ec: a5 fc     
            ora #$40           ; $e6ee: 09 40     
            sta $fc            ; $e6f0: 85 fc     
__e6f2:     lda $5d,x          ; $e6f2: b5 5d     
            clc                ; $e6f4: 18        
            adc $0521          ; $e6f5: 6d 21 05  
            sta $5d,x          ; $e6f8: 95 5d     
            lda $0240,y        ; $e6fa: b9 40 02  
            adc #$00           ; $e6fd: 69 00     
            sta $01            ; $e6ff: 85 01     
            lda $b2            ; $e701: a5 b2     
            bne __e70b         ; $e703: d0 06     
            lda $0572          ; $e705: ad 72 05  
            jmp __e718         ; $e708: 4c 18 e7  

;-------------------------------------------------------------------------------
__e70b:     lda $01            ; $e70b: a5 01     
            and #$04           ; $e70d: 29 04     
            beq __e716         ; $e70f: f0 05     
            lda #$7c           ; $e711: a9 7c     
            jmp __e718         ; $e713: 4c 18 e7  

;-------------------------------------------------------------------------------
__e716:     lda #$80           ; $e716: a9 80     
__e718:     sta $02            ; $e718: 85 02     
            lda #$00           ; $e71a: a9 00     
            rts                ; $e71c: 60        

;-------------------------------------------------------------------------------
__e71d:     lda $ce            ; $e71d: a5 ce     
            bne __e761         ; $e71f: d0 40     
            lda $35            ; $e721: a5 35     
            bne __e761         ; $e723: d0 3c     
            lda $0520          ; $e725: ad 20 05  
            sta $35            ; $e728: 85 35     
            lda $b2            ; $e72a: a5 b2     
            sta $ce            ; $e72c: 85 ce     
            lda $0573          ; $e72e: ad 73 05  
            sta $00            ; $e731: 85 00     
            lda $0574          ; $e733: ad 74 05  
            sta $01            ; $e736: 85 01     
            lda $0570          ; $e738: ad 70 05  
            sta $02            ; $e73b: 85 02     
            jmp __e74e         ; $e73d: 4c 4e e7  

;-------------------------------------------------------------------------------
__e740:     lda $b2            ; $e740: a5 b2     
            beq __e761         ; $e742: f0 1d     
            lda $c4            ; $e744: a5 c4     
            beq __e761         ; $e746: f0 19     
            sta $00            ; $e748: 85 00     
            lda #$48           ; $e74a: a9 48     
            sta $01            ; $e74c: 85 01     
__e74e:     lda #$22           ; $e74e: a9 22     
            sta $03            ; $e750: 85 03     
            tya                ; $e752: 98        
            clc                ; $e753: 18        
            adc #$40           ; $e754: 69 40     
            sta $04            ; $e756: 85 04     
            lda #$00           ; $e758: a9 00     
            sta $c4            ; $e75a: 85 c4     
            jsr __e9fc         ; $e75c: 20 fc e9  
            inc $b1            ; $e75f: e6 b1     
__e761:     rts                ; $e761: 60        

;-------------------------------------------------------------------------------
__e762:     lda $b2            ; $e762: a5 b2     
            bne __e7a0         ; $e764: d0 3a     
            iny                ; $e766: c8        
            iny                ; $e767: c8        
            iny                ; $e768: c8        
            lda $0240,y        ; $e769: b9 40 02  
            cmp $0577          ; $e76c: cd 77 05  
            bne __e77f         ; $e76f: d0 0e     
            sta $00            ; $e771: 85 00     
            lda $0572          ; $e773: ad 72 05  
            sta $02            ; $e776: 85 02     
            lda #$31           ; $e778: a9 31     
            sta $01            ; $e77a: 85 01     
            lda #$00           ; $e77c: a9 00     
            rts                ; $e77e: 60        

;-------------------------------------------------------------------------------
__e77f:     and #$08           ; $e77f: 29 08     
            bne __e78e         ; $e781: d0 0b     
            lda $0570          ; $e783: ad 70 05  
            sta $02            ; $e786: 85 02     
            lda $0578          ; $e788: ad 78 05  
            jmp __e796         ; $e78b: 4c 96 e7  

;-------------------------------------------------------------------------------
__e78e:     lda $0571          ; $e78e: ad 71 05  
            sta $02            ; $e791: 85 02     
            lda $0579          ; $e793: ad 79 05  
__e796:     sta $01            ; $e796: 85 01     
            jsr __e6a1         ; $e798: 20 a1 e6  
            sta $00            ; $e79b: 85 00     
            lda #$00           ; $e79d: a9 00     
            rts                ; $e79f: 60        

;-------------------------------------------------------------------------------
__e7a0:     lda $35            ; $e7a0: a5 35     
            beq __e7be         ; $e7a2: f0 1a     
            and #$04           ; $e7a4: 29 04     
            beq __e7ad         ; $e7a6: f0 05     
            lda #$7c           ; $e7a8: a9 7c     
            jmp __e7af         ; $e7aa: 4c af e7  

;-------------------------------------------------------------------------------
__e7ad:     lda #$80           ; $e7ad: a9 80     
__e7af:     sta $02            ; $e7af: 85 02     
            lda $0573          ; $e7b1: ad 73 05  
            sta $00            ; $e7b4: 85 00     
            lda $0574          ; $e7b6: ad 74 05  
            sta $01            ; $e7b9: 85 01     
            lda #$00           ; $e7bb: a9 00     
            rts                ; $e7bd: 60        

;-------------------------------------------------------------------------------
__e7be:     lda $0573          ; $e7be: ad 73 05  
            sta $00            ; $e7c1: 85 00     
            lda $0575          ; $e7c3: ad 75 05  
            sta $01            ; $e7c6: 85 01     
            lda #$7c           ; $e7c8: a9 7c     
            sta $02            ; $e7ca: 85 02     
            lda #$00           ; $e7cc: a9 00     
            sta $ce            ; $e7ce: 85 ce     
            inc $b1            ; $e7d0: e6 b1     
            lda #$a0           ; $e7d2: a9 a0     
            sta $35            ; $e7d4: 85 35     
            lda #$00           ; $e7d6: a9 00     
            rts                ; $e7d8: 60        

;-------------------------------------------------------------------------------
__e7d9:     lda $01            ; $e7d9: a5 01     
            cmp #$48           ; $e7db: c9 48     
            bne __e809         ; $e7dd: d0 2a     
            lda $00            ; $e7df: a5 00     
            ldy #$00           ; $e7e1: a0 00     
__e7e3:     cmp __c20b,y       ; $e7e3: d9 0b c2  
            beq __e7ee         ; $e7e6: f0 06     
            bcs __e809         ; $e7e8: b0 1f     
            iny                ; $e7ea: c8        
            jmp __e7e3         ; $e7eb: 4c e3 e7  

;-------------------------------------------------------------------------------
__e7ee:     cpx $c3            ; $e7ee: e4 c3     
            beq __e81b         ; $e7f0: f0 29     
            lda $0210          ; $e7f2: ad 10 02  
            cmp #$68           ; $e7f5: c9 68     
            bcs __e809         ; $e7f7: b0 10     
            lda $19,x          ; $e7f9: b5 19     
            cmp #$60           ; $e7fb: c9 60     
            bcc __e80a         ; $e7fd: 90 0b     
            lda $1a,x          ; $e7ff: b5 1a     
            cmp #$a0           ; $e801: c9 a0     
            bcc __e809         ; $e803: 90 04     
            lda $00            ; $e805: a5 00     
            sta $c4            ; $e807: 85 c4     
__e809:     rts                ; $e809: 60        

;-------------------------------------------------------------------------------
__e80a:     lda $1a,x          ; $e80a: b5 1a     
            cmp #$60           ; $e80c: c9 60     
            bcc __e823         ; $e80e: 90 13     
            stx $c3            ; $e810: 86 c3     
            lda #$90           ; $e812: a9 90     
            sta $36            ; $e814: 85 36     
            lda #$7c           ; $e816: a9 7c     
            jmp __e839         ; $e818: 4c 39 e8  

;-------------------------------------------------------------------------------
__e81b:     lda $36            ; $e81b: a5 36     
            bne __e82e         ; $e81d: d0 0f     
            lda #$ff           ; $e81f: a9 ff     
            sta $c3            ; $e821: 85 c3     
__e823:     inc $01            ; $e823: e6 01     
            lda #$7c           ; $e825: a9 7c     
            sta $02            ; $e827: 85 02     
            lda #$02           ; $e829: a9 02     
            jmp __e83d         ; $e82b: 4c 3d e8  

;-------------------------------------------------------------------------------
__e82e:     and #$04           ; $e82e: 29 04     
            beq __e837         ; $e830: f0 05     
            lda #$80           ; $e832: a9 80     
            jmp __e839         ; $e834: 4c 39 e8  

;-------------------------------------------------------------------------------
__e837:     lda #$7c           ; $e837: a9 7c     
__e839:     sta $02            ; $e839: 85 02     
            lda #$08           ; $e83b: a9 08     
__e83d:     sta $06            ; $e83d: 85 06     
            rts                ; $e83f: 60        

;-------------------------------------------------------------------------------
__e840:     txa                ; $e840: 8a        
            pha                ; $e841: 48        
            tya                ; $e842: 98        
            pha                ; $e843: 48        
            ldy #$00           ; $e844: a0 00     
            lda ($02),y        ; $e846: b1 02     
            tax                ; $e848: aa        
            ldy #$02           ; $e849: a0 02     
__e84b:     lda ($02),y        ; $e84b: b1 02     
            cmp $01            ; $e84d: c5 01     
            beq __e85b         ; $e84f: f0 0a     
            iny                ; $e851: c8        
            iny                ; $e852: c8        
            dex                ; $e853: ca        
            bne __e84b         ; $e854: d0 f5     
            lda #$02           ; $e856: a9 02     
            jmp __e88a         ; $e858: 4c 8a e8  

;-------------------------------------------------------------------------------
__e85b:     dey                ; $e85b: 88        
            lda ($02),y        ; $e85c: b1 02     
            cmp $00            ; $e85e: c5 00     
            bne __e874         ; $e860: d0 12     
            iny                ; $e862: c8        
            iny                ; $e863: c8        
            lda ($02),y        ; $e864: b1 02     
            cmp $00            ; $e866: c5 00     
            bcc __e86f         ; $e868: 90 05     
            lda #$00           ; $e86a: a9 00     
            jmp __e88a         ; $e86c: 4c 8a e8  

;-------------------------------------------------------------------------------
__e86f:     lda #$01           ; $e86f: a9 01     
            jmp __e88a         ; $e871: 4c 8a e8  

;-------------------------------------------------------------------------------
__e874:     iny                ; $e874: c8        
            iny                ; $e875: c8        
            lda ($02),y        ; $e876: b1 02     
            cmp $00            ; $e878: c5 00     
            bcc __e888         ; $e87a: 90 0c     
            beq __e883         ; $e87c: f0 05     
            lda #$00           ; $e87e: a9 00     
            jmp __e88a         ; $e880: 4c 8a e8  

;-------------------------------------------------------------------------------
__e883:     lda #$02           ; $e883: a9 02     
            jmp __e88a         ; $e885: 4c 8a e8  

;-------------------------------------------------------------------------------
__e888:     lda #$01           ; $e888: a9 01     
__e88a:     sta $0f            ; $e88a: 85 0f     
            pla                ; $e88c: 68        
            tay                ; $e88d: a8        
            pla                ; $e88e: 68        
            tax                ; $e88f: aa        
            lda $0f            ; $e890: a5 0f     
            rts                ; $e892: 60        

;-------------------------------------------------------------------------------
__e893:     lda #$00           ; $e893: a9 00     
            beq __e8a5         ; $e895: f0 0e     
__e897:     lda #$01           ; $e897: a9 01     
            bne __e8a5         ; $e899: d0 0a     
__e89b:     lda #$02           ; $e89b: a9 02     
            bne __e8a5         ; $e89d: d0 06     
__e89f:     lda #$03           ; $e89f: a9 03     
            bne __e8a5         ; $e8a1: d0 02     
__e8a3:     lda #$04           ; $e8a3: a9 04     
__e8a5:     sta $0f            ; $e8a5: 85 0f     
            txa                ; $e8a7: 8a        
            pha                ; $e8a8: 48        
            tya                ; $e8a9: 98        
            pha                ; $e8aa: 48        
            lda $00            ; $e8ab: a5 00     
            pha                ; $e8ad: 48        
            lda $01            ; $e8ae: a5 01     
            pha                ; $e8b0: 48        
            lda $02            ; $e8b1: a5 02     
            pha                ; $e8b3: 48        
            lda $03            ; $e8b4: a5 03     
            pha                ; $e8b6: 48        
            lda $0f            ; $e8b7: a5 0f     
            cmp #$01           ; $e8b9: c9 01     
            beq __e8f0         ; $e8bb: f0 33     
            cmp #$02           ; $e8bd: c9 02     
            beq __e927         ; $e8bf: f0 66     
            cmp #$03           ; $e8c1: c9 03     
            bne __e8c8         ; $e8c3: d0 03     
            jmp __e93e         ; $e8c5: 4c 3e e9  

;-------------------------------------------------------------------------------
__e8c8:     cmp #$04           ; $e8c8: c9 04     
            bne __e8cf         ; $e8ca: d0 03     
            jmp __e95e         ; $e8cc: 4c 5e e9  

;-------------------------------------------------------------------------------
__e8cf:     jsr __e8db         ; $e8cf: 20 db e8  
            ldx $42            ; $e8d2: a6 42     
            stx $73            ; $e8d4: 86 73     
            stx $74            ; $e8d6: 86 74     
            jmp __e964         ; $e8d8: 4c 64 e9  

;-------------------------------------------------------------------------------
__e8db:     lda $4a            ; $e8db: a5 4a     
            sec                ; $e8dd: 38        
            sbc #$01           ; $e8de: e9 01     
            asl                ; $e8e0: 0a        
            tax                ; $e8e1: aa        
            lda __c448,x       ; $e8e2: bd 48 c4  
            sta $02            ; $e8e5: 85 02     
            lda __c449,x       ; $e8e7: bd 49 c4  
            sta $03            ; $e8ea: 85 03     
            jsr __eb73         ; $e8ec: 20 73 eb  
            rts                ; $e8ef: 60        

;-------------------------------------------------------------------------------
__e8f0:     lda $3e            ; $e8f0: a5 3e     
            pha                ; $e8f2: 48        
            clc                ; $e8f3: 18        
            adc #$10           ; $e8f4: 69 10     
            sta $3e            ; $e8f6: 85 3e     
            jsr __e8db         ; $e8f8: 20 db e8  
            ldx $42            ; $e8fb: a6 42     
            stx $73            ; $e8fd: 86 73     
            sta $0d            ; $e8ff: 85 0d     
            pla                ; $e901: 68        
            sta $3e            ; $e902: 85 3e     
            lda $40            ; $e904: a5 40     
            pha                ; $e906: 48        
            sec                ; $e907: 38        
            sbc #$10           ; $e908: e9 10     
            sta $40            ; $e90a: 85 40     
            jsr __e8db         ; $e90c: 20 db e8  
            ldx $42            ; $e90f: a6 42     
            stx $74            ; $e911: 86 74     
            cmp #$00           ; $e913: c9 00     
            beq __e91d         ; $e915: f0 06     
            lda $0d            ; $e917: a5 0d     
            ora #$10           ; $e919: 09 10     
            sta $0d            ; $e91b: 85 0d     
__e91d:     pla                ; $e91d: 68        
            sta $40            ; $e91e: 85 40     
            lda $0d            ; $e920: a5 0d     
            sta $0f            ; $e922: 85 0f     
            jmp __e964         ; $e924: 4c 64 e9  

;-------------------------------------------------------------------------------
__e927:     lda $4a            ; $e927: a5 4a     
            sec                ; $e929: 38        
            sbc #$01           ; $e92a: e9 01     
            asl                ; $e92c: 0a        
            tax                ; $e92d: aa        
            lda __c450,x       ; $e92e: bd 50 c4  
            sta $02            ; $e931: 85 02     
            lda __c451,x       ; $e933: bd 51 c4  
            sta $03            ; $e936: 85 03     
            jsr __eb73         ; $e938: 20 73 eb  
            jmp __e964         ; $e93b: 4c 64 e9  

;-------------------------------------------------------------------------------
__e93e:     jsr __e979         ; $e93e: 20 79 e9  
            lda $3f            ; $e941: a5 3f     
            pha                ; $e943: 48        
            lda $41            ; $e944: a5 41     
            pha                ; $e946: 48        
            clc                ; $e947: 18        
            adc #$01           ; $e948: 69 01     
            sta $3f            ; $e94a: 85 3f     
            adc #$01           ; $e94c: 69 01     
            sta $41            ; $e94e: 85 41     
            jsr __eb73         ; $e950: 20 73 eb  
            pla                ; $e953: 68        
            sta $41            ; $e954: 85 41     
            pla                ; $e956: 68        
            sta $3f            ; $e957: 85 3f     
            lda $0f            ; $e959: a5 0f     
            jmp __e964         ; $e95b: 4c 64 e9  

;-------------------------------------------------------------------------------
__e95e:     jsr __e979         ; $e95e: 20 79 e9  
            jsr __eb73         ; $e961: 20 73 eb  
__e964:     sta $0f            ; $e964: 85 0f     
            pla                ; $e966: 68        
            sta $03            ; $e967: 85 03     
            pla                ; $e969: 68        
            sta $02            ; $e96a: 85 02     
            pla                ; $e96c: 68        
            sta $01            ; $e96d: 85 01     
            pla                ; $e96f: 68        
            sta $00            ; $e970: 85 00     
            pla                ; $e972: 68        
            tay                ; $e973: a8        
            pla                ; $e974: 68        
            tax                ; $e975: aa        
            lda $0f            ; $e976: a5 0f     
            rts                ; $e978: 60        

;-------------------------------------------------------------------------------
__e979:     lda $4a            ; $e979: a5 4a     
            sec                ; $e97b: 38        
            sbc #$01           ; $e97c: e9 01     
            asl                ; $e97e: 0a        
            tax                ; $e97f: aa        
            lda __c440,x       ; $e980: bd 40 c4  
            sta $02            ; $e983: 85 02     
            lda __c441,x       ; $e985: bd 41 c4  
            sta $03            ; $e988: 85 03     
            rts                ; $e98a: 60        

;-------------------------------------------------------------------------------
__e98b:     sta $05e0          ; $e98b: 8d e0 05  
            lda $55            ; $e98e: a5 55     
            cmp $54            ; $e990: c5 54     
            bne __e9a2         ; $e992: d0 0e     
            dec $05e1,x        ; $e994: de e1 05  
            lda $05e1,x        ; $e997: bd e1 05  
            cmp #$ff           ; $e99a: c9 ff     
            beq __e9a2         ; $e99c: f0 04     
            cmp #$00           ; $e99e: c9 00     
            bne __e9ab         ; $e9a0: d0 09     
__e9a2:     lda $05e0          ; $e9a2: ad e0 05  
            sta $05e1,x        ; $e9a5: 9d e1 05  
            lda #$01           ; $e9a8: a9 01     
            rts                ; $e9aa: 60        

;-------------------------------------------------------------------------------
__e9ab:     lda #$00           ; $e9ab: a9 00     
            rts                ; $e9ad: 60        

;-------------------------------------------------------------------------------
__e9ae:     stx $0f            ; $e9ae: 86 0f     
            asl                ; $e9b0: 0a        
            tax                ; $e9b1: aa        
            lda $7e,x          ; $e9b2: b5 7e     
            bne __e9c3         ; $e9b4: d0 0d     
            sta $83,x          ; $e9b6: 95 83     
            lda #$08           ; $e9b8: a9 08     
            sta $82,x          ; $e9ba: 95 82     
            lda #$f0           ; $e9bc: a9 f0     
            sta $7f,x          ; $e9be: 95 7f     
            jmp __e9cf         ; $e9c0: 4c cf e9  

;-------------------------------------------------------------------------------
__e9c3:     lda $82,x          ; $e9c3: b5 82     
            adc #$10           ; $e9c5: 69 10     
            sta $82,x          ; $e9c7: 95 82     
            lda $83,x          ; $e9c9: b5 83     
            adc #$00           ; $e9cb: 69 00     
            sta $83,x          ; $e9cd: 95 83     
__e9cf:     lda $7f,x          ; $e9cf: b5 7f     
            sec                ; $e9d1: 38        
            sbc $86,x          ; $e9d2: f5 86     
            sta $7f,x          ; $e9d4: 95 7f     
            lda $01            ; $e9d6: a5 01     
            sbc $87,x          ; $e9d8: f5 87     
            sta $01            ; $e9da: 85 01     
            clc                ; $e9dc: 18        
            lda $7f,x          ; $e9dd: b5 7f     
            adc $82,x          ; $e9df: 75 82     
            sta $7f,x          ; $e9e1: 95 7f     
            lda $01            ; $e9e3: a5 01     
            adc $83,x          ; $e9e5: 75 83     
            sta $01            ; $e9e7: 85 01     
            inc $7e,x          ; $e9e9: f6 7e     
            ldx $0f            ; $e9eb: a6 0f     
            rts                ; $e9ed: 60        

;-------------------------------------------------------------------------------
__e9ee:     pha                ; $e9ee: 48        
            lda #$24           ; $e9ef: a9 24     
            sta $03            ; $e9f1: 85 03     
            lda #$10           ; $e9f3: a9 10     
            sta $04            ; $e9f5: 85 04     
            pla                ; $e9f7: 68        
            jsr __ea08         ; $e9f8: 20 08 ea  
            rts                ; $e9fb: 60        

;-------------------------------------------------------------------------------
__e9fc:     lda #$00           ; $e9fc: a9 00     
            jmp __ea08         ; $e9fe: 4c 08 ea  

;-------------------------------------------------------------------------------
__ea01:     lda #$01           ; $ea01: a9 01     
            jmp __ea08         ; $ea03: 4c 08 ea  

;-------------------------------------------------------------------------------
__ea06:     lda #$04           ; $ea06: a9 04     
__ea08:     pha                ; $ea08: 48        
            sta $0f            ; $ea09: 85 0f     
            txa                ; $ea0b: 8a        
            pha                ; $ea0c: 48        
            tya                ; $ea0d: 98        
            pha                ; $ea0e: 48        
            lda $00            ; $ea0f: a5 00     
            pha                ; $ea11: 48        
            lda $01            ; $ea12: a5 01     
            pha                ; $ea14: 48        
            lda $05            ; $ea15: a5 05     
            pha                ; $ea17: 48        
            lda $06            ; $ea18: a5 06     
            pha                ; $ea1a: 48        
            lda $07            ; $ea1b: a5 07     
            pha                ; $ea1d: 48        
            lda $08            ; $ea1e: a5 08     
            pha                ; $ea20: 48        
            lda $09            ; $ea21: a5 09     
            pha                ; $ea23: 48        
            lda #$02           ; $ea24: a9 02     
            sta $05            ; $ea26: 85 05     
            lda $0f            ; $ea28: a5 0f     
            cmp #$04           ; $ea2a: c9 04     
            beq __ea71         ; $ea2c: f0 43     
            lda #$0f           ; $ea2e: a9 0f     
            and $03            ; $ea30: 25 03     
            sta $07            ; $ea32: 85 07     
            lda $03            ; $ea34: a5 03     
            lsr                ; $ea36: 4a        
            lsr                ; $ea37: 4a        
            lsr                ; $ea38: 4a        
            lsr                ; $ea39: 4a        
            sta $06            ; $ea3a: 85 06     
            tax                ; $ea3c: aa        
            lda #$00           ; $ea3d: a9 00     
            clc                ; $ea3f: 18        
__ea40:     adc $07            ; $ea40: 65 07     
            dex                ; $ea42: ca        
            bne __ea40         ; $ea43: d0 fb     
            sta $08            ; $ea45: 85 08     
            lda $0f            ; $ea47: a5 0f     
            bne __ea51         ; $ea49: d0 06     
            jsr __ea9f         ; $ea4b: 20 9f ea  
            jmp __ea6b         ; $ea4e: 4c 6b ea  

;-------------------------------------------------------------------------------
__ea51:     cmp #$01           ; $ea51: c9 01     
            beq __ea5f         ; $ea53: f0 0a     
            cmp #$02           ; $ea55: c9 02     
            beq __ea65         ; $ea57: f0 0c     
            jsr __eb4a         ; $ea59: 20 4a eb  
            jmp __ea74         ; $ea5c: 4c 74 ea  

;-------------------------------------------------------------------------------
__ea5f:     jsr __eae0         ; $ea5f: 20 e0 ea  
            jmp __ea6b         ; $ea62: 4c 6b ea  

;-------------------------------------------------------------------------------
__ea65:     jsr __eb14         ; $ea65: 20 14 eb  
            jmp __ea6b         ; $ea68: 4c 6b ea  

;-------------------------------------------------------------------------------
__ea6b:     jsr __eaba         ; $ea6b: 20 ba ea  
            jmp __ea74         ; $ea6e: 4c 74 ea  

;-------------------------------------------------------------------------------
__ea71:     jsr __ea8f         ; $ea71: 20 8f ea  
__ea74:     pla                ; $ea74: 68        
            sta $09            ; $ea75: 85 09     
            pla                ; $ea77: 68        
            sta $08            ; $ea78: 85 08     
            pla                ; $ea7a: 68        
            sta $07            ; $ea7b: 85 07     
            pla                ; $ea7d: 68        
            sta $06            ; $ea7e: 85 06     
            pla                ; $ea80: 68        
            sta $05            ; $ea81: 85 05     
            pla                ; $ea83: 68        
            sta $01            ; $ea84: 85 01     
            pla                ; $ea86: 68        
            sta $00            ; $ea87: 85 00     
            pla                ; $ea89: 68        
            tay                ; $ea8a: a8        
            pla                ; $ea8b: 68        
            tax                ; $ea8c: aa        
            pla                ; $ea8d: 68        
            rts                ; $ea8e: 60        

;-------------------------------------------------------------------------------
__ea8f:     lda $02            ; $ea8f: a5 02     
            ldx $03            ; $ea91: a6 03     
            ldy #$02           ; $ea93: a0 02     
__ea95:     sta ($04),y        ; $ea95: 91 04     
            iny                ; $ea97: c8        
            iny                ; $ea98: c8        
            iny                ; $ea99: c8        
            iny                ; $ea9a: c8        
            dex                ; $ea9b: ca        
            bne __ea95         ; $ea9c: d0 f7     
            rts                ; $ea9e: 60        

;-------------------------------------------------------------------------------
__ea9f:     lda $02            ; $ea9f: a5 02     
            ldx $08            ; $eaa1: a6 08     
            ldy #$01           ; $eaa3: a0 01     
__eaa5:     sta ($04),y        ; $eaa5: 91 04     
            clc                ; $eaa7: 18        
            adc #$01           ; $eaa8: 69 01     
            iny                ; $eaaa: c8        
            pha                ; $eaab: 48        
            lda ($04),y        ; $eaac: b1 04     
            and #$3f           ; $eaae: 29 3f     
            sta ($04),y        ; $eab0: 91 04     
            pla                ; $eab2: 68        
            iny                ; $eab3: c8        
            iny                ; $eab4: c8        
            iny                ; $eab5: c8        
            dex                ; $eab6: ca        
            bne __eaa5         ; $eab7: d0 ec     
            rts                ; $eab9: 60        

;-------------------------------------------------------------------------------
__eaba:     ldy #$00           ; $eaba: a0 00     
__eabc:     ldx $06            ; $eabc: a6 06     
            lda $01            ; $eabe: a5 01     
            sta $09            ; $eac0: 85 09     
__eac2:     lda $09            ; $eac2: a5 09     
            sta ($04),y        ; $eac4: 91 04     
            clc                ; $eac6: 18        
            adc #$08           ; $eac7: 69 08     
            sta $09            ; $eac9: 85 09     
            iny                ; $eacb: c8        
            iny                ; $eacc: c8        
            iny                ; $eacd: c8        
            lda $00            ; $eace: a5 00     
            sta ($04),y        ; $ead0: 91 04     
            iny                ; $ead2: c8        
            dex                ; $ead3: ca        
            bne __eac2         ; $ead4: d0 ec     
            clc                ; $ead6: 18        
            adc #$08           ; $ead7: 69 08     
            sta $00            ; $ead9: 85 00     
            dec $07            ; $eadb: c6 07     
            bne __eabc         ; $eadd: d0 dd     
            rts                ; $eadf: 60        

;-------------------------------------------------------------------------------
__eae0:     ldy #$01           ; $eae0: a0 01     
            sty $0a            ; $eae2: 84 0a     
            lda $08            ; $eae4: a5 08     
            sec                ; $eae6: 38        
            sbc $06            ; $eae7: e5 06     
__eae9:     tay                ; $eae9: a8        
            sta $0b            ; $eaea: 85 0b     
            ldx $06            ; $eaec: a6 06     
__eaee:     tya                ; $eaee: 98        
            pha                ; $eaef: 48        
            clc                ; $eaf0: 18        
            tya                ; $eaf1: 98        
            adc $02            ; $eaf2: 65 02     
            ldy $0a            ; $eaf4: a4 0a     
            sta ($04),y        ; $eaf6: 91 04     
            iny                ; $eaf8: c8        
            lda ($04),y        ; $eaf9: b1 04     
            and #$3f           ; $eafb: 29 3f     
            eor #$40           ; $eafd: 49 40     
            sta ($04),y        ; $eaff: 91 04     
            iny                ; $eb01: c8        
            iny                ; $eb02: c8        
            iny                ; $eb03: c8        
            sty $0a            ; $eb04: 84 0a     
            pla                ; $eb06: 68        
            tay                ; $eb07: a8        
            iny                ; $eb08: c8        
            dex                ; $eb09: ca        
            bne __eaee         ; $eb0a: d0 e2     
            lda $0b            ; $eb0c: a5 0b     
            sec                ; $eb0e: 38        
            sbc $06            ; $eb0f: e5 06     
            bpl __eae9         ; $eb11: 10 d6     
            rts                ; $eb13: 60        

;-------------------------------------------------------------------------------
__eb14:     lda #$01           ; $eb14: a9 01     
            sta $0a            ; $eb16: 85 0a     
            lda $06            ; $eb18: a5 06     
            sec                ; $eb1a: 38        
            sbc #$01           ; $eb1b: e9 01     
__eb1d:     tay                ; $eb1d: a8        
            sta $0b            ; $eb1e: 85 0b     
            ldx $06            ; $eb20: a6 06     
__eb22:     tya                ; $eb22: 98        
            pha                ; $eb23: 48        
            clc                ; $eb24: 18        
            tya                ; $eb25: 98        
            adc $02            ; $eb26: 65 02     
            ldy $0a            ; $eb28: a4 0a     
            sta ($04),y        ; $eb2a: 91 04     
            iny                ; $eb2c: c8        
            lda ($04),y        ; $eb2d: b1 04     
            and #$3f           ; $eb2f: 29 3f     
            ora #$80           ; $eb31: 09 80     
            sta ($04),y        ; $eb33: 91 04     
            iny                ; $eb35: c8        
            iny                ; $eb36: c8        
            iny                ; $eb37: c8        
            sty $0a            ; $eb38: 84 0a     
            pla                ; $eb3a: 68        
            tay                ; $eb3b: a8        
            dey                ; $eb3c: 88        
            dex                ; $eb3d: ca        
            bne __eb22         ; $eb3e: d0 e2     
            lda $0b            ; $eb40: a5 0b     
            clc                ; $eb42: 18        
            adc $06            ; $eb43: 65 06     
            cmp $08            ; $eb45: c5 08     
            bmi __eb1d         ; $eb47: 30 d4     
            rts                ; $eb49: 60        

;-------------------------------------------------------------------------------
__eb4a:     ldy #$00           ; $eb4a: a0 00     
__eb4c:     ldx $06            ; $eb4c: a6 06     
            lda $01            ; $eb4e: a5 01     
            sta $09            ; $eb50: 85 09     
            lda #$ff           ; $eb52: a9 ff     
__eb54:     sta ($04),y        ; $eb54: 91 04     
            iny                ; $eb56: c8        
            iny                ; $eb57: c8        
            iny                ; $eb58: c8        
            iny                ; $eb59: c8        
            dex                ; $eb5a: ca        
            bne __eb54         ; $eb5b: d0 f7     
            lda $00            ; $eb5d: a5 00     
            clc                ; $eb5f: 18        
            adc #$08           ; $eb60: 69 08     
            sta $00            ; $eb62: 85 00     
            dec $07            ; $eb64: c6 07     
            bne __eb4c         ; $eb66: d0 e4     
            rts                ; $eb68: 60        

;-------------------------------------------------------------------------------
__eb69:     lda #$00           ; $eb69: a9 00     
            jmp __eb75         ; $eb6b: 4c 75 eb  

;-------------------------------------------------------------------------------
__eb6e:     lda #$01           ; $eb6e: a9 01     
            jmp __eb75         ; $eb70: 4c 75 eb  

;-------------------------------------------------------------------------------
__eb73:     lda #$02           ; $eb73: a9 02     
__eb75:     sta $0f            ; $eb75: 85 0f     
            txa                ; $eb77: 8a        
            pha                ; $eb78: 48        
            tya                ; $eb79: 98        
            pha                ; $eb7a: 48        
            ldy #$00           ; $eb7b: a0 00     
            lda $0f            ; $eb7d: a5 0f     
            cmp #$02           ; $eb7f: c9 02     
            beq __eb96         ; $eb81: f0 13     
            cmp #$01           ; $eb83: c9 01     
            beq __eb8d         ; $eb85: f0 06     
            jsr __ebc1         ; $eb87: 20 c1 eb  
            jmp __ebba         ; $eb8a: 4c ba eb  

;-------------------------------------------------------------------------------
__eb8d:     jsr __ebc1         ; $eb8d: 20 c1 eb  
            jsr __ebe3         ; $eb90: 20 e3 eb  
            jmp __ebb8         ; $eb93: 4c b8 eb  

;-------------------------------------------------------------------------------
__eb96:     lda ($02),y        ; $eb96: b1 02     
            cmp #$ff           ; $eb98: c9 ff     
            beq __ebb6         ; $eb9a: f0 1a     
            sta $42            ; $eb9c: 85 42     
            iny                ; $eb9e: c8        
            lda ($02),y        ; $eb9f: b1 02     
            sta $43            ; $eba1: 85 43     
            iny                ; $eba3: c8        
            lda ($02),y        ; $eba4: b1 02     
            sta $44            ; $eba6: 85 44     
            iny                ; $eba8: c8        
            lda ($02),y        ; $eba9: b1 02     
            sta $45            ; $ebab: 85 45     
            iny                ; $ebad: c8        
            jsr __ebe3         ; $ebae: 20 e3 eb  
            beq __eb96         ; $ebb1: f0 e3     
            jmp __ebb8         ; $ebb3: 4c b8 eb  

;-------------------------------------------------------------------------------
__ebb6:     lda #$00           ; $ebb6: a9 00     
__ebb8:     sta $0f            ; $ebb8: 85 0f     
__ebba:     pla                ; $ebba: 68        
            tay                ; $ebbb: a8        
            pla                ; $ebbc: 68        
            tax                ; $ebbd: aa        
            lda $0f            ; $ebbe: a5 0f     
            rts                ; $ebc0: 60        

;-------------------------------------------------------------------------------
__ebc1:     ldx #$00           ; $ebc1: a2 00     
            lda $0f            ; $ebc3: a5 0f     
            beq __ebc9         ; $ebc5: f0 02     
            ldx #$04           ; $ebc7: a2 04     
__ebc9:     jsr __ebcd         ; $ebc9: 20 cd eb  
            rts                ; $ebcc: 60        

;-------------------------------------------------------------------------------
__ebcd:     jsr __ebd0         ; $ebcd: 20 d0 eb  
__ebd0:     lda ($02),y        ; $ebd0: b1 02     
            clc                ; $ebd2: 18        
            adc $00            ; $ebd3: 65 00     
            sta $3e,x          ; $ebd5: 95 3e     
            inx                ; $ebd7: e8        
            iny                ; $ebd8: c8        
            lda ($02),y        ; $ebd9: b1 02     
            clc                ; $ebdb: 18        
            adc $01            ; $ebdc: 65 01     
            sta $3e,x          ; $ebde: 95 3e     
            inx                ; $ebe0: e8        
            iny                ; $ebe1: c8        
            rts                ; $ebe2: 60        

;-------------------------------------------------------------------------------
__ebe3:     lda $3e            ; $ebe3: a5 3e     
            cmp $42            ; $ebe5: c5 42     
            bcc __ebf4         ; $ebe7: 90 0b     
            beq __ebfa         ; $ebe9: f0 0f     
            cmp $44            ; $ebeb: c5 44     
            bcc __ebfa         ; $ebed: 90 0b     
            beq __ebfa         ; $ebef: f0 09     
            lda #$00           ; $ebf1: a9 00     
            rts                ; $ebf3: 60        

;-------------------------------------------------------------------------------
__ebf4:     lda $40            ; $ebf4: a5 40     
            cmp $42            ; $ebf6: c5 42     
            bcc __ec14         ; $ebf8: 90 1a     
__ebfa:     lda $3f            ; $ebfa: a5 3f     
            cmp $43            ; $ebfc: c5 43     
            bcc __ec0b         ; $ebfe: 90 0b     
            beq __ec11         ; $ec00: f0 0f     
            cmp $45            ; $ec02: c5 45     
            bcc __ec11         ; $ec04: 90 0b     
            beq __ec11         ; $ec06: f0 09     
            lda #$00           ; $ec08: a9 00     
            rts                ; $ec0a: 60        

;-------------------------------------------------------------------------------
__ec0b:     lda $41            ; $ec0b: a5 41     
            cmp $43            ; $ec0d: c5 43     
            bcc __ec14         ; $ec0f: 90 03     
__ec11:     lda #$01           ; $ec11: a9 01     
            rts                ; $ec13: 60        

;-------------------------------------------------------------------------------
__ec14:     lda #$00           ; $ec14: a9 00     
            rts                ; $ec16: 60        

;-------------------------------------------------------------------------------
__ec17:     ldx #$00           ; $ec17: a2 00     
            ldy #$00           ; $ec19: a0 00     
__ec1b:     lda $3a,x          ; $ec1b: b5 3a     
            bne __ec27         ; $ec1d: d0 08     
            lda #$ff           ; $ec1f: a9 ff     
            sta $0200,y        ; $ec21: 99 00 02  
            sta $0204,y        ; $ec24: 99 04 02  
__ec27:     inx                ; $ec27: e8        
            tya                ; $ec28: 98        
            clc                ; $ec29: 18        
            adc #$30           ; $ec2a: 69 30     
            tay                ; $ec2c: a8        
            lda $0231          ; $ec2d: ad 31 02  
            and #$f0           ; $ec30: 29 f0     
            cmp #$a0           ; $ec32: c9 a0     
            beq __ec3a         ; $ec34: f0 04     
            cpx #$02           ; $ec36: e0 02     
            bmi __ec1b         ; $ec38: 30 e1     
__ec3a:     rts                ; $ec3a: 60        

;-------------------------------------------------------------------------------
__ec3b:     ldy #$00           ; $ec3b: a0 00     
            sty $0f            ; $ec3d: 84 0f     
            jsr __ec84         ; $ec3f: 20 84 ec  
__ec42:     lda $0200,y        ; $ec42: b9 00 02  
            cmp #$ff           ; $ec45: c9 ff     
            bne __ec78         ; $ec47: d0 2f     
            lda $05            ; $ec49: a5 05     
            sta $0203,y        ; $ec4b: 99 03 02  
            clc                ; $ec4e: 18        
            adc #$08           ; $ec4f: 69 08     
            sta $0207,y        ; $ec51: 99 07 02  
            lda $06            ; $ec54: a5 06     
            sta $0200,y        ; $ec56: 99 00 02  
            sta $0204,y        ; $ec59: 99 04 02  
            lda __c614,x       ; $ec5c: bd 14 c6  
            sta $0201,y        ; $ec5f: 99 01 02  
            lda #$01           ; $ec62: a9 01     
            sta $0202,y        ; $ec64: 99 02 02  
            lda #$f7           ; $ec67: a9 f7     
            sta $0205,y        ; $ec69: 99 05 02  
            lda #$01           ; $ec6c: a9 01     
            sta $0206,y        ; $ec6e: 99 06 02  
            ldx $0f            ; $ec71: a6 0f     
            lda #$04           ; $ec73: a9 04     
            sta $3a,x          ; $ec75: 95 3a     
            rts                ; $ec77: 60        

;-------------------------------------------------------------------------------
__ec78:     tya                ; $ec78: 98        
            clc                ; $ec79: 18        
            adc #$30           ; $ec7a: 69 30     
            tay                ; $ec7c: a8        
            inc $0f            ; $ec7d: e6 0f     
            cpy #$60           ; $ec7f: c0 60     
            bmi __ec42         ; $ec81: 30 bf     
            rts                ; $ec83: 60        

;-------------------------------------------------------------------------------
__ec84:     txa                ; $ec84: 8a        
            pha                ; $ec85: 48        
            tya                ; $ec86: 98        
            pha                ; $ec87: 48        
            lda $4e            ; $ec88: a5 4e     
            bne __ec9f         ; $ec8a: d0 13     
            lda $49            ; $ec8c: a5 49     
            ora #$18           ; $ec8e: 09 18     
            sta $01            ; $ec90: 85 01     
            lda __c61b,x       ; $ec92: bd 1b c6  
            jsr __ee7f         ; $ec95: 20 7f ee  
            lda $e7            ; $ec98: a5 e7     
            bne __ec9f         ; $ec9a: d0 03     
            jsr __eca4         ; $ec9c: 20 a4 ec  
__ec9f:     pla                ; $ec9f: 68        
            tay                ; $eca0: a8        
            pla                ; $eca1: 68        
            tax                ; $eca2: aa        
            rts                ; $eca3: 60        

;-------------------------------------------------------------------------------
__eca4:     lda #$30           ; $eca4: a9 30     
            sta $01            ; $eca6: 85 01     
            lda #$f9           ; $eca8: a9 f9     
            jsr __ee7f         ; $ecaa: 20 7f ee  
            lda #$40           ; $ecad: a9 40     
            sta $01            ; $ecaf: 85 01     
            lda $48            ; $ecb1: a5 48     
            jsr __ee7f         ; $ecb3: 20 7f ee  
            rts                ; $ecb6: 60        

;-------------------------------------------------------------------------------
__ecb7:     lda $4a            ; $ecb7: a5 4a     
            cmp #$04           ; $ecb9: c9 04     
            bne __ecbe         ; $ecbb: d0 01     
            rts                ; $ecbd: 60        

;-------------------------------------------------------------------------------
__ecbe:     cmp #$01           ; $ecbe: c9 01     
            bne __ecc3         ; $ecc0: d0 01     
            rts                ; $ecc2: 60        

;-------------------------------------------------------------------------------
__ecc3:     lda $05c6          ; $ecc3: ad c6 05  
            beq __ecc9         ; $ecc6: f0 01     
            rts                ; $ecc8: 60        

;-------------------------------------------------------------------------------
__ecc9:     lda $03            ; $ecc9: a5 03     
            pha                ; $eccb: 48        
            lda $04            ; $eccc: a5 04     
            pha                ; $ecce: 48        
            lda $6d            ; $eccf: a5 6d     
            and #$01           ; $ecd1: 29 01     
            bne __ecda         ; $ecd3: d0 05     
            ldx #$00           ; $ecd5: a2 00     
            jmp __ecdc         ; $ecd7: 4c dc ec  

;-------------------------------------------------------------------------------
__ecda:     ldx #$02           ; $ecda: a2 02     
__ecdc:     lda __c622,x       ; $ecdc: bd 22 c6  
            sta $02            ; $ecdf: 85 02     
            lda __c623,x       ; $ece1: bd 23 c6  
            sta $03            ; $ece4: 85 03     
            lda $0213          ; $ece6: ad 13 02  
            sta $00            ; $ece9: 85 00     
            lda $0210          ; $eceb: ad 10 02  
            sta $01            ; $ecee: 85 01     
            lda #$00           ; $ecf0: a9 00     
            jsr __eb75         ; $ecf2: 20 75 eb  
            lda $4a            ; $ecf5: a5 4a     
            cmp #$03           ; $ecf7: c9 03     
            beq __ed0a         ; $ecf9: f0 0f     
            ldx $b0            ; $ecfb: a6 b0     
            ldy #$00           ; $ecfd: a0 00     
            jsr __d51e         ; $ecff: 20 1e d5  
            beq __ed1f         ; $ed02: f0 1b     
            jsr __ed38         ; $ed04: 20 38 ed  
            jmp __ed1f         ; $ed07: 4c 1f ed  

;-------------------------------------------------------------------------------
__ed0a:     ldx $a0            ; $ed0a: a6 a0     
            ldy #$00           ; $ed0c: a0 00     
            jsr __d51e         ; $ed0e: 20 1e d5  
            bne __ed1c         ; $ed11: d0 09     
            ldx $b0            ; $ed13: a6 b0     
            ldy #$60           ; $ed15: a0 60     
            jsr __d51e         ; $ed17: 20 1e d5  
            beq __ed1f         ; $ed1a: f0 03     
__ed1c:     jsr __ed38         ; $ed1c: 20 38 ed  
__ed1f:     jsr __ded4         ; $ed1f: 20 d4 de  
            pla                ; $ed22: 68        
            sta $04            ; $ed23: 85 04     
            pla                ; $ed25: 68        
            sta $03            ; $ed26: 85 03     
            ldx $05c6          ; $ed28: ae c6 05  
            bne __ed2e         ; $ed2b: d0 01     
            rts                ; $ed2d: 60        

;-------------------------------------------------------------------------------
__ed2e:     lda #$20           ; $ed2e: a9 20     
            sta $fd            ; $ed30: 85 fd     
            ldx #$00           ; $ed32: a2 00     
            jsr __ec3b         ; $ed34: 20 3b ec  
            rts                ; $ed37: 60        

;-------------------------------------------------------------------------------
__ed38:     lda $00            ; $ed38: a5 00     
            sta $05            ; $ed3a: 85 05     
            lda $01            ; $ed3c: a5 01     
            sta $06            ; $ed3e: 85 06     
            inc $05c6          ; $ed40: ee c6 05  
            rts                ; $ed43: 60        

;-------------------------------------------------------------------------------
__ed44:     lda $9e            ; $ed44: a5 9e     
            cmp $9f            ; $ed46: c5 9f     
            beq __ed56         ; $ed48: f0 0c     
            sta $9f            ; $ed4a: 85 9f     
            lda #$00           ; $ed4c: a9 00     
            sta $05c7          ; $ed4e: 8d c7 05  
            ldx #$04           ; $ed51: a2 04     
            jmp __ed67         ; $ed53: 4c 67 ed  

;-------------------------------------------------------------------------------
__ed56:     inc $05c7          ; $ed56: ee c7 05  
            lda #$01           ; $ed59: a9 01     
            cmp $05c7          ; $ed5b: cd c7 05  
            bne __ed65         ; $ed5e: d0 05     
            ldx #$05           ; $ed60: a2 05     
            jmp __ed67         ; $ed62: 4c 67 ed  

;-------------------------------------------------------------------------------
__ed65:     ldx #$06           ; $ed65: a2 06     
__ed67:     lda $0208          ; $ed67: ad 08 02  
            sec                ; $ed6a: 38        
            sbc #$08           ; $ed6b: e9 08     
            sta $06            ; $ed6d: 85 06     
            lda $020b          ; $ed6f: ad 0b 02  
            sec                ; $ed72: 38        
            sbc #$04           ; $ed73: e9 04     
            sta $05            ; $ed75: 85 05     
            jsr __ec3b         ; $ed77: 20 3b ec  
            rts                ; $ed7a: 60        

;-------------------------------------------------------------------------------
__ed7b:     lda $0233          ; $ed7b: ad 33 02  
            sta $05            ; $ed7e: 85 05     
            lda $0230          ; $ed80: ad 30 02  
            sec                ; $ed83: 38        
            sbc #$04           ; $ed84: e9 04     
            sta $06            ; $ed86: 85 06     
            ldx #$03           ; $ed88: a2 03     
            jsr __ec3b         ; $ed8a: 20 3b ec  
            rts                ; $ed8d: 60        

;-------------------------------------------------------------------------------
__ed8e:     lda $01            ; $ed8e: a5 01     
            pha                ; $ed90: 48        
            txa                ; $ed91: 8a        
            pha                ; $ed92: 48        
            lda $05e7,x        ; $ed93: bd e7 05  
            sta $05            ; $ed96: 85 05     
            lda $05e8,x        ; $ed98: bd e8 05  
            clc                ; $ed9b: 18        
            adc #$18           ; $ed9c: 69 18     
            sta $06            ; $ed9e: 85 06     
            ldx #$01           ; $eda0: a2 01     
            jsr __ec3b         ; $eda2: 20 3b ec  
            pla                ; $eda5: 68        
            tax                ; $eda6: aa        
            pla                ; $eda7: 68        
            sta $01            ; $eda8: 85 01     
            rts                ; $edaa: 60        

;-------------------------------------------------------------------------------
__edab:     lda $e8            ; $edab: a5 e8     
            bne __edc6         ; $edad: d0 17     
            lda #$01           ; $edaf: a9 01     
            sta $e8            ; $edb1: 85 e8     
            lda #$00           ; $edb3: a9 00     
            sta $4f            ; $edb5: 85 4f     
            sta $50            ; $edb7: 85 50     
            lda #$0f           ; $edb9: a9 0f     
            sta $18            ; $edbb: 85 18     
            lda #$13           ; $edbd: a9 13     
            sta $19            ; $edbf: 85 19     
            lda #$09           ; $edc1: a9 09     
            sta $39            ; $edc3: 85 39     
            rts                ; $edc5: 60        

;-------------------------------------------------------------------------------
__edc6:     lda $50            ; $edc6: a5 50     
            beq __eddc         ; $edc8: f0 12     
            lda $51            ; $edca: a5 51     
            cmp #$05           ; $edcc: c9 05     
            bne __edd7         ; $edce: d0 07     
            lda #$03           ; $edd0: a9 03     
            sta $6b            ; $edd2: 85 6b     
            jmp __edd9         ; $edd4: 4c d9 ed  

;-------------------------------------------------------------------------------
__edd7:     sta $54            ; $edd7: 85 54     
__edd9:     dec $50            ; $edd9: c6 50     
            rts                ; $eddb: 60        

;-------------------------------------------------------------------------------
__eddc:     sta $0515          ; $eddc: 8d 15 05  
            ldx $4f            ; $eddf: a6 4f     
            lda __c64e,x       ; $ede1: bd 4e c6  
            sta $50            ; $ede4: 85 50     
            lda __c62e,x       ; $ede6: bd 2e c6  
            sta $51            ; $ede9: 85 51     
            inc $4f            ; $edeb: e6 4f     
            rts                ; $eded: 60        

;-------------------------------------------------------------------------------
__edee:     lda $ef            ; $edee: a5 ef     
            and #$01           ; $edf0: 29 01     
            asl                ; $edf2: 0a        
            tax                ; $edf3: aa        
            lda $21            ; $edf4: a5 21     
            sta $05d6,x        ; $edf6: 9d d6 05  
            lda $22            ; $edf9: a5 22     
            sta $05d7,x        ; $edfb: 9d d7 05  
            rts                ; $edfe: 60        

;-------------------------------------------------------------------------------
__edff:     lda $ef            ; $edff: a5 ef     
            and #$01           ; $ee01: 29 01     
            asl                ; $ee03: 0a        
            tax                ; $ee04: aa        
            lda $05d6,x        ; $ee05: bd d6 05  
            sta $21            ; $ee08: 85 21     
            lda $05d7,x        ; $ee0a: bd d7 05  
            sta $22            ; $ee0d: 85 22     
            rts                ; $ee0f: 60        

;-------------------------------------------------------------------------------
__ee10:     lda $3c            ; $ee10: a5 3c     
            beq __ee15         ; $ee12: f0 01     
            rts                ; $ee14: 60        

;-------------------------------------------------------------------------------
__ee15:     lda $2e            ; $ee15: a5 2e     
            bne __ee1e         ; $ee17: d0 05     
            lda #$05           ; $ee19: a9 05     
            sta $6b            ; $ee1b: 85 6b     
            rts                ; $ee1d: 60        

;-------------------------------------------------------------------------------
__ee1e:     lda #$0f           ; $ee1e: a9 0f     
            sta $3c            ; $ee20: 85 3c     
            lda #$01           ; $ee22: a9 01     
            sta $00            ; $ee24: 85 00     
            lda #$0a           ; $ee26: a9 0a     
            sta $01            ; $ee28: 85 01     
            jsr __f040         ; $ee2a: 20 40 f0  
            lda #$02           ; $ee2d: a9 02     
            sta $00            ; $ee2f: 85 00     
            lda #$01           ; $ee31: a9 01     
            sta $05c8          ; $ee33: 8d c8 05  
            jsr __ef50         ; $ee36: 20 50 ef  
            rts                ; $ee39: 60        

;-------------------------------------------------------------------------------
__ee3a:     lda $0331          ; $ee3a: ad 31 03  
            bne __ee7e         ; $ee3d: d0 3f     
            ldx $0300          ; $ee3f: ae 00 03  
            lda $0302,x        ; $ee42: bd 02 03  
            beq __ee7e         ; $ee45: f0 37     
            and #$f0           ; $ee47: 29 f0     
            lsr                ; $ee49: 4a        
            lsr                ; $ee4a: 4a        
            lsr                ; $ee4b: 4a        
            tay                ; $ee4c: a8        
            lda $bffe,y        ; $ee4d: b9 fe bf  
            sta $02            ; $ee50: 85 02     
            iny                ; $ee52: c8        
            lda $bffe,y        ; $ee53: b9 fe bf  
            sta $03            ; $ee56: 85 03     
            lda $0302,x        ; $ee58: bd 02 03  
            and #$0f           ; $ee5b: 29 0f     
            sta $01            ; $ee5d: 85 01     
            lda #$00           ; $ee5f: a9 00     
            sta $0302,x        ; $ee61: 9d 02 03  
            lda #$ee           ; $ee64: a9 ee     
            pha                ; $ee66: 48        
            lda #$39           ; $ee67: a9 39     
            pha                ; $ee69: 48        
            inx                ; $ee6a: e8        
            inx                ; $ee6b: e8        
            txa                ; $ee6c: 8a        
            cmp #$2e           ; $ee6d: c9 2e     
            bcc __ee73         ; $ee6f: 90 02     
            lda #$00           ; $ee71: a9 00     
__ee73:     sta $0300          ; $ee73: 8d 00 03  
            lda $0301,x        ; $ee76: bd 01 03  
            sta $00            ; $ee79: 85 00     
            jmp ($0002)        ; $ee7b: 6c 02 00  

;-------------------------------------------------------------------------------
__ee7e:     rts                ; $ee7e: 60        

;-------------------------------------------------------------------------------
__ee7f:     ldx $0301          ; $ee7f: ae 01 03  
            ldy $0302,x        ; $ee82: bc 02 03  
            bne __ee9b         ; $ee85: d0 14     
            sta $0303,x        ; $ee87: 9d 03 03  
            lda $01            ; $ee8a: a5 01     
            sta $0302,x        ; $ee8c: 9d 02 03  
            inx                ; $ee8f: e8        
            inx                ; $ee90: e8        
            txa                ; $ee91: 8a        
            cmp #$2e           ; $ee92: c9 2e     
            bcc __ee98         ; $ee94: 90 02     
            lda #$00           ; $ee96: a9 00     
__ee98:     sta $0301          ; $ee98: 8d 01 03  
__ee9b:     rts                ; $ee9b: 60        

;-------------------------------------------------------------------------------
__ee9c:     lda #$31           ; $ee9c: a9 31     
            sta $00            ; $ee9e: 85 00     
            lda #$03           ; $eea0: a9 03     
            sta $01            ; $eea2: 85 01     
            jsr __ef3c         ; $eea4: 20 3c ef  
            lda #$00           ; $eea7: a9 00     
            sta $0330          ; $eea9: 8d 30 03  
            sta $0331          ; $eeac: 8d 31 03  
            rts                ; $eeaf: 60        

;-------------------------------------------------------------------------------
__eeb0:     lda #$00           ; $eeb0: a9 00     
            sta OAMADDR        ; $eeb2: 8d 03 20  
            lda #$02           ; $eeb5: a9 02     
            sta OAM_DMA        ; $eeb7: 8d 14 40  
            rts                ; $eeba: 60        

;-------------------------------------------------------------------------------
__eebb:     lda PPUSTATUS      ; $eebb: ad 02 20  
            lda $10            ; $eebe: a5 10     
            and #$fb           ; $eec0: 29 fb     
            sta PPUCTRL        ; $eec2: 8d 00 20  
            sta $10            ; $eec5: 85 10     
            lda #$1c           ; $eec7: a9 1c     
            clc                ; $eec9: 18        
__eeca:     adc #$04           ; $eeca: 69 04     
            dec $01            ; $eecc: c6 01     
            bne __eeca         ; $eece: d0 fa     
            sta $02            ; $eed0: 85 02     
            sta PPUADDR        ; $eed2: 8d 06 20  
            lda #$00           ; $eed5: a9 00     
            sta PPUADDR        ; $eed7: 8d 06 20  
            ldx #$04           ; $eeda: a2 04     
            ldy #$00           ; $eedc: a0 00     
            lda $00            ; $eede: a5 00     
__eee0:     sta PPUDATA        ; $eee0: 8d 07 20  
            dey                ; $eee3: 88        
            bne __eee0         ; $eee4: d0 fa     
            dex                ; $eee6: ca        
            bne __eee0         ; $eee7: d0 f7     
            lda $02            ; $eee9: a5 02     
            adc #$03           ; $eeeb: 69 03     
            sta PPUADDR        ; $eeed: 8d 06 20  
            lda #$c0           ; $eef0: a9 c0     
            sta PPUADDR        ; $eef2: 8d 06 20  
            ldy #$40           ; $eef5: a0 40     
            lda #$00           ; $eef7: a9 00     
__eef9:     sta PPUDATA        ; $eef9: 8d 07 20  
            dey                ; $eefc: 88        
            bne __eef9         ; $eefd: d0 fa     
            rts                ; $eeff: 60        

;-------------------------------------------------------------------------------
__ef00:     sta PPUADDR        ; $ef00: 8d 06 20  
            iny                ; $ef03: c8        
            lda ($00),y        ; $ef04: b1 00     
            sta PPUADDR        ; $ef06: 8d 06 20  
            iny                ; $ef09: c8        
            lda ($00),y        ; $ef0a: b1 00     
            asl                ; $ef0c: 0a        
            pha                ; $ef0d: 48        
            lda $10            ; $ef0e: a5 10     
            ora #$04           ; $ef10: 09 04     
            bcs __ef16         ; $ef12: b0 02     
            and #$fb           ; $ef14: 29 fb     
__ef16:     sta PPUCTRL        ; $ef16: 8d 00 20  
            sta $10            ; $ef19: 85 10     
            pla                ; $ef1b: 68        
            asl                ; $ef1c: 0a        
            bcc __ef22         ; $ef1d: 90 03     
            ora #$02           ; $ef1f: 09 02     
            iny                ; $ef21: c8        
__ef22:     lsr                ; $ef22: 4a        
            lsr                ; $ef23: 4a        
            tax                ; $ef24: aa        
__ef25:     bcs __ef28         ; $ef25: b0 01     
            iny                ; $ef27: c8        
__ef28:     lda ($00),y        ; $ef28: b1 00     
            sta PPUDATA        ; $ef2a: 8d 07 20  
            dex                ; $ef2d: ca        
            bne __ef25         ; $ef2e: d0 f5     
            sec                ; $ef30: 38        
            tya                ; $ef31: 98        
            adc $00            ; $ef32: 65 00     
            sta $00            ; $ef34: 85 00     
            lda #$00           ; $ef36: a9 00     
            adc $01            ; $ef38: 65 01     
            sta $01            ; $ef3a: 85 01     
__ef3c:     ldx PPUSTATUS      ; $ef3c: ae 02 20  
            ldy #$00           ; $ef3f: a0 00     
            lda ($00),y        ; $ef41: b1 00     
            bne __ef00         ; $ef43: d0 bb     
            lda $12            ; $ef45: a5 12     
            sta PPUSCROLL      ; $ef47: 8d 05 20  
            lda $13            ; $ef4a: a5 13     
            sta PPUSCROLL      ; $ef4c: 8d 05 20  
            rts                ; $ef4f: 60        

;-------------------------------------------------------------------------------
__ef50:     lda #$04           ; $ef50: a9 04     
__ef52:     lsr $00            ; $ef52: 46 00     
            bcc __ef5b         ; $ef54: 90 05     
            pha                ; $ef56: 48        
            jsr __ef61         ; $ef57: 20 61 ef  
            pla                ; $ef5a: 68        
__ef5b:     clc                ; $ef5b: 18        
            sbc #$00           ; $ef5c: e9 00     
            bpl __ef52         ; $ef5e: 10 f2     
            rts                ; $ef60: 60        

;-------------------------------------------------------------------------------
__ef61:     asl                ; $ef61: 0a        
            asl                ; $ef62: 0a        
            tay                ; $ef63: a8        
            sta $02            ; $ef64: 85 02     
            ldx $0330          ; $ef66: ae 30 03  
            lda __c00a,y       ; $ef69: b9 0a c0  
            sta $0331,x        ; $ef6c: 9d 31 03  
            jsr __f02c         ; $ef6f: 20 2c f0  
            iny                ; $ef72: c8        
            lda __c00a,y       ; $ef73: b9 0a c0  
            sta $0331,x        ; $ef76: 9d 31 03  
            jsr __f02c         ; $ef79: 20 2c f0  
            iny                ; $ef7c: c8        
            lda __c00a,y       ; $ef7d: b9 0a c0  
            and #$07           ; $ef80: 29 07     
            sta $0331,x        ; $ef82: 9d 31 03  
            sta $01            ; $ef85: 85 01     
            txa                ; $ef87: 8a        
            sec                ; $ef88: 38        
            adc $01            ; $ef89: 65 01     
            jsr __f02e         ; $ef8b: 20 2e f0  
            tax                ; $ef8e: aa        
            stx $0330          ; $ef8f: 8e 30 03  
            lda #$00           ; $ef92: a9 00     
            sta $0331,x        ; $ef94: 9d 31 03  
            iny                ; $ef97: c8        
            lda __c00a,y       ; $ef98: b9 0a c0  
            sta $03            ; $ef9b: 85 03     
__ef9d:     dex                ; $ef9d: ca        
            lda $0020,y        ; $ef9e: b9 20 00  
            and #$0f           ; $efa1: 29 0f     
            sta $0331,x        ; $efa3: 9d 31 03  
            dec $01            ; $efa6: c6 01     
            beq __efbc         ; $efa8: f0 12     
            dex                ; $efaa: ca        
            lda $0020,y        ; $efab: b9 20 00  
            and #$f0           ; $efae: 29 f0     
            lsr                ; $efb0: 4a        
            lsr                ; $efb1: 4a        
            lsr                ; $efb2: 4a        
            lsr                ; $efb3: 4a        
            sta $0331,x        ; $efb4: 9d 31 03  
            dey                ; $efb7: 88        
            dec $01            ; $efb8: c6 01     
            bne __ef9d         ; $efba: d0 e1     
__efbc:     lda $03            ; $efbc: a5 03     
            and #$01           ; $efbe: 29 01     
            beq __efcd         ; $efc0: f0 0b     
            ldy $02            ; $efc2: a4 02     
            clc                ; $efc4: 18        
            lda $0020,y        ; $efc5: b9 20 00  
            adc #$37           ; $efc8: 69 37     
            sta $0331,x        ; $efca: 9d 31 03  
__efcd:     rts                ; $efcd: 60        

;-------------------------------------------------------------------------------
__efce:     txa                ; $efce: 8a        
            pha                ; $efcf: 48        
            tya                ; $efd0: 98        
            pha                ; $efd1: 48        
            ldy #$00           ; $efd2: a0 00     
            lda ($02),y        ; $efd4: b1 02     
            and #$0f           ; $efd6: 29 0f     
            sta $05            ; $efd8: 85 05     
            lda ($02),y        ; $efda: b1 02     
            lsr                ; $efdc: 4a        
            lsr                ; $efdd: 4a        
            lsr                ; $efde: 4a        
            lsr                ; $efdf: 4a        
            sta $04            ; $efe0: 85 04     
            ldx $0330          ; $efe2: ae 30 03  
__efe5:     lda $01            ; $efe5: a5 01     
            sta $0331,x        ; $efe7: 9d 31 03  
            jsr __f02c         ; $efea: 20 2c f0  
            lda $00            ; $efed: a5 00     
            sta $0331,x        ; $efef: 9d 31 03  
            jsr __f02c         ; $eff2: 20 2c f0  
            lda $04            ; $eff5: a5 04     
            sta $06            ; $eff7: 85 06     
            ora #$80           ; $eff9: 09 80     
            sta $0331,x        ; $effb: 9d 31 03  
__effe:     jsr __f02c         ; $effe: 20 2c f0  
            iny                ; $f001: c8        
            lda ($02),y        ; $f002: b1 02     
            sta $0331,x        ; $f004: 9d 31 03  
            dec $06            ; $f007: c6 06     
            bne __effe         ; $f009: d0 f3     
            jsr __f02c         ; $f00b: 20 2c f0  
            clc                ; $f00e: 18        
            lda #$01           ; $f00f: a9 01     
            adc $00            ; $f011: 65 00     
            sta $00            ; $f013: 85 00     
            lda #$00           ; $f015: a9 00     
            adc $01            ; $f017: 65 01     
            sta $01            ; $f019: 85 01     
            stx $0330          ; $f01b: 8e 30 03  
            dec $05            ; $f01e: c6 05     
            bne __efe5         ; $f020: d0 c3     
            lda #$00           ; $f022: a9 00     
            sta $0331,x        ; $f024: 9d 31 03  
__f027:     pla                ; $f027: 68        
            tay                ; $f028: a8        
            pla                ; $f029: 68        
            tax                ; $f02a: aa        
            rts                ; $f02b: 60        

;-------------------------------------------------------------------------------
__f02c:     inx                ; $f02c: e8        
            txa                ; $f02d: 8a        
__f02e:     cmp #$3f           ; $f02e: c9 3f     
            bcc __f03f         ; $f030: 90 0d     
            ldx $0330          ; $f032: ae 30 03  
            lda #$00           ; $f035: a9 00     
            sta $0331,x        ; $f037: 9d 31 03  
            pla                ; $f03a: 68        
            pla                ; $f03b: 68        
            jmp __f027         ; $f03c: 4c 27 f0  

;-------------------------------------------------------------------------------
__f03f:     rts                ; $f03f: 60        

;-------------------------------------------------------------------------------
__f040:     ldx #$ff           ; $f040: a2 ff     
            bne __f046         ; $f042: d0 02     
__f044:     ldx #$00           ; $f044: a2 00     
__f046:     stx $04            ; $f046: 86 04     
            ldx #$00           ; $f048: a2 00     
            stx $05            ; $f04a: 86 05     
            stx $06            ; $f04c: 86 06     
            stx $07            ; $f04e: 86 07     
            lda $01            ; $f050: a5 01     
            and #$08           ; $f052: 29 08     
            bne __f057         ; $f054: d0 01     
            inx                ; $f056: e8        
__f057:     lda $00            ; $f057: a5 00     
            sta $06,x          ; $f059: 95 06     
            lda $01            ; $f05b: a5 01     
            jsr __f061         ; $f05d: 20 61 f0  
            rts                ; $f060: 60        

;-------------------------------------------------------------------------------
__f061:     and #$07           ; $f061: 29 07     
            asl                ; $f063: 0a        
            asl                ; $f064: 0a        
            tax                ; $f065: aa        
            lda $04            ; $f066: a5 04     
            beq __f091         ; $f068: f0 27     
            lda $24,x          ; $f06a: b5 24     
            beq __f095         ; $f06c: f0 27     
__f06e:     clc                ; $f06e: 18        
            lda $27,x          ; $f06f: b5 27     
            sta $03            ; $f071: 85 03     
            lda $07            ; $f073: a5 07     
            jsr __f0e6         ; $f075: 20 e6 f0  
            sta $27,x          ; $f078: 95 27     
            lda $26,x          ; $f07a: b5 26     
            sta $03            ; $f07c: 85 03     
            lda $06            ; $f07e: a5 06     
            jsr __f0e6         ; $f080: 20 e6 f0  
            sta $26,x          ; $f083: 95 26     
            lda $25,x          ; $f085: b5 25     
            sta $03            ; $f087: 85 03     
            lda $05            ; $f089: a5 05     
            jsr __f0e6         ; $f08b: 20 e6 f0  
            sta $25,x          ; $f08e: 95 25     
            rts                ; $f090: 60        

;-------------------------------------------------------------------------------
__f091:     lda $24,x          ; $f091: b5 24     
            beq __f06e         ; $f093: f0 d9     
__f095:     sec                ; $f095: 38        
            lda $27,x          ; $f096: b5 27     
            sta $03            ; $f098: 85 03     
            lda $07            ; $f09a: a5 07     
            jsr __f107         ; $f09c: 20 07 f1  
            sta $27,x          ; $f09f: 95 27     
            lda $26,x          ; $f0a1: b5 26     
            sta $03            ; $f0a3: 85 03     
            lda $06            ; $f0a5: a5 06     
            jsr __f107         ; $f0a7: 20 07 f1  
            sta $26,x          ; $f0aa: 95 26     
            lda $25,x          ; $f0ac: b5 25     
            sta $03            ; $f0ae: 85 03     
            lda $05            ; $f0b0: a5 05     
            jsr __f107         ; $f0b2: 20 07 f1  
            sta $25,x          ; $f0b5: 95 25     
            lda $25,x          ; $f0b7: b5 25     
            bne __f0c3         ; $f0b9: d0 08     
            lda $26,x          ; $f0bb: b5 26     
            bne __f0c3         ; $f0bd: d0 04     
            lda $27,x          ; $f0bf: b5 27     
            beq __f0c9         ; $f0c1: f0 06     
__f0c3:     bcs __f0e5         ; $f0c3: b0 20     
            lda $24,x          ; $f0c5: b5 24     
            eor #$ff           ; $f0c7: 49 ff     
__f0c9:     sta $24,x          ; $f0c9: 95 24     
            sec                ; $f0cb: 38        
            lda #$00           ; $f0cc: a9 00     
            sta $03            ; $f0ce: 85 03     
            lda $27,x          ; $f0d0: b5 27     
            jsr __f107         ; $f0d2: 20 07 f1  
            sta $27,x          ; $f0d5: 95 27     
            lda $26,x          ; $f0d7: b5 26     
            jsr __f107         ; $f0d9: 20 07 f1  
            sta $26,x          ; $f0dc: 95 26     
            lda $25,x          ; $f0de: b5 25     
            jsr __f107         ; $f0e0: 20 07 f1  
            sta $25,x          ; $f0e3: 95 25     
__f0e5:     rts                ; $f0e5: 60        

;-------------------------------------------------------------------------------
__f0e6:     jsr __f129         ; $f0e6: 20 29 f1  
            adc $01            ; $f0e9: 65 01     
            cmp #$0a           ; $f0eb: c9 0a     
            bcc __f0f1         ; $f0ed: 90 02     
            adc #$05           ; $f0ef: 69 05     
__f0f1:     clc                ; $f0f1: 18        
            adc $02            ; $f0f2: 65 02     
            sta $02            ; $f0f4: 85 02     
            lda $03            ; $f0f6: a5 03     
            and #$f0           ; $f0f8: 29 f0     
            adc $02            ; $f0fa: 65 02     
            bcc __f102         ; $f0fc: 90 04     
__f0fe:     adc #$5f           ; $f0fe: 69 5f     
            sec                ; $f100: 38        
            rts                ; $f101: 60        

;-------------------------------------------------------------------------------
__f102:     cmp #$a0           ; $f102: c9 a0     
            bcs __f0fe         ; $f104: b0 f8     
            rts                ; $f106: 60        

;-------------------------------------------------------------------------------
__f107:     jsr __f129         ; $f107: 20 29 f1  
            sbc $01            ; $f10a: e5 01     
            sta $01            ; $f10c: 85 01     
            bcs __f11a         ; $f10e: b0 0a     
            adc #$0a           ; $f110: 69 0a     
            sta $01            ; $f112: 85 01     
            lda $02            ; $f114: a5 02     
            adc #$0f           ; $f116: 69 0f     
            sta $02            ; $f118: 85 02     
__f11a:     lda $03            ; $f11a: a5 03     
            and #$f0           ; $f11c: 29 f0     
            sec                ; $f11e: 38        
            sbc $02            ; $f11f: e5 02     
            bcs __f126         ; $f121: b0 03     
            adc #$a0           ; $f123: 69 a0     
            clc                ; $f125: 18        
__f126:     ora $01            ; $f126: 05 01     
            rts                ; $f128: 60        

;-------------------------------------------------------------------------------
__f129:     pha                ; $f129: 48        
            and #$0f           ; $f12a: 29 0f     
            sta $01            ; $f12c: 85 01     
            pla                ; $f12e: 68        
            and #$f0           ; $f12f: 29 f0     
            sta $02            ; $f131: 85 02     
            lda $03            ; $f133: a5 03     
            and #$0f           ; $f135: 29 0f     
            rts                ; $f137: 60        

;-------------------------------------------------------------------------------
            lda #$00           ; $f138: a9 00     
            sta $04            ; $f13a: 85 04     
            clc                ; $f13c: 18        
            lda $00            ; $f13d: a5 00     
            adc #$10           ; $f13f: 69 10     
            and #$f0           ; $f141: 29 f0     
            lsr                ; $f143: 4a        
            lsr                ; $f144: 4a        
            tay                ; $f145: a8        
            lda $00            ; $f146: a5 00     
            and #$07           ; $f148: 29 07     
            asl                ; $f14a: 0a        
            asl                ; $f14b: 0a        
            tax                ; $f14c: aa        
__f14d:     lda $0020,y        ; $f14d: b9 20 00  
            beq __f1a3         ; $f150: f0 51     
            lda $24,x          ; $f152: b5 24     
            beq __f17c         ; $f154: f0 26     
__f156:     sec                ; $f156: 38        
            lda $0023,y        ; $f157: b9 23 00  
            sta $03            ; $f15a: 85 03     
            lda $27,x          ; $f15c: b5 27     
            jsr __f107         ; $f15e: 20 07 f1  
            lda $0022,y        ; $f161: b9 22 00  
            sta $03            ; $f164: 85 03     
            lda $26,x          ; $f166: b5 26     
            jsr __f107         ; $f168: 20 07 f1  
            lda $0021,y        ; $f16b: b9 21 00  
            sta $03            ; $f16e: 85 03     
            lda $25,x          ; $f170: b5 25     
            jsr __f107         ; $f172: 20 07 f1  
            bcs __f1a7         ; $f175: b0 30     
            lda $0020,y        ; $f177: b9 20 00  
            bne __f1ac         ; $f17a: d0 30     
__f17c:     lda #$ff           ; $f17c: a9 ff     
            sta $04            ; $f17e: 85 04     
            sec                ; $f180: 38        
__f181:     tya                ; $f181: 98        
            bne __f1a2         ; $f182: d0 1e     
            bcc __f196         ; $f184: 90 10     
            lda $24,x          ; $f186: b5 24     
            sta $20            ; $f188: 85 20     
            lda $25,x          ; $f18a: b5 25     
            sta $21            ; $f18c: 85 21     
            lda $26,x          ; $f18e: b5 26     
            sta $22            ; $f190: 85 22     
            lda $27,x          ; $f192: b5 27     
            sta $23            ; $f194: 85 23     
__f196:     lda $00            ; $f196: a5 00     
            and #$08           ; $f198: 29 08     
            beq __f1a2         ; $f19a: f0 06     
            dex                ; $f19c: ca        
            dex                ; $f19d: ca        
            dex                ; $f19e: ca        
            dex                ; $f19f: ca        
            bpl __f14d         ; $f1a0: 10 ab     
__f1a2:     rts                ; $f1a2: 60        

;-------------------------------------------------------------------------------
__f1a3:     lda $24,x          ; $f1a3: b5 24     
            beq __f156         ; $f1a5: f0 af     
__f1a7:     lda $0020,y        ; $f1a7: b9 20 00  
            bne __f17c         ; $f1aa: d0 d0     
__f1ac:     clc                ; $f1ac: 18        
            bcc __f181         ; $f1ad: 90 d2     
__f1af:     ldx #$03           ; $f1af: a2 03     
            dec $34            ; $f1b1: c6 34     
            bpl __f1bb         ; $f1b3: 10 06     
            lda #$0a           ; $f1b5: a9 0a     
            sta $34            ; $f1b7: 85 34     
            ldx #$08           ; $f1b9: a2 08     
__f1bb:     lda $35,x          ; $f1bb: b5 35     
            beq __f1c1         ; $f1bd: f0 02     
            dec $35,x          ; $f1bf: d6 35     
__f1c1:     dex                ; $f1c1: ca        
            bpl __f1bb         ; $f1c2: 10 f7     
            rts                ; $f1c4: 60        

;-------------------------------------------------------------------------------
__f1c5:     txa                ; $f1c5: 8a        
            pha                ; $f1c6: 48        
            tya                ; $f1c7: 98        
            pha                ; $f1c8: 48        
            ldx $0330          ; $f1c9: ae 30 03  
            lda $01            ; $f1cc: a5 01     
            sta $0331,x        ; $f1ce: 9d 31 03  
            jsr __f02c         ; $f1d1: 20 2c f0  
            lda $00            ; $f1d4: a5 00     
            sta $0331,x        ; $f1d6: 9d 31 03  
            jsr __f02c         ; $f1d9: 20 2c f0  
            lda #$01           ; $f1dc: a9 01     
            sta $0331,x        ; $f1de: 9d 31 03  
            jsr __f02c         ; $f1e1: 20 2c f0  
            tya                ; $f1e4: 98        
            sta $0331,x        ; $f1e5: 9d 31 03  
            jsr __f02c         ; $f1e8: 20 2c f0  
            lda #$00           ; $f1eb: a9 00     
            sta $0331,x        ; $f1ed: 9d 31 03  
            stx $0330          ; $f1f0: 8e 30 03  
            pla                ; $f1f3: 68        
            tay                ; $f1f4: a8        
            pla                ; $f1f5: 68        
            tax                ; $f1f6: aa        
            rts                ; $f1f7: 60        

;-------------------------------------------------------------------------------
__f1f8:     lda $18            ; $f1f8: a5 18     
            and #$02           ; $f1fa: 29 02     
            sta $00            ; $f1fc: 85 00     
            lda $19            ; $f1fe: a5 19     
            and #$02           ; $f200: 29 02     
            eor $00            ; $f202: 45 00     
            clc                ; $f204: 18        
            beq __f208         ; $f205: f0 01     
            sec                ; $f207: 38        
__f208:     ror $18            ; $f208: 66 18     
            ror $19            ; $f20a: 66 19     
            ror $1a            ; $f20c: 66 1a     
            ror $1b            ; $f20e: 66 1b     
            ror $1c            ; $f210: 66 1c     
            ror $1d            ; $f212: 66 1d     
            ror $1e            ; $f214: 66 1e     
            ror $1f            ; $f216: 66 1f     
            rts                ; $f218: 60        

;-------------------------------------------------------------------------------
__f219:     lda #$01           ; $f219: a9 01     
            sta JOY1           ; $f21b: 8d 16 40  
            ldx #$00           ; $f21e: a2 00     
            lda #$00           ; $f220: a9 00     
            sta JOY1           ; $f222: 8d 16 40  
            jsr __f22d         ; $f225: 20 2d f2  
            inx                ; $f228: e8        
            jsr __f22d         ; $f229: 20 2d f2  
            rts                ; $f22c: 60        

;-------------------------------------------------------------------------------
__f22d:     ldy #$08           ; $f22d: a0 08     
__f22f:     pha                ; $f22f: 48        
            lda JOY1,x         ; $f230: bd 16 40  
            sta $00            ; $f233: 85 00     
            lsr                ; $f235: 4a        
            ora $00            ; $f236: 05 00     
            lsr                ; $f238: 4a        
            pla                ; $f239: 68        
            rol                ; $f23a: 2a        
            dey                ; $f23b: 88        
            bne __f22f         ; $f23c: d0 f1     
            stx $00            ; $f23e: 86 00     
            asl $00            ; $f240: 06 00     
            ldx $00            ; $f242: a6 00     
            ldy $14,x          ; $f244: b4 14     
            sty $00            ; $f246: 84 00     
            sta $14,x          ; $f248: 95 14     
            and #$ff           ; $f24a: 29 ff     
            bpl __f254         ; $f24c: 10 06     
            bit $00            ; $f24e: 24 00     
            bpl __f254         ; $f250: 10 02     
            and #$7f           ; $f252: 29 7f     
__f254:     ldy $15,x          ; $f254: b4 15     
            sta $15,x          ; $f256: 95 15     
            tya                ; $f258: 98        
            and #$0f           ; $f259: 29 0f     
            and $15,x          ; $f25b: 35 15     
            beq __f265         ; $f25d: f0 06     
            ora #$f0           ; $f25f: 09 f0     
            and $15,x          ; $f261: 35 15     
            sta $15,x          ; $f263: 95 15     
__f265:     rts                ; $f265: 60        

;-------------------------------------------------------------------------------
            .hex 3f 00 12 0f   ; $f266: 3f 00 12 0f   Data
            .hex 37 02 21 0f   ; $f26a: 37 02 21 0f   Data
            .hex 30 30 30 0f   ; $f26e: 30 30 30 0f   Data
            .hex 24 24 24 0f   ; $f272: 24 24 24 0f   Data
            .hex 37 12 11 0f   ; $f276: 37 12 11 0f   Data
            .hex 37 23 cc 43   ; $f27a: 37 23 cc 43   Data
            .hex ff 23 d4 43   ; $f27e: ff 23 d4 43   Data
            .hex ff 23 d8 58   ; $f282: ff 23 d8 58   Data
            .hex aa 23 f0 48   ; $f286: aa 23 f0 48   Data
            .hex 55 20 84 16   ; $f28a: 55 20 84 16   Data
            .hex cc d2 d6 d2   ; $f28e: cc d2 d6 d2   Data
            .hex db cf cf d4   ; $f292: db cf cf d4   Data
            .hex cc d8 cf cf   ; $f296: cc d8 cf cf   Data
            .hex 24 24 e7 ea   ; $f29a: 24 24 e7 ea   Data
            .hex ed f0 e5 f3   ; $f29e: ed f0 e5 f3   Data
            .hex f3 f8 20 a4   ; $f2a2: f3 f8 20 a4   Data
            .hex 0c cd cd cd   ; $f2a6: 0c cd cd cd   Data
            .hex cd dc df d0   ; $f2aa: cd dc df d0   Data
            .hex d5 d0 d9 dd   ; $f2ae: d5 d0 d9 dd   Data
            .hex e1 20 c4 0c   ; $f2b2: e1 20 c4 0c   Data
            .hex ce d3 d7 d3   ; $f2b6: ce d3 d7 d3   Data
            .hex d1 e0 d1 d1   ; $f2ba: d1 e0 d1 d1   Data
            .hex ce da de e2   ; $f2be: ce da de e2   Data
            .hex 21 08 0b cf   ; $f2c2: 21 08 0b cf   Data
            .hex d4 d6 d2 db   ; $f2c6: d4 d6 d2 db   Data
            .hex cf d6 cb 24   ; $f2ca: cf d6 cb 24   Data
            .hex e5 e8 21 28   ; $f2ce: e5 e8 21 28   Data
            .hex 0b d0 d5 cd   ; $f2d2: 0b d0 d5 cd   Data
            .hex cd dc df cd   ; $f2d6: cd dc df cd   Data
            .hex e3 24 eb e9   ; $f2da: e3 24 eb e9   Data
            .hex 21 48 13 d1   ; $f2de: 21 48 13 d1   Data
            .hex d1 d7 d3 d1   ; $f2e2: d1 d7 d3 d1   Data
            .hex e0 d7 e4 24   ; $f2e6: e0 d7 e4 24   Data
            .hex e6 ec ec ef   ; $f2ea: e6 ec ec ef   Data
            .hex 24 e6 ef f7   ; $f2ee: 24 e6 ef f7   Data
            .hex fb ef 20 b3   ; $f2f2: fb ef 20 b3   Data
            .hex c5 eb 20 b4   ; $f2f6: c5 eb 20 b4   Data
            .hex c5 ee 20 b6   ; $f2fa: c5 ee 20 b6   Data
            .hex c5 eb 20 b7   ; $f2fe: c5 eb 20 b7   Data
            .hex 85 f1 f2 c6   ; $f302: 85 f1 f2 c6   Data
            .hex c6 ee 20 b8   ; $f306: c6 ee 20 b8   Data
            .hex 85 f4 f5 c6   ; $f30a: 85 f4 f5 c6   Data
            .hex c6 f6 20 b9   ; $f30e: c6 f6 20 b9   Data
            .hex 85 ee ee ef   ; $f312: 85 ee ee ef   Data
            .hex f9 fa 21 3a   ; $f316: f9 fa 21 3a   Data
            .hex 01 f8         ; $f31a: 01 f8         Data

            ; 1 PLAYER GAME A
            .hex 21 c9
            .hex 0e
            .hex 01 24 15 1e 0d 0a 17 1d 18
            .hex 24 0a 24 24 24

            ; 1 PLAYER GAME B
            .hex 22 09
            .hex 0e
            .hex 01 24 15 1e 0d 0a 17 1d 18
            .hex 24 0b 24 24 24

            ; 2 PLAYER GAME A
            .hex 22 49
            .hex 0e
            .hex 02 24 15 1e 0d 0a 17 1d 18 13
            .hex 24 0a 24 24

            ; 2 PLAYER GAME B
            .hex 22 89
            .hex 0e
            .hex 02 24 15 1e 0d 0a 17 1d 18 13
            .hex 24 0b 24 24

            ; (c)1982 NINTENDO CO., LTD.
            .hex 23 05
            .hex 16
            .hex fe 01 09 08 02 24
            .hex 17 12 17 1d 0e 17 0d 18 24 0c 18 c7 15 1d 0d c7

            ; MADE IN JAPAN
            .hex 23 47
            .hex 11
            .hex 0f 0a 1b 12 1d 0a 24 0e 17 24
            .hex 13 0a 19 0a 17 12 18

            .hex 00

            .hex 3f 00 20 0f   ; $f38e: 3f 00 20 0f   Data
            .hex 2a 17 37 0f   ; $f392: 2a 17 37 0f   Data
            .hex 30 2a 16 0f   ; $f396: 30 2a 16 0f   Data
            .hex 30 36 06 0f   ; $f39a: 30 36 06 0f   Data
            .hex 12 37 16 0f   ; $f39e: 12 37 16 0f   Data
            .hex 30 2a 16 0f   ; $f3a2: 30 2a 16 0f   Data
            .hex 30 06 36 0f   ; $f3a6: 30 06 36 0f   Data
            .hex 2a 17 37 0f   ; $f3aa: 2a 17 37 0f   Data
            .hex 30 30 12 23   ; $f3ae: 30 30 12 23   Data
            .hex c0 48 55 23   ; $f3b2: c0 48 55 23   Data
            .hex c8 04 aa aa   ; $f3b6: c8 04 aa aa   Data
            .hex 30 0c 23 cd   ; $f3ba: 30 0c 23 cd   Data
            .hex 43 05 23 d3   ; $f3be: 43 05 23 d3   Data
            .hex 01 10 23 f8   ; $f3c2: 01 10 23 f8   Data
            .hex 48 ff 20 a9   ; $f3c6: 48 ff 20 a9   Data
            .hex 43 5e 20 c8   ; $f3ca: 43 5e 20 c8   Data
            .hex 02 48 4a 20   ; $f3ce: 02 48 4a 20   Data
            .hex e8 02 49 4b   ; $f3d2: e8 02 49 4b   Data
            .hex 20 8d 82 5c   ; $f3d6: 20 8d 82 5c   Data
            .hex 5d 20 93 01   ; $f3da: 5d 20 93 01   Data
            .hex 5d 21 00 53   ; $f3de: 5d 21 00 53   Data
            .hex 5e 21 32 48   ; $f3e2: 5e 21 32 48   Data
            .hex 5e 21 22 90   ; $f3e6: 5e 21 22 90   Data
            .hex 5c 5c 5c 5d   ; $f3ea: 5c 5c 5c 5d   Data
            .hex 5c 5c 5c 5c   ; $f3ee: 5c 5c 5c 5c   Data
            .hex 5c 5c 5d 5c   ; $f3f2: 5c 5c 5d 5c   Data
            .hex 5c 5c 5c 5d   ; $f3f6: 5c 5c 5c 5d   Data
            .hex 21 25 8f 5c   ; $f3fa: 21 25 8f 5c   Data
            .hex 5c 5c 5c 5c   ; $f3fe: 5c 5c 5c 5c   Data
            .hex 5c 5c 5d 5c   ; $f402: 5c 5c 5d 5c   Data
            .hex 5c 5c 5c 5c   ; $f406: 5c 5c 5c 5c   Data
            .hex 5c 5d 21 e8   ; $f40a: 5c 5d 21 e8   Data
            .hex 8a 5c 5c 5c   ; $f40e: 8a 5c 5c 5c   Data
            .hex 5d 5c 5c 5c   ; $f412: 5d 5c 5c 5c   Data
            .hex 5c 5c 5d 21   ; $f416: 5c 5c 5d 21   Data
            .hex 2d c7 5c 22   ; $f41a: 2d c7 5c 22   Data
            .hex 0d 86 5d 5c   ; $f41e: 0d 86 5d 5c   Data
            .hex 5c 5c 5c 5d   ; $f422: 5c 5c 5c 5d   Data
            .hex 21 31 89 5c   ; $f426: 21 31 89 5c   Data
            .hex 5c 5c 5c 5d   ; $f42a: 5c 5c 5c 5d   Data
            .hex 5c 5c 5c 5d   ; $f42e: 5c 5c 5c 5d   Data
            .hex 21 54 8c 5c   ; $f432: 21 54 8c 5c   Data
            .hex 5c 5c 5c 5d   ; $f436: 5c 5c 5c 5d   Data
            .hex 5c 5c 5c 5d   ; $f43a: 5c 5c 5c 5d   Data
            .hex 5c 5c 5d 21   ; $f43e: 5c 5c 5d 21   Data
            .hex 57 8a 5c 5d   ; $f442: 57 8a 5c 5d   Data
            .hex 5c 5c 5c 5c   ; $f446: 5c 5c 5c 5c   Data
            .hex 5c 5d 5c 5d   ; $f44a: 5c 5d 5c 5d   Data
            .hex 20 da 90 5c   ; $f44e: 20 da 90 5c   Data
            .hex 5c 5c 5c 5c   ; $f452: 5c 5c 5c 5c   Data
            .hex 5d 5c 5c 5c   ; $f456: 5d 5c 5c 5c   Data
            .hex 5c 5d 5c 5c   ; $f45a: 5c 5d 5c 5c   Data
            .hex 5c 5c 5d 20   ; $f45e: 5c 5c 5d 20   Data
            .hex dd ca 5c 22   ; $f462: dd ca 5c 22   Data
            .hex 1d 86 5d 5c   ; $f466: 1d 86 5d 5c   Data
            .hex 5c 5c 5c 5d   ; $f46a: 5c 5c 5c 5d   Data
            .hex 21 c6 44 5e   ; $f46e: 21 c6 44 5e   Data
            .hex 22 38 48 5e   ; $f472: 22 38 48 5e   Data
            .hex 22 66 46 5e   ; $f476: 22 66 46 5e   Data
            .hex 23 1a 04 5f   ; $f47a: 23 1a 04 5f   Data
            .hex 60 60 61 23   ; $f47e: 60 60 61 23   Data
            .hex 2c 04 5f 60   ; $f482: 2c 04 5f 60   Data
            .hex 60 61 23 35   ; $f486: 60 61 23 35   Data
            .hex 08 5f 60 60   ; $f48a: 08 5f 60 60   Data
            .hex 61 24 24 62   ; $f48e: 61 24 24 62   Data
            .hex 62 23 4d 42   ; $f492: 62 23 4d 42   Data
            .hex 62 23 51 03   ; $f496: 62 23 51 03   Data
            .hex 5f 60 61 23   ; $f49a: 5f 60 61 23   Data
            .hex 56 42 62 23   ; $f49e: 56 42 62 23   Data
            .hex 5b 42 62 23   ; $f4a2: 5b 42 62 23   Data
            .hex 60 48 60 23   ; $f4a6: 60 48 60 23   Data
            .hex 68 01 61 23   ; $f4aa: 68 01 61 23   Data
            .hex 6d 42 62 23   ; $f4ae: 6d 42 62 23   Data
            .hex 72 01 62 23   ; $f4b2: 72 01 62 23   Data
            .hex 76 42 62 23   ; $f4b6: 76 42 62 23   Data
            .hex 7b 42 62 23   ; $f4ba: 7b 42 62 23   Data
            .hex 80 60 63 23   ; $f4be: 80 60 63 23   Data
            .hex a0 60 64 21   ; $f4c2: a0 60 64 21   Data
            .hex 44 82 58 59   ; $f4c6: 44 82 58 59   Data
            .hex 21 45 82 5a   ; $f4ca: 21 45 82 5a   Data
            .hex 5b 21 4c 82   ; $f4ce: 5b 21 4c 82   Data
            .hex 50 51 21 4d   ; $f4d2: 50 51 21 4d   Data
            .hex 82 96 97 21   ; $f4d6: 82 96 97 21   Data
            .hex 93 82 58 59   ; $f4da: 93 82 58 59   Data
            .hex 21 94 82 5a   ; $f4de: 21 94 82 5a   Data
            .hex 5b 22 51 82   ; $f4e2: 5b 22 51 82   Data
            .hex 54 55 22 52   ; $f4e6: 54 55 22 52   Data
            .hex 82 56 57 00   ; $f4ea: 82 56 57 00   Data
            .hex 3f 00 04 0f   ; $f4ee: 3f 00 04 0f   Data
            .hex 21 12 37 3f   ; $f4f2: 21 12 37 3f   Data
            .hex 18 08 0f 30   ; $f4f6: 18 08 0f 30   Data
            .hex 27 13 0f 30   ; $f4fa: 27 13 0f 30   Data
            .hex 2c 12 23 c0   ; $f4fe: 2c 12 23 c0   Data
            .hex 48 55 23 c9   ; $f502: 48 55 23 c9   Data
            .hex 07 ff ff aa   ; $f506: 07 ff ff aa   Data
            .hex aa f5 05 05   ; $f50a: aa f5 05 05   Data
            .hex 23 da 04 10   ; $f50e: 23 da 04 10   Data
            .hex 00 00 40 20   ; $f512: 00 00 40 20   Data
            .hex 63 01 fd 20   ; $f516: 63 01 fd 20   Data
            .hex 6b 03 8d 8e   ; $f51a: 6b 03 8d 8e   Data
            .hex 8f 20 75 02   ; $f51e: 8f 20 75 02   Data
            .hex fc fd 20 8c   ; $f522: fc fd 20 8c   Data
            .hex 12 80 30 34   ; $f526: 12 80 30 34   Data
            .hex 38 3c 40 44   ; $f52a: 38 3c 40 44   Data
            .hex 7f 25 13 2a   ; $f52e: 7f 25 13 2a   Data
            .hex 26 27 28 29   ; $f532: 26 27 28 29   Data
            .hex 2a 15 2d 20   ; $f536: 2a 15 2d 20   Data
            .hex ab 13 7d 24   ; $f53a: ab 13 7d 24   Data
            .hex 31 35 39 3d   ; $f53e: 31 35 39 3d   Data
            .hex 41 45 24 2b   ; $f542: 41 45 24 2b   Data
            .hex 24 2c 24 24   ; $f546: 24 2c 24 24   Data
            .hex 24 24 2c 24   ; $f54a: 24 24 2c 24   Data
            .hex 2f 20 ca 0c   ; $f54e: 2f 20 ca 0c   Data
            .hex 7d 24 80 32   ; $f552: 7d 24 80 32   Data
            .hex 36 3a 3e 42   ; $f556: 36 3a 3e 42   Data
            .hex 46 7f 24 7e   ; $f55a: 46 7f 24 7e   Data
            .hex 20 e9 0e 68   ; $f55e: 20 e9 0e 68   Data
            .hex 24 68 24 33   ; $f562: 24 68 24 33   Data
            .hex 37 3b 3f 43   ; $f566: 37 3b 3f 43   Data
            .hex 47 24 68 24   ; $f56a: 47 24 68 24   Data
            .hex 68 20 c4 02   ; $f56e: 68 20 c4 02   Data
            .hex 48 4a 20 e4   ; $f572: 48 4a 20 e4   Data
            .hex 02 49 4b 21   ; $f576: 02 49 4b 21   Data
            .hex 02 1c 69 69   ; $f57a: 02 1c 69 69   Data
            .hex 69 6b 69 69   ; $f57e: 69 6b 69 69   Data
            .hex 69 69 69 6b   ; $f582: 69 69 69 6b   Data
            .hex 69 69 6b 69   ; $f586: 69 69 6b 69   Data
            .hex 69 6b 69 69   ; $f58a: 69 6b 69 69   Data
            .hex 6b 69 69 69   ; $f58e: 6b 69 69 69   Data
            .hex 69 69 6b 69   ; $f592: 69 69 6b 69   Data
            .hex 69 69 21 22   ; $f596: 69 69 21 22   Data
            .hex 1c 6a 6a 6a   ; $f59a: 1c 6a 6a 6a   Data
            .hex 6c 6a 6a 6a   ; $f59e: 6c 6a 6a 6a   Data
            .hex 6a 6a 6c 6a   ; $f5a2: 6a 6a 6c 6a   Data
            .hex 6a 6c 6a 6a   ; $f5a6: 6a 6c 6a 6a   Data
            .hex 6c 6a 6a 6c   ; $f5aa: 6c 6a 6a 6c   Data
            .hex 6a 6a 6a 6a   ; $f5ae: 6a 6a 6a 6a   Data
            .hex 6a 6c 6a 6a   ; $f5b2: 6a 6c 6a 6a   Data
            .hex 6a 21 42 d1   ; $f5b6: 6a 21 42 d1   Data
            .hex 67 21 5d d1   ; $f5ba: 67 21 5d d1   Data
            .hex 67 21 45 cf   ; $f5be: 67 21 45 cf   Data
            .hex 65 21 48 cf   ; $f5c2: 65 21 48 cf   Data
            .hex 65 21 4b cf   ; $f5c6: 65 21 4b cf   Data
            .hex 65 21 4e cf   ; $f5ca: 65 21 4e cf   Data
            .hex 65 21 51 cf   ; $f5ce: 65 21 51 cf   Data
            .hex 65 21 54 cf   ; $f5d2: 65 21 54 cf   Data
            .hex 65 21 57 cf   ; $f5d6: 65 21 57 cf   Data
            .hex 65 21 5a cf   ; $f5da: 65 21 5a cf   Data
            .hex 65 23 05 16   ; $f5de: 65 23 05 16   Data
            .hex 66 24 24 66   ; $f5e2: 66 24 24 66   Data
            .hex 24 24 66 24   ; $f5e6: 24 24 66 24   Data
            .hex 24 66 24 24   ; $f5ea: 24 66 24 24   Data
            .hex 66 24 24 66   ; $f5ee: 66 24 24 66   Data
            .hex 24 24 66 24   ; $f5f2: 24 24 66 24   Data
            .hex 24 66 23 60   ; $f5f6: 24 66 23 60   Data
            .hex 60 69 21 c8   ; $f5fa: 60 69 21 c8   Data
            .hex 02 50 52 21   ; $f5fe: 02 50 52 21   Data
            .hex e8 02 51 53   ; $f602: e8 02 51 53   Data
            .hex 21 d6 02 50   ; $f606: 21 d6 02 50   Data
            .hex 52 21 f6 02   ; $f60a: 52 21 f6 02   Data
            .hex 51 53 22 c4   ; $f60e: 51 53 22 c4   Data
            .hex 03 6d 6f 71   ; $f612: 03 6d 6f 71   Data
            .hex 22 e4 03 6e   ; $f616: 22 e4 03 6e   Data
            .hex 70 72 22 d9   ; $f61a: 70 72 22 d9   Data
            .hex 03 6d 6f 71   ; $f61e: 03 6d 6f 71   Data
            .hex 22 f9 03 6e   ; $f622: 22 f9 03 6e   Data
            .hex 70 72 22 ca   ; $f626: 70 72 22 ca   Data
            .hex 0c 6d 6f 71   ; $f62a: 0c 6d 6f 71   Data
            .hex 6d 6f 71 6d   ; $f62e: 6d 6f 71 6d   Data
            .hex 6f 71 6d 6f   ; $f632: 6f 71 6d 6f   Data
            .hex 71 22 ea 0c   ; $f636: 71 22 ea 0c   Data
            .hex 6e 70 72 6e   ; $f63a: 6e 70 72 6e   Data
            .hex 70 72 6e 70   ; $f63e: 70 72 6e 70   Data
            .hex 72 6e 70 72   ; $f642: 72 6e 70 72   Data
            .hex 00 3f 00 04   ; $f646: 00 3f 00 04   Data
            .hex 0f 30 13 22   ; $f64a: 0f 30 13 22   Data
            .hex 3f 18 08 0f   ; $f64e: 3f 18 08 0f   Data
            .hex 30 27 15 0f   ; $f652: 30 27 15 0f   Data
            .hex 30 2c 02 23   ; $f656: 30 2c 02 23   Data
            .hex c0 48 55 23   ; $f65a: c0 48 55 23   Data
            .hex c8 08 aa aa   ; $f65e: c8 08 aa aa   Data
            .hex f0 0c 00 05   ; $f662: f0 0c 00 05   Data
            .hex 05 05 23 d3   ; $f666: 05 05 23 d3   Data
            .hex 01 40 23 e4   ; $f66a: 01 40 23 e4   Data
            .hex 01 04 23 eb   ; $f66e: 01 04 23 eb   Data
            .hex 01 01 20 8d   ; $f672: 01 01 20 8d   Data
            .hex c2 7a 20 a9   ; $f676: c2 7a 20 a9   Data
            .hex 03 75 75 77   ; $f67a: 03 75 75 77   Data
            .hex 20 c8 03 98   ; $f67e: 20 c8 03 98   Data
            .hex 9a 81 20 e8   ; $f682: 9a 81 20 e8   Data
            .hex 04 99 9b 82   ; $f686: 04 99 9b 82   Data
            .hex 83 21 03 55   ; $f68a: 83 21 03 55   Data
            .hex 75 21 23 55   ; $f68e: 75 21 23 55   Data
            .hex 76 21 02 82   ; $f692: 76 21 02 82   Data
            .hex 73 74 21 05   ; $f696: 73 74 21 05   Data
            .hex 03 77 24 73   ; $f69a: 03 77 24 73   Data
            .hex 21 25 03 78   ; $f69e: 21 25 03 78   Data
            .hex 24 74 21 18   ; $f6a2: 24 74 21 18   Data
            .hex 82 77 78 21   ; $f6a6: 82 77 78 21   Data
            .hex 28 8c 7b 7c   ; $f6aa: 28 8c 7b 7c   Data
            .hex 7c 7c 7c 75   ; $f6ae: 7c 7c 7c 75   Data
            .hex 7b 7c 7c 7c   ; $f6b2: 7b 7c 7c 7c   Data
            .hex 75 7b 21 2c   ; $f6b6: 75 7b 21 2c   Data
            .hex 85 7b 7c 7c   ; $f6ba: 85 7b 7c 7c   Data
            .hex 7c 7c 21 33   ; $f6be: 7c 7c 21 33   Data
            .hex 85 7b 7c 7c   ; $f6c2: 85 7b 7c 7c   Data
            .hex 7c 7c 21 37   ; $f6c6: 7c 7c 21 37   Data
            .hex 85 7b 7c 7c   ; $f6ca: 85 7b 7c 7c   Data
            .hex 7c 7c 21 42   ; $f6ce: 7c 7c 21 42   Data
            .hex cf 8b 21 45   ; $f6d2: cf 8b 21 45   Data
            .hex cf 7a 20 da   ; $f6d6: cf 7a 20 da   Data
            .hex d3 8b 20 dd   ; $f6da: d3 8b 20 dd   Data
            .hex d3 7a 21 c8   ; $f6de: d3 7a 21 c8   Data
            .hex 50 75 21 d8   ; $f6e2: 50 75 21 d8   Data
            .hex 06 77 24 73   ; $f6e6: 06 77 24 73   Data
            .hex 75 75 77 21   ; $f6ea: 75 75 77 21   Data
            .hex f7 07 7b 78   ; $f6ee: f7 07 7b 78   Data
            .hex 24 74 76 76   ; $f6f2: 24 74 76 76   Data
            .hex 78 21 c7 82   ; $f6f6: 78 21 c7 82   Data
            .hex 73 74 21 e9   ; $f6fa: 73 74 21 e9   Data
            .hex 4e 79 22 63   ; $f6fe: 4e 79 22 63   Data
            .hex 55 75 22 62   ; $f702: 55 75 22 62   Data
            .hex 82 73 74 22   ; $f706: 82 73 74 22   Data
            .hex 83 05 76 76   ; $f70a: 83 05 76 76   Data
            .hex 78 24 74 22   ; $f70e: 78 24 74 22   Data
            .hex 65 03 77 24   ; $f712: 65 03 77 24   Data
            .hex 73 22 89 4e   ; $f716: 73 22 89 4e   Data
            .hex 79 22 78 82   ; $f71a: 79 22 78 82   Data
            .hex 77 78 22 97   ; $f71e: 77 78 22 97   Data
            .hex 86 7b 7c 7c   ; $f722: 86 7b 7c 7c   Data
            .hex 7c 75 7b 23   ; $f726: 7c 75 7b 23   Data
            .hex 07 82 73 74   ; $f72a: 07 82 73 74   Data
            .hex 23 28 83 7b   ; $f72e: 23 28 83 7b   Data
            .hex 7c 77 23 08   ; $f732: 7c 77 23 08   Data
            .hex 50 75 23 29   ; $f736: 50 75 23 29   Data
            .hex 4e 79 23 37   ; $f73a: 4e 79 23 37   Data
            .hex 01 7b 23 18   ; $f73e: 01 7b 23 18   Data
            .hex 82 77 78 23   ; $f742: 82 77 78 23   Data
            .hex 62 01 73 23   ; $f746: 62 01 73 23   Data
            .hex 63 45 75 21   ; $f74a: 63 45 75 21   Data
            .hex 4e 02 50 52   ; $f74e: 4e 02 50 52   Data
            .hex 21 6e 02 51   ; $f752: 21 6e 02 51   Data
            .hex 53 22 12 02   ; $f756: 53 22 12 02   Data
            .hex 50 52 22 32   ; $f75a: 50 52 22 32   Data
            .hex 02 51 53 22   ; $f75e: 02 51 53 22   Data
            .hex 8c 02 50 52   ; $f762: 8c 02 50 52   Data
            .hex 22 ac 02 51   ; $f766: 22 ac 02 51   Data
            .hex 53 00 3f 00   ; $f76a: 53 00 3f 00   Data
            .hex 04 0f 2a 17   ; $f76e: 04 0f 2a 17   Data
            .hex 37 3f 18 08   ; $f772: 37 3f 18 08   Data
            .hex 0f 2a 27 38   ; $f776: 0f 2a 27 38   Data
            .hex 0f 30 13 37   ; $f77a: 0f 30 13 37   Data
            .hex 23 c0 48 55   ; $f77e: 23 c0 48 55   Data
            .hex 23 c8 08 aa   ; $f782: 23 c8 08 aa   Data
            .hex aa 30 0c 00   ; $f786: aa 30 0c 00   Data
            .hex 05 05 05 23   ; $f78a: 05 05 05 23   Data
            .hex d2 82 40 30   ; $f78e: d2 82 40 30   Data
            .hex 23 e7 01 03   ; $f792: 23 e7 01 03   Data
            .hex 20 8d 82 65   ; $f796: 20 8d 82 65   Data
            .hex 66 20 93 01   ; $f79a: 66 20 93 01   Data
            .hex 66 20 a9 43   ; $f79e: 66 20 a9 43   Data
            .hex 5e 20 c8 02   ; $f7a2: 5e 20 c8 02   Data
            .hex 48 4a 20 e8   ; $f7a6: 48 4a 20 e8   Data
            .hex 02 49 4b 21   ; $f7aa: 02 49 4b 21   Data
            .hex 00 55 5e 21   ; $f7ae: 00 55 5e 21   Data
            .hex 17 43 5e 21   ; $f7b2: 17 43 5e 21   Data
            .hex c3 d0 62 23   ; $f7b6: c3 d0 62 23   Data
            .hex 44 c4 62 23   ; $f7ba: 44 c4 62 23   Data
            .hex 45 c4 62 22   ; $f7be: 45 c4 62 22   Data
            .hex c2 c8 62 22   ; $f7c2: c2 c8 62 22   Data
            .hex c1 c8 62 22   ; $f7c6: c1 c8 62 22   Data
            .hex c0 c8 62 23   ; $f7ca: c0 c8 62 23   Data
            .hex 4c c4 62 23   ; $f7ce: 4c c4 62 23   Data
            .hex 4d c4 62 23   ; $f7d2: 4d c4 62 23   Data
            .hex 4e c4 62 22   ; $f7d6: 4e c4 62 22   Data
            .hex 7b c7 62 22   ; $f7da: 7b c7 62 22   Data
            .hex 7c c7 62 23   ; $f7de: 7c c7 62 23   Data
            .hex 79 47 62 23   ; $f7e2: 79 47 62 23   Data
            .hex 99 47 62 23   ; $f7e6: 99 47 62 23   Data
            .hex b9 47 62 21   ; $f7ea: b9 47 62 21   Data
            .hex a2 03 5f 60   ; $f7ee: a2 03 5f 60   Data
            .hex 61 22 5a 04   ; $f7f2: 61 22 5a 04   Data
            .hex 5f 60 60 61   ; $f7f6: 5f 60 60 61   Data
            .hex 22 a0 44 60   ; $f7fa: 22 a0 44 60   Data
            .hex 22 a4 01 61   ; $f7fe: 22 a4 01 61   Data
            .hex 22 b6 04 5f   ; $f802: 22 b6 04 5f   Data
            .hex 60 60 61 23   ; $f806: 60 60 61 23   Data
            .hex 20 46 60 23   ; $f80a: 20 46 60 23   Data
            .hex 26 01 61 23   ; $f80e: 26 01 61 23   Data
            .hex 2b 05 5f 60   ; $f812: 2b 05 5f 60   Data
            .hex 60 60 61 23   ; $f816: 60 60 61 23   Data
            .hex 58 01 5f 23   ; $f81a: 58 01 5f 23   Data
            .hex 59 47 60 22   ; $f81e: 59 47 60 22   Data
            .hex 27 55 84 22   ; $f822: 27 55 84 22   Data
            .hex 1c 82 85 86   ; $f826: 1c 82 85 86   Data
            .hex 22 1d 82 87   ; $f82a: 22 1d 82 87   Data
            .hex 88 21 22 83   ; $f82e: 88 21 22 83   Data
            .hex 65 65 66 21   ; $f832: 65 65 66 21   Data
            .hex c2 c5 65 22   ; $f836: c2 c5 65 22   Data
            .hex 62 01 66 21   ; $f83a: 62 01 66 21   Data
            .hex 25 ca 65 22   ; $f83e: 25 ca 65 22   Data
            .hex 65 01 66 21   ; $f842: 65 01 66 21   Data
            .hex 28 c7 65 22   ; $f846: 28 c7 65 22   Data
            .hex 08 01 66 21   ; $f84a: 08 01 66 21   Data
            .hex 2b 85 65 94   ; $f84e: 2b 85 65 94   Data
            .hex 95 65 66 21   ; $f852: 95 65 66 21   Data
            .hex 4a 82 50 51   ; $f856: 4a 82 50 51   Data
            .hex 21 2e c5 65   ; $f85a: 21 2e c5 65   Data
            .hex 21 ce 01 66   ; $f85e: 21 ce 01 66   Data
            .hex 21 31 85 65   ; $f862: 21 31 85 65   Data
            .hex 65 65 65 66   ; $f866: 65 65 65 66   Data
            .hex 21 34 88 65   ; $f86a: 21 34 88 65   Data
            .hex 65 65 65 65   ; $f86e: 65 65 65 65   Data
            .hex 90 91 66 21   ; $f872: 90 91 66 21   Data
            .hex d3 82 58 59   ; $f876: d3 82 58 59   Data
            .hex 21 37 85 65   ; $f87a: 21 37 85 65   Data
            .hex 65 65 65 66   ; $f87e: 65 65 65 66   Data
            .hex 20 da c7 65   ; $f882: 20 da c7 65   Data
            .hex 21 ba 01 66   ; $f886: 21 ba 01 66   Data
            .hex 20 dd c7 65   ; $f88a: 20 dd c7 65   Data
            .hex 21 bd 01 66   ; $f88e: 21 bd 01 66   Data
            .hex 21 46 82 56   ; $f892: 21 46 82 56   Data
            .hex 57 21 45 82   ; $f896: 57 21 45 82   Data
            .hex 92 93 22 7a   ; $f89a: 92 93 22 7a   Data
            .hex 85 65 65 65   ; $f89e: 85 65 65 65   Data
            .hex 65 66 22 7d   ; $f8a2: 65 66 22 7d   Data
            .hex 85 65 65 65   ; $f8a6: 85 65 65 65   Data
            .hex 65 66 23 88   ; $f8aa: 65 66 23 88   Data
            .hex 02 5f 61 23   ; $f8ae: 02 5f 61 23   Data
            .hex a8 42 62 00   ; $f8b2: a8 42 62 00   Data
            .hex 20 63 01 fd   ; $f8b6: 20 63 01 fd   Data
            .hex 20 6b 03 8d   ; $f8ba: 20 6b 03 8d   Data
            .hex 8e 8f 20 75   ; $f8be: 8e 8f 20 75   Data
            .hex 02 fc fd 20   ; $f8c2: 02 fc fd 20   Data
            .hex 94 0a 25 13   ; $f8c6: 94 0a 25 13   Data
            .hex 2a 26 27 28   ; $f8ca: 2a 26 27 28   Data
            .hex 29 2a 15 2d   ; $f8ce: 29 2a 15 2d   Data
            .hex 20 b4 0a 2b   ; $f8d2: 20 b4 0a 2b   Data
            .hex 24 2c 24 24   ; $f8d6: 24 2c 24 24   Data
            .hex 24 24 2c 24   ; $f8da: 24 24 2c 24   Data
            .hex 2f 20 82 06   ; $f8de: 2f 20 82 06   Data
            .hex 30 34 38 3c   ; $f8e2: 30 34 38 3c   Data
            .hex 40 44 20 a2   ; $f8e6: 40 44 20 a2   Data
            .hex 06 31 35 39   ; $f8ea: 06 31 35 39   Data
            .hex 3d 41 45 20   ; $f8ee: 3d 41 45 20   Data
            .hex 8e 82 4c 4d   ; $f8f2: 8e 82 4c 4d   Data
            .hex 20 8f 82 4e   ; $f8f6: 20 8f 82 4e   Data
            .hex 4f 20 c2 06   ; $f8fa: 4f 20 c2 06   Data
            .hex 32 36 3a 3e   ; $f8fe: 32 36 3a 3e   Data
            .hex 42 46 20 e2   ; $f902: 42 46 20 e2   Data
            .hex 06 33 37 3b   ; $f906: 06 33 37 3b   Data
            .hex 3f 43 47 00   ; $f90a: 3f 43 47 00   Data
            .hex ff ff ff ff   ; $f90e: ff ff ff ff   Data
            .hex ff ff ff ff   ; $f912: ff ff ff ff   Data
            .hex ff ff ff ff   ; $f916: ff ff ff ff   Data
            .hex ff ff ff ff   ; $f91a: ff ff ff ff   Data
            .hex ff            ; $f91e: ff            Data

;-------------------------------------------------------------------------------
__f91f:     lda #$c0           ; $f91f: a9 c0     
            sta JOY2           ; $f921: 8d 17 40  
            jsr __fad5         ; $f924: 20 d5 fa  
            ldx #$00           ; $f927: a2 00     
            stx $ff            ; $f929: 86 ff     
            stx $fe            ; $f92b: 86 fe     
            stx $fd            ; $f92d: 86 fd     
            lda $fb            ; $f92f: a5 fb     
            cmp #$20           ; $f931: c9 20     
            bcs __f938         ; $f933: b0 03     
            stx $06b2          ; $f935: 8e b2 06  
__f938:     cmp #$80           ; $f938: c9 80     
            bcc __f93f         ; $f93a: 90 03     
            inc $06b2          ; $f93c: ee b2 06  
__f93f:     tay                ; $f93f: a8        
            lsr                ; $f940: 4a        
            lsr                ; $f941: 4a        
            lsr                ; $f942: 4a        
            lsr                ; $f943: 4a        
            lsr                ; $f944: 4a        
            sta $00            ; $f945: 85 00     
            tya                ; $f947: 98        
            ldx $06b2          ; $f948: ae b2 06  
            bne __f952         ; $f94b: d0 05     
            sec                ; $f94d: 38        
            adc $00            ; $f94e: 65 00     
            bne __f955         ; $f950: d0 03     
__f952:     clc                ; $f952: 18        
            sbc $00            ; $f953: e5 00     
__f955:     sta $fb            ; $f955: 85 fb     
            rts                ; $f957: 60        

;-------------------------------------------------------------------------------
            ldy #$7f           ; $f958: a0 7f     
__f95a:     stx SQ1_VOL        ; $f95a: 8e 00 40  
            sty SQ1_SWEEP      ; $f95d: 8c 01 40  
            rts                ; $f960: 60        

;-------------------------------------------------------------------------------
__f961:     sta $f3            ; $f961: 85 f3     
            stx $f4            ; $f963: 86 f4     
            sty $06a1          ; $f965: 8c a1 06  
            ldx #$9a           ; $f968: a2 9a     
            ldy #$08           ; $f96a: a0 08     
            stx SQ2_VOL        ; $f96c: 8e 04 40  
            sty SQ2_SWEEP      ; $f96f: 8c 05 40  
            rts                ; $f972: 60        

;-------------------------------------------------------------------------------
__f973:     sta $f5            ; $f973: 85 f5     
            stx $f6            ; $f975: 86 f6     
            sty $06c0          ; $f977: 8c c0 06  
            lda #$ff           ; $f97a: a9 ff     
            sta TRI_LINEAR     ; $f97c: 8d 08 40  
            lda #$08           ; $f97f: a9 08     
            sta $400b          ; $f981: 8d 0b 40  
            rts                ; $f984: 60        

;-------------------------------------------------------------------------------
__f985:     stx $f1            ; $f985: 86 f1     
            sty $f0            ; $f987: 84 f0     
            bne __f990         ; $f989: d0 05     
__f98b:     ldy #$7f           ; $f98b: a0 7f     
__f98d:     jsr __f95a         ; $f98d: 20 5a f9  
__f990:     ldx #$00           ; $f990: a2 00     
__f992:     tay                ; $f992: a8        
            lda __fa01,y       ; $f993: b9 01 fa  
            beq __f9a3         ; $f996: f0 0b     
            sta SQ1_LO,x       ; $f998: 9d 02 40  
            lda __fa00,y       ; $f99b: b9 00 fa  
            ora #$08           ; $f99e: 09 08     
            sta SQ1_HI,x       ; $f9a0: 9d 03 40  
__f9a3:     rts                ; $f9a3: 60        

;-------------------------------------------------------------------------------
__f9a4:     ldx #$04           ; $f9a4: a2 04     
            bne __f992         ; $f9a6: d0 ea     
__f9a8:     txa                ; $f9a8: 8a        
            and #$3e           ; $f9a9: 29 3e     
            ldx #$08           ; $f9ab: a2 08     
            bne __f992         ; $f9ad: d0 e3     
__f9af:     lda #$00           ; $f9af: a9 00     
__f9b1:     lsr                ; $f9b1: 4a        
            lsr                ; $f9b2: 4a        
            ora #$90           ; $f9b3: 09 90     
            sta SQ1_VOL        ; $f9b5: 8d 00 40  
            rts                ; $f9b8: 60        

;-------------------------------------------------------------------------------
__f9b9:     tax                ; $f9b9: aa        
            ror                ; $f9ba: 6a        
            txa                ; $f9bb: 8a        
            rol                ; $f9bc: 2a        
            rol                ; $f9bd: 2a        
            rol                ; $f9be: 2a        
__f9bf:     and #$07           ; $f9bf: 29 07     
            clc                ; $f9c1: 18        
            adc $068d          ; $f9c2: 6d 8d 06  
            tay                ; $f9c5: a8        
            lda __fa4e,y       ; $f9c6: b9 4e fa  
            rts                ; $f9c9: 60        

;-------------------------------------------------------------------------------
__f9ca:     tya                ; $f9ca: 98        
            lsr                ; $f9cb: 4a        
__f9cc:     lsr                ; $f9cc: 4a        
__f9cd:     lsr                ; $f9cd: 4a        
            sta $00            ; $f9ce: 85 00     
            tya                ; $f9d0: 98        
            sec                ; $f9d1: 38        
            sbc $00            ; $f9d2: e5 00     
            rts                ; $f9d4: 60        

;-------------------------------------------------------------------------------
__f9d5:     lda $06d1          ; $f9d5: ad d1 06  
            cmp #$80           ; $f9d8: c9 80     
            bcs __f9df         ; $f9da: b0 03     
            inc $06d1          ; $f9dc: ee d1 06  
__f9df:     lsr                ; $f9df: 4a        
            sta DMC_RAW        ; $f9e0: 8d 11 40  
            rts                ; $f9e3: 60        

;-------------------------------------------------------------------------------
__f9e4:     lda $06d1          ; $f9e4: ad d1 06  
            beq __f9df         ; $f9e7: f0 f6     
            dec $06d1          ; $f9e9: ce d1 06  
            jmp __f9df         ; $f9ec: 4c df f9  

;-------------------------------------------------------------------------------
__f9ef:     ldy #$07           ; $f9ef: a0 07     
__f9f1:     asl                ; $f9f1: 0a        
            bcs __f9f7         ; $f9f2: b0 03     
            dey                ; $f9f4: 88        
            bne __f9f1         ; $f9f5: d0 fa     
__f9f7:     rts                ; $f9f7: 60        

;-------------------------------------------------------------------------------
__f9f8:     .hex 85 84 84 84   ; $f9f8: 85 84 84 84   Data
            .hex 84 8c 8c 8c   ; $f9fc: 84 8c 8c 8c   Data
__fa00:     .hex 07            ; $fa00: 07            Data
__fa01:     .hex f0 00 00 00   ; $fa01: f0 00 00 00   Data
            .hex 69 00 d4 00   ; $fa05: 69 00 d4 00   Data
            .hex bd 00 a8 00   ; $fa09: bd 00 a8 00   Data
            .hex 9f 00 96 00   ; $fa0d: 9f 00 96 00   Data
            .hex 8d 00 70 01   ; $fa11: 8d 00 70 01   Data
            .hex ab 01 93 01   ; $fa15: ab 01 93 01   Data
            .hex 7c 01 67 01   ; $fa19: 7c 01 67 01   Data
            .hex 52 01 3f 01   ; $fa1d: 52 01 3f 01   Data
            .hex 2d 01 1c 01   ; $fa21: 2d 01 1c 01   Data
            .hex 0c 00 fd 00   ; $fa25: 0c 00 fd 00   Data
            .hex e1 03 57 02   ; $fa29: e1 03 57 02   Data
            .hex f9 02 a6 02   ; $fa2d: f9 02 a6 02   Data
            .hex 80 02 3a 02   ; $fa31: 80 02 3a 02   Data
            .hex 1a 01 fc 01   ; $fa35: 1a 01 fc 01   Data
            .hex c4 06 ae 05   ; $fa39: c4 06 ae 05   Data
            .hex f3 05 9e 05   ; $fa3d: f3 05 9e 05   Data
            .hex 4d 05 01 04   ; $fa41: 4d 05 01 04   Data
            .hex b9 04 75 04   ; $fa45: b9 04 75 04   Data
            .hex 35 03 f8 03   ; $fa49: 35 03 f8 03   Data
            .hex 89            ; $fa4d: 89            Data
__fa4e:     .hex 05 0a 14 28   ; $fa4e: 05 0a 14 28   Data
            .hex 50 1e 3c 06   ; $fa52: 50 1e 3c 06   Data
            .hex 0c 18 30 28   ; $fa56: 0c 18 30 28   Data
            .hex 24 10 04      ; $fa5a: 24 10 04      Data
__fa5d:     .hex 08 0a 14 03   ; $fa5d: 08 0a 14 03   Data
            .hex 07 08 10      ; $fa61: 07 08 10      Data

;-------------------------------------------------------------------------------
__fa64:     sta $f0            ; $fa64: 85 f0     
            sta $06a1          ; $fa66: 8d a1 06  
            sta $06a2          ; $fa69: 8d a2 06  
            rts                ; $fa6c: 60        

;-------------------------------------------------------------------------------
__fa6d:     sty $f0            ; $fa6d: 84 f0     
            lda #$08           ; $fa6f: a9 08     
            sta $f1            ; $fa71: 85 f1     
            ldx #$9f           ; $fa73: a2 9f     
            ldy #$a5           ; $fa75: a0 a5     
            lda #$04           ; $fa77: a9 04     
            jsr __f98d         ; $fa79: 20 8d f9  
__fa7c:     dec $f1            ; $fa7c: c6 f1     
            bne __fad3         ; $fa7e: d0 53     
            lda #$8f           ; $fa80: a9 8f     
            jmp __fb16         ; $fa82: 4c 16 fb  

;-------------------------------------------------------------------------------
__fa85:     sty $f0            ; $fa85: 84 f0     
            lda #$80           ; $fa87: a9 80     
            sta $f1            ; $fa89: 85 f1     
            ldx #$9c           ; $fa8b: a2 9c     
            lda #$12           ; $fa8d: a9 12     
            jsr __f98b         ; $fa8f: 20 8b f9  
__fa92:     dec $f1            ; $fa92: c6 f1     
            lda $f1            ; $fa94: a5 f1     
            beq __fa64         ; $fa96: f0 cc     
            cmp #$30           ; $fa98: c9 30     
            bcs __fa9f         ; $fa9a: b0 03     
            jsr __f9b1         ; $fa9c: 20 b1 f9  
__fa9f:     lda $f1            ; $fa9f: a5 f1     
            and #$07           ; $faa1: 29 07     
            tay                ; $faa3: a8        
            lda __f9f8,y       ; $faa4: b9 f8 f9  
            sta SQ1_SWEEP      ; $faa7: 8d 01 40  
            jmp __fdf5         ; $faaa: 4c f5 fd  

;-------------------------------------------------------------------------------
__faad:     ldx #$0e           ; $faad: a2 0e     
            lda #$26           ; $faaf: a9 26     
            jsr __f985         ; $fab1: 20 85 f9  
            lda #$fe           ; $fab4: a9 fe     
            sta $f2            ; $fab6: 85 f2     
            ldx #$84           ; $fab8: a2 84     
            ldy #$8a           ; $faba: a0 8a     
            jsr __f95a         ; $fabc: 20 5a f9  
__fabf:     dec $f1            ; $fabf: c6 f1     
            beq __fb14         ; $fac1: f0 51     
            lda $f1            ; $fac3: a5 f1     
            lsr                ; $fac5: 4a        
            bcs __fb11         ; $fac6: b0 49     
            lda $f2            ; $fac8: a5 f2     
            tay                ; $faca: a8        
            jsr __f9cc         ; $facb: 20 cc f9  
            sta $f2            ; $face: 85 f2     
            sta SQ1_LO         ; $fad0: 8d 02 40  
__fad3:     bne __fb11         ; $fad3: d0 3c     
__fad5:     lda $fa            ; $fad5: a5 fa     
            bne __fb11         ; $fad7: d0 38     
            ldy $ff            ; $fad9: a4 ff     
            lda $f0            ; $fadb: a5 f0     
            lsr                ; $fadd: 4a        
            bcs __fa7c         ; $fade: b0 9c     
            lsr $ff            ; $fae0: 46 ff     
            bcs __fa6d         ; $fae2: b0 89     
            lsr                ; $fae4: 4a        
            bcs __fa92         ; $fae5: b0 ab     
            lsr $ff            ; $fae7: 46 ff     
            bcs __fa85         ; $fae9: b0 9a     
            lsr                ; $faeb: 4a        
            bcs __fabf         ; $faec: b0 d1     
            lsr $ff            ; $faee: 46 ff     
            bcs __faad         ; $faf0: b0 bb     
            lsr                ; $faf2: 4a        
            lsr $ff            ; $faf3: 46 ff     
            lsr                ; $faf5: 4a        
            bcs __fb26         ; $faf6: b0 2e     
            lsr $ff            ; $faf8: 46 ff     
            bcs __fb1f         ; $fafa: b0 23     
            lsr                ; $fafc: 4a        
            bcs __fb37         ; $fafd: b0 38     
            lsr $ff            ; $faff: 46 ff     
            bcs __fb30         ; $fb01: b0 2d     
            lsr                ; $fb03: 4a        
            bcs __fb50         ; $fb04: b0 4a     
            lsr $ff            ; $fb06: 46 ff     
            bcs __fb49         ; $fb08: b0 3f     
            lsr                ; $fb0a: 4a        
            bcs __fb72         ; $fb0b: b0 65     
            lsr $ff            ; $fb0d: 46 ff     
            bcs __fb6c         ; $fb0f: b0 5b     
__fb11:     jmp __fc9a         ; $fb11: 4c 9a fc  

;-------------------------------------------------------------------------------
__fb14:     lda #$90           ; $fb14: a9 90     
__fb16:     sta SQ1_VOL        ; $fb16: 8d 00 40  
            lda #$00           ; $fb19: a9 00     
            sta $f0            ; $fb1b: 85 f0     
            beq __fb11         ; $fb1d: f0 f2     
__fb1f:     ldx #$0c           ; $fb1f: a2 0c     
            lda #$2a           ; $fb21: a9 2a     
            jsr __f985         ; $fb23: 20 85 f9  
__fb26:     ldx #$85           ; $fb26: a2 85     
            ldy #$85           ; $fb28: a0 85     
            dec $f1            ; $fb2a: c6 f1     
__fb2c:     beq __fb14         ; $fb2c: f0 e6     
            bne __fb67         ; $fb2e: d0 37     
__fb30:     ldx #$0a           ; $fb30: a2 0a     
            lda #$10           ; $fb32: a9 10     
            jsr __f985         ; $fb34: 20 85 f9  
__fb37:     dec $f1            ; $fb37: c6 f1     
            ldy #$84           ; $fb39: a0 84     
            lda $f1            ; $fb3b: a5 f1     
            cmp #$03           ; $fb3d: c9 03     
            beq __fb2c         ; $fb3f: f0 eb     
            cmp #$08           ; $fb41: c9 08     
            bcs __fb64         ; $fb43: b0 1f     
            ldy #$8b           ; $fb45: a0 8b     
            bne __fb64         ; $fb47: d0 1b     
__fb49:     ldx #$15           ; $fb49: a2 15     
            lda #$06           ; $fb4b: a9 06     
            jsr __f985         ; $fb4d: 20 85 f9  
__fb50:     dec $f1            ; $fb50: c6 f1     
            beq __fb2c         ; $fb52: f0 d8     
            ldy #$84           ; $fb54: a0 84     
            lda $f1            ; $fb56: a5 f1     
            cmp #$12           ; $fb58: c9 12     
            bcs __fb5e         ; $fb5a: b0 02     
            ldy #$8d           ; $fb5c: a0 8d     
__fb5e:     cmp #$0a           ; $fb5e: c9 0a     
            bcc __fb64         ; $fb60: 90 02     
            lda #$0a           ; $fb62: a9 0a     
__fb64:     ora #$50           ; $fb64: 09 50     
            tax                ; $fb66: aa        
__fb67:     jsr __f95a         ; $fb67: 20 5a f9  
            bne __fb11         ; $fb6a: d0 a5     
__fb6c:     sty $f0            ; $fb6c: 84 f0     
            lda #$0c           ; $fb6e: a9 0c     
            sta $f1            ; $fb70: 85 f1     
__fb72:     lda $fb            ; $fb72: a5 fb     
            rol                ; $fb74: 2a        
            rol                ; $fb75: 2a        
            rol                ; $fb76: 2a        
            sta SQ1_LO         ; $fb77: 8d 02 40  
            rol                ; $fb7a: 2a        
            sta SQ1_HI         ; $fb7b: 8d 03 40  
            dec $f1            ; $fb7e: c6 f1     
            lda $f1            ; $fb80: a5 f1     
            cmp #$02           ; $fb82: c9 02     
            beq __fb2c         ; $fb84: f0 a6     
            ldy #$7f           ; $fb86: a0 7f     
            bne __fb64         ; $fb88: d0 da     
__fb8a:     lda #$48           ; $fb8a: a9 48     
            ldx #$fe           ; $fb8c: a2 fe     
            jsr __f961         ; $fb8e: 20 61 f9  
__fb91:     ldy $f4            ; $fb91: a4 f4     
            dec $f3            ; $fb93: c6 f3     
            lda $f3            ; $fb95: a5 f3     
            beq __fbc2         ; $fb97: f0 29     
            and #$03           ; $fb99: 29 03     
            beq __fba8         ; $fb9b: f0 0b     
            cmp #$03           ; $fb9d: c9 03     
            beq __fbad         ; $fb9f: f0 0c     
            tya                ; $fba1: 98        
            jsr __f9cd         ; $fba2: 20 cd f9  
            tay                ; $fba5: a8        
            bne __fbad         ; $fba6: d0 05     
__fba8:     jsr __f9ca         ; $fba8: 20 ca f9  
            sta $f4            ; $fbab: 85 f4     
__fbad:     tya                ; $fbad: 98        
            clc                ; $fbae: 18        
            rol                ; $fbaf: 2a        
            rol                ; $fbb0: 2a        
            sta SQ2_LO         ; $fbb1: 8d 06 40  
            rol                ; $fbb4: 2a        
            bne __fbdc         ; $fbb5: d0 25     
__fbb7:     lda #$1c           ; $fbb7: a9 1c     
            ldx #$2a           ; $fbb9: a2 2a     
            jsr __f961         ; $fbbb: 20 61 f9  
__fbbe:     dec $f3            ; $fbbe: c6 f3     
            lda $f3            ; $fbc0: a5 f3     
__fbc2:     beq __fc07         ; $fbc2: f0 43     
            lsr                ; $fbc4: 4a        
            lda $f4            ; $fbc5: a5 f4     
            bcs __fbcf         ; $fbc7: b0 06     
            lsr                ; $fbc9: 4a        
            clc                ; $fbca: 18        
            adc $f4            ; $fbcb: 65 f4     
            bne __fbd7         ; $fbcd: d0 08     
__fbcf:     lsr                ; $fbcf: 4a        
            lsr                ; $fbd0: 4a        
            lsr                ; $fbd1: 4a        
            clc                ; $fbd2: 18        
            adc $f4            ; $fbd3: 65 f4     
            sta $f4            ; $fbd5: 85 f4     
__fbd7:     sta SQ2_LO         ; $fbd7: 8d 06 40  
            lda #$08           ; $fbda: a9 08     
__fbdc:     sta SQ2_HI         ; $fbdc: 8d 07 40  
            lda $f3            ; $fbdf: a5 f3     
            cmp #$18           ; $fbe1: c9 18     
            bcs __fbeb         ; $fbe3: b0 06     
            lsr                ; $fbe5: 4a        
            ora #$90           ; $fbe6: 09 90     
            sta SQ2_VOL        ; $fbe8: 8d 04 40  
__fbeb:     rts                ; $fbeb: 60        

;-------------------------------------------------------------------------------
__fbec:     ldy $fe            ; $fbec: a4 fe     
            lda $06a1          ; $fbee: ad a1 06  
            lsr $fe            ; $fbf1: 46 fe     
            bcs __fb8a         ; $fbf3: b0 95     
            lsr                ; $fbf5: 4a        
            bcs __fb91         ; $fbf6: b0 99     
            lsr                ; $fbf8: 4a        
            bcs __fbbe         ; $fbf9: b0 c3     
            lsr $fe            ; $fbfb: 46 fe     
            bcs __fbb7         ; $fbfd: b0 b8     
            lsr $fe            ; $fbff: 46 fe     
            bcs __fc10         ; $fc01: b0 0d     
            lsr                ; $fc03: 4a        
            bcs __fc24         ; $fc04: b0 1e     
            rts                ; $fc06: 60        

;-------------------------------------------------------------------------------
__fc07:     sta $06a1          ; $fc07: 8d a1 06  
            lda #$10           ; $fc0a: a9 10     
            sta $400c          ; $fc0c: 8d 0c 40  
            rts                ; $fc0f: 60        

;-------------------------------------------------------------------------------
__fc10:     sty $06a1          ; $fc10: 8c a1 06  
            lda #$20           ; $fc13: a9 20     
            sta $f3            ; $fc15: 85 f3     
            lda #$04           ; $fc17: a9 04     
            sta $f4            ; $fc19: 85 f4     
            lda #$05           ; $fc1b: a9 05     
            sta $400c          ; $fc1d: 8d 0c 40  
            asl                ; $fc20: 0a        
            sta $400f          ; $fc21: 8d 0f 40  
__fc24:     ldy #$02           ; $fc24: a0 02     
            dec $f3            ; $fc26: c6 f3     
            lda $f3            ; $fc28: a5 f3     
            beq __fc07         ; $fc2a: f0 db     
            cmp #$18           ; $fc2c: c9 18     
            beq __fc34         ; $fc2e: f0 04     
            bcs __fc47         ; $fc30: b0 15     
            bcc __fc3e         ; $fc32: 90 0a     
__fc34:     ldx #$0f           ; $fc34: a2 0f     
            stx $400c          ; $fc36: 8e 0c 40  
            ldx #$50           ; $fc39: a2 50     
            stx $400f          ; $fc3b: 8e 0f 40  
__fc3e:     ldy $f4            ; $fc3e: a4 f4     
            lsr                ; $fc40: 4a        
            bcs __fc4c         ; $fc41: b0 09     
            inc $f4            ; $fc43: e6 f4     
            bne __fc4a         ; $fc45: d0 03     
__fc47:     lsr                ; $fc47: 4a        
            bcs __fc4c         ; $fc48: b0 02     
__fc4a:     ldy #$0e           ; $fc4a: a0 0e     
__fc4c:     sty $400e          ; $fc4c: 8c 0e 40  
            rts                ; $fc4f: 60        

;-------------------------------------------------------------------------------
__fc50:     ldx #$18           ; $fc50: a2 18     
            jsr __f973         ; $fc52: 20 73 f9  
            bne __fc5b         ; $fc55: d0 04     
__fc57:     dec $f5            ; $fc57: c6 f5     
            bne __fcad         ; $fc59: d0 52     
__fc5b:     lda #$05           ; $fc5b: a9 05     
            sta $f5            ; $fc5d: 85 f5     
            lda $f6            ; $fc5f: a5 f6     
            lsr                ; $fc61: 4a        
            lsr                ; $fc62: 4a        
            clc                ; $fc63: 18        
            adc $f6            ; $fc64: 65 f6     
            bcs __fca8         ; $fc66: b0 40     
            sta $f6            ; $fc68: 85 f6     
            bne __fc87         ; $fc6a: d0 1b     
__fc6c:     ldy #$02           ; $fc6c: a0 02     
            lda #$0c           ; $fc6e: a9 0c     
            ldx #$6f           ; $fc70: a2 6f     
            jsr __f973         ; $fc72: 20 73 f9  
__fc75:     dec $f5            ; $fc75: c6 f5     
            lda $f5            ; $fc77: a5 f5     
            beq __fc6c         ; $fc79: f0 f1     
            cmp #$06           ; $fc7b: c9 06     
            beq __fca8         ; $fc7d: f0 29     
            lda $f6            ; $fc7f: a5 f6     
            tay                ; $fc81: a8        
            jsr __f9cc         ; $fc82: 20 cc f9  
            sta $f6            ; $fc85: 85 f6     
__fc87:     sta $400a          ; $fc87: 8d 0a 40  
            jsr __f9d5         ; $fc8a: 20 d5 f9  
            jmp __fd4c         ; $fc8d: 4c 4c fd  

;-------------------------------------------------------------------------------
__fc90:     cmp #$06           ; $fc90: c9 06     
            beq __fc57         ; $fc92: f0 c3     
            cmp #$03           ; $fc94: c9 03     
            beq __fd15         ; $fc96: f0 7d     
            bne __fc75         ; $fc98: d0 db     
__fc9a:     ldx $f9            ; $fc9a: a6 f9     
            bne __fd0c         ; $fc9c: d0 6e     
            lda $fc            ; $fc9e: a5 fc     
            bne __fcb0         ; $fca0: d0 0e     
            sta $06b6          ; $fca2: 8d b6 06  
            sta $06c0          ; $fca5: 8d c0 06  
__fca8:     lda #$00           ; $fca8: a9 00     
            sta TRI_LINEAR     ; $fcaa: 8d 08 40  
__fcad:     jmp __fd4c         ; $fcad: 4c 4c fd  

;-------------------------------------------------------------------------------
__fcb0:     eor $06b6          ; $fcb0: 4d b6 06  
            beq __fcdc         ; $fcb3: f0 27     
__fcb5:     lda $fc            ; $fcb5: a5 fc     
            sta $06b6          ; $fcb7: 8d b6 06  
            jsr __f9ef         ; $fcba: 20 ef f9  
            cpy #$06           ; $fcbd: c0 06     
            beq __fc50         ; $fcbf: f0 8f     
            cpy #$03           ; $fcc1: c0 03     
            beq __fd0e         ; $fcc3: f0 49     
            cpy #$02           ; $fcc5: c0 02     
            beq __fc6c         ; $fcc7: f0 a3     
            stx $06c0          ; $fcc9: 8e c0 06  
            lda __ffb7,y       ; $fccc: b9 b7 ff  
            sta $0680          ; $fccf: 8d 80 06  
            lda #$bd           ; $fcd2: a9 bd     
            sta $f5            ; $fcd4: 85 f5     
            lda #$ff           ; $fcd6: a9 ff     
            sta $f6            ; $fcd8: 85 f6     
            bne __fce9         ; $fcda: d0 0d     
__fcdc:     lda $06c0          ; $fcdc: ad c0 06  
            bne __fc90         ; $fcdf: d0 af     
            jsr __f9e4         ; $fce1: 20 e4 f9  
            dec $0698          ; $fce4: ce 98 06  
            bne __fd4c         ; $fce7: d0 63     
__fce9:     ldy $0680          ; $fce9: ac 80 06  
            inc $0680          ; $fcec: ee 80 06  
            lda ($f5),y        ; $fcef: b1 f5     
            beq __fcb5         ; $fcf1: f0 c2     
            tax                ; $fcf3: aa        
            ror                ; $fcf4: 6a        
            txa                ; $fcf5: 8a        
            rol                ; $fcf6: 2a        
            rol                ; $fcf7: 2a        
            rol                ; $fcf8: 2a        
            and #$07           ; $fcf9: 29 07     
            tay                ; $fcfb: a8        
            lda __fa5d,y       ; $fcfc: b9 5d fa  
            sta $0698          ; $fcff: 8d 98 06  
            jsr __f9a8         ; $fd02: 20 a8 f9  
            beq __fd4c         ; $fd05: f0 45     
            lda #$10           ; $fd07: a9 10     
            sta TRI_LINEAR     ; $fd09: 8d 08 40  
__fd0c:     bne __fd4c         ; $fd0c: d0 3e     
__fd0e:     sty $06c0          ; $fd0e: 8c c0 06  
            lda #$06           ; $fd11: a9 06     
            sta $f5            ; $fd13: 85 f5     
__fd15:     ldy #$00           ; $fd15: a0 00     
            dec $f5            ; $fd17: c6 f5     
            bne __fd31         ; $fd19: d0 16     
            lda #$0a           ; $fd1b: a9 0a     
            sta $f5            ; $fd1d: 85 f5     
            lda $18            ; $fd1f: a5 18     
            and $19            ; $fd21: 25 19     
            sta $400a          ; $fd23: 8d 0a 40  
            and #$f0           ; $fd26: 29 f0     
            bne __fd41         ; $fd28: d0 17     
            lda $fb            ; $fd2a: a5 fb     
            sta $400a          ; $fd2c: 8d 0a 40  
            bne __fd41         ; $fd2f: d0 10     
__fd31:     lda $f5            ; $fd31: a5 f5     
            cmp #$05           ; $fd33: c9 05     
            bne __fd4c         ; $fd35: d0 15     
            lda $18            ; $fd37: a5 18     
            sta $400a          ; $fd39: 8d 0a 40  
            lda $19            ; $fd3c: a5 19     
            bne __fd41         ; $fd3e: d0 01     
            iny                ; $fd40: c8        
__fd41:     sty $400b          ; $fd41: 8c 0b 40  
            lda #$08           ; $fd44: a9 08     
            sta TRI_LINEAR     ; $fd46: 8d 08 40  
            jsr __f9d5         ; $fd49: 20 d5 f9  
__fd4c:     lda $fd            ; $fd4c: a5 fd     
            bne __fd58         ; $fd4e: d0 08     
            lda $06a2          ; $fd50: ad a2 06  
            bne __fd9c         ; $fd53: d0 47     
            jmp __fbec         ; $fd55: 4c ec fb  

;-------------------------------------------------------------------------------
__fd58:     jsr __f9ef         ; $fd58: 20 ef f9  
            inc $06a2          ; $fd5b: ee a2 06  
            sty $06f1          ; $fd5e: 8c f1 06  
            lda __fe51,y       ; $fd61: b9 51 fe  
            tay                ; $fd64: a8        
            lda __fe51,y       ; $fd65: b9 51 fe  
            sta $068d          ; $fd68: 8d 8d 06  
            lda __fe52,y       ; $fd6b: b9 52 fe  
            sta $f7            ; $fd6e: 85 f7     
            lda __fe53,y       ; $fd70: b9 53 fe  
            sta $f8            ; $fd73: 85 f8     
            lda __fe54,y       ; $fd75: b9 54 fe  
            sta $f9            ; $fd78: 85 f9     
            lda __fe55,y       ; $fd7a: b9 55 fe  
            sta $fa            ; $fd7d: 85 fa     
            lda #$7f           ; $fd7f: a9 7f     
            sta SQ1_SWEEP      ; $fd81: 8d 01 40  
            sta SQ2_SWEEP      ; $fd84: 8d 05 40  
            lda #$01           ; $fd87: a9 01     
            sta $0695          ; $fd89: 8d 95 06  
            sta $0696          ; $fd8c: 8d 96 06  
            sta $0698          ; $fd8f: 8d 98 06  
            ldy #$00           ; $fd92: a0 00     
            sty $0682          ; $fd94: 8c 82 06  
            lda $06f1          ; $fd97: ad f1 06  
            beq __fda0         ; $fd9a: f0 04     
__fd9c:     ldy $fa            ; $fd9c: a4 fa     
            beq __fdde         ; $fd9e: f0 3e     
__fda0:     dec $0696          ; $fda0: ce 96 06  
            bne __fdde         ; $fda3: d0 39     
            inc $fa            ; $fda5: e6 fa     
            lda ($f7),y        ; $fda7: b1 f7     
            beq __fdf2         ; $fda9: f0 47     
            bpl __fdb9         ; $fdab: 10 0c     
            jsr __f9bf         ; $fdad: 20 bf f9  
            sta $0691          ; $fdb0: 8d 91 06  
            ldy $fa            ; $fdb3: a4 fa     
            inc $fa            ; $fdb5: e6 fa     
            lda ($f7),y        ; $fdb7: b1 f7     
__fdb9:     jsr __f990         ; $fdb9: 20 90 f9  
            bne __fdc2         ; $fdbc: d0 04     
            ldy #$10           ; $fdbe: a0 10     
            bne __fdd1         ; $fdc0: d0 0f     
__fdc2:     ldy #$9f           ; $fdc2: a0 9f     
            lda $06f1          ; $fdc4: ad f1 06  
            beq __fdd1         ; $fdc7: f0 08     
            ldy #$06           ; $fdc9: a0 06     
            lda $f9            ; $fdcb: a5 f9     
            bne __fdd1         ; $fdcd: d0 02     
            ldy #$86           ; $fdcf: a0 86     
__fdd1:     sty SQ1_VOL        ; $fdd1: 8c 00 40  
            lda $0691          ; $fdd4: ad 91 06  
            sta $0696          ; $fdd7: 8d 96 06  
            lda #$00           ; $fdda: a9 00     
            sta $f0            ; $fddc: 85 f0     
__fdde:     lda $06f1          ; $fdde: ad f1 06  
            beq __fe22         ; $fde1: f0 3f     
            dec $0695          ; $fde3: ce 95 06  
            bne __fe22         ; $fde6: d0 3a     
            ldy $0682          ; $fde8: ac 82 06  
            inc $0682          ; $fdeb: ee 82 06  
            lda ($f7),y        ; $fdee: b1 f7     
            bne __fe02         ; $fdf0: d0 10     
__fdf2:     jsr __f9af         ; $fdf2: 20 af f9  
__fdf5:     lda #$00           ; $fdf5: a9 00     
            sta $fa            ; $fdf7: 85 fa     
            sta $f9            ; $fdf9: 85 f9     
            sta $06a2          ; $fdfb: 8d a2 06  
            sta TRI_LINEAR     ; $fdfe: 8d 08 40  
            rts                ; $fe01: 60        

;-------------------------------------------------------------------------------
__fe02:     jsr __f9b9         ; $fe02: 20 b9 f9  
            sta $0695          ; $fe05: 8d 95 06  
            txa                ; $fe08: 8a        
            and #$3e           ; $fe09: 29 3e     
            jsr __f9a4         ; $fe0b: 20 a4 f9  
            ldy #$87           ; $fe0e: a0 87     
            lda $0695          ; $fe10: ad 95 06  
            cmp #$10           ; $fe13: c9 10     
            bcs __fe1f         ; $fe15: b0 08     
            ldy #$85           ; $fe17: a0 85     
            cmp #$08           ; $fe19: c9 08     
            bcs __fe1f         ; $fe1b: b0 02     
            ldy #$82           ; $fe1d: a0 82     
__fe1f:     sty SQ2_VOL        ; $fe1f: 8c 04 40  
__fe22:     ldy $f9            ; $fe22: a4 f9     
            beq __fe50         ; $fe24: f0 2a     
            jsr __f9e4         ; $fe26: 20 e4 f9  
            dec $0698          ; $fe29: ce 98 06  
            bne __fe50         ; $fe2c: d0 22     
            inc $f9            ; $fe2e: e6 f9     
            lda ($f7),y        ; $fe30: b1 f7     
            jsr __f9b9         ; $fe32: 20 b9 f9  
            sta $0698          ; $fe35: 8d 98 06  
            clc                ; $fe38: 18        
            adc #$fe           ; $fe39: 69 fe     
            asl                ; $fe3b: 0a        
            asl                ; $fe3c: 0a        
            cmp #$3c           ; $fe3d: c9 3c     
            bcc __fe43         ; $fe3f: 90 02     
            lda #$3c           ; $fe41: a9 3c     
__fe43:     ldy $06f1          ; $fe43: ac f1 06  
            bne __fe4a         ; $fe46: d0 02     
            lda #$ff           ; $fe48: a9 ff     
__fe4a:     sta TRI_LINEAR     ; $fe4a: 8d 08 40  
            jsr __f9a8         ; $fe4d: 20 a8 f9  
__fe50:     rts                ; $fe50: 60        

;-------------------------------------------------------------------------------
__fe51:     .hex 08            ; $fe51: 08            Data
__fe52:     .hex 0d            ; $fe52: 0d            Data
__fe53:     .hex 12            ; $fe53: 12            Data
__fe54:     .hex 17            ; $fe54: 17            Data
__fe55:     .hex 1c 21 26 2b   ; $fe55: 1c 21 26 2b   Data
            .hex 07 81 fe 16   ; $fe59: 07 81 fe 16   Data
            .hex 00 00 a1 fe   ; $fe5d: 00 00 a1 fe   Data
            .hex 11 00 00 c3   ; $fe61: 11 00 00 c3   Data
            .hex fe 00 13 00   ; $fe65: fe 00 13 00   Data
            .hex f3 fe 00 1c   ; $fe69: f3 fe 00 1c   Data
            .hex 00 34 ff 20   ; $fe6d: 00 34 ff 20   Data
            .hex 00 0f a7 ff   ; $fe71: 00 0f a7 ff   Data
            .hex 00 00 00 ae   ; $fe75: 00 00 00 ae   Data
            .hex ff 00 00 07   ; $fe79: ff 00 00 07   Data
            .hex 25 ff 1f 3f   ; $fe7d: 25 ff 1f 3f   Data
            .hex 81 02 3c 42   ; $fe81: 81 02 3c 42   Data
            .hex 48 4c 2c 30   ; $fe85: 48 4c 2c 30   Data
            .hex 34 38 80 18   ; $fe89: 34 38 80 18   Data
            .hex 16 18 16 18   ; $fe8d: 16 18 16 18   Data
            .hex 16 18 16 83   ; $fe91: 16 18 16 83   Data
            .hex 18 00 82 6c   ; $fe95: 18 00 82 6c   Data
            .hex 70 74 78 58   ; $fe99: 70 74 78 58   Data
            .hex 5e 64 e8 e8   ; $fe9d: 5e 64 e8 e8   Data
            .hex 62 86 62 86   ; $fea1: 62 86 62 86   Data
            .hex a2 60 86 60   ; $fea5: a2 60 86 60   Data
            .hex 86 a0 5e 86   ; $fea9: 86 a0 5e 86   Data
            .hex 5e 86 8a 11   ; $fead: 5e 86 8a 11   Data
            .hex 00 94 9c a2   ; $feb1: 00 94 9c a2   Data
            .hex 94 94 9a a0   ; $feb5: 94 94 9a a0   Data
            .hex 9a 98 9e a6   ; $feb9: 9a 98 9e a6   Data
            .hex 86 82 20 62   ; $febd: 86 82 20 62   Data
            .hex 02 f2 94 58   ; $fec1: 02 f2 94 58   Data
            .hex 5c 9e 9c 98   ; $fec5: 5c 9e 9c 98   Data
            .hex 54 b8 76 b2   ; $fec9: 54 b8 76 b2   Data
            .hex 94 58 5c 9e   ; $fecd: 94 58 5c 9e   Data
            .hex 9c 98 54 f8   ; $fed1: 9c 98 54 f8   Data
            .hex 00 82 32 81   ; $fed5: 00 82 32 81   Data
            .hex 36 38 82 14   ; $fed9: 36 38 82 14   Data
            .hex 14 14 81 36   ; $fedd: 14 14 81 36   Data
            .hex 82 32 81 30   ; $fee1: 82 32 81 30   Data
            .hex 82 2e 32 81   ; $fee5: 82 2e 32 81   Data
            .hex 36 38 82 14   ; $fee9: 36 38 82 14   Data
            .hex 14 14 81 36   ; $feed: 14 14 81 36   Data
            .hex 84 32 5c 64   ; $fef1: 84 32 5c 64   Data
            .hex 68 48 60 66   ; $fef5: 68 48 60 66   Data
            .hex 46 4a 0c 08   ; $fef9: 46 4a 0c 08   Data
            .hex 0a 06 08 28   ; $fefd: 0a 06 08 28   Data
            .hex 06 26 28 22   ; $ff01: 06 26 28 22   Data
            .hex 26 1e 22 1c   ; $ff05: 26 1e 22 1c   Data
            .hex 1e 18 15 03   ; $ff09: 1e 18 15 03   Data
            .hex 83 00 82 2e   ; $ff0d: 83 00 82 2e   Data
            .hex 4c 44 3e 2c   ; $ff11: 4c 44 3e 2c   Data
            .hex 4c 46 40 81   ; $ff15: 4c 46 40 81   Data
            .hex 3a 3c 40 82   ; $ff19: 3a 3c 40 82   Data
            .hex 46 81 4a 2a   ; $ff1d: 46 81 4a 2a   Data
            .hex 2c 84 2a 02   ; $ff21: 2c 84 2a 02   Data
            .hex 94 a2 5c 55   ; $ff25: 94 a2 5c 55   Data
            .hex b8 a2 5c 79   ; $ff29: b8 a2 5c 79   Data
            .hex b6 94 5e a2   ; $ff2d: b6 94 5e a2   Data
            .hex 5e dc d8 94   ; $ff31: 5e dc d8 94   Data
            .hex a2 5c 55 b8   ; $ff35: a2 5c 55 b8   Data
            .hex a2 5c 79 b6   ; $ff39: a2 5c 79 b6   Data
            .hex 94 5c a2 5c   ; $ff3d: 94 5c a2 5c   Data
            .hex d8 d4 00 94   ; $ff41: d8 d4 00 94   Data
            .hex b2 ae b2 9c   ; $ff45: b2 ae b2 9c   Data
            .hex b8 b2 b8 9e   ; $ff49: b8 b2 b8 9e   Data
            .hex 94 b6 94 94   ; $ff4d: 94 b6 94 94   Data
            .hex b2 b2 98 94   ; $ff51: b2 b2 98 94   Data
            .hex b2 ae b2 9c   ; $ff55: b2 ae b2 9c   Data
            .hex b8 b2 b8 9e   ; $ff59: b8 b2 b8 9e   Data
            .hex 94 ae b8 72   ; $ff5d: 94 ae b8 72   Data
            .hex b2 6c d4 83   ; $ff61: b2 6c d4 83   Data
            .hex 02 81 02 06   ; $ff65: 02 81 02 06   Data
            .hex 08 0a 83 02   ; $ff69: 08 0a 83 02   Data
            .hex 81 02 28 06   ; $ff6d: 81 02 28 06   Data
            .hex 08 02 1e 26   ; $ff71: 08 02 1e 26   Data
            .hex 06 02 26 06   ; $ff75: 06 02 26 06   Data
            .hex 0c 02 0a 06   ; $ff79: 0c 02 0a 06   Data
            .hex 0a 02 08 28   ; $ff7d: 0a 02 08 28   Data
            .hex 08 82 06 87   ; $ff81: 08 82 06 87   Data
            .hex 06 0a 84 10   ; $ff85: 06 0a 84 10   Data
            .hex 82 02 28 87   ; $ff89: 82 02 28 87   Data
            .hex 28 1c 84 10   ; $ff8d: 28 1c 84 10   Data
            .hex 83 02 87 1e   ; $ff91: 83 02 87 1e   Data
            .hex 06 84 0c 87   ; $ff95: 06 84 0c 87   Data
            .hex 1c 28 84 0a   ; $ff99: 1c 28 84 0a   Data
            .hex 87 22 28 86   ; $ff9d: 87 22 28 86   Data
            .hex 08 87 1c 22   ; $ffa1: 08 87 1c 22   Data
            .hex 83 06 e8 07   ; $ffa5: 83 06 e8 07   Data
            .hex ce 11 d2 05   ; $ffa9: ce 11 d2 05   Data
            .hex 00 04 10 04   ; $ffad: 00 04 10 04   Data
            .hex 10 04 10 04   ; $ffb1: 10 04 10 04   Data
            .hex 50 00         ; $ffb5: 50 00         Data
__ffb7:     .hex 00 00 00 00   ; $ffb7: 00 00 00 00   Data
            .hex 13 2e 9f 99   ; $ffbb: 13 2e 9f 99   Data
            .hex 95 59 9f 9f   ; $ffbf: 95 59 9f 9f   Data
            .hex 59 95 99 a3   ; $ffc3: 59 95 99 a3   Data
            .hex 9d 99 5d a3   ; $ffc7: 9d 99 5d a3   Data
            .hex a3 5d 99 9d   ; $ffcb: a3 5d 99 9d   Data
            .hex 00 5e 9e 54   ; $ffcf: 00 5e 9e 54   Data
            .hex 5e 9e 54 5e   ; $ffd3: 5e 9e 54 5e   Data
            .hex 9e 54 5e 5c   ; $ffd7: 9e 54 5e 5c   Data
            .hex 5e 60 62 a2   ; $ffdb: 5e 60 62 a2   Data
            .hex 58 62 a2 58   ; $ffdf: 58 62 a2 58   Data
            .hex 62 a2 58 62   ; $ffe3: 62 a2 58 62   Data
            .hex 60 62 64 00   ; $ffe7: 60 62 64 00   Data
            .hex 06 06 06 06   ; $ffeb: 06 06 06 06   Data
            .hex 08            ; $ffef: 08            Data

;-------------------------------------------------------------------------------
; irq/brk vector
;-------------------------------------------------------------------------------
irq:        .hex 0a 0c 0c 0c   ; $fff0: 0a 0c 0c 0c   Data
            .hex 0c 0a 08 00   ; $fff4: 0c 0a 08 00   Data
            .hex ff ff         ; $fff8: ff ff         Data

;-------------------------------------------------------------------------------
; Vector Table
;-------------------------------------------------------------------------------
vectors:    .dw nmi                        ; $fffa: e6 c6     Vector table
            .dw reset                      ; $fffc: 6e c6     Vector table
            .dw irq                        ; $fffe: f0 ff     Vector table

;-------------------------------------------------------------------------------
; CHR-ROM
;-------------------------------------------------------------------------------
            .incbin DonkeyKongJr.chr ; Include CHR-ROM
