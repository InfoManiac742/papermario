.include "macro.inc"

.section .data

dlabel _osViModeNtscLan1
.word 0x02000000, 0x0000311E, 0x00000140, 0x03E52239, 0x0000020D, 0x00000C15, 0x0C150C15, 0x006C02EC, 0x00000200, 0x00000000, 0x00000280, 0x00000400, 0x002501FF, 0x000E0204, 0x00000002, 0x00000280, 0x00000400, 0x002501FF, 0x000E0204, 0x00000002

dlabel _osViModeMPalLan1
.word 0x1E000000, 0x0000311E, 0x00000140, 0x04651E39, 0x0000020D, 0x00040C11, 0x0C190C1A, 0x006C02EC, 0x00000200, 0x00000000, 0x00000280, 0x00000400, 0x002501FF, 0x000E0204, 0x00000002, 0x00000280, 0x00000400, 0x002501FF, 0x000E0204, 0x00000002

dlabel D_800958C0
.float 0.017453292, 0.0, 0.0, 0.0

dlabel __osPfsInodeCacheChannel
.word 0xFFFFFFFF

dlabel __osPfsInodeCacheBank
.byte 0xFA, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

dlabel __osPfsLastChannel
.word 0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000000

dlabel D_800958F0
.word 0x00000000

dlabel D_800958F4
.word 0x03B9ACA0

dlabel osViClock
.word 0x02E6D354

dlabel __osShutdown
.word 0x00000000

dlabel __OSGlobalIntMask
.word 0x003FFF01, 0x00000000, 0x00000000, 0x00000000

dlabel D_80095910
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

dlabel D_80095938
.word 0x00000000, 0x00000000

dlabel D_80095940
.ascii "0123456789abcdef\0\0\0\0"

dlabel D_80095954
.ascii "0123456789ABCDEF\0\0\0\0\0\0\0\0\0\0\0\0"

dlabel vi
.short 0x0000

dlabel D_80095972
.short 0x0000

dlabel D_80095974
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

dlabel D_800959A0
.short 0x0000

dlabel D_800959A2
.short 0x0000

dlabel D_800959A4
.word 0x00000000

dlabel D_800959A8
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000, 0x00000000

dlabel __osViCurr
.word vi

dlabel __osViNext
.word D_800959A0, 0x00000000, 0x00000000

dlabel D_800959E0
.word 0x10000000, 0x0000311E, 0x00000140, 0x04541E3A, 0x00000271, 0x00170C69, 0x0C6F0C6D, 0x00800300, 0x00000200, 0x00000000, 0x00000280, 0x00000400, 0x005F0239, 0x0009026B, 0x00000002, 0x00000280, 0x00000400, 0x005F0239, 0x0009026B, 0x00000002