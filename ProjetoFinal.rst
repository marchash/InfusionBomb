                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
                              4 ; This file was generated Fri Nov 18 19:14:50 2011
                              5 ;--------------------------------------------------------
                              6 	.module ProjetoFinal
                              7 	.optsdcc -mmcs51 --model-small
                              8 	
                              9 ;--------------------------------------------------------
                             10 ; Public variables in this module
                             11 ;--------------------------------------------------------
                             12 	.globl _main
                             13 	.globl _int_EX0
                             14 	.globl _mostratemperatura
                             15 	.globl _imprimeTemp
                             16 	.globl _get_temperature
                             17 	.globl _adc_read
                             18 	.globl _mostraDisplay
                             19 	.globl _progAlarm
                             20 	.globl _prog
                             21 	.globl _initTempoReal
                             22 	.globl _line
                             23 	.globl _cleardisplay
                             24 	.globl _progrdisplay
                             25 	.globl _printDisplay
                             26 	.globl _displaydata
                             27 	.globl _displaycommand
                             28 	.globl _delay
                             29 	.globl _Key_ASCII2BIN
                             30 	.globl _EsperaSoltarTecla
                             31 	.globl _NovaTeclaKeyDown
                             32 	.globl _TeclaPressionada
                             33 	.globl _BCDtoStr
                             34 	.globl _desliga_aquecedor
                             35 	.globl _liga_aquecedor
                             36 	.globl _desliga_motor
                             37 	.globl _liga_motor
                             38 	.globl _CY
                             39 	.globl _AC
                             40 	.globl _F0
                             41 	.globl _RS1
                             42 	.globl _RS0
                             43 	.globl _OV
                             44 	.globl _F1
                             45 	.globl _P
                             46 	.globl _PS
                             47 	.globl _PT1
                             48 	.globl _PX1
                             49 	.globl _PT0
                             50 	.globl _PX0
                             51 	.globl _RD
                             52 	.globl _WR
                             53 	.globl _T1
                             54 	.globl _T0
                             55 	.globl _INT1
                             56 	.globl _INT0
                             57 	.globl _TXD
                             58 	.globl _RXD
                             59 	.globl _P3_7
                             60 	.globl _P3_6
                             61 	.globl _P3_5
                             62 	.globl _P3_4
                             63 	.globl _P3_3
                             64 	.globl _P3_2
                             65 	.globl _P3_1
                             66 	.globl _P3_0
                             67 	.globl _EA
                             68 	.globl _ES
                             69 	.globl _ET1
                             70 	.globl _EX1
                             71 	.globl _ET0
                             72 	.globl _EX0
                             73 	.globl _P2_7
                             74 	.globl _P2_6
                             75 	.globl _P2_5
                             76 	.globl _P2_4
                             77 	.globl _P2_3
                             78 	.globl _P2_2
                             79 	.globl _P2_1
                             80 	.globl _P2_0
                             81 	.globl _SM0
                             82 	.globl _SM1
                             83 	.globl _SM2
                             84 	.globl _REN
                             85 	.globl _TB8
                             86 	.globl _RB8
                             87 	.globl _TI
                             88 	.globl _RI
                             89 	.globl _P1_7
                             90 	.globl _P1_6
                             91 	.globl _P1_5
                             92 	.globl _P1_4
                             93 	.globl _P1_3
                             94 	.globl _P1_2
                             95 	.globl _P1_1
                             96 	.globl _P1_0
                             97 	.globl _TF1
                             98 	.globl _TR1
                             99 	.globl _TF0
                            100 	.globl _TR0
                            101 	.globl _IE1
                            102 	.globl _IT1
                            103 	.globl _IE0
                            104 	.globl _IT0
                            105 	.globl _P0_7
                            106 	.globl _P0_6
                            107 	.globl _P0_5
                            108 	.globl _P0_4
                            109 	.globl _P0_3
                            110 	.globl _P0_2
                            111 	.globl _P0_1
                            112 	.globl _P0_0
                            113 	.globl _B
                            114 	.globl _ACC
                            115 	.globl _PSW
                            116 	.globl _IP
                            117 	.globl _P3
                            118 	.globl _IE
                            119 	.globl _P2
                            120 	.globl _SBUF
                            121 	.globl _SCON
                            122 	.globl _P1
                            123 	.globl _TH1
                            124 	.globl _TH0
                            125 	.globl _TL1
                            126 	.globl _TL0
                            127 	.globl _TMOD
                            128 	.globl _TCON
                            129 	.globl _PCON
                            130 	.globl _DPH
                            131 	.globl _DPL
                            132 	.globl _SP
                            133 	.globl _P0
                            134 	.globl _vet_adc_interrupt
                            135 	.globl _vetorInterrEX0
                            136 	.globl _adc_data
                            137 	.globl _userRam
                            138 	.globl _regD
                            139 	.globl _regC
                            140 	.globl _regB
                            141 	.globl _regA
                            142 	.globl _year
                            143 	.globl _mounth
                            144 	.globl _dateOfMounth
                            145 	.globl _dayOfWeek
                            146 	.globl _hoursAlarm
                            147 	.globl _hours
                            148 	.globl _minAlarm
                            149 	.globl _minutes
                            150 	.globl _secAlarm
                            151 	.globl _seconds
                            152 	.globl _rstatus
                            153 	.globl _wcommand
                            154 	.globl _rdata
                            155 	.globl _wdata
                            156 	.globl _indicador1
                            157 	.globl _i
                            158 	.globl _indicador
                            159 	.globl _qtd_quociente
                            160 	.globl _qtd_real
                            161 	.globl _qtd
                            162 	.globl _alarme
                            163 ;--------------------------------------------------------
                            164 ; special function registers
                            165 ;--------------------------------------------------------
                            166 	.area RSEG    (ABS,DATA)
   0000                     167 	.org 0x0000
                    0080    168 _P0	=	0x0080
                    0081    169 _SP	=	0x0081
                    0082    170 _DPL	=	0x0082
                    0083    171 _DPH	=	0x0083
                    0087    172 _PCON	=	0x0087
                    0088    173 _TCON	=	0x0088
                    0089    174 _TMOD	=	0x0089
                    008A    175 _TL0	=	0x008a
                    008B    176 _TL1	=	0x008b
                    008C    177 _TH0	=	0x008c
                    008D    178 _TH1	=	0x008d
                    0090    179 _P1	=	0x0090
                    0098    180 _SCON	=	0x0098
                    0099    181 _SBUF	=	0x0099
                    00A0    182 _P2	=	0x00a0
                    00A8    183 _IE	=	0x00a8
                    00B0    184 _P3	=	0x00b0
                    00B8    185 _IP	=	0x00b8
                    00D0    186 _PSW	=	0x00d0
                    00E0    187 _ACC	=	0x00e0
                    00F0    188 _B	=	0x00f0
                            189 ;--------------------------------------------------------
                            190 ; special function bits
                            191 ;--------------------------------------------------------
                            192 	.area RSEG    (ABS,DATA)
   0000                     193 	.org 0x0000
                    0080    194 _P0_0	=	0x0080
                    0081    195 _P0_1	=	0x0081
                    0082    196 _P0_2	=	0x0082
                    0083    197 _P0_3	=	0x0083
                    0084    198 _P0_4	=	0x0084
                    0085    199 _P0_5	=	0x0085
                    0086    200 _P0_6	=	0x0086
                    0087    201 _P0_7	=	0x0087
                    0088    202 _IT0	=	0x0088
                    0089    203 _IE0	=	0x0089
                    008A    204 _IT1	=	0x008a
                    008B    205 _IE1	=	0x008b
                    008C    206 _TR0	=	0x008c
                    008D    207 _TF0	=	0x008d
                    008E    208 _TR1	=	0x008e
                    008F    209 _TF1	=	0x008f
                    0090    210 _P1_0	=	0x0090
                    0091    211 _P1_1	=	0x0091
                    0092    212 _P1_2	=	0x0092
                    0093    213 _P1_3	=	0x0093
                    0094    214 _P1_4	=	0x0094
                    0095    215 _P1_5	=	0x0095
                    0096    216 _P1_6	=	0x0096
                    0097    217 _P1_7	=	0x0097
                    0098    218 _RI	=	0x0098
                    0099    219 _TI	=	0x0099
                    009A    220 _RB8	=	0x009a
                    009B    221 _TB8	=	0x009b
                    009C    222 _REN	=	0x009c
                    009D    223 _SM2	=	0x009d
                    009E    224 _SM1	=	0x009e
                    009F    225 _SM0	=	0x009f
                    00A0    226 _P2_0	=	0x00a0
                    00A1    227 _P2_1	=	0x00a1
                    00A2    228 _P2_2	=	0x00a2
                    00A3    229 _P2_3	=	0x00a3
                    00A4    230 _P2_4	=	0x00a4
                    00A5    231 _P2_5	=	0x00a5
                    00A6    232 _P2_6	=	0x00a6
                    00A7    233 _P2_7	=	0x00a7
                    00A8    234 _EX0	=	0x00a8
                    00A9    235 _ET0	=	0x00a9
                    00AA    236 _EX1	=	0x00aa
                    00AB    237 _ET1	=	0x00ab
                    00AC    238 _ES	=	0x00ac
                    00AF    239 _EA	=	0x00af
                    00B0    240 _P3_0	=	0x00b0
                    00B1    241 _P3_1	=	0x00b1
                    00B2    242 _P3_2	=	0x00b2
                    00B3    243 _P3_3	=	0x00b3
                    00B4    244 _P3_4	=	0x00b4
                    00B5    245 _P3_5	=	0x00b5
                    00B6    246 _P3_6	=	0x00b6
                    00B7    247 _P3_7	=	0x00b7
                    00B0    248 _RXD	=	0x00b0
                    00B1    249 _TXD	=	0x00b1
                    00B2    250 _INT0	=	0x00b2
                    00B3    251 _INT1	=	0x00b3
                    00B4    252 _T0	=	0x00b4
                    00B5    253 _T1	=	0x00b5
                    00B6    254 _WR	=	0x00b6
                    00B7    255 _RD	=	0x00b7
                    00B8    256 _PX0	=	0x00b8
                    00B9    257 _PT0	=	0x00b9
                    00BA    258 _PX1	=	0x00ba
                    00BB    259 _PT1	=	0x00bb
                    00BC    260 _PS	=	0x00bc
                    00D0    261 _P	=	0x00d0
                    00D1    262 _F1	=	0x00d1
                    00D2    263 _OV	=	0x00d2
                    00D3    264 _RS0	=	0x00d3
                    00D4    265 _RS1	=	0x00d4
                    00D5    266 _F0	=	0x00d5
                    00D6    267 _AC	=	0x00d6
                    00D7    268 _CY	=	0x00d7
                            269 ;--------------------------------------------------------
                            270 ; overlayable register banks
                            271 ;--------------------------------------------------------
                            272 	.area REG_BANK_0	(REL,OVR,DATA)
   0000                     273 	.ds 8
                            274 	.area REG_BANK_2	(REL,OVR,DATA)
   0010                     275 	.ds 8
                            276 ;--------------------------------------------------------
                            277 ; overlayable bit register bank
                            278 ;--------------------------------------------------------
                            279 	.area BIT_BANK	(REL,OVR,DATA)
   0020                     280 bits:
   0020                     281 	.ds 1
                    8000    282 	b0 = bits[0]
                    8100    283 	b1 = bits[1]
                    8200    284 	b2 = bits[2]
                    8300    285 	b3 = bits[3]
                    8400    286 	b4 = bits[4]
                    8500    287 	b5 = bits[5]
                    8600    288 	b6 = bits[6]
                    8700    289 	b7 = bits[7]
                            290 ;--------------------------------------------------------
                            291 ; internal ram data
                            292 ;--------------------------------------------------------
                            293 	.area DSEG    (DATA)
   0021                     294 _alarme::
   0021                     295 	.ds 1
   0022                     296 _qtd::
   0022                     297 	.ds 4
   0026                     298 _qtd_real::
   0026                     299 	.ds 2
   0028                     300 _qtd_quociente::
   0028                     301 	.ds 2
   002A                     302 _indicador::
   002A                     303 	.ds 2
   002C                     304 _i::
   002C                     305 	.ds 2
   002E                     306 _indicador1::
   002E                     307 	.ds 2
   0030                     308 _prog_aux_1_1:
   0030                     309 	.ds 2
   0032                     310 _progAlarm_aux_1_1:
   0032                     311 	.ds 2
   0034                     312 _imprimeTemp_buffer_1_1:
   0034                     313 	.ds 5
                            314 ;--------------------------------------------------------
                            315 ; overlayable items in internal ram 
                            316 ;--------------------------------------------------------
                            317 	.area	OSEG    (OVR,DATA)
   0008                     318 _BCDtoStr_aux_1_1::
   0008                     319 	.ds 3
                            320 	.area	OSEG    (OVR,DATA)
                            321 	.area	OSEG    (OVR,DATA)
                            322 	.area	OSEG    (OVR,DATA)
                            323 ;--------------------------------------------------------
                            324 ; Stack segment in internal ram 
                            325 ;--------------------------------------------------------
                            326 	.area	SSEG	(DATA)
   0039                     327 __start__stack:
   0039                     328 	.ds	1
                            329 
                            330 ;--------------------------------------------------------
                            331 ; indirectly addressable internal ram data
                            332 ;--------------------------------------------------------
                            333 	.area ISEG    (DATA)
                            334 ;--------------------------------------------------------
                            335 ; absolute internal ram data
                            336 ;--------------------------------------------------------
                            337 	.area IABS    (ABS,DATA)
                            338 	.area IABS    (ABS,DATA)
                            339 ;--------------------------------------------------------
                            340 ; bit data
                            341 ;--------------------------------------------------------
                            342 	.area BSEG    (BIT)
                            343 ;--------------------------------------------------------
                            344 ; paged external ram data
                            345 ;--------------------------------------------------------
                            346 	.area PSEG    (PAG,XDATA)
                            347 ;--------------------------------------------------------
                            348 ; external ram data
                            349 ;--------------------------------------------------------
                            350 	.area XSEG    (XDATA)
                    2010    351 _wdata	=	0x2010
                    2030    352 _rdata	=	0x2030
                    2000    353 _wcommand	=	0x2000
                    2020    354 _rstatus	=	0x2020
                    2100    355 _seconds	=	0x2100
                    2101    356 _secAlarm	=	0x2101
                    2102    357 _minutes	=	0x2102
                    2103    358 _minAlarm	=	0x2103
                    2104    359 _hours	=	0x2104
                    2105    360 _hoursAlarm	=	0x2105
                    2106    361 _dayOfWeek	=	0x2106
                    2107    362 _dateOfMounth	=	0x2107
                    2108    363 _mounth	=	0x2108
                    2109    364 _year	=	0x2109
                    210A    365 _regA	=	0x210a
                    210B    366 _regB	=	0x210b
                    210C    367 _regC	=	0x210c
                    210D    368 _regD	=	0x210d
                    210E    369 _userRam	=	0x210e
                    2200    370 _adc_data	=	0x2200
                            371 ;--------------------------------------------------------
                            372 ; absolute external ram data
                            373 ;--------------------------------------------------------
                            374 	.area XABS    (ABS,XDATA)
   FFF0                     375 	.org 0xFFF0
   FFF0                     376 _vetorInterrEX0::
   FFF0                     377 	.ds 3
   FFF6                     378 	.org 0xFFF6
   FFF6                     379 _vet_adc_interrupt::
   FFF6                     380 	.ds 3
                            381 ;--------------------------------------------------------
                            382 ; external initialized ram data
                            383 ;--------------------------------------------------------
                            384 	.area XISEG   (XDATA)
                            385 	.area HOME    (CODE)
                            386 	.area GSINIT0 (CODE)
                            387 	.area GSINIT1 (CODE)
                            388 	.area GSINIT2 (CODE)
                            389 	.area GSINIT3 (CODE)
                            390 	.area GSINIT4 (CODE)
                            391 	.area GSINIT5 (CODE)
                            392 	.area GSINIT  (CODE)
                            393 	.area GSFINAL (CODE)
                            394 	.area CSEG    (CODE)
                            395 ;--------------------------------------------------------
                            396 ; interrupt vector 
                            397 ;--------------------------------------------------------
                            398 	.area HOME    (CODE)
   A000                     399 __interrupt_vect:
   A000 02 A0 0B            400 	ljmp	__sdcc_gsinit_startup
   A003 02 AF DA            401 	ljmp	_int_EX0
                            402 ;--------------------------------------------------------
                            403 ; global & static initialisations
                            404 ;--------------------------------------------------------
                            405 	.area HOME    (CODE)
                            406 	.area GSINIT  (CODE)
                            407 	.area GSFINAL (CODE)
                            408 	.area GSINIT  (CODE)
                            409 	.globl __sdcc_gsinit_startup
                            410 	.globl __sdcc_program_startup
                            411 	.globl __start__stack
                            412 	.globl __mcs51_genXINIT
                            413 	.globl __mcs51_genXRAMCLEAR
                            414 	.globl __mcs51_genRAMCLEAR
                            415 ;	ProjetoFinal.c:48: unsigned char alarme = 0;
   A064 75 21 00            416 	mov	_alarme,#0x00
                            417 ;	ProjetoFinal.c:51: unsigned int indicador = 0;
   A067 E4                  418 	clr	a
   A068 F5 2A               419 	mov	_indicador,a
   A06A F5 2B               420 	mov	(_indicador + 1),a
                            421 ;	ProjetoFinal.c:53: unsigned int indicador1 = 0;
   A06C E4                  422 	clr	a
   A06D F5 2E               423 	mov	_indicador1,a
   A06F F5 2F               424 	mov	(_indicador1 + 1),a
                            425 ;	ProjetoFinal.c:46: unsigned char __far __at @0xFFF0 vetorInterrEX0[3] = {0x02, 0xA0, 0x03};
   A071 90 FF F0            426 	mov	dptr,#_vetorInterrEX0
   A074 74 02               427 	mov	a,#0x02
   A076 F0                  428 	movx	@dptr,a
   A077 90 FF F1            429 	mov	dptr,#(_vetorInterrEX0 + 0x0001)
   A07A 74 A0               430 	mov	a,#0xA0
   A07C F0                  431 	movx	@dptr,a
   A07D 90 FF F2            432 	mov	dptr,#(_vetorInterrEX0 + 0x0002)
   A080 74 03               433 	mov	a,#0x03
   A082 F0                  434 	movx	@dptr,a
                            435 ;	ProjetoFinal.c:75: unsigned char __far __at @0xFFF6 vet_adc_interrupt[] = {0x02, 0xA0, 0x13};
   A083 90 FF F6            436 	mov	dptr,#_vet_adc_interrupt
   A086 74 02               437 	mov	a,#0x02
   A088 F0                  438 	movx	@dptr,a
   A089 90 FF F7            439 	mov	dptr,#(_vet_adc_interrupt + 0x0001)
   A08C 74 A0               440 	mov	a,#0xA0
   A08E F0                  441 	movx	@dptr,a
   A08F 90 FF F8            442 	mov	dptr,#(_vet_adc_interrupt + 0x0002)
   A092 74 13               443 	mov	a,#0x13
   A094 F0                  444 	movx	@dptr,a
                            445 	.area GSFINAL (CODE)
   A095 02 A0 06            446 	ljmp	__sdcc_program_startup
                            447 ;--------------------------------------------------------
                            448 ; Home
                            449 ;--------------------------------------------------------
                            450 	.area HOME    (CODE)
                            451 	.area HOME    (CODE)
   A006                     452 __sdcc_program_startup:
   A006 12 B3 1F            453 	lcall	_main
                            454 ;	return from main will lock up
   A009 80 FE               455 	sjmp .
                            456 ;--------------------------------------------------------
                            457 ; code
                            458 ;--------------------------------------------------------
                            459 	.area CSEG    (CODE)
                            460 ;------------------------------------------------------------
                            461 ;Allocation info for local variables in function 'liga_motor'
                            462 ;------------------------------------------------------------
                            463 ;------------------------------------------------------------
                            464 ;	ProjetoFinal.c:55: void liga_motor (void)
                            465 ;	-----------------------------------------
                            466 ;	 function liga_motor
                            467 ;	-----------------------------------------
   A098                     468 _liga_motor:
                    0002    469 	ar2 = 0x02
                    0003    470 	ar3 = 0x03
                    0004    471 	ar4 = 0x04
                    0005    472 	ar5 = 0x05
                    0006    473 	ar6 = 0x06
                    0007    474 	ar7 = 0x07
                    0000    475 	ar0 = 0x00
                    0001    476 	ar1 = 0x01
                            477 ;	ProjetoFinal.c:57: T0 = 0;
   A098 C2 B4               478 	clr	_T0
   A09A 22                  479 	ret
                            480 ;------------------------------------------------------------
                            481 ;Allocation info for local variables in function 'desliga_motor'
                            482 ;------------------------------------------------------------
                            483 ;------------------------------------------------------------
                            484 ;	ProjetoFinal.c:60: void desliga_motor (void)
                            485 ;	-----------------------------------------
                            486 ;	 function desliga_motor
                            487 ;	-----------------------------------------
   A09B                     488 _desliga_motor:
                            489 ;	ProjetoFinal.c:62: T0 = 1;
   A09B D2 B4               490 	setb	_T0
   A09D 22                  491 	ret
                            492 ;------------------------------------------------------------
                            493 ;Allocation info for local variables in function 'liga_aquecedor'
                            494 ;------------------------------------------------------------
                            495 ;------------------------------------------------------------
                            496 ;	ProjetoFinal.c:65: void liga_aquecedor (void)
                            497 ;	-----------------------------------------
                            498 ;	 function liga_aquecedor
                            499 ;	-----------------------------------------
   A09E                     500 _liga_aquecedor:
                            501 ;	ProjetoFinal.c:67: T1 = 0;
   A09E C2 B5               502 	clr	_T1
   A0A0 22                  503 	ret
                            504 ;------------------------------------------------------------
                            505 ;Allocation info for local variables in function 'desliga_aquecedor'
                            506 ;------------------------------------------------------------
                            507 ;------------------------------------------------------------
                            508 ;	ProjetoFinal.c:70: void desliga_aquecedor (void)
                            509 ;	-----------------------------------------
                            510 ;	 function desliga_aquecedor
                            511 ;	-----------------------------------------
   A0A1                     512 _desliga_aquecedor:
                            513 ;	ProjetoFinal.c:72: T1 = 1;
   A0A1 D2 B5               514 	setb	_T1
   A0A3 22                  515 	ret
                            516 ;------------------------------------------------------------
                            517 ;Allocation info for local variables in function 'BCDtoStr'
                            518 ;------------------------------------------------------------
                            519 ;BCD                       Allocated to registers r2 
                            520 ;aux                       Allocated with name '_BCDtoStr_aux_1_1'
                            521 ;------------------------------------------------------------
                            522 ;	ProjetoFinal.c:78: unsigned char *BCDtoStr(unsigned char BCD){
                            523 ;	-----------------------------------------
                            524 ;	 function BCDtoStr
                            525 ;	-----------------------------------------
   A0A4                     526 _BCDtoStr:
                            527 ;	ProjetoFinal.c:81: aux[0] = BCD / 0x10; // pega o primeiro digito
   A0A4 E5 82               528 	mov	a,dpl
   A0A6 FA                  529 	mov	r2,a
   A0A7 C4                  530 	swap	a
   A0A8 54 0F               531 	anl	a,#0x0f
   A0AA FB                  532 	mov	r3,a
   A0AB 8B 08               533 	mov	_BCDtoStr_aux_1_1,r3
                            534 ;	ProjetoFinal.c:82: aux[0] += 0x30;
   A0AD 74 30               535 	mov	a,#0x30
   A0AF 2B                  536 	add	a,r3
   A0B0 F5 08               537 	mov	_BCDtoStr_aux_1_1,a
                            538 ;	ProjetoFinal.c:84: aux[1] = BCD & 0x0F;// pega o digito menos significativo
   A0B2 53 02 0F            539 	anl	ar2,#0x0F
   A0B5 8A 09               540 	mov	(_BCDtoStr_aux_1_1 + 0x0001),r2
                            541 ;	ProjetoFinal.c:85: aux[1] += 0x30;
   A0B7 74 30               542 	mov	a,#0x30
   A0B9 2A                  543 	add	a,r2
   A0BA F5 09               544 	mov	(_BCDtoStr_aux_1_1 + 0x0001),a
                            545 ;	ProjetoFinal.c:87: aux[2] = 0;
   A0BC 75 0A 00            546 	mov	(_BCDtoStr_aux_1_1 + 0x0002),#0x00
                            547 ;	ProjetoFinal.c:89: return aux;
   A0BF 90 00 08            548 	mov	dptr,#_BCDtoStr_aux_1_1
   A0C2 75 F0 40            549 	mov	b,#0x40
   A0C5 22                  550 	ret
                            551 ;------------------------------------------------------------
                            552 ;Allocation info for local variables in function 'TeclaPressionada'
                            553 ;------------------------------------------------------------
                            554 ;------------------------------------------------------------
                            555 ;	ProjetoFinal.c:113: char TeclaPressionada(){
                            556 ;	-----------------------------------------
                            557 ;	 function TeclaPressionada
                            558 ;	-----------------------------------------
   A0C6                     559 _TeclaPressionada:
                            560 ;	ProjetoFinal.c:114: P1=0xFF;
   A0C6 75 90 FF            561 	mov	_P1,#0xFF
                            562 ;	ProjetoFinal.c:115: P1_0=0;
   A0C9 C2 90               563 	clr	_P1_0
                            564 ;	ProjetoFinal.c:116: if(P1_4==0) return TECLA04;
   A0CB 20 94 04            565 	jb	_P1_4,00102$
   A0CE 75 82 46            566 	mov	dpl,#0x46
   A0D1 22                  567 	ret
   A0D2                     568 00102$:
                            569 ;	ProjetoFinal.c:117: if(P1_5==0) return TECLA05;
   A0D2 20 95 04            570 	jb	_P1_5,00104$
   A0D5 75 82 45            571 	mov	dpl,#0x45
   A0D8 22                  572 	ret
   A0D9                     573 00104$:
                            574 ;	ProjetoFinal.c:118: if(P1_6==0) return TECLA06;
   A0D9 20 96 04            575 	jb	_P1_6,00106$
   A0DC 75 82 44            576 	mov	dpl,#0x44
   A0DF 22                  577 	ret
   A0E0                     578 00106$:
                            579 ;	ProjetoFinal.c:119: if(P1_7==0) return TECLA07;
   A0E0 20 97 04            580 	jb	_P1_7,00108$
   A0E3 75 82 43            581 	mov	dpl,#0x43
   A0E6 22                  582 	ret
   A0E7                     583 00108$:
                            584 ;	ProjetoFinal.c:121: P1=0xFF;
   A0E7 75 90 FF            585 	mov	_P1,#0xFF
                            586 ;	ProjetoFinal.c:122: P1_1=0;
   A0EA C2 91               587 	clr	_P1_1
                            588 ;	ProjetoFinal.c:123: if(P1_4==0) return TECLA14;
   A0EC 20 94 04            589 	jb	_P1_4,00110$
   A0EF 75 82 33            590 	mov	dpl,#0x33
   A0F2 22                  591 	ret
   A0F3                     592 00110$:
                            593 ;	ProjetoFinal.c:124: if(P1_5==0) return TECLA15;
   A0F3 20 95 04            594 	jb	_P1_5,00112$
   A0F6 75 82 32            595 	mov	dpl,#0x32
   A0F9 22                  596 	ret
   A0FA                     597 00112$:
                            598 ;	ProjetoFinal.c:125: if(P1_6==0) return TECLA16;
   A0FA 20 96 04            599 	jb	_P1_6,00114$
   A0FD 75 82 31            600 	mov	dpl,#0x31
   A100 22                  601 	ret
   A101                     602 00114$:
                            603 ;	ProjetoFinal.c:126: if(P1_7==0) return TECLA17;
   A101 20 97 04            604 	jb	_P1_7,00116$
   A104 75 82 30            605 	mov	dpl,#0x30
   A107 22                  606 	ret
   A108                     607 00116$:
                            608 ;	ProjetoFinal.c:128: P1=0xFF;
   A108 75 90 FF            609 	mov	_P1,#0xFF
                            610 ;	ProjetoFinal.c:129: P1_2=0;
   A10B C2 92               611 	clr	_P1_2
                            612 ;	ProjetoFinal.c:130: if(P1_4==0) return TECLA24;
   A10D 20 94 04            613 	jb	_P1_4,00118$
   A110 75 82 42            614 	mov	dpl,#0x42
   A113 22                  615 	ret
   A114                     616 00118$:
                            617 ;	ProjetoFinal.c:131: if(P1_5==0) return TECLA25;
   A114 20 95 04            618 	jb	_P1_5,00120$
   A117 75 82 41            619 	mov	dpl,#0x41
   A11A 22                  620 	ret
   A11B                     621 00120$:
                            622 ;	ProjetoFinal.c:132: if(P1_6==0) return TECLA26;
   A11B 20 96 04            623 	jb	_P1_6,00122$
   A11E 75 82 39            624 	mov	dpl,#0x39
   A121 22                  625 	ret
   A122                     626 00122$:
                            627 ;	ProjetoFinal.c:133: if(P1_7==0) return TECLA27;
   A122 20 97 04            628 	jb	_P1_7,00124$
   A125 75 82 38            629 	mov	dpl,#0x38
   A128 22                  630 	ret
   A129                     631 00124$:
                            632 ;	ProjetoFinal.c:135: P1=0xFF;
   A129 75 90 FF            633 	mov	_P1,#0xFF
                            634 ;	ProjetoFinal.c:136: P1_3=0;
   A12C C2 93               635 	clr	_P1_3
                            636 ;	ProjetoFinal.c:137: if(P1_4==0) return TECLA34;
   A12E 20 94 04            637 	jb	_P1_4,00126$
   A131 75 82 37            638 	mov	dpl,#0x37
   A134 22                  639 	ret
   A135                     640 00126$:
                            641 ;	ProjetoFinal.c:138: if(P1_5==0) return TECLA35;
   A135 20 95 04            642 	jb	_P1_5,00128$
   A138 75 82 36            643 	mov	dpl,#0x36
   A13B 22                  644 	ret
   A13C                     645 00128$:
                            646 ;	ProjetoFinal.c:139: if(P1_6==0) return TECLA36;
   A13C 20 96 04            647 	jb	_P1_6,00130$
   A13F 75 82 35            648 	mov	dpl,#0x35
   A142 22                  649 	ret
   A143                     650 00130$:
                            651 ;	ProjetoFinal.c:140: if(P1_7==0) return TECLA37;
   A143 20 97 04            652 	jb	_P1_7,00132$
   A146 75 82 34            653 	mov	dpl,#0x34
                            654 ;	ProjetoFinal.c:142: return 0; /* Nada foi pressionado */
   A149 22                  655 	ret
   A14A                     656 00132$:
   A14A 75 82 00            657 	mov	dpl,#0x00
   A14D 22                  658 	ret
                            659 ;------------------------------------------------------------
                            660 ;Allocation info for local variables in function 'NovaTeclaKeyDown'
                            661 ;------------------------------------------------------------
                            662 ;tmp                       Allocated to registers r2 
                            663 ;tmp2                      Allocated to registers r5 
                            664 ;i                         Allocated to registers r3 r4 
                            665 ;------------------------------------------------------------
                            666 ;	ProjetoFinal.c:145: char NovaTeclaKeyDown(){
                            667 ;	-----------------------------------------
                            668 ;	 function NovaTeclaKeyDown
                            669 ;	-----------------------------------------
   A14E                     670 _NovaTeclaKeyDown:
                            671 ;	ProjetoFinal.c:148: tmp = TeclaPressionada();
   A14E 12 A0 C6            672 	lcall	_TeclaPressionada
   A151 AA 82               673 	mov	r2,dpl
                            674 ;	ProjetoFinal.c:150: for(i=0;i<DEBOUNCE_REPEATS;i++){
   A153 7B 00               675 	mov	r3,#0x00
   A155 7C 00               676 	mov	r4,#0x00
   A157                     677 00104$:
   A157 C3                  678 	clr	c
   A158 EB                  679 	mov	a,r3
   A159 94 B8               680 	subb	a,#0xB8
   A15B EC                  681 	mov	a,r4
   A15C 64 80               682 	xrl	a,#0x80
   A15E 94 8B               683 	subb	a,#0x8b
   A160 50 25               684 	jnc	00107$
                            685 ;	ProjetoFinal.c:151: tmp2 = TeclaPressionada();
   A162 C0 02               686 	push	ar2
   A164 C0 03               687 	push	ar3
   A166 C0 04               688 	push	ar4
   A168 12 A0 C6            689 	lcall	_TeclaPressionada
   A16B AD 82               690 	mov	r5,dpl
   A16D D0 04               691 	pop	ar4
   A16F D0 03               692 	pop	ar3
   A171 D0 02               693 	pop	ar2
                            694 ;	ProjetoFinal.c:152: if((tmp != tmp2) || (tmp2 == 0)){
   A173 EA                  695 	mov	a,r2
   A174 B5 05 03            696 	cjne	a,ar5,00101$
   A177 ED                  697 	mov	a,r5
   A178 70 06               698 	jnz	00106$
   A17A                     699 00101$:
                            700 ;	ProjetoFinal.c:153: i = -1;      /* Recomeça a varredura, não passou no teste do debounce */
   A17A 7B FF               701 	mov	r3,#0xFF
   A17C 7C FF               702 	mov	r4,#0xFF
                            703 ;	ProjetoFinal.c:154: tmp = tmp2;
   A17E 8D 02               704 	mov	ar2,r5
   A180                     705 00106$:
                            706 ;	ProjetoFinal.c:150: for(i=0;i<DEBOUNCE_REPEATS;i++){
   A180 0B                  707 	inc	r3
   A181 BB 00 D3            708 	cjne	r3,#0x00,00104$
   A184 0C                  709 	inc	r4
   A185 80 D0               710 	sjmp	00104$
   A187                     711 00107$:
                            712 ;	ProjetoFinal.c:157: return tmp;
   A187 8A 82               713 	mov	dpl,r2
   A189 22                  714 	ret
                            715 ;------------------------------------------------------------
                            716 ;Allocation info for local variables in function 'EsperaSoltarTecla'
                            717 ;------------------------------------------------------------
                            718 ;i                         Allocated to registers r2 r3 
                            719 ;------------------------------------------------------------
                            720 ;	ProjetoFinal.c:160: void EsperaSoltarTecla(){
                            721 ;	-----------------------------------------
                            722 ;	 function EsperaSoltarTecla
                            723 ;	-----------------------------------------
   A18A                     724 _EsperaSoltarTecla:
                            725 ;	ProjetoFinal.c:163: for(i=0;i<DEBOUNCE_REPEATS;i++)
   A18A 7A 00               726 	mov	r2,#0x00
   A18C 7B 00               727 	mov	r3,#0x00
   A18E                     728 00103$:
   A18E C3                  729 	clr	c
   A18F EA                  730 	mov	a,r2
   A190 94 B8               731 	subb	a,#0xB8
   A192 EB                  732 	mov	a,r3
   A193 64 80               733 	xrl	a,#0x80
   A195 94 8B               734 	subb	a,#0x8b
   A197 50 1A               735 	jnc	00107$
                            736 ;	ProjetoFinal.c:164: if(TeclaPressionada()!=0)
   A199 C0 02               737 	push	ar2
   A19B C0 03               738 	push	ar3
   A19D 12 A0 C6            739 	lcall	_TeclaPressionada
   A1A0 E5 82               740 	mov	a,dpl
   A1A2 D0 03               741 	pop	ar3
   A1A4 D0 02               742 	pop	ar2
   A1A6 60 04               743 	jz	00105$
                            744 ;	ProjetoFinal.c:165: i = -1;      /* Recomeça a varredura, não passou no teste do debounce */
   A1A8 7A FF               745 	mov	r2,#0xFF
   A1AA 7B FF               746 	mov	r3,#0xFF
   A1AC                     747 00105$:
                            748 ;	ProjetoFinal.c:163: for(i=0;i<DEBOUNCE_REPEATS;i++)
   A1AC 0A                  749 	inc	r2
   A1AD BA 00 DE            750 	cjne	r2,#0x00,00103$
   A1B0 0B                  751 	inc	r3
   A1B1 80 DB               752 	sjmp	00103$
   A1B3                     753 00107$:
   A1B3 22                  754 	ret
                            755 ;------------------------------------------------------------
                            756 ;Allocation info for local variables in function 'Key_ASCII2BIN'
                            757 ;------------------------------------------------------------
                            758 ;tecla                     Allocated to registers r2 
                            759 ;------------------------------------------------------------
                            760 ;	ProjetoFinal.c:168: char Key_ASCII2BIN(char tecla){
                            761 ;	-----------------------------------------
                            762 ;	 function Key_ASCII2BIN
                            763 ;	-----------------------------------------
   A1B4                     764 _Key_ASCII2BIN:
   A1B4 AA 82               765 	mov	r2,dpl
                            766 ;	ProjetoFinal.c:169: if(tecla > '9')
   A1B6 C3                  767 	clr	c
   A1B7 74 B9               768 	mov	a,#(0x39 ^ 0x80)
   A1B9 8A F0               769 	mov	b,r2
   A1BB 63 F0 80            770 	xrl	b,#0x80
   A1BE 95 F0               771 	subb	a,b
   A1C0 50 06               772 	jnc	00102$
                            773 ;	ProjetoFinal.c:170: return tecla - 0x37;
   A1C2 EA                  774 	mov	a,r2
   A1C3 24 C9               775 	add	a,#0xc9
   A1C5 F5 82               776 	mov	dpl,a
   A1C7 22                  777 	ret
   A1C8                     778 00102$:
                            779 ;	ProjetoFinal.c:171: return tecla - 0x30;
   A1C8 EA                  780 	mov	a,r2
   A1C9 24 D0               781 	add	a,#0xd0
   A1CB F5 82               782 	mov	dpl,a
   A1CD 22                  783 	ret
                            784 ;------------------------------------------------------------
                            785 ;Allocation info for local variables in function 'delay'
                            786 ;------------------------------------------------------------
                            787 ;tempo                     Allocated to registers r2 r3 
                            788 ;i                         Allocated to registers r2 r3 
                            789 ;j                         Allocated to registers r4 r5 
                            790 ;------------------------------------------------------------
                            791 ;	ProjetoFinal.c:183: void delay (int tempo) {
                            792 ;	-----------------------------------------
                            793 ;	 function delay
                            794 ;	-----------------------------------------
   A1CE                     795 _delay:
   A1CE AA 82               796 	mov	r2,dpl
   A1D0 AB 83               797 	mov	r3,dph
                            798 ;	ProjetoFinal.c:185: for (i=tempo;i>0;i--) {
   A1D2                     799 00105$:
   A1D2 C3                  800 	clr	c
   A1D3 E4                  801 	clr	a
   A1D4 9A                  802 	subb	a,r2
   A1D5 74 80               803 	mov	a,#(0x00 ^ 0x80)
   A1D7 8B F0               804 	mov	b,r3
   A1D9 63 F0 80            805 	xrl	b,#0x80
   A1DC 95 F0               806 	subb	a,b
   A1DE 50 20               807 	jnc	00109$
                            808 ;	ProjetoFinal.c:186: for (j=50;j>0;j--) {
   A1E0 7C 32               809 	mov	r4,#0x32
   A1E2 7D 00               810 	mov	r5,#0x00
   A1E4                     811 00101$:
   A1E4 C3                  812 	clr	c
   A1E5 E4                  813 	clr	a
   A1E6 9C                  814 	subb	a,r4
   A1E7 74 80               815 	mov	a,#(0x00 ^ 0x80)
   A1E9 8D F0               816 	mov	b,r5
   A1EB 63 F0 80            817 	xrl	b,#0x80
   A1EE 95 F0               818 	subb	a,b
   A1F0 50 07               819 	jnc	00107$
   A1F2 1C                  820 	dec	r4
   A1F3 BC FF EE            821 	cjne	r4,#0xff,00101$
   A1F6 1D                  822 	dec	r5
   A1F7 80 EB               823 	sjmp	00101$
   A1F9                     824 00107$:
                            825 ;	ProjetoFinal.c:185: for (i=tempo;i>0;i--) {
   A1F9 1A                  826 	dec	r2
   A1FA BA FF D5            827 	cjne	r2,#0xff,00105$
   A1FD 1B                  828 	dec	r3
   A1FE 80 D2               829 	sjmp	00105$
   A200                     830 00109$:
   A200 22                  831 	ret
                            832 ;------------------------------------------------------------
                            833 ;Allocation info for local variables in function 'displaycommand'
                            834 ;------------------------------------------------------------
                            835 ;cmd                       Allocated to registers r2 r3 
                            836 ;------------------------------------------------------------
                            837 ;	ProjetoFinal.c:200: void displaycommand (int cmd) {
                            838 ;	-----------------------------------------
                            839 ;	 function displaycommand
                            840 ;	-----------------------------------------
   A201                     841 _displaycommand:
   A201 AA 82               842 	mov	r2,dpl
   A203 AB 83               843 	mov	r3,dph
                            844 ;	ProjetoFinal.c:201: delay (2);
   A205 90 00 02            845 	mov	dptr,#0x0002
   A208 C0 02               846 	push	ar2
   A20A C0 03               847 	push	ar3
   A20C 12 A1 CE            848 	lcall	_delay
   A20F D0 03               849 	pop	ar3
   A211 D0 02               850 	pop	ar2
                            851 ;	ProjetoFinal.c:202: wcommand = cmd;
   A213 90 20 00            852 	mov	dptr,#_wcommand
   A216 EA                  853 	mov	a,r2
   A217 F0                  854 	movx	@dptr,a
   A218 22                  855 	ret
                            856 ;------------------------------------------------------------
                            857 ;Allocation info for local variables in function 'displaydata'
                            858 ;------------------------------------------------------------
                            859 ;car                       Allocated to registers r2 r3 
                            860 ;------------------------------------------------------------
                            861 ;	ProjetoFinal.c:214: void displaydata (int car){
                            862 ;	-----------------------------------------
                            863 ;	 function displaydata
                            864 ;	-----------------------------------------
   A219                     865 _displaydata:
   A219 AA 82               866 	mov	r2,dpl
   A21B AB 83               867 	mov	r3,dph
                            868 ;	ProjetoFinal.c:221: __endasm;
                            869 	
   A21D                     870 	 BUSY:
   A21D 90 20 20            871 	MOV DPTR,#_rstatus
   A220 E0                  872 	  MOVX A,@DPTR
   A221 54 80               873 	  ANL A,#0x80
   A223 70 F8               874 	  JNZ BUSY
                            875 	 
                            876 ;	ProjetoFinal.c:222: wdata = car;
   A225 90 20 10            877 	mov	dptr,#_wdata
   A228 EA                  878 	mov	a,r2
   A229 F0                  879 	movx	@dptr,a
   A22A 22                  880 	ret
                            881 ;------------------------------------------------------------
                            882 ;Allocation info for local variables in function 'printDisplay'
                            883 ;------------------------------------------------------------
                            884 ;str                       Allocated to registers r2 r3 r4 
                            885 ;aux                       Allocated to registers r2 r3 r4 
                            886 ;------------------------------------------------------------
                            887 ;	ProjetoFinal.c:229: void printDisplay(unsigned char *str){
                            888 ;	-----------------------------------------
                            889 ;	 function printDisplay
                            890 ;	-----------------------------------------
   A22B                     891 _printDisplay:
   A22B AA 82               892 	mov	r2,dpl
   A22D AB 83               893 	mov	r3,dph
   A22F AC F0               894 	mov	r4,b
                            895 ;	ProjetoFinal.c:231: while ((*aux)!=0x00) {
   A231                     896 00101$:
   A231 8A 82               897 	mov	dpl,r2
   A233 8B 83               898 	mov	dph,r3
   A235 8C F0               899 	mov	b,r4
   A237 12 B4 22            900 	lcall	__gptrget
   A23A FD                  901 	mov	r5,a
   A23B 60 1C               902 	jz	00104$
                            903 ;	ProjetoFinal.c:232: displaydata(*aux);
   A23D 7E 00               904 	mov	r6,#0x00
   A23F 8D 82               905 	mov	dpl,r5
   A241 8E 83               906 	mov	dph,r6
   A243 C0 02               907 	push	ar2
   A245 C0 03               908 	push	ar3
   A247 C0 04               909 	push	ar4
   A249 12 A2 19            910 	lcall	_displaydata
   A24C D0 04               911 	pop	ar4
   A24E D0 03               912 	pop	ar3
   A250 D0 02               913 	pop	ar2
                            914 ;	ProjetoFinal.c:233: aux++;
   A252 0A                  915 	inc	r2
   A253 BA 00 DB            916 	cjne	r2,#0x00,00101$
   A256 0B                  917 	inc	r3
   A257 80 D8               918 	sjmp	00101$
   A259                     919 00104$:
   A259 22                  920 	ret
                            921 ;------------------------------------------------------------
                            922 ;Allocation info for local variables in function 'progrdisplay'
                            923 ;------------------------------------------------------------
                            924 ;------------------------------------------------------------
                            925 ;	ProjetoFinal.c:246: void progrdisplay (void){
                            926 ;	-----------------------------------------
                            927 ;	 function progrdisplay
                            928 ;	-----------------------------------------
   A25A                     929 _progrdisplay:
                            930 ;	ProjetoFinal.c:247: displaycommand (0x38); /* 2 linhas 5x7 */
   A25A 90 00 38            931 	mov	dptr,#0x0038
   A25D 12 A2 01            932 	lcall	_displaycommand
                            933 ;	ProjetoFinal.c:248: displaycommand (0x0C); /* sem cursor */
   A260 90 00 0C            934 	mov	dptr,#0x000C
   A263 12 A2 01            935 	lcall	_displaycommand
                            936 ;	ProjetoFinal.c:249: displaycommand (0x06); /* escreve deslocando para a direita */
   A266 90 00 06            937 	mov	dptr,#0x0006
   A269 02 A2 01            938 	ljmp	_displaycommand
                            939 ;------------------------------------------------------------
                            940 ;Allocation info for local variables in function 'cleardisplay'
                            941 ;------------------------------------------------------------
                            942 ;------------------------------------------------------------
                            943 ;	ProjetoFinal.c:261: void cleardisplay (void) {
                            944 ;	-----------------------------------------
                            945 ;	 function cleardisplay
                            946 ;	-----------------------------------------
   A26C                     947 _cleardisplay:
                            948 ;	ProjetoFinal.c:262: displaycommand (0x01);
   A26C 90 00 01            949 	mov	dptr,#0x0001
   A26F 02 A2 01            950 	ljmp	_displaycommand
                            951 ;------------------------------------------------------------
                            952 ;Allocation info for local variables in function 'line'
                            953 ;------------------------------------------------------------
                            954 ;lin                       Allocated to registers r2 r3 
                            955 ;------------------------------------------------------------
                            956 ;	ProjetoFinal.c:275: void line (int lin) { /* seleciona a linha do display */
                            957 ;	-----------------------------------------
                            958 ;	 function line
                            959 ;	-----------------------------------------
   A272                     960 _line:
   A272 AA 82               961 	mov	r2,dpl
   A274 AB 83               962 	mov	r3,dph
                            963 ;	ProjetoFinal.c:276: displaycommand (0x80);
   A276 90 00 80            964 	mov	dptr,#0x0080
   A279 C0 02               965 	push	ar2
   A27B C0 03               966 	push	ar3
   A27D 12 A2 01            967 	lcall	_displaycommand
   A280 D0 03               968 	pop	ar3
   A282 D0 02               969 	pop	ar2
                            970 ;	ProjetoFinal.c:277: if (lin==1) displaycommand (0x80);  /*desloca cursor 1a.lin e 1a.col */
   A284 BA 01 09            971 	cjne	r2,#0x01,00102$
   A287 BB 00 06            972 	cjne	r3,#0x00,00102$
   A28A 90 00 80            973 	mov	dptr,#0x0080
   A28D 02 A2 01            974 	ljmp	_displaycommand
   A290                     975 00102$:
                            976 ;	ProjetoFinal.c:278: else displaycommand (0xC0);  /*desloca cursor 2a.lin e 1a.col */
   A290 90 00 C0            977 	mov	dptr,#0x00C0
   A293 02 A2 01            978 	ljmp	_displaycommand
                            979 ;------------------------------------------------------------
                            980 ;Allocation info for local variables in function 'initTempoReal'
                            981 ;------------------------------------------------------------
                            982 ;------------------------------------------------------------
                            983 ;	ProjetoFinal.c:284: void initTempoReal ()
                            984 ;	-----------------------------------------
                            985 ;	 function initTempoReal
                            986 ;	-----------------------------------------
   A296                     987 _initTempoReal:
                            988 ;	ProjetoFinal.c:289: regB = 0x92;
   A296 90 21 0B            989 	mov	dptr,#_regB
   A299 74 92               990 	mov	a,#0x92
   A29B F0                  991 	movx	@dptr,a
                            992 ;	ProjetoFinal.c:290: regA = 0x20;
   A29C 90 21 0A            993 	mov	dptr,#_regA
   A29F 74 20               994 	mov	a,#0x20
   A2A1 F0                  995 	movx	@dptr,a
                            996 ;	ProjetoFinal.c:291: regB &= 0x7F;
   A2A2 90 21 0B            997 	mov	dptr,#_regB
   A2A5 E0                  998 	movx	a,@dptr
   A2A6 54 7F               999 	anl	a,#0x7F
   A2A8 F0                 1000 	movx	@dptr,a
   A2A9 22                 1001 	ret
                           1002 ;------------------------------------------------------------
                           1003 ;Allocation info for local variables in function 'prog'
                           1004 ;------------------------------------------------------------
                           1005 ;auxIE                     Allocated to registers r2 
                           1006 ;aux                       Allocated with name '_prog_aux_1_1'
                           1007 ;tecla                     Allocated to registers r3 
                           1008 ;------------------------------------------------------------
                           1009 ;	ProjetoFinal.c:295: void prog()
                           1010 ;	-----------------------------------------
                           1011 ;	 function prog
                           1012 ;	-----------------------------------------
   A2AA                    1013 _prog:
                           1014 ;	ProjetoFinal.c:298: auxIE = IE;
   A2AA AA A8              1015 	mov	r2,_IE
                           1016 ;	ProjetoFinal.c:299: IE &= 0xEF;
   A2AC 53 A8 EF           1017 	anl	_IE,#0xEF
                           1018 ;	ProjetoFinal.c:300: regB |= 0x80;
   A2AF 90 21 0B           1019 	mov	dptr,#_regB
   A2B2 E0                 1020 	movx	a,@dptr
   A2B3 FB                 1021 	mov	r3,a
   A2B4 44 80              1022 	orl	a,#0x80
   A2B6 F0                 1023 	movx	@dptr,a
                           1024 ;	ProjetoFinal.c:302: INICIO_PROG_ANO:
   A2B7                    1025 00101$:
                           1026 ;	ProjetoFinal.c:304: cleardisplay();
   A2B7 C0 02              1027 	push	ar2
   A2B9 12 A2 6C           1028 	lcall	_cleardisplay
                           1029 ;	ProjetoFinal.c:305: printDisplay("Ano(00-99): ");
   A2BC 90 B4 42           1030 	mov	dptr,#__str_0
   A2BF 75 F0 80           1031 	mov	b,#0x80
   A2C2 12 A2 2B           1032 	lcall	_printDisplay
                           1033 ;	ProjetoFinal.c:306: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A2C5 12 A1 4E           1034 	lcall	_NovaTeclaKeyDown
   A2C8 12 A1 B4           1035 	lcall	_Key_ASCII2BIN
   A2CB E5 82              1036 	mov	a,dpl
   A2CD D0 02              1037 	pop	ar2
   A2CF F5 30              1038 	mov	_prog_aux_1_1,a
                           1039 ;	ProjetoFinal.c:307: while ( (aux[0] < 0 || aux[0] > 9) && aux[0] != 0xF )
   A2D1                    1040 00104$:
   A2D1 E5 30              1041 	mov	a,_prog_aux_1_1
   A2D3 20 E7 0D           1042 	jb	acc.7,00103$
   A2D6 C3                 1043 	clr	c
   A2D7 74 89              1044 	mov	a,#(0x09 ^ 0x80)
   A2D9 85 30 F0           1045 	mov	b,_prog_aux_1_1
   A2DC 63 F0 80           1046 	xrl	b,#0x80
   A2DF 95 F0              1047 	subb	a,b
   A2E1 50 17              1048 	jnc	00106$
   A2E3                    1049 00103$:
   A2E3 74 0F              1050 	mov	a,#0x0F
   A2E5 B5 30 02           1051 	cjne	a,_prog_aux_1_1,00364$
   A2E8 80 10              1052 	sjmp	00106$
   A2EA                    1053 00364$:
                           1054 ;	ProjetoFinal.c:308: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A2EA C0 02              1055 	push	ar2
   A2EC 12 A1 4E           1056 	lcall	_NovaTeclaKeyDown
   A2EF 12 A1 B4           1057 	lcall	_Key_ASCII2BIN
   A2F2 E5 82              1058 	mov	a,dpl
   A2F4 D0 02              1059 	pop	ar2
   A2F6 F5 30              1060 	mov	_prog_aux_1_1,a
   A2F8 80 D7              1061 	sjmp	00104$
   A2FA                    1062 00106$:
                           1063 ;	ProjetoFinal.c:309: if (aux[0] == 0xF)
   A2FA 74 0F              1064 	mov	a,#0x0F
   A2FC B5 30 02           1065 	cjne	a,_prog_aux_1_1,00365$
   A2FF 80 B6              1066 	sjmp	00101$
   A301                    1067 00365$:
                           1068 ;	ProjetoFinal.c:312: displaydata(aux[0]+0x30);
   A301 E5 30              1069 	mov	a,_prog_aux_1_1
   A303 FB                 1070 	mov	r3,a
   A304 33                 1071 	rlc	a
   A305 95 E0              1072 	subb	a,acc
   A307 FC                 1073 	mov	r4,a
   A308 74 30              1074 	mov	a,#0x30
   A30A 2B                 1075 	add	a,r3
   A30B F5 82              1076 	mov	dpl,a
   A30D E4                 1077 	clr	a
   A30E 3C                 1078 	addc	a,r4
   A30F F5 83              1079 	mov	dph,a
   A311 C0 02              1080 	push	ar2
   A313 12 A2 19           1081 	lcall	_displaydata
                           1082 ;	ProjetoFinal.c:313: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A316 12 A1 4E           1083 	lcall	_NovaTeclaKeyDown
   A319 12 A1 B4           1084 	lcall	_Key_ASCII2BIN
   A31C E5 82              1085 	mov	a,dpl
   A31E D0 02              1086 	pop	ar2
   A320 F5 31              1087 	mov	(_prog_aux_1_1 + 0x0001),a
                           1088 ;	ProjetoFinal.c:314: while ( (aux[1] < 0 || aux[1] > 9) && aux[1] != 0xF)
   A322                    1089 00111$:
   A322 E5 31              1090 	mov	a,(_prog_aux_1_1 + 0x0001)
   A324 20 E7 0D           1091 	jb	acc.7,00110$
   A327 C3                 1092 	clr	c
   A328 74 89              1093 	mov	a,#(0x09 ^ 0x80)
   A32A 85 31 F0           1094 	mov	b,(_prog_aux_1_1 + 0x0001)
   A32D 63 F0 80           1095 	xrl	b,#0x80
   A330 95 F0              1096 	subb	a,b
   A332 50 17              1097 	jnc	00113$
   A334                    1098 00110$:
   A334 74 0F              1099 	mov	a,#0x0F
   A336 B5 31 02           1100 	cjne	a,(_prog_aux_1_1 + 0x0001),00368$
   A339 80 10              1101 	sjmp	00113$
   A33B                    1102 00368$:
                           1103 ;	ProjetoFinal.c:315: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A33B C0 02              1104 	push	ar2
   A33D 12 A1 4E           1105 	lcall	_NovaTeclaKeyDown
   A340 12 A1 B4           1106 	lcall	_Key_ASCII2BIN
   A343 E5 82              1107 	mov	a,dpl
   A345 D0 02              1108 	pop	ar2
   A347 F5 31              1109 	mov	(_prog_aux_1_1 + 0x0001),a
   A349 80 D7              1110 	sjmp	00111$
   A34B                    1111 00113$:
                           1112 ;	ProjetoFinal.c:316: if (aux[1] == 0xF)
   A34B 74 0F              1113 	mov	a,#0x0F
   A34D B5 31 03           1114 	cjne	a,(_prog_aux_1_1 + 0x0001),00369$
   A350 02 A2 B7           1115 	ljmp	00101$
   A353                    1116 00369$:
                           1117 ;	ProjetoFinal.c:319: displaydata(aux[1]+0x30);
   A353 AB 31              1118 	mov	r3,(_prog_aux_1_1 + 0x0001)
   A355 E5 31              1119 	mov	a,(_prog_aux_1_1 + 0x0001)
   A357 33                 1120 	rlc	a
   A358 95 E0              1121 	subb	a,acc
   A35A FC                 1122 	mov	r4,a
   A35B 74 30              1123 	mov	a,#0x30
   A35D 2B                 1124 	add	a,r3
   A35E F5 82              1125 	mov	dpl,a
   A360 E4                 1126 	clr	a
   A361 3C                 1127 	addc	a,r4
   A362 F5 83              1128 	mov	dph,a
   A364 C0 02              1129 	push	ar2
   A366 12 A2 19           1130 	lcall	_displaydata
                           1131 ;	ProjetoFinal.c:321: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
   A369 12 A1 4E           1132 	lcall	_NovaTeclaKeyDown
   A36C 12 A1 B4           1133 	lcall	_Key_ASCII2BIN
   A36F AB 82              1134 	mov	r3,dpl
   A371 D0 02              1135 	pop	ar2
                           1136 ;	ProjetoFinal.c:322: while (tecla != 0xE && tecla != 0xF)
   A373                    1137 00117$:
   A373 BB 0E 02           1138 	cjne	r3,#0x0E,00370$
   A376 80 13              1139 	sjmp	00119$
   A378                    1140 00370$:
   A378 BB 0F 02           1141 	cjne	r3,#0x0F,00371$
   A37B 80 0E              1142 	sjmp	00119$
   A37D                    1143 00371$:
                           1144 ;	ProjetoFinal.c:323: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
   A37D C0 02              1145 	push	ar2
   A37F 12 A1 4E           1146 	lcall	_NovaTeclaKeyDown
   A382 12 A1 B4           1147 	lcall	_Key_ASCII2BIN
   A385 AB 82              1148 	mov	r3,dpl
   A387 D0 02              1149 	pop	ar2
   A389 80 E8              1150 	sjmp	00117$
   A38B                    1151 00119$:
                           1152 ;	ProjetoFinal.c:324: if (tecla == 0xF)
   A38B BB 0F 03           1153 	cjne	r3,#0x0F,00372$
   A38E 02 A2 B7           1154 	ljmp	00101$
   A391                    1155 00372$:
                           1156 ;	ProjetoFinal.c:326: if (tecla == 0xE)
   A391 BB 0E 0D           1157 	cjne	r3,#0x0E,00124$
                           1158 ;	ProjetoFinal.c:327: year = aux[0]*16 + aux[1];
   A394 E5 30              1159 	mov	a,_prog_aux_1_1
   A396 C4                 1160 	swap	a
   A397 54 F0              1161 	anl	a,#0xf0
   A399 FC                 1162 	mov	r4,a
   A39A 90 21 09           1163 	mov	dptr,#_year
   A39D E5 31              1164 	mov	a,(_prog_aux_1_1 + 0x0001)
   A39F 2C                 1165 	add	a,r4
   A3A0 F0                 1166 	movx	@dptr,a
                           1167 ;	ProjetoFinal.c:329: INICIO_PROG_MES:
   A3A1                    1168 00124$:
                           1169 ;	ProjetoFinal.c:331: cleardisplay();
   A3A1 C0 02              1170 	push	ar2
   A3A3 12 A2 6C           1171 	lcall	_cleardisplay
                           1172 ;	ProjetoFinal.c:332: printDisplay("Mes(00-12): ");
   A3A6 90 B4 4F           1173 	mov	dptr,#__str_1
   A3A9 75 F0 80           1174 	mov	b,#0x80
   A3AC 12 A2 2B           1175 	lcall	_printDisplay
                           1176 ;	ProjetoFinal.c:333: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A3AF 12 A1 4E           1177 	lcall	_NovaTeclaKeyDown
   A3B2 12 A1 B4           1178 	lcall	_Key_ASCII2BIN
   A3B5 E5 82              1179 	mov	a,dpl
   A3B7 D0 02              1180 	pop	ar2
   A3B9 F5 30              1181 	mov	_prog_aux_1_1,a
                           1182 ;	ProjetoFinal.c:334: while ( (aux[0] < 0 || aux[0] > 9) && aux[0] != 0xF )
   A3BB                    1183 00127$:
   A3BB E5 30              1184 	mov	a,_prog_aux_1_1
   A3BD 20 E7 0D           1185 	jb	acc.7,00126$
   A3C0 C3                 1186 	clr	c
   A3C1 74 89              1187 	mov	a,#(0x09 ^ 0x80)
   A3C3 85 30 F0           1188 	mov	b,_prog_aux_1_1
   A3C6 63 F0 80           1189 	xrl	b,#0x80
   A3C9 95 F0              1190 	subb	a,b
   A3CB 50 17              1191 	jnc	00129$
   A3CD                    1192 00126$:
   A3CD 74 0F              1193 	mov	a,#0x0F
   A3CF B5 30 02           1194 	cjne	a,_prog_aux_1_1,00377$
   A3D2 80 10              1195 	sjmp	00129$
   A3D4                    1196 00377$:
                           1197 ;	ProjetoFinal.c:335: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A3D4 C0 02              1198 	push	ar2
   A3D6 12 A1 4E           1199 	lcall	_NovaTeclaKeyDown
   A3D9 12 A1 B4           1200 	lcall	_Key_ASCII2BIN
   A3DC E5 82              1201 	mov	a,dpl
   A3DE D0 02              1202 	pop	ar2
   A3E0 F5 30              1203 	mov	_prog_aux_1_1,a
   A3E2 80 D7              1204 	sjmp	00127$
   A3E4                    1205 00129$:
                           1206 ;	ProjetoFinal.c:336: if (aux[0] == 0xF)
   A3E4 74 0F              1207 	mov	a,#0x0F
   A3E6 B5 30 02           1208 	cjne	a,_prog_aux_1_1,00378$
   A3E9 80 B6              1209 	sjmp	00124$
   A3EB                    1210 00378$:
                           1211 ;	ProjetoFinal.c:339: displaydata(aux[0] + 0x30);
   A3EB E5 30              1212 	mov	a,_prog_aux_1_1
   A3ED FC                 1213 	mov	r4,a
   A3EE 33                 1214 	rlc	a
   A3EF 95 E0              1215 	subb	a,acc
   A3F1 FD                 1216 	mov	r5,a
   A3F2 74 30              1217 	mov	a,#0x30
   A3F4 2C                 1218 	add	a,r4
   A3F5 F5 82              1219 	mov	dpl,a
   A3F7 E4                 1220 	clr	a
   A3F8 3D                 1221 	addc	a,r5
   A3F9 F5 83              1222 	mov	dph,a
   A3FB C0 02              1223 	push	ar2
   A3FD 12 A2 19           1224 	lcall	_displaydata
                           1225 ;	ProjetoFinal.c:340: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A400 12 A1 4E           1226 	lcall	_NovaTeclaKeyDown
   A403 12 A1 B4           1227 	lcall	_Key_ASCII2BIN
   A406 E5 82              1228 	mov	a,dpl
   A408 D0 02              1229 	pop	ar2
   A40A F5 31              1230 	mov	(_prog_aux_1_1 + 0x0001),a
                           1231 ;	ProjetoFinal.c:341: while ( (aux[1] < 0 || aux[1] > 9) && aux[1] != 0xF )
   A40C                    1232 00134$:
   A40C E5 31              1233 	mov	a,(_prog_aux_1_1 + 0x0001)
   A40E 20 E7 0D           1234 	jb	acc.7,00133$
   A411 C3                 1235 	clr	c
   A412 74 89              1236 	mov	a,#(0x09 ^ 0x80)
   A414 85 31 F0           1237 	mov	b,(_prog_aux_1_1 + 0x0001)
   A417 63 F0 80           1238 	xrl	b,#0x80
   A41A 95 F0              1239 	subb	a,b
   A41C 50 17              1240 	jnc	00136$
   A41E                    1241 00133$:
   A41E 74 0F              1242 	mov	a,#0x0F
   A420 B5 31 02           1243 	cjne	a,(_prog_aux_1_1 + 0x0001),00381$
   A423 80 10              1244 	sjmp	00136$
   A425                    1245 00381$:
                           1246 ;	ProjetoFinal.c:342: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A425 C0 02              1247 	push	ar2
   A427 12 A1 4E           1248 	lcall	_NovaTeclaKeyDown
   A42A 12 A1 B4           1249 	lcall	_Key_ASCII2BIN
   A42D E5 82              1250 	mov	a,dpl
   A42F D0 02              1251 	pop	ar2
   A431 F5 31              1252 	mov	(_prog_aux_1_1 + 0x0001),a
   A433 80 D7              1253 	sjmp	00134$
   A435                    1254 00136$:
                           1255 ;	ProjetoFinal.c:343: if (aux[1] == 0xF)
   A435 74 0F              1256 	mov	a,#0x0F
   A437 B5 31 03           1257 	cjne	a,(_prog_aux_1_1 + 0x0001),00382$
   A43A 02 A3 A1           1258 	ljmp	00124$
   A43D                    1259 00382$:
                           1260 ;	ProjetoFinal.c:346: displaydata(aux[1] + 0x30);
   A43D AC 31              1261 	mov	r4,(_prog_aux_1_1 + 0x0001)
   A43F E5 31              1262 	mov	a,(_prog_aux_1_1 + 0x0001)
   A441 33                 1263 	rlc	a
   A442 95 E0              1264 	subb	a,acc
   A444 FD                 1265 	mov	r5,a
   A445 74 30              1266 	mov	a,#0x30
   A447 2C                 1267 	add	a,r4
   A448 F5 82              1268 	mov	dpl,a
   A44A E4                 1269 	clr	a
   A44B 3D                 1270 	addc	a,r5
   A44C F5 83              1271 	mov	dph,a
   A44E C0 02              1272 	push	ar2
   A450 12 A2 19           1273 	lcall	_displaydata
                           1274 ;	ProjetoFinal.c:347: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
   A453 12 A1 4E           1275 	lcall	_NovaTeclaKeyDown
   A456 12 A1 B4           1276 	lcall	_Key_ASCII2BIN
   A459 AB 82              1277 	mov	r3,dpl
   A45B D0 02              1278 	pop	ar2
                           1279 ;	ProjetoFinal.c:348: while (tecla != 0xE && tecla != 0xF)
   A45D                    1280 00140$:
   A45D BB 0E 02           1281 	cjne	r3,#0x0E,00383$
   A460 80 13              1282 	sjmp	00142$
   A462                    1283 00383$:
   A462 BB 0F 02           1284 	cjne	r3,#0x0F,00384$
   A465 80 0E              1285 	sjmp	00142$
   A467                    1286 00384$:
                           1287 ;	ProjetoFinal.c:349: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
   A467 C0 02              1288 	push	ar2
   A469 12 A1 4E           1289 	lcall	_NovaTeclaKeyDown
   A46C 12 A1 B4           1290 	lcall	_Key_ASCII2BIN
   A46F AB 82              1291 	mov	r3,dpl
   A471 D0 02              1292 	pop	ar2
   A473 80 E8              1293 	sjmp	00140$
   A475                    1294 00142$:
                           1295 ;	ProjetoFinal.c:350: if (tecla == 0xF)
   A475 BB 0F 03           1296 	cjne	r3,#0x0F,00385$
   A478 02 A3 A1           1297 	ljmp	00124$
   A47B                    1298 00385$:
                           1299 ;	ProjetoFinal.c:352: if (tecla == 0xE)
   A47B BB 0E 0D           1300 	cjne	r3,#0x0E,00147$
                           1301 ;	ProjetoFinal.c:353: mounth = aux[0]*16 + aux[1];
   A47E E5 30              1302 	mov	a,_prog_aux_1_1
   A480 C4                 1303 	swap	a
   A481 54 F0              1304 	anl	a,#0xf0
   A483 FC                 1305 	mov	r4,a
   A484 90 21 08           1306 	mov	dptr,#_mounth
   A487 E5 31              1307 	mov	a,(_prog_aux_1_1 + 0x0001)
   A489 2C                 1308 	add	a,r4
   A48A F0                 1309 	movx	@dptr,a
                           1310 ;	ProjetoFinal.c:355: INICIO_PROG_DIA:
   A48B                    1311 00147$:
                           1312 ;	ProjetoFinal.c:357: cleardisplay();
   A48B C0 02              1313 	push	ar2
   A48D 12 A2 6C           1314 	lcall	_cleardisplay
                           1315 ;	ProjetoFinal.c:358: printDisplay("Dia(00-31): ");
   A490 90 B4 5C           1316 	mov	dptr,#__str_2
   A493 75 F0 80           1317 	mov	b,#0x80
   A496 12 A2 2B           1318 	lcall	_printDisplay
                           1319 ;	ProjetoFinal.c:359: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A499 12 A1 4E           1320 	lcall	_NovaTeclaKeyDown
   A49C 12 A1 B4           1321 	lcall	_Key_ASCII2BIN
   A49F E5 82              1322 	mov	a,dpl
   A4A1 D0 02              1323 	pop	ar2
   A4A3 F5 30              1324 	mov	_prog_aux_1_1,a
                           1325 ;	ProjetoFinal.c:360: while ( (aux[0] < 0 || aux[0] > 9) && aux[0] != 0xF )
   A4A5                    1326 00150$:
   A4A5 E5 30              1327 	mov	a,_prog_aux_1_1
   A4A7 20 E7 0D           1328 	jb	acc.7,00149$
   A4AA C3                 1329 	clr	c
   A4AB 74 89              1330 	mov	a,#(0x09 ^ 0x80)
   A4AD 85 30 F0           1331 	mov	b,_prog_aux_1_1
   A4B0 63 F0 80           1332 	xrl	b,#0x80
   A4B3 95 F0              1333 	subb	a,b
   A4B5 50 17              1334 	jnc	00152$
   A4B7                    1335 00149$:
   A4B7 74 0F              1336 	mov	a,#0x0F
   A4B9 B5 30 02           1337 	cjne	a,_prog_aux_1_1,00390$
   A4BC 80 10              1338 	sjmp	00152$
   A4BE                    1339 00390$:
                           1340 ;	ProjetoFinal.c:361: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A4BE C0 02              1341 	push	ar2
   A4C0 12 A1 4E           1342 	lcall	_NovaTeclaKeyDown
   A4C3 12 A1 B4           1343 	lcall	_Key_ASCII2BIN
   A4C6 E5 82              1344 	mov	a,dpl
   A4C8 D0 02              1345 	pop	ar2
   A4CA F5 30              1346 	mov	_prog_aux_1_1,a
   A4CC 80 D7              1347 	sjmp	00150$
   A4CE                    1348 00152$:
                           1349 ;	ProjetoFinal.c:362: if (aux[0] == 0xF)
   A4CE 74 0F              1350 	mov	a,#0x0F
   A4D0 B5 30 02           1351 	cjne	a,_prog_aux_1_1,00391$
   A4D3 80 B6              1352 	sjmp	00147$
   A4D5                    1353 00391$:
                           1354 ;	ProjetoFinal.c:365: displaydata(aux[0] + 0x30);
   A4D5 E5 30              1355 	mov	a,_prog_aux_1_1
   A4D7 FC                 1356 	mov	r4,a
   A4D8 33                 1357 	rlc	a
   A4D9 95 E0              1358 	subb	a,acc
   A4DB FD                 1359 	mov	r5,a
   A4DC 74 30              1360 	mov	a,#0x30
   A4DE 2C                 1361 	add	a,r4
   A4DF F5 82              1362 	mov	dpl,a
   A4E1 E4                 1363 	clr	a
   A4E2 3D                 1364 	addc	a,r5
   A4E3 F5 83              1365 	mov	dph,a
   A4E5 C0 02              1366 	push	ar2
   A4E7 12 A2 19           1367 	lcall	_displaydata
                           1368 ;	ProjetoFinal.c:366: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A4EA 12 A1 4E           1369 	lcall	_NovaTeclaKeyDown
   A4ED 12 A1 B4           1370 	lcall	_Key_ASCII2BIN
   A4F0 E5 82              1371 	mov	a,dpl
   A4F2 D0 02              1372 	pop	ar2
   A4F4 F5 31              1373 	mov	(_prog_aux_1_1 + 0x0001),a
                           1374 ;	ProjetoFinal.c:367: while ( (aux[1] < 0 || aux[1] > 9) && aux[1] != 0xF )
   A4F6                    1375 00157$:
   A4F6 E5 31              1376 	mov	a,(_prog_aux_1_1 + 0x0001)
   A4F8 20 E7 0D           1377 	jb	acc.7,00156$
   A4FB C3                 1378 	clr	c
   A4FC 74 89              1379 	mov	a,#(0x09 ^ 0x80)
   A4FE 85 31 F0           1380 	mov	b,(_prog_aux_1_1 + 0x0001)
   A501 63 F0 80           1381 	xrl	b,#0x80
   A504 95 F0              1382 	subb	a,b
   A506 50 17              1383 	jnc	00159$
   A508                    1384 00156$:
   A508 74 0F              1385 	mov	a,#0x0F
   A50A B5 31 02           1386 	cjne	a,(_prog_aux_1_1 + 0x0001),00394$
   A50D 80 10              1387 	sjmp	00159$
   A50F                    1388 00394$:
                           1389 ;	ProjetoFinal.c:368: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A50F C0 02              1390 	push	ar2
   A511 12 A1 4E           1391 	lcall	_NovaTeclaKeyDown
   A514 12 A1 B4           1392 	lcall	_Key_ASCII2BIN
   A517 E5 82              1393 	mov	a,dpl
   A519 D0 02              1394 	pop	ar2
   A51B F5 31              1395 	mov	(_prog_aux_1_1 + 0x0001),a
   A51D 80 D7              1396 	sjmp	00157$
   A51F                    1397 00159$:
                           1398 ;	ProjetoFinal.c:369: if (aux[1] == 0xF)
   A51F 74 0F              1399 	mov	a,#0x0F
   A521 B5 31 03           1400 	cjne	a,(_prog_aux_1_1 + 0x0001),00395$
   A524 02 A4 8B           1401 	ljmp	00147$
   A527                    1402 00395$:
                           1403 ;	ProjetoFinal.c:372: displaydata(aux[1] + 0x30);
   A527 AC 31              1404 	mov	r4,(_prog_aux_1_1 + 0x0001)
   A529 E5 31              1405 	mov	a,(_prog_aux_1_1 + 0x0001)
   A52B 33                 1406 	rlc	a
   A52C 95 E0              1407 	subb	a,acc
   A52E FD                 1408 	mov	r5,a
   A52F 74 30              1409 	mov	a,#0x30
   A531 2C                 1410 	add	a,r4
   A532 F5 82              1411 	mov	dpl,a
   A534 E4                 1412 	clr	a
   A535 3D                 1413 	addc	a,r5
   A536 F5 83              1414 	mov	dph,a
   A538 C0 02              1415 	push	ar2
   A53A 12 A2 19           1416 	lcall	_displaydata
                           1417 ;	ProjetoFinal.c:373: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
   A53D 12 A1 4E           1418 	lcall	_NovaTeclaKeyDown
   A540 12 A1 B4           1419 	lcall	_Key_ASCII2BIN
   A543 AB 82              1420 	mov	r3,dpl
   A545 D0 02              1421 	pop	ar2
                           1422 ;	ProjetoFinal.c:374: while (tecla != 0xE && tecla != 0xF)
   A547                    1423 00163$:
   A547 BB 0E 02           1424 	cjne	r3,#0x0E,00396$
   A54A 80 13              1425 	sjmp	00165$
   A54C                    1426 00396$:
   A54C BB 0F 02           1427 	cjne	r3,#0x0F,00397$
   A54F 80 0E              1428 	sjmp	00165$
   A551                    1429 00397$:
                           1430 ;	ProjetoFinal.c:375: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
   A551 C0 02              1431 	push	ar2
   A553 12 A1 4E           1432 	lcall	_NovaTeclaKeyDown
   A556 12 A1 B4           1433 	lcall	_Key_ASCII2BIN
   A559 AB 82              1434 	mov	r3,dpl
   A55B D0 02              1435 	pop	ar2
   A55D 80 E8              1436 	sjmp	00163$
   A55F                    1437 00165$:
                           1438 ;	ProjetoFinal.c:376: if (tecla == 0xF)
   A55F BB 0F 03           1439 	cjne	r3,#0x0F,00398$
   A562 02 A4 8B           1440 	ljmp	00147$
   A565                    1441 00398$:
                           1442 ;	ProjetoFinal.c:378: if (tecla == 0xE)
   A565 BB 0E 0D           1443 	cjne	r3,#0x0E,00170$
                           1444 ;	ProjetoFinal.c:379: dateOfMounth = aux[0]*16 + aux[1];
   A568 E5 30              1445 	mov	a,_prog_aux_1_1
   A56A C4                 1446 	swap	a
   A56B 54 F0              1447 	anl	a,#0xf0
   A56D FC                 1448 	mov	r4,a
   A56E 90 21 07           1449 	mov	dptr,#_dateOfMounth
   A571 E5 31              1450 	mov	a,(_prog_aux_1_1 + 0x0001)
   A573 2C                 1451 	add	a,r4
   A574 F0                 1452 	movx	@dptr,a
                           1453 ;	ProjetoFinal.c:381: INICIO_PROG_SEMANA:
   A575                    1454 00170$:
                           1455 ;	ProjetoFinal.c:383: cleardisplay();
   A575 C0 02              1456 	push	ar2
   A577 12 A2 6C           1457 	lcall	_cleardisplay
                           1458 ;	ProjetoFinal.c:384: printDisplay("DiaSem(01-07):");
   A57A 90 B4 69           1459 	mov	dptr,#__str_3
   A57D 75 F0 80           1460 	mov	b,#0x80
   A580 12 A2 2B           1461 	lcall	_printDisplay
                           1462 ;	ProjetoFinal.c:385: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A583 12 A1 4E           1463 	lcall	_NovaTeclaKeyDown
   A586 12 A1 B4           1464 	lcall	_Key_ASCII2BIN
   A589 E5 82              1465 	mov	a,dpl
   A58B D0 02              1466 	pop	ar2
   A58D F5 30              1467 	mov	_prog_aux_1_1,a
                           1468 ;	ProjetoFinal.c:386: while ( (aux[0] < 0 || aux[0] > 9) && aux[0] != 0xF )
   A58F                    1469 00173$:
   A58F E5 30              1470 	mov	a,_prog_aux_1_1
   A591 20 E7 0D           1471 	jb	acc.7,00172$
   A594 C3                 1472 	clr	c
   A595 74 89              1473 	mov	a,#(0x09 ^ 0x80)
   A597 85 30 F0           1474 	mov	b,_prog_aux_1_1
   A59A 63 F0 80           1475 	xrl	b,#0x80
   A59D 95 F0              1476 	subb	a,b
   A59F 50 17              1477 	jnc	00175$
   A5A1                    1478 00172$:
   A5A1 74 0F              1479 	mov	a,#0x0F
   A5A3 B5 30 02           1480 	cjne	a,_prog_aux_1_1,00403$
   A5A6 80 10              1481 	sjmp	00175$
   A5A8                    1482 00403$:
                           1483 ;	ProjetoFinal.c:387: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A5A8 C0 02              1484 	push	ar2
   A5AA 12 A1 4E           1485 	lcall	_NovaTeclaKeyDown
   A5AD 12 A1 B4           1486 	lcall	_Key_ASCII2BIN
   A5B0 E5 82              1487 	mov	a,dpl
   A5B2 D0 02              1488 	pop	ar2
   A5B4 F5 30              1489 	mov	_prog_aux_1_1,a
   A5B6 80 D7              1490 	sjmp	00173$
   A5B8                    1491 00175$:
                           1492 ;	ProjetoFinal.c:388: if (aux[0] == 0xF)
   A5B8 74 0F              1493 	mov	a,#0x0F
   A5BA B5 30 02           1494 	cjne	a,_prog_aux_1_1,00404$
   A5BD 80 B6              1495 	sjmp	00170$
   A5BF                    1496 00404$:
                           1497 ;	ProjetoFinal.c:391: displaydata(aux[0] + 0x30);
   A5BF E5 30              1498 	mov	a,_prog_aux_1_1
   A5C1 FC                 1499 	mov	r4,a
   A5C2 33                 1500 	rlc	a
   A5C3 95 E0              1501 	subb	a,acc
   A5C5 FD                 1502 	mov	r5,a
   A5C6 74 30              1503 	mov	a,#0x30
   A5C8 2C                 1504 	add	a,r4
   A5C9 F5 82              1505 	mov	dpl,a
   A5CB E4                 1506 	clr	a
   A5CC 3D                 1507 	addc	a,r5
   A5CD F5 83              1508 	mov	dph,a
   A5CF C0 02              1509 	push	ar2
   A5D1 12 A2 19           1510 	lcall	_displaydata
                           1511 ;	ProjetoFinal.c:392: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A5D4 12 A1 4E           1512 	lcall	_NovaTeclaKeyDown
   A5D7 12 A1 B4           1513 	lcall	_Key_ASCII2BIN
   A5DA E5 82              1514 	mov	a,dpl
   A5DC D0 02              1515 	pop	ar2
   A5DE F5 31              1516 	mov	(_prog_aux_1_1 + 0x0001),a
                           1517 ;	ProjetoFinal.c:393: while ( (aux[1] < 0 || aux[1] > 9) && aux[1] != 0xF )
   A5E0                    1518 00180$:
   A5E0 E5 31              1519 	mov	a,(_prog_aux_1_1 + 0x0001)
   A5E2 20 E7 0D           1520 	jb	acc.7,00179$
   A5E5 C3                 1521 	clr	c
   A5E6 74 89              1522 	mov	a,#(0x09 ^ 0x80)
   A5E8 85 31 F0           1523 	mov	b,(_prog_aux_1_1 + 0x0001)
   A5EB 63 F0 80           1524 	xrl	b,#0x80
   A5EE 95 F0              1525 	subb	a,b
   A5F0 50 17              1526 	jnc	00182$
   A5F2                    1527 00179$:
   A5F2 74 0F              1528 	mov	a,#0x0F
   A5F4 B5 31 02           1529 	cjne	a,(_prog_aux_1_1 + 0x0001),00407$
   A5F7 80 10              1530 	sjmp	00182$
   A5F9                    1531 00407$:
                           1532 ;	ProjetoFinal.c:394: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A5F9 C0 02              1533 	push	ar2
   A5FB 12 A1 4E           1534 	lcall	_NovaTeclaKeyDown
   A5FE 12 A1 B4           1535 	lcall	_Key_ASCII2BIN
   A601 E5 82              1536 	mov	a,dpl
   A603 D0 02              1537 	pop	ar2
   A605 F5 31              1538 	mov	(_prog_aux_1_1 + 0x0001),a
   A607 80 D7              1539 	sjmp	00180$
   A609                    1540 00182$:
                           1541 ;	ProjetoFinal.c:395: if (aux[1] == 0xF)
   A609 74 0F              1542 	mov	a,#0x0F
   A60B B5 31 03           1543 	cjne	a,(_prog_aux_1_1 + 0x0001),00408$
   A60E 02 A5 75           1544 	ljmp	00170$
   A611                    1545 00408$:
                           1546 ;	ProjetoFinal.c:398: displaydata(aux[1] + 0x30);
   A611 AC 31              1547 	mov	r4,(_prog_aux_1_1 + 0x0001)
   A613 E5 31              1548 	mov	a,(_prog_aux_1_1 + 0x0001)
   A615 33                 1549 	rlc	a
   A616 95 E0              1550 	subb	a,acc
   A618 FD                 1551 	mov	r5,a
   A619 74 30              1552 	mov	a,#0x30
   A61B 2C                 1553 	add	a,r4
   A61C F5 82              1554 	mov	dpl,a
   A61E E4                 1555 	clr	a
   A61F 3D                 1556 	addc	a,r5
   A620 F5 83              1557 	mov	dph,a
   A622 C0 02              1558 	push	ar2
   A624 12 A2 19           1559 	lcall	_displaydata
                           1560 ;	ProjetoFinal.c:399: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
   A627 12 A1 4E           1561 	lcall	_NovaTeclaKeyDown
   A62A 12 A1 B4           1562 	lcall	_Key_ASCII2BIN
   A62D AB 82              1563 	mov	r3,dpl
   A62F D0 02              1564 	pop	ar2
                           1565 ;	ProjetoFinal.c:400: while (tecla != 0xE && tecla != 0xF)
   A631                    1566 00186$:
   A631 BB 0E 02           1567 	cjne	r3,#0x0E,00409$
   A634 80 13              1568 	sjmp	00188$
   A636                    1569 00409$:
   A636 BB 0F 02           1570 	cjne	r3,#0x0F,00410$
   A639 80 0E              1571 	sjmp	00188$
   A63B                    1572 00410$:
                           1573 ;	ProjetoFinal.c:401: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
   A63B C0 02              1574 	push	ar2
   A63D 12 A1 4E           1575 	lcall	_NovaTeclaKeyDown
   A640 12 A1 B4           1576 	lcall	_Key_ASCII2BIN
   A643 AB 82              1577 	mov	r3,dpl
   A645 D0 02              1578 	pop	ar2
   A647 80 E8              1579 	sjmp	00186$
   A649                    1580 00188$:
                           1581 ;	ProjetoFinal.c:402: if (tecla == 0xF)
   A649 BB 0F 03           1582 	cjne	r3,#0x0F,00411$
   A64C 02 A5 75           1583 	ljmp	00170$
   A64F                    1584 00411$:
                           1585 ;	ProjetoFinal.c:404: if (tecla == 0xE)
   A64F BB 0E 0D           1586 	cjne	r3,#0x0E,00193$
                           1587 ;	ProjetoFinal.c:405: dayOfWeek = aux[0]*16 + aux[1];
   A652 E5 30              1588 	mov	a,_prog_aux_1_1
   A654 C4                 1589 	swap	a
   A655 54 F0              1590 	anl	a,#0xf0
   A657 FC                 1591 	mov	r4,a
   A658 90 21 06           1592 	mov	dptr,#_dayOfWeek
   A65B E5 31              1593 	mov	a,(_prog_aux_1_1 + 0x0001)
   A65D 2C                 1594 	add	a,r4
   A65E F0                 1595 	movx	@dptr,a
                           1596 ;	ProjetoFinal.c:407: INICIO_PROG_HORA:
   A65F                    1597 00193$:
                           1598 ;	ProjetoFinal.c:409: cleardisplay();
   A65F C0 02              1599 	push	ar2
   A661 12 A2 6C           1600 	lcall	_cleardisplay
                           1601 ;	ProjetoFinal.c:410: printDisplay("Hora(00-23): ");
   A664 90 B4 78           1602 	mov	dptr,#__str_4
   A667 75 F0 80           1603 	mov	b,#0x80
   A66A 12 A2 2B           1604 	lcall	_printDisplay
                           1605 ;	ProjetoFinal.c:411: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A66D 12 A1 4E           1606 	lcall	_NovaTeclaKeyDown
   A670 12 A1 B4           1607 	lcall	_Key_ASCII2BIN
   A673 E5 82              1608 	mov	a,dpl
   A675 D0 02              1609 	pop	ar2
   A677 F5 30              1610 	mov	_prog_aux_1_1,a
                           1611 ;	ProjetoFinal.c:412: while ( (aux[0] < 0 || aux[0] > 9) && aux[0] != 0xF )
   A679                    1612 00196$:
   A679 E5 30              1613 	mov	a,_prog_aux_1_1
   A67B 20 E7 0D           1614 	jb	acc.7,00195$
   A67E C3                 1615 	clr	c
   A67F 74 89              1616 	mov	a,#(0x09 ^ 0x80)
   A681 85 30 F0           1617 	mov	b,_prog_aux_1_1
   A684 63 F0 80           1618 	xrl	b,#0x80
   A687 95 F0              1619 	subb	a,b
   A689 50 17              1620 	jnc	00198$
   A68B                    1621 00195$:
   A68B 74 0F              1622 	mov	a,#0x0F
   A68D B5 30 02           1623 	cjne	a,_prog_aux_1_1,00416$
   A690 80 10              1624 	sjmp	00198$
   A692                    1625 00416$:
                           1626 ;	ProjetoFinal.c:413: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A692 C0 02              1627 	push	ar2
   A694 12 A1 4E           1628 	lcall	_NovaTeclaKeyDown
   A697 12 A1 B4           1629 	lcall	_Key_ASCII2BIN
   A69A E5 82              1630 	mov	a,dpl
   A69C D0 02              1631 	pop	ar2
   A69E F5 30              1632 	mov	_prog_aux_1_1,a
   A6A0 80 D7              1633 	sjmp	00196$
   A6A2                    1634 00198$:
                           1635 ;	ProjetoFinal.c:414: if (aux[0] == 0xF)
   A6A2 74 0F              1636 	mov	a,#0x0F
   A6A4 B5 30 02           1637 	cjne	a,_prog_aux_1_1,00417$
   A6A7 80 B6              1638 	sjmp	00193$
   A6A9                    1639 00417$:
                           1640 ;	ProjetoFinal.c:417: displaydata(aux[0] + 0x30);
   A6A9 E5 30              1641 	mov	a,_prog_aux_1_1
   A6AB FC                 1642 	mov	r4,a
   A6AC 33                 1643 	rlc	a
   A6AD 95 E0              1644 	subb	a,acc
   A6AF FD                 1645 	mov	r5,a
   A6B0 74 30              1646 	mov	a,#0x30
   A6B2 2C                 1647 	add	a,r4
   A6B3 F5 82              1648 	mov	dpl,a
   A6B5 E4                 1649 	clr	a
   A6B6 3D                 1650 	addc	a,r5
   A6B7 F5 83              1651 	mov	dph,a
   A6B9 C0 02              1652 	push	ar2
   A6BB 12 A2 19           1653 	lcall	_displaydata
                           1654 ;	ProjetoFinal.c:418: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A6BE 12 A1 4E           1655 	lcall	_NovaTeclaKeyDown
   A6C1 12 A1 B4           1656 	lcall	_Key_ASCII2BIN
   A6C4 E5 82              1657 	mov	a,dpl
   A6C6 D0 02              1658 	pop	ar2
   A6C8 F5 31              1659 	mov	(_prog_aux_1_1 + 0x0001),a
                           1660 ;	ProjetoFinal.c:419: while ( (aux[1] < 0 || aux[1] > 9) && aux[1] != 0xF )
   A6CA                    1661 00203$:
   A6CA E5 31              1662 	mov	a,(_prog_aux_1_1 + 0x0001)
   A6CC 20 E7 0D           1663 	jb	acc.7,00202$
   A6CF C3                 1664 	clr	c
   A6D0 74 89              1665 	mov	a,#(0x09 ^ 0x80)
   A6D2 85 31 F0           1666 	mov	b,(_prog_aux_1_1 + 0x0001)
   A6D5 63 F0 80           1667 	xrl	b,#0x80
   A6D8 95 F0              1668 	subb	a,b
   A6DA 50 17              1669 	jnc	00205$
   A6DC                    1670 00202$:
   A6DC 74 0F              1671 	mov	a,#0x0F
   A6DE B5 31 02           1672 	cjne	a,(_prog_aux_1_1 + 0x0001),00420$
   A6E1 80 10              1673 	sjmp	00205$
   A6E3                    1674 00420$:
                           1675 ;	ProjetoFinal.c:420: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A6E3 C0 02              1676 	push	ar2
   A6E5 12 A1 4E           1677 	lcall	_NovaTeclaKeyDown
   A6E8 12 A1 B4           1678 	lcall	_Key_ASCII2BIN
   A6EB E5 82              1679 	mov	a,dpl
   A6ED D0 02              1680 	pop	ar2
   A6EF F5 31              1681 	mov	(_prog_aux_1_1 + 0x0001),a
   A6F1 80 D7              1682 	sjmp	00203$
   A6F3                    1683 00205$:
                           1684 ;	ProjetoFinal.c:421: if (aux[1] == 0xF)
   A6F3 74 0F              1685 	mov	a,#0x0F
   A6F5 B5 31 03           1686 	cjne	a,(_prog_aux_1_1 + 0x0001),00421$
   A6F8 02 A6 5F           1687 	ljmp	00193$
   A6FB                    1688 00421$:
                           1689 ;	ProjetoFinal.c:424: displaydata(aux[1] + 0x30);
   A6FB AC 31              1690 	mov	r4,(_prog_aux_1_1 + 0x0001)
   A6FD E5 31              1691 	mov	a,(_prog_aux_1_1 + 0x0001)
   A6FF 33                 1692 	rlc	a
   A700 95 E0              1693 	subb	a,acc
   A702 FD                 1694 	mov	r5,a
   A703 74 30              1695 	mov	a,#0x30
   A705 2C                 1696 	add	a,r4
   A706 F5 82              1697 	mov	dpl,a
   A708 E4                 1698 	clr	a
   A709 3D                 1699 	addc	a,r5
   A70A F5 83              1700 	mov	dph,a
   A70C C0 02              1701 	push	ar2
   A70E 12 A2 19           1702 	lcall	_displaydata
                           1703 ;	ProjetoFinal.c:425: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
   A711 12 A1 4E           1704 	lcall	_NovaTeclaKeyDown
   A714 12 A1 B4           1705 	lcall	_Key_ASCII2BIN
   A717 AB 82              1706 	mov	r3,dpl
   A719 D0 02              1707 	pop	ar2
                           1708 ;	ProjetoFinal.c:426: while (tecla != 0xE && tecla != 0xF)
   A71B                    1709 00209$:
   A71B BB 0E 02           1710 	cjne	r3,#0x0E,00422$
   A71E 80 13              1711 	sjmp	00211$
   A720                    1712 00422$:
   A720 BB 0F 02           1713 	cjne	r3,#0x0F,00423$
   A723 80 0E              1714 	sjmp	00211$
   A725                    1715 00423$:
                           1716 ;	ProjetoFinal.c:427: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
   A725 C0 02              1717 	push	ar2
   A727 12 A1 4E           1718 	lcall	_NovaTeclaKeyDown
   A72A 12 A1 B4           1719 	lcall	_Key_ASCII2BIN
   A72D AB 82              1720 	mov	r3,dpl
   A72F D0 02              1721 	pop	ar2
   A731 80 E8              1722 	sjmp	00209$
   A733                    1723 00211$:
                           1724 ;	ProjetoFinal.c:428: if (tecla == 0xF)
   A733 BB 0F 03           1725 	cjne	r3,#0x0F,00424$
   A736 02 A6 5F           1726 	ljmp	00193$
   A739                    1727 00424$:
                           1728 ;	ProjetoFinal.c:430: if (tecla == 0xE)
   A739 BB 0E 0D           1729 	cjne	r3,#0x0E,00216$
                           1730 ;	ProjetoFinal.c:431: hours = aux[0]*16 + aux[1];
   A73C E5 30              1731 	mov	a,_prog_aux_1_1
   A73E C4                 1732 	swap	a
   A73F 54 F0              1733 	anl	a,#0xf0
   A741 FC                 1734 	mov	r4,a
   A742 90 21 04           1735 	mov	dptr,#_hours
   A745 E5 31              1736 	mov	a,(_prog_aux_1_1 + 0x0001)
   A747 2C                 1737 	add	a,r4
   A748 F0                 1738 	movx	@dptr,a
                           1739 ;	ProjetoFinal.c:433: INICIO_PROG_MIN:
   A749                    1740 00216$:
                           1741 ;	ProjetoFinal.c:435: cleardisplay();
   A749 C0 02              1742 	push	ar2
   A74B 12 A2 6C           1743 	lcall	_cleardisplay
                           1744 ;	ProjetoFinal.c:436: printDisplay("Min(00-59): ");
   A74E 90 B4 86           1745 	mov	dptr,#__str_5
   A751 75 F0 80           1746 	mov	b,#0x80
   A754 12 A2 2B           1747 	lcall	_printDisplay
                           1748 ;	ProjetoFinal.c:437: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A757 12 A1 4E           1749 	lcall	_NovaTeclaKeyDown
   A75A 12 A1 B4           1750 	lcall	_Key_ASCII2BIN
   A75D E5 82              1751 	mov	a,dpl
   A75F D0 02              1752 	pop	ar2
   A761 F5 30              1753 	mov	_prog_aux_1_1,a
                           1754 ;	ProjetoFinal.c:438: while ( (aux[0] < 0 || aux[0] > 9) && aux[0] != 0xF )
   A763                    1755 00219$:
   A763 E5 30              1756 	mov	a,_prog_aux_1_1
   A765 20 E7 0D           1757 	jb	acc.7,00218$
   A768 C3                 1758 	clr	c
   A769 74 89              1759 	mov	a,#(0x09 ^ 0x80)
   A76B 85 30 F0           1760 	mov	b,_prog_aux_1_1
   A76E 63 F0 80           1761 	xrl	b,#0x80
   A771 95 F0              1762 	subb	a,b
   A773 50 17              1763 	jnc	00221$
   A775                    1764 00218$:
   A775 74 0F              1765 	mov	a,#0x0F
   A777 B5 30 02           1766 	cjne	a,_prog_aux_1_1,00429$
   A77A 80 10              1767 	sjmp	00221$
   A77C                    1768 00429$:
                           1769 ;	ProjetoFinal.c:439: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A77C C0 02              1770 	push	ar2
   A77E 12 A1 4E           1771 	lcall	_NovaTeclaKeyDown
   A781 12 A1 B4           1772 	lcall	_Key_ASCII2BIN
   A784 E5 82              1773 	mov	a,dpl
   A786 D0 02              1774 	pop	ar2
   A788 F5 30              1775 	mov	_prog_aux_1_1,a
   A78A 80 D7              1776 	sjmp	00219$
   A78C                    1777 00221$:
                           1778 ;	ProjetoFinal.c:440: if (aux[0] == 0xF)
   A78C 74 0F              1779 	mov	a,#0x0F
   A78E B5 30 02           1780 	cjne	a,_prog_aux_1_1,00430$
   A791 80 B6              1781 	sjmp	00216$
   A793                    1782 00430$:
                           1783 ;	ProjetoFinal.c:443: displaydata(aux[0] + 0x30);
   A793 E5 30              1784 	mov	a,_prog_aux_1_1
   A795 FC                 1785 	mov	r4,a
   A796 33                 1786 	rlc	a
   A797 95 E0              1787 	subb	a,acc
   A799 FD                 1788 	mov	r5,a
   A79A 74 30              1789 	mov	a,#0x30
   A79C 2C                 1790 	add	a,r4
   A79D F5 82              1791 	mov	dpl,a
   A79F E4                 1792 	clr	a
   A7A0 3D                 1793 	addc	a,r5
   A7A1 F5 83              1794 	mov	dph,a
   A7A3 C0 02              1795 	push	ar2
   A7A5 12 A2 19           1796 	lcall	_displaydata
                           1797 ;	ProjetoFinal.c:444: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A7A8 12 A1 4E           1798 	lcall	_NovaTeclaKeyDown
   A7AB 12 A1 B4           1799 	lcall	_Key_ASCII2BIN
   A7AE E5 82              1800 	mov	a,dpl
   A7B0 D0 02              1801 	pop	ar2
   A7B2 F5 31              1802 	mov	(_prog_aux_1_1 + 0x0001),a
                           1803 ;	ProjetoFinal.c:445: while ( (aux[1] < 0 || aux[1] > 9) && aux[1] != 0xF )
   A7B4                    1804 00226$:
   A7B4 E5 31              1805 	mov	a,(_prog_aux_1_1 + 0x0001)
   A7B6 20 E7 0D           1806 	jb	acc.7,00225$
   A7B9 C3                 1807 	clr	c
   A7BA 74 89              1808 	mov	a,#(0x09 ^ 0x80)
   A7BC 85 31 F0           1809 	mov	b,(_prog_aux_1_1 + 0x0001)
   A7BF 63 F0 80           1810 	xrl	b,#0x80
   A7C2 95 F0              1811 	subb	a,b
   A7C4 50 17              1812 	jnc	00228$
   A7C6                    1813 00225$:
   A7C6 74 0F              1814 	mov	a,#0x0F
   A7C8 B5 31 02           1815 	cjne	a,(_prog_aux_1_1 + 0x0001),00433$
   A7CB 80 10              1816 	sjmp	00228$
   A7CD                    1817 00433$:
                           1818 ;	ProjetoFinal.c:446: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A7CD C0 02              1819 	push	ar2
   A7CF 12 A1 4E           1820 	lcall	_NovaTeclaKeyDown
   A7D2 12 A1 B4           1821 	lcall	_Key_ASCII2BIN
   A7D5 E5 82              1822 	mov	a,dpl
   A7D7 D0 02              1823 	pop	ar2
   A7D9 F5 31              1824 	mov	(_prog_aux_1_1 + 0x0001),a
   A7DB 80 D7              1825 	sjmp	00226$
   A7DD                    1826 00228$:
                           1827 ;	ProjetoFinal.c:447: if (aux[1] == 0xF)
   A7DD 74 0F              1828 	mov	a,#0x0F
   A7DF B5 31 03           1829 	cjne	a,(_prog_aux_1_1 + 0x0001),00434$
   A7E2 02 A7 49           1830 	ljmp	00216$
   A7E5                    1831 00434$:
                           1832 ;	ProjetoFinal.c:450: displaydata(aux[1] + 0x30);
   A7E5 AC 31              1833 	mov	r4,(_prog_aux_1_1 + 0x0001)
   A7E7 E5 31              1834 	mov	a,(_prog_aux_1_1 + 0x0001)
   A7E9 33                 1835 	rlc	a
   A7EA 95 E0              1836 	subb	a,acc
   A7EC FD                 1837 	mov	r5,a
   A7ED 74 30              1838 	mov	a,#0x30
   A7EF 2C                 1839 	add	a,r4
   A7F0 F5 82              1840 	mov	dpl,a
   A7F2 E4                 1841 	clr	a
   A7F3 3D                 1842 	addc	a,r5
   A7F4 F5 83              1843 	mov	dph,a
   A7F6 C0 02              1844 	push	ar2
   A7F8 12 A2 19           1845 	lcall	_displaydata
                           1846 ;	ProjetoFinal.c:451: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
   A7FB 12 A1 4E           1847 	lcall	_NovaTeclaKeyDown
   A7FE 12 A1 B4           1848 	lcall	_Key_ASCII2BIN
   A801 AB 82              1849 	mov	r3,dpl
   A803 D0 02              1850 	pop	ar2
                           1851 ;	ProjetoFinal.c:452: while (tecla != 0xE && tecla != 0xF)
   A805                    1852 00232$:
   A805 BB 0E 02           1853 	cjne	r3,#0x0E,00435$
   A808 80 13              1854 	sjmp	00234$
   A80A                    1855 00435$:
   A80A BB 0F 02           1856 	cjne	r3,#0x0F,00436$
   A80D 80 0E              1857 	sjmp	00234$
   A80F                    1858 00436$:
                           1859 ;	ProjetoFinal.c:453: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
   A80F C0 02              1860 	push	ar2
   A811 12 A1 4E           1861 	lcall	_NovaTeclaKeyDown
   A814 12 A1 B4           1862 	lcall	_Key_ASCII2BIN
   A817 AB 82              1863 	mov	r3,dpl
   A819 D0 02              1864 	pop	ar2
   A81B 80 E8              1865 	sjmp	00232$
   A81D                    1866 00234$:
                           1867 ;	ProjetoFinal.c:454: if (tecla == 0xF)
   A81D BB 0F 03           1868 	cjne	r3,#0x0F,00437$
   A820 02 A7 49           1869 	ljmp	00216$
   A823                    1870 00437$:
                           1871 ;	ProjetoFinal.c:456: if (tecla == 0xE)
   A823 BB 0E 0D           1872 	cjne	r3,#0x0E,00239$
                           1873 ;	ProjetoFinal.c:457: minutes = aux[0]*16 + aux[1];
   A826 E5 30              1874 	mov	a,_prog_aux_1_1
   A828 C4                 1875 	swap	a
   A829 54 F0              1876 	anl	a,#0xf0
   A82B FC                 1877 	mov	r4,a
   A82C 90 21 02           1878 	mov	dptr,#_minutes
   A82F E5 31              1879 	mov	a,(_prog_aux_1_1 + 0x0001)
   A831 2C                 1880 	add	a,r4
   A832 F0                 1881 	movx	@dptr,a
                           1882 ;	ProjetoFinal.c:459: INICIO_PROG_SEG:
   A833                    1883 00239$:
                           1884 ;	ProjetoFinal.c:461: cleardisplay();
   A833 C0 02              1885 	push	ar2
   A835 12 A2 6C           1886 	lcall	_cleardisplay
                           1887 ;	ProjetoFinal.c:462: printDisplay("Seg(00-59): ");
   A838 90 B4 93           1888 	mov	dptr,#__str_6
   A83B 75 F0 80           1889 	mov	b,#0x80
   A83E 12 A2 2B           1890 	lcall	_printDisplay
                           1891 ;	ProjetoFinal.c:463: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A841 12 A1 4E           1892 	lcall	_NovaTeclaKeyDown
   A844 12 A1 B4           1893 	lcall	_Key_ASCII2BIN
   A847 E5 82              1894 	mov	a,dpl
   A849 D0 02              1895 	pop	ar2
   A84B F5 30              1896 	mov	_prog_aux_1_1,a
                           1897 ;	ProjetoFinal.c:464: while ( (aux[0] < 0 || aux[0] > 9) && aux[0] != 0xF )
   A84D                    1898 00242$:
   A84D E5 30              1899 	mov	a,_prog_aux_1_1
   A84F 20 E7 0D           1900 	jb	acc.7,00241$
   A852 C3                 1901 	clr	c
   A853 74 89              1902 	mov	a,#(0x09 ^ 0x80)
   A855 85 30 F0           1903 	mov	b,_prog_aux_1_1
   A858 63 F0 80           1904 	xrl	b,#0x80
   A85B 95 F0              1905 	subb	a,b
   A85D 50 17              1906 	jnc	00244$
   A85F                    1907 00241$:
   A85F 74 0F              1908 	mov	a,#0x0F
   A861 B5 30 02           1909 	cjne	a,_prog_aux_1_1,00442$
   A864 80 10              1910 	sjmp	00244$
   A866                    1911 00442$:
                           1912 ;	ProjetoFinal.c:465: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A866 C0 02              1913 	push	ar2
   A868 12 A1 4E           1914 	lcall	_NovaTeclaKeyDown
   A86B 12 A1 B4           1915 	lcall	_Key_ASCII2BIN
   A86E E5 82              1916 	mov	a,dpl
   A870 D0 02              1917 	pop	ar2
   A872 F5 30              1918 	mov	_prog_aux_1_1,a
   A874 80 D7              1919 	sjmp	00242$
   A876                    1920 00244$:
                           1921 ;	ProjetoFinal.c:466: if (aux[0] == 0xF)
   A876 74 0F              1922 	mov	a,#0x0F
   A878 B5 30 02           1923 	cjne	a,_prog_aux_1_1,00443$
   A87B 80 B6              1924 	sjmp	00239$
   A87D                    1925 00443$:
                           1926 ;	ProjetoFinal.c:469: displaydata(aux[0] + 0x30);
   A87D E5 30              1927 	mov	a,_prog_aux_1_1
   A87F FC                 1928 	mov	r4,a
   A880 33                 1929 	rlc	a
   A881 95 E0              1930 	subb	a,acc
   A883 FD                 1931 	mov	r5,a
   A884 74 30              1932 	mov	a,#0x30
   A886 2C                 1933 	add	a,r4
   A887 F5 82              1934 	mov	dpl,a
   A889 E4                 1935 	clr	a
   A88A 3D                 1936 	addc	a,r5
   A88B F5 83              1937 	mov	dph,a
   A88D C0 02              1938 	push	ar2
   A88F 12 A2 19           1939 	lcall	_displaydata
                           1940 ;	ProjetoFinal.c:470: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A892 12 A1 4E           1941 	lcall	_NovaTeclaKeyDown
   A895 12 A1 B4           1942 	lcall	_Key_ASCII2BIN
   A898 E5 82              1943 	mov	a,dpl
   A89A D0 02              1944 	pop	ar2
   A89C F5 31              1945 	mov	(_prog_aux_1_1 + 0x0001),a
                           1946 ;	ProjetoFinal.c:471: while ( (aux[1] < 0 || aux[1] > 9) && aux[1] != 0xF )
   A89E                    1947 00249$:
   A89E E5 31              1948 	mov	a,(_prog_aux_1_1 + 0x0001)
   A8A0 20 E7 0D           1949 	jb	acc.7,00248$
   A8A3 C3                 1950 	clr	c
   A8A4 74 89              1951 	mov	a,#(0x09 ^ 0x80)
   A8A6 85 31 F0           1952 	mov	b,(_prog_aux_1_1 + 0x0001)
   A8A9 63 F0 80           1953 	xrl	b,#0x80
   A8AC 95 F0              1954 	subb	a,b
   A8AE 50 17              1955 	jnc	00251$
   A8B0                    1956 00248$:
   A8B0 74 0F              1957 	mov	a,#0x0F
   A8B2 B5 31 02           1958 	cjne	a,(_prog_aux_1_1 + 0x0001),00446$
   A8B5 80 10              1959 	sjmp	00251$
   A8B7                    1960 00446$:
                           1961 ;	ProjetoFinal.c:472: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A8B7 C0 02              1962 	push	ar2
   A8B9 12 A1 4E           1963 	lcall	_NovaTeclaKeyDown
   A8BC 12 A1 B4           1964 	lcall	_Key_ASCII2BIN
   A8BF E5 82              1965 	mov	a,dpl
   A8C1 D0 02              1966 	pop	ar2
   A8C3 F5 31              1967 	mov	(_prog_aux_1_1 + 0x0001),a
   A8C5 80 D7              1968 	sjmp	00249$
   A8C7                    1969 00251$:
                           1970 ;	ProjetoFinal.c:473: if (aux[1] == 0xF)
   A8C7 74 0F              1971 	mov	a,#0x0F
   A8C9 B5 31 03           1972 	cjne	a,(_prog_aux_1_1 + 0x0001),00447$
   A8CC 02 A8 33           1973 	ljmp	00239$
   A8CF                    1974 00447$:
                           1975 ;	ProjetoFinal.c:476: displaydata(aux[1] + 0x30);
   A8CF AC 31              1976 	mov	r4,(_prog_aux_1_1 + 0x0001)
   A8D1 E5 31              1977 	mov	a,(_prog_aux_1_1 + 0x0001)
   A8D3 33                 1978 	rlc	a
   A8D4 95 E0              1979 	subb	a,acc
   A8D6 FD                 1980 	mov	r5,a
   A8D7 74 30              1981 	mov	a,#0x30
   A8D9 2C                 1982 	add	a,r4
   A8DA F5 82              1983 	mov	dpl,a
   A8DC E4                 1984 	clr	a
   A8DD 3D                 1985 	addc	a,r5
   A8DE F5 83              1986 	mov	dph,a
   A8E0 C0 02              1987 	push	ar2
   A8E2 12 A2 19           1988 	lcall	_displaydata
                           1989 ;	ProjetoFinal.c:477: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
   A8E5 12 A1 4E           1990 	lcall	_NovaTeclaKeyDown
   A8E8 12 A1 B4           1991 	lcall	_Key_ASCII2BIN
   A8EB AB 82              1992 	mov	r3,dpl
   A8ED D0 02              1993 	pop	ar2
                           1994 ;	ProjetoFinal.c:478: while (tecla != 0xE && tecla != 0xF)
   A8EF                    1995 00255$:
   A8EF BB 0E 02           1996 	cjne	r3,#0x0E,00448$
   A8F2 80 13              1997 	sjmp	00257$
   A8F4                    1998 00448$:
   A8F4 BB 0F 02           1999 	cjne	r3,#0x0F,00449$
   A8F7 80 0E              2000 	sjmp	00257$
   A8F9                    2001 00449$:
                           2002 ;	ProjetoFinal.c:479: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
   A8F9 C0 02              2003 	push	ar2
   A8FB 12 A1 4E           2004 	lcall	_NovaTeclaKeyDown
   A8FE 12 A1 B4           2005 	lcall	_Key_ASCII2BIN
   A901 AB 82              2006 	mov	r3,dpl
   A903 D0 02              2007 	pop	ar2
   A905 80 E8              2008 	sjmp	00255$
   A907                    2009 00257$:
                           2010 ;	ProjetoFinal.c:480: if (tecla == 0xF)
   A907 BB 0F 03           2011 	cjne	r3,#0x0F,00450$
   A90A 02 A8 33           2012 	ljmp	00239$
   A90D                    2013 00450$:
                           2014 ;	ProjetoFinal.c:482: if (tecla == 0xE)
   A90D BB 0E 0D           2015 	cjne	r3,#0x0E,00261$
                           2016 ;	ProjetoFinal.c:483: seconds = aux[0]*16 + aux[1];
   A910 E5 30              2017 	mov	a,_prog_aux_1_1
   A912 C4                 2018 	swap	a
   A913 54 F0              2019 	anl	a,#0xf0
   A915 FB                 2020 	mov	r3,a
   A916 90 21 00           2021 	mov	dptr,#_seconds
   A919 E5 31              2022 	mov	a,(_prog_aux_1_1 + 0x0001)
   A91B 2B                 2023 	add	a,r3
   A91C F0                 2024 	movx	@dptr,a
   A91D                    2025 00261$:
                           2026 ;	ProjetoFinal.c:486: IE = auxIE;
   A91D 8A A8              2027 	mov	_IE,r2
                           2028 ;	ProjetoFinal.c:487: regB &= 0x7F;
   A91F 90 21 0B           2029 	mov	dptr,#_regB
   A922 E0                 2030 	movx	a,@dptr
   A923 54 7F              2031 	anl	a,#0x7F
   A925 F0                 2032 	movx	@dptr,a
   A926 22                 2033 	ret
                           2034 ;------------------------------------------------------------
                           2035 ;Allocation info for local variables in function 'progAlarm'
                           2036 ;------------------------------------------------------------
                           2037 ;auxIE                     Allocated to registers r2 
                           2038 ;aux                       Allocated with name '_progAlarm_aux_1_1'
                           2039 ;tecla                     Allocated to registers r3 
                           2040 ;------------------------------------------------------------
                           2041 ;	ProjetoFinal.c:495: void progAlarm(){
                           2042 ;	-----------------------------------------
                           2043 ;	 function progAlarm
                           2044 ;	-----------------------------------------
   A927                    2045 _progAlarm:
                           2046 ;	ProjetoFinal.c:498: auxIE = IE;
   A927 AA A8              2047 	mov	r2,_IE
                           2048 ;	ProjetoFinal.c:499: IE &= 0xEF;
   A929 53 A8 EF           2049 	anl	_IE,#0xEF
                           2050 ;	ProjetoFinal.c:500: regB |= 0x80;
   A92C 90 21 0B           2051 	mov	dptr,#_regB
   A92F E0                 2052 	movx	a,@dptr
   A930 FB                 2053 	mov	r3,a
   A931 44 80              2054 	orl	a,#0x80
   A933 F0                 2055 	movx	@dptr,a
                           2056 ;	ProjetoFinal.c:502: INICIO_PROG_ALARM_QTD:
   A934                    2057 00101$:
                           2058 ;	ProjetoFinal.c:504: cleardisplay();
   A934 C0 02              2059 	push	ar2
   A936 12 A2 6C           2060 	lcall	_cleardisplay
                           2061 ;	ProjetoFinal.c:505: printDisplay("Quantos ml?");
   A939 90 B4 A0           2062 	mov	dptr,#__str_7
   A93C 75 F0 80           2063 	mov	b,#0x80
   A93F 12 A2 2B           2064 	lcall	_printDisplay
                           2065 ;	ProjetoFinal.c:506: line(2);
   A942 90 00 02           2066 	mov	dptr,#0x0002
   A945 12 A2 72           2067 	lcall	_line
                           2068 ;	ProjetoFinal.c:507: printDisplay("(0000-9999):");
   A948 90 B4 AC           2069 	mov	dptr,#__str_8
   A94B 75 F0 80           2070 	mov	b,#0x80
   A94E 12 A2 2B           2071 	lcall	_printDisplay
                           2072 ;	ProjetoFinal.c:509: qtd[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A951 12 A1 4E           2073 	lcall	_NovaTeclaKeyDown
   A954 12 A1 B4           2074 	lcall	_Key_ASCII2BIN
   A957 E5 82              2075 	mov	a,dpl
   A959 D0 02              2076 	pop	ar2
   A95B F5 22              2077 	mov	_qtd,a
                           2078 ;	ProjetoFinal.c:510: while ( (qtd[0] < 0 || qtd[0] > 9) && qtd[0] != 0xF )
   A95D                    2079 00104$:
   A95D E5 22              2080 	mov	a,_qtd
   A95F FB                 2081 	mov	r3,a
   A960 20 E7 0C           2082 	jb	acc.7,00103$
   A963 C3                 2083 	clr	c
   A964 74 89              2084 	mov	a,#(0x09 ^ 0x80)
   A966 8B F0              2085 	mov	b,r3
   A968 63 F0 80           2086 	xrl	b,#0x80
   A96B 95 F0              2087 	subb	a,b
   A96D 50 17              2088 	jnc	00106$
   A96F                    2089 00103$:
   A96F 74 0F              2090 	mov	a,#0x0F
   A971 B5 22 02           2091 	cjne	a,_qtd,00279$
   A974 80 10              2092 	sjmp	00106$
   A976                    2093 00279$:
                           2094 ;	ProjetoFinal.c:511: qtd[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A976 C0 02              2095 	push	ar2
   A978 12 A1 4E           2096 	lcall	_NovaTeclaKeyDown
   A97B 12 A1 B4           2097 	lcall	_Key_ASCII2BIN
   A97E E5 82              2098 	mov	a,dpl
   A980 D0 02              2099 	pop	ar2
   A982 F5 22              2100 	mov	_qtd,a
   A984 80 D7              2101 	sjmp	00104$
   A986                    2102 00106$:
                           2103 ;	ProjetoFinal.c:512: if (qtd[0] == 0xF)
   A986 AB 22              2104 	mov	r3,_qtd
   A988 BB 0F 02           2105 	cjne	r3,#0x0F,00280$
   A98B 80 A7              2106 	sjmp	00101$
   A98D                    2107 00280$:
                           2108 ;	ProjetoFinal.c:514: displaydata(qtd[0] + 0x30);
   A98D EB                 2109 	mov	a,r3
   A98E 33                 2110 	rlc	a
   A98F 95 E0              2111 	subb	a,acc
   A991 FC                 2112 	mov	r4,a
   A992 74 30              2113 	mov	a,#0x30
   A994 2B                 2114 	add	a,r3
   A995 F5 82              2115 	mov	dpl,a
   A997 E4                 2116 	clr	a
   A998 3C                 2117 	addc	a,r4
   A999 F5 83              2118 	mov	dph,a
   A99B C0 02              2119 	push	ar2
   A99D 12 A2 19           2120 	lcall	_displaydata
                           2121 ;	ProjetoFinal.c:515: qtd[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A9A0 12 A1 4E           2122 	lcall	_NovaTeclaKeyDown
   A9A3 12 A1 B4           2123 	lcall	_Key_ASCII2BIN
   A9A6 E5 82              2124 	mov	a,dpl
   A9A8 D0 02              2125 	pop	ar2
   A9AA F5 23              2126 	mov	(_qtd + 0x0001),a
                           2127 ;	ProjetoFinal.c:516: while ( (qtd[1] < 0 || qtd[1] > 9) && qtd[1] != 0xF )
   A9AC                    2128 00111$:
   A9AC E5 23              2129 	mov	a,(_qtd + 0x0001)
   A9AE FB                 2130 	mov	r3,a
   A9AF 20 E7 0C           2131 	jb	acc.7,00110$
   A9B2 C3                 2132 	clr	c
   A9B3 74 89              2133 	mov	a,#(0x09 ^ 0x80)
   A9B5 8B F0              2134 	mov	b,r3
   A9B7 63 F0 80           2135 	xrl	b,#0x80
   A9BA 95 F0              2136 	subb	a,b
   A9BC 50 17              2137 	jnc	00113$
   A9BE                    2138 00110$:
   A9BE 74 0F              2139 	mov	a,#0x0F
   A9C0 B5 23 02           2140 	cjne	a,(_qtd + 0x0001),00283$
   A9C3 80 10              2141 	sjmp	00113$
   A9C5                    2142 00283$:
                           2143 ;	ProjetoFinal.c:517: qtd[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A9C5 C0 02              2144 	push	ar2
   A9C7 12 A1 4E           2145 	lcall	_NovaTeclaKeyDown
   A9CA 12 A1 B4           2146 	lcall	_Key_ASCII2BIN
   A9CD E5 82              2147 	mov	a,dpl
   A9CF D0 02              2148 	pop	ar2
   A9D1 F5 23              2149 	mov	(_qtd + 0x0001),a
   A9D3 80 D7              2150 	sjmp	00111$
   A9D5                    2151 00113$:
                           2152 ;	ProjetoFinal.c:518: if (qtd[1] == 0xF)
   A9D5 AB 23              2153 	mov	r3,(_qtd + 0x0001)
   A9D7 BB 0F 03           2154 	cjne	r3,#0x0F,00284$
   A9DA 02 A9 34           2155 	ljmp	00101$
   A9DD                    2156 00284$:
                           2157 ;	ProjetoFinal.c:520: displaydata(qtd[1] + 0x30);
   A9DD EB                 2158 	mov	a,r3
   A9DE 33                 2159 	rlc	a
   A9DF 95 E0              2160 	subb	a,acc
   A9E1 FC                 2161 	mov	r4,a
   A9E2 74 30              2162 	mov	a,#0x30
   A9E4 2B                 2163 	add	a,r3
   A9E5 F5 82              2164 	mov	dpl,a
   A9E7 E4                 2165 	clr	a
   A9E8 3C                 2166 	addc	a,r4
   A9E9 F5 83              2167 	mov	dph,a
   A9EB C0 02              2168 	push	ar2
   A9ED 12 A2 19           2169 	lcall	_displaydata
                           2170 ;	ProjetoFinal.c:521: qtd[2] = Key_ASCII2BIN(NovaTeclaKeyDown());
   A9F0 12 A1 4E           2171 	lcall	_NovaTeclaKeyDown
   A9F3 12 A1 B4           2172 	lcall	_Key_ASCII2BIN
   A9F6 E5 82              2173 	mov	a,dpl
   A9F8 D0 02              2174 	pop	ar2
   A9FA F5 24              2175 	mov	(_qtd + 0x0002),a
                           2176 ;	ProjetoFinal.c:522: while ( (qtd[2] < 0 || qtd[2] > 9) && qtd[2] != 0xF )
   A9FC                    2177 00118$:
   A9FC E5 24              2178 	mov	a,(_qtd + 0x0002)
   A9FE FB                 2179 	mov	r3,a
   A9FF 20 E7 0C           2180 	jb	acc.7,00117$
   AA02 C3                 2181 	clr	c
   AA03 74 89              2182 	mov	a,#(0x09 ^ 0x80)
   AA05 8B F0              2183 	mov	b,r3
   AA07 63 F0 80           2184 	xrl	b,#0x80
   AA0A 95 F0              2185 	subb	a,b
   AA0C 50 17              2186 	jnc	00120$
   AA0E                    2187 00117$:
   AA0E 74 0F              2188 	mov	a,#0x0F
   AA10 B5 24 02           2189 	cjne	a,(_qtd + 0x0002),00287$
   AA13 80 10              2190 	sjmp	00120$
   AA15                    2191 00287$:
                           2192 ;	ProjetoFinal.c:523: qtd[2] = Key_ASCII2BIN(NovaTeclaKeyDown());
   AA15 C0 02              2193 	push	ar2
   AA17 12 A1 4E           2194 	lcall	_NovaTeclaKeyDown
   AA1A 12 A1 B4           2195 	lcall	_Key_ASCII2BIN
   AA1D E5 82              2196 	mov	a,dpl
   AA1F D0 02              2197 	pop	ar2
   AA21 F5 24              2198 	mov	(_qtd + 0x0002),a
   AA23 80 D7              2199 	sjmp	00118$
   AA25                    2200 00120$:
                           2201 ;	ProjetoFinal.c:524: if (qtd[2] == 0xF)
   AA25 AB 24              2202 	mov	r3,(_qtd + 0x0002)
   AA27 BB 0F 03           2203 	cjne	r3,#0x0F,00288$
   AA2A 02 A9 34           2204 	ljmp	00101$
   AA2D                    2205 00288$:
                           2206 ;	ProjetoFinal.c:526: displaydata(qtd[2] + 0x30);
   AA2D EB                 2207 	mov	a,r3
   AA2E 33                 2208 	rlc	a
   AA2F 95 E0              2209 	subb	a,acc
   AA31 FC                 2210 	mov	r4,a
   AA32 74 30              2211 	mov	a,#0x30
   AA34 2B                 2212 	add	a,r3
   AA35 F5 82              2213 	mov	dpl,a
   AA37 E4                 2214 	clr	a
   AA38 3C                 2215 	addc	a,r4
   AA39 F5 83              2216 	mov	dph,a
   AA3B C0 02              2217 	push	ar2
   AA3D 12 A2 19           2218 	lcall	_displaydata
                           2219 ;	ProjetoFinal.c:527: qtd[3] = Key_ASCII2BIN(NovaTeclaKeyDown());
   AA40 12 A1 4E           2220 	lcall	_NovaTeclaKeyDown
   AA43 12 A1 B4           2221 	lcall	_Key_ASCII2BIN
   AA46 E5 82              2222 	mov	a,dpl
   AA48 D0 02              2223 	pop	ar2
   AA4A F5 25              2224 	mov	(_qtd + 0x0003),a
                           2225 ;	ProjetoFinal.c:528: while ( (qtd[3] < 0 || qtd[3] > 9) && qtd[3] != 0xF )
   AA4C                    2226 00125$:
   AA4C E5 25              2227 	mov	a,(_qtd + 0x0003)
   AA4E FB                 2228 	mov	r3,a
   AA4F 20 E7 0C           2229 	jb	acc.7,00124$
   AA52 C3                 2230 	clr	c
   AA53 74 89              2231 	mov	a,#(0x09 ^ 0x80)
   AA55 8B F0              2232 	mov	b,r3
   AA57 63 F0 80           2233 	xrl	b,#0x80
   AA5A 95 F0              2234 	subb	a,b
   AA5C 50 17              2235 	jnc	00127$
   AA5E                    2236 00124$:
   AA5E 74 0F              2237 	mov	a,#0x0F
   AA60 B5 25 02           2238 	cjne	a,(_qtd + 0x0003),00291$
   AA63 80 10              2239 	sjmp	00127$
   AA65                    2240 00291$:
                           2241 ;	ProjetoFinal.c:529: qtd[3] = Key_ASCII2BIN(NovaTeclaKeyDown());
   AA65 C0 02              2242 	push	ar2
   AA67 12 A1 4E           2243 	lcall	_NovaTeclaKeyDown
   AA6A 12 A1 B4           2244 	lcall	_Key_ASCII2BIN
   AA6D E5 82              2245 	mov	a,dpl
   AA6F D0 02              2246 	pop	ar2
   AA71 F5 25              2247 	mov	(_qtd + 0x0003),a
   AA73 80 D7              2248 	sjmp	00125$
   AA75                    2249 00127$:
                           2250 ;	ProjetoFinal.c:530: if (qtd[3] == 0xF)
   AA75 AB 25              2251 	mov	r3,(_qtd + 0x0003)
   AA77 BB 0F 03           2252 	cjne	r3,#0x0F,00292$
   AA7A 02 A9 34           2253 	ljmp	00101$
   AA7D                    2254 00292$:
                           2255 ;	ProjetoFinal.c:532: displaydata(qtd[3] + 0x30);
   AA7D EB                 2256 	mov	a,r3
   AA7E 33                 2257 	rlc	a
   AA7F 95 E0              2258 	subb	a,acc
   AA81 FC                 2259 	mov	r4,a
   AA82 74 30              2260 	mov	a,#0x30
   AA84 2B                 2261 	add	a,r3
   AA85 F5 82              2262 	mov	dpl,a
   AA87 E4                 2263 	clr	a
   AA88 3C                 2264 	addc	a,r4
   AA89 F5 83              2265 	mov	dph,a
   AA8B C0 02              2266 	push	ar2
   AA8D 12 A2 19           2267 	lcall	_displaydata
                           2268 ;	ProjetoFinal.c:533: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
   AA90 12 A1 4E           2269 	lcall	_NovaTeclaKeyDown
   AA93 12 A1 B4           2270 	lcall	_Key_ASCII2BIN
   AA96 AB 82              2271 	mov	r3,dpl
   AA98 D0 02              2272 	pop	ar2
                           2273 ;	ProjetoFinal.c:534: while (tecla != 0xE && tecla != 0xF)
   AA9A                    2274 00131$:
   AA9A BB 0E 02           2275 	cjne	r3,#0x0E,00293$
   AA9D 80 13              2276 	sjmp	00133$
   AA9F                    2277 00293$:
   AA9F BB 0F 02           2278 	cjne	r3,#0x0F,00294$
   AAA2 80 0E              2279 	sjmp	00133$
   AAA4                    2280 00294$:
                           2281 ;	ProjetoFinal.c:535: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
   AAA4 C0 02              2282 	push	ar2
   AAA6 12 A1 4E           2283 	lcall	_NovaTeclaKeyDown
   AAA9 12 A1 B4           2284 	lcall	_Key_ASCII2BIN
   AAAC AB 82              2285 	mov	r3,dpl
   AAAE D0 02              2286 	pop	ar2
   AAB0 80 E8              2287 	sjmp	00131$
   AAB2                    2288 00133$:
                           2289 ;	ProjetoFinal.c:536: if (tecla == 0xF)
   AAB2 BB 0F 03           2290 	cjne	r3,#0x0F,00295$
   AAB5 02 A9 34           2291 	ljmp	00101$
   AAB8                    2292 00295$:
                           2293 ;	ProjetoFinal.c:538: if (tecla == 0xE)
   AAB8 BB 0E 6B           2294 	cjne	r3,#0x0E,00138$
                           2295 ;	ProjetoFinal.c:539: qtd_real = qtd[0]*1000 + qtd[1]*100+qtd[2]*10+qtd[3];
   AABB E5 22              2296 	mov	a,_qtd
   AABD F5 08              2297 	mov	__mulint_PARM_2,a
   AABF 33                 2298 	rlc	a
   AAC0 95 E0              2299 	subb	a,acc
   AAC2 F5 09              2300 	mov	(__mulint_PARM_2 + 1),a
   AAC4 90 03 E8           2301 	mov	dptr,#0x03E8
   AAC7 C0 02              2302 	push	ar2
   AAC9 12 B3 B8           2303 	lcall	__mulint
   AACC AC 82              2304 	mov	r4,dpl
   AACE AD 83              2305 	mov	r5,dph
   AAD0 D0 02              2306 	pop	ar2
   AAD2 C2 D5              2307 	clr	F0
   AAD4 75 F0 64           2308 	mov	b,#0x64
   AAD7 E5 23              2309 	mov	a,(_qtd + 0x0001)
   AAD9 30 E7 04           2310 	jnb	acc.7,00298$
   AADC B2 D5              2311 	cpl	F0
   AADE F4                 2312 	cpl	a
   AADF 04                 2313 	inc	a
   AAE0                    2314 00298$:
   AAE0 A4                 2315 	mul	ab
   AAE1 30 D5 0A           2316 	jnb	F0,00299$
   AAE4 F4                 2317 	cpl	a
   AAE5 24 01              2318 	add	a,#0x01
   AAE7 C5 F0              2319 	xch	a,b
   AAE9 F4                 2320 	cpl	a
   AAEA 34 00              2321 	addc	a,#0x00
   AAEC C5 F0              2322 	xch	a,b
   AAEE                    2323 00299$:
   AAEE 2C                 2324 	add	a,r4
   AAEF FC                 2325 	mov	r4,a
   AAF0 ED                 2326 	mov	a,r5
   AAF1 35 F0              2327 	addc	a,b
   AAF3 FD                 2328 	mov	r5,a
   AAF4 C2 D5              2329 	clr	F0
   AAF6 75 F0 0A           2330 	mov	b,#0x0a
   AAF9 E5 24              2331 	mov	a,(_qtd + 0x0002)
   AAFB 30 E7 04           2332 	jnb	acc.7,00300$
   AAFE B2 D5              2333 	cpl	F0
   AB00 F4                 2334 	cpl	a
   AB01 04                 2335 	inc	a
   AB02                    2336 00300$:
   AB02 A4                 2337 	mul	ab
   AB03 30 D5 0A           2338 	jnb	F0,00301$
   AB06 F4                 2339 	cpl	a
   AB07 24 01              2340 	add	a,#0x01
   AB09 C5 F0              2341 	xch	a,b
   AB0B F4                 2342 	cpl	a
   AB0C 34 00              2343 	addc	a,#0x00
   AB0E C5 F0              2344 	xch	a,b
   AB10                    2345 00301$:
   AB10 2C                 2346 	add	a,r4
   AB11 FC                 2347 	mov	r4,a
   AB12 ED                 2348 	mov	a,r5
   AB13 35 F0              2349 	addc	a,b
   AB15 FD                 2350 	mov	r5,a
   AB16 AE 25              2351 	mov	r6,(_qtd + 0x0003)
   AB18 E5 25              2352 	mov	a,(_qtd + 0x0003)
   AB1A 33                 2353 	rlc	a
   AB1B 95 E0              2354 	subb	a,acc
   AB1D FF                 2355 	mov	r7,a
   AB1E EE                 2356 	mov	a,r6
   AB1F 2C                 2357 	add	a,r4
   AB20 F5 26              2358 	mov	_qtd_real,a
   AB22 EF                 2359 	mov	a,r7
   AB23 3D                 2360 	addc	a,r5
   AB24 F5 27              2361 	mov	(_qtd_real + 1),a
                           2362 ;	ProjetoFinal.c:542: INICIO_PROG_ALARM_H:
   AB26                    2363 00138$:
                           2364 ;	ProjetoFinal.c:544: cleardisplay();
   AB26 C0 02              2365 	push	ar2
   AB28 12 A2 6C           2366 	lcall	_cleardisplay
                           2367 ;	ProjetoFinal.c:545: printDisplay("HoraAl(00-23):");
   AB2B 90 B4 B9           2368 	mov	dptr,#__str_9
   AB2E 75 F0 80           2369 	mov	b,#0x80
   AB31 12 A2 2B           2370 	lcall	_printDisplay
                           2371 ;	ProjetoFinal.c:546: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
   AB34 12 A1 4E           2372 	lcall	_NovaTeclaKeyDown
   AB37 12 A1 B4           2373 	lcall	_Key_ASCII2BIN
   AB3A E5 82              2374 	mov	a,dpl
   AB3C D0 02              2375 	pop	ar2
   AB3E F5 32              2376 	mov	_progAlarm_aux_1_1,a
                           2377 ;	ProjetoFinal.c:547: while ( (aux[0] < 0 || aux[0] > 9) && aux[0] != 0xF )
   AB40                    2378 00141$:
   AB40 E5 32              2379 	mov	a,_progAlarm_aux_1_1
   AB42 20 E7 0D           2380 	jb	acc.7,00140$
   AB45 C3                 2381 	clr	c
   AB46 74 89              2382 	mov	a,#(0x09 ^ 0x80)
   AB48 85 32 F0           2383 	mov	b,_progAlarm_aux_1_1
   AB4B 63 F0 80           2384 	xrl	b,#0x80
   AB4E 95 F0              2385 	subb	a,b
   AB50 50 17              2386 	jnc	00143$
   AB52                    2387 00140$:
   AB52 74 0F              2388 	mov	a,#0x0F
   AB54 B5 32 02           2389 	cjne	a,_progAlarm_aux_1_1,00304$
   AB57 80 10              2390 	sjmp	00143$
   AB59                    2391 00304$:
                           2392 ;	ProjetoFinal.c:548: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
   AB59 C0 02              2393 	push	ar2
   AB5B 12 A1 4E           2394 	lcall	_NovaTeclaKeyDown
   AB5E 12 A1 B4           2395 	lcall	_Key_ASCII2BIN
   AB61 E5 82              2396 	mov	a,dpl
   AB63 D0 02              2397 	pop	ar2
   AB65 F5 32              2398 	mov	_progAlarm_aux_1_1,a
   AB67 80 D7              2399 	sjmp	00141$
   AB69                    2400 00143$:
                           2401 ;	ProjetoFinal.c:549: if (aux[0] == 0xF)
   AB69 74 0F              2402 	mov	a,#0x0F
   AB6B B5 32 02           2403 	cjne	a,_progAlarm_aux_1_1,00305$
   AB6E 80 B6              2404 	sjmp	00138$
   AB70                    2405 00305$:
                           2406 ;	ProjetoFinal.c:552: displaydata(aux[0] + 0x30);
   AB70 E5 32              2407 	mov	a,_progAlarm_aux_1_1
   AB72 FC                 2408 	mov	r4,a
   AB73 33                 2409 	rlc	a
   AB74 95 E0              2410 	subb	a,acc
   AB76 FD                 2411 	mov	r5,a
   AB77 74 30              2412 	mov	a,#0x30
   AB79 2C                 2413 	add	a,r4
   AB7A F5 82              2414 	mov	dpl,a
   AB7C E4                 2415 	clr	a
   AB7D 3D                 2416 	addc	a,r5
   AB7E F5 83              2417 	mov	dph,a
   AB80 C0 02              2418 	push	ar2
   AB82 12 A2 19           2419 	lcall	_displaydata
                           2420 ;	ProjetoFinal.c:553: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
   AB85 12 A1 4E           2421 	lcall	_NovaTeclaKeyDown
   AB88 12 A1 B4           2422 	lcall	_Key_ASCII2BIN
   AB8B E5 82              2423 	mov	a,dpl
   AB8D D0 02              2424 	pop	ar2
   AB8F F5 33              2425 	mov	(_progAlarm_aux_1_1 + 0x0001),a
                           2426 ;	ProjetoFinal.c:554: while ( (aux[1] < 0 || aux[1] > 9) && aux[1] != 0xF )
   AB91                    2427 00148$:
   AB91 E5 33              2428 	mov	a,(_progAlarm_aux_1_1 + 0x0001)
   AB93 20 E7 0D           2429 	jb	acc.7,00147$
   AB96 C3                 2430 	clr	c
   AB97 74 89              2431 	mov	a,#(0x09 ^ 0x80)
   AB99 85 33 F0           2432 	mov	b,(_progAlarm_aux_1_1 + 0x0001)
   AB9C 63 F0 80           2433 	xrl	b,#0x80
   AB9F 95 F0              2434 	subb	a,b
   ABA1 50 17              2435 	jnc	00150$
   ABA3                    2436 00147$:
   ABA3 74 0F              2437 	mov	a,#0x0F
   ABA5 B5 33 02           2438 	cjne	a,(_progAlarm_aux_1_1 + 0x0001),00308$
   ABA8 80 10              2439 	sjmp	00150$
   ABAA                    2440 00308$:
                           2441 ;	ProjetoFinal.c:555: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
   ABAA C0 02              2442 	push	ar2
   ABAC 12 A1 4E           2443 	lcall	_NovaTeclaKeyDown
   ABAF 12 A1 B4           2444 	lcall	_Key_ASCII2BIN
   ABB2 E5 82              2445 	mov	a,dpl
   ABB4 D0 02              2446 	pop	ar2
   ABB6 F5 33              2447 	mov	(_progAlarm_aux_1_1 + 0x0001),a
   ABB8 80 D7              2448 	sjmp	00148$
   ABBA                    2449 00150$:
                           2450 ;	ProjetoFinal.c:556: if (aux[1] == 0xF)
   ABBA 74 0F              2451 	mov	a,#0x0F
   ABBC B5 33 03           2452 	cjne	a,(_progAlarm_aux_1_1 + 0x0001),00309$
   ABBF 02 AB 26           2453 	ljmp	00138$
   ABC2                    2454 00309$:
                           2455 ;	ProjetoFinal.c:559: displaydata(aux[1] + 0x30);
   ABC2 AC 33              2456 	mov	r4,(_progAlarm_aux_1_1 + 0x0001)
   ABC4 E5 33              2457 	mov	a,(_progAlarm_aux_1_1 + 0x0001)
   ABC6 33                 2458 	rlc	a
   ABC7 95 E0              2459 	subb	a,acc
   ABC9 FD                 2460 	mov	r5,a
   ABCA 74 30              2461 	mov	a,#0x30
   ABCC 2C                 2462 	add	a,r4
   ABCD F5 82              2463 	mov	dpl,a
   ABCF E4                 2464 	clr	a
   ABD0 3D                 2465 	addc	a,r5
   ABD1 F5 83              2466 	mov	dph,a
   ABD3 C0 02              2467 	push	ar2
   ABD5 12 A2 19           2468 	lcall	_displaydata
                           2469 ;	ProjetoFinal.c:560: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
   ABD8 12 A1 4E           2470 	lcall	_NovaTeclaKeyDown
   ABDB 12 A1 B4           2471 	lcall	_Key_ASCII2BIN
   ABDE AB 82              2472 	mov	r3,dpl
   ABE0 D0 02              2473 	pop	ar2
                           2474 ;	ProjetoFinal.c:561: while (tecla != 0xE && tecla != 0xF)
   ABE2                    2475 00154$:
   ABE2 BB 0E 02           2476 	cjne	r3,#0x0E,00310$
   ABE5 80 13              2477 	sjmp	00156$
   ABE7                    2478 00310$:
   ABE7 BB 0F 02           2479 	cjne	r3,#0x0F,00311$
   ABEA 80 0E              2480 	sjmp	00156$
   ABEC                    2481 00311$:
                           2482 ;	ProjetoFinal.c:562: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
   ABEC C0 02              2483 	push	ar2
   ABEE 12 A1 4E           2484 	lcall	_NovaTeclaKeyDown
   ABF1 12 A1 B4           2485 	lcall	_Key_ASCII2BIN
   ABF4 AB 82              2486 	mov	r3,dpl
   ABF6 D0 02              2487 	pop	ar2
   ABF8 80 E8              2488 	sjmp	00154$
   ABFA                    2489 00156$:
                           2490 ;	ProjetoFinal.c:563: if (tecla == 0xF)
   ABFA BB 0F 03           2491 	cjne	r3,#0x0F,00312$
   ABFD 02 AB 26           2492 	ljmp	00138$
   AC00                    2493 00312$:
                           2494 ;	ProjetoFinal.c:565: if (tecla == 0xE)
   AC00 BB 0E 0D           2495 	cjne	r3,#0x0E,00161$
                           2496 ;	ProjetoFinal.c:566: hoursAlarm = aux[0]*16 + aux[1];
   AC03 E5 32              2497 	mov	a,_progAlarm_aux_1_1
   AC05 C4                 2498 	swap	a
   AC06 54 F0              2499 	anl	a,#0xf0
   AC08 FC                 2500 	mov	r4,a
   AC09 90 21 05           2501 	mov	dptr,#_hoursAlarm
   AC0C E5 33              2502 	mov	a,(_progAlarm_aux_1_1 + 0x0001)
   AC0E 2C                 2503 	add	a,r4
   AC0F F0                 2504 	movx	@dptr,a
                           2505 ;	ProjetoFinal.c:569: INICIO_PROG_ALARM_M:
   AC10                    2506 00161$:
                           2507 ;	ProjetoFinal.c:571: cleardisplay();
   AC10 C0 02              2508 	push	ar2
   AC12 12 A2 6C           2509 	lcall	_cleardisplay
                           2510 ;	ProjetoFinal.c:572: printDisplay("MinAl(00-59): ");
   AC15 90 B4 C8           2511 	mov	dptr,#__str_10
   AC18 75 F0 80           2512 	mov	b,#0x80
   AC1B 12 A2 2B           2513 	lcall	_printDisplay
                           2514 ;	ProjetoFinal.c:573: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
   AC1E 12 A1 4E           2515 	lcall	_NovaTeclaKeyDown
   AC21 12 A1 B4           2516 	lcall	_Key_ASCII2BIN
   AC24 E5 82              2517 	mov	a,dpl
   AC26 D0 02              2518 	pop	ar2
   AC28 F5 32              2519 	mov	_progAlarm_aux_1_1,a
                           2520 ;	ProjetoFinal.c:574: while ( (aux[0] < 0 || aux[0] > 9) && aux[0] != 0xF )
   AC2A                    2521 00164$:
   AC2A E5 32              2522 	mov	a,_progAlarm_aux_1_1
   AC2C 20 E7 0D           2523 	jb	acc.7,00163$
   AC2F C3                 2524 	clr	c
   AC30 74 89              2525 	mov	a,#(0x09 ^ 0x80)
   AC32 85 32 F0           2526 	mov	b,_progAlarm_aux_1_1
   AC35 63 F0 80           2527 	xrl	b,#0x80
   AC38 95 F0              2528 	subb	a,b
   AC3A 50 17              2529 	jnc	00166$
   AC3C                    2530 00163$:
   AC3C 74 0F              2531 	mov	a,#0x0F
   AC3E B5 32 02           2532 	cjne	a,_progAlarm_aux_1_1,00317$
   AC41 80 10              2533 	sjmp	00166$
   AC43                    2534 00317$:
                           2535 ;	ProjetoFinal.c:575: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
   AC43 C0 02              2536 	push	ar2
   AC45 12 A1 4E           2537 	lcall	_NovaTeclaKeyDown
   AC48 12 A1 B4           2538 	lcall	_Key_ASCII2BIN
   AC4B E5 82              2539 	mov	a,dpl
   AC4D D0 02              2540 	pop	ar2
   AC4F F5 32              2541 	mov	_progAlarm_aux_1_1,a
   AC51 80 D7              2542 	sjmp	00164$
   AC53                    2543 00166$:
                           2544 ;	ProjetoFinal.c:576: if (aux[0] == 0xF)
   AC53 74 0F              2545 	mov	a,#0x0F
   AC55 B5 32 02           2546 	cjne	a,_progAlarm_aux_1_1,00318$
   AC58 80 B6              2547 	sjmp	00161$
   AC5A                    2548 00318$:
                           2549 ;	ProjetoFinal.c:579: displaydata(aux[0] + 0x30);
   AC5A E5 32              2550 	mov	a,_progAlarm_aux_1_1
   AC5C FC                 2551 	mov	r4,a
   AC5D 33                 2552 	rlc	a
   AC5E 95 E0              2553 	subb	a,acc
   AC60 FD                 2554 	mov	r5,a
   AC61 74 30              2555 	mov	a,#0x30
   AC63 2C                 2556 	add	a,r4
   AC64 F5 82              2557 	mov	dpl,a
   AC66 E4                 2558 	clr	a
   AC67 3D                 2559 	addc	a,r5
   AC68 F5 83              2560 	mov	dph,a
   AC6A C0 02              2561 	push	ar2
   AC6C 12 A2 19           2562 	lcall	_displaydata
                           2563 ;	ProjetoFinal.c:580: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
   AC6F 12 A1 4E           2564 	lcall	_NovaTeclaKeyDown
   AC72 12 A1 B4           2565 	lcall	_Key_ASCII2BIN
   AC75 E5 82              2566 	mov	a,dpl
   AC77 D0 02              2567 	pop	ar2
   AC79 F5 33              2568 	mov	(_progAlarm_aux_1_1 + 0x0001),a
                           2569 ;	ProjetoFinal.c:581: while ( (aux[1] < 0 || aux[1] > 9) && aux[1] != 0xF )
   AC7B                    2570 00171$:
   AC7B E5 33              2571 	mov	a,(_progAlarm_aux_1_1 + 0x0001)
   AC7D 20 E7 0D           2572 	jb	acc.7,00170$
   AC80 C3                 2573 	clr	c
   AC81 74 89              2574 	mov	a,#(0x09 ^ 0x80)
   AC83 85 33 F0           2575 	mov	b,(_progAlarm_aux_1_1 + 0x0001)
   AC86 63 F0 80           2576 	xrl	b,#0x80
   AC89 95 F0              2577 	subb	a,b
   AC8B 50 17              2578 	jnc	00173$
   AC8D                    2579 00170$:
   AC8D 74 0F              2580 	mov	a,#0x0F
   AC8F B5 33 02           2581 	cjne	a,(_progAlarm_aux_1_1 + 0x0001),00321$
   AC92 80 10              2582 	sjmp	00173$
   AC94                    2583 00321$:
                           2584 ;	ProjetoFinal.c:582: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
   AC94 C0 02              2585 	push	ar2
   AC96 12 A1 4E           2586 	lcall	_NovaTeclaKeyDown
   AC99 12 A1 B4           2587 	lcall	_Key_ASCII2BIN
   AC9C E5 82              2588 	mov	a,dpl
   AC9E D0 02              2589 	pop	ar2
   ACA0 F5 33              2590 	mov	(_progAlarm_aux_1_1 + 0x0001),a
   ACA2 80 D7              2591 	sjmp	00171$
   ACA4                    2592 00173$:
                           2593 ;	ProjetoFinal.c:583: if (aux[1] == 0xF)
   ACA4 74 0F              2594 	mov	a,#0x0F
   ACA6 B5 33 03           2595 	cjne	a,(_progAlarm_aux_1_1 + 0x0001),00322$
   ACA9 02 AC 10           2596 	ljmp	00161$
   ACAC                    2597 00322$:
                           2598 ;	ProjetoFinal.c:586: displaydata(aux[1] + 0x30);
   ACAC AC 33              2599 	mov	r4,(_progAlarm_aux_1_1 + 0x0001)
   ACAE E5 33              2600 	mov	a,(_progAlarm_aux_1_1 + 0x0001)
   ACB0 33                 2601 	rlc	a
   ACB1 95 E0              2602 	subb	a,acc
   ACB3 FD                 2603 	mov	r5,a
   ACB4 74 30              2604 	mov	a,#0x30
   ACB6 2C                 2605 	add	a,r4
   ACB7 F5 82              2606 	mov	dpl,a
   ACB9 E4                 2607 	clr	a
   ACBA 3D                 2608 	addc	a,r5
   ACBB F5 83              2609 	mov	dph,a
   ACBD C0 02              2610 	push	ar2
   ACBF 12 A2 19           2611 	lcall	_displaydata
                           2612 ;	ProjetoFinal.c:587: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
   ACC2 12 A1 4E           2613 	lcall	_NovaTeclaKeyDown
   ACC5 12 A1 B4           2614 	lcall	_Key_ASCII2BIN
   ACC8 AB 82              2615 	mov	r3,dpl
   ACCA D0 02              2616 	pop	ar2
                           2617 ;	ProjetoFinal.c:588: while (tecla != 0xE && tecla != 0xF)
   ACCC                    2618 00177$:
   ACCC BB 0E 02           2619 	cjne	r3,#0x0E,00323$
   ACCF 80 13              2620 	sjmp	00179$
   ACD1                    2621 00323$:
   ACD1 BB 0F 02           2622 	cjne	r3,#0x0F,00324$
   ACD4 80 0E              2623 	sjmp	00179$
   ACD6                    2624 00324$:
                           2625 ;	ProjetoFinal.c:589: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
   ACD6 C0 02              2626 	push	ar2
   ACD8 12 A1 4E           2627 	lcall	_NovaTeclaKeyDown
   ACDB 12 A1 B4           2628 	lcall	_Key_ASCII2BIN
   ACDE AB 82              2629 	mov	r3,dpl
   ACE0 D0 02              2630 	pop	ar2
   ACE2 80 E8              2631 	sjmp	00177$
   ACE4                    2632 00179$:
                           2633 ;	ProjetoFinal.c:590: if (tecla == 0xF)
   ACE4 BB 0F 03           2634 	cjne	r3,#0x0F,00325$
   ACE7 02 AC 10           2635 	ljmp	00161$
   ACEA                    2636 00325$:
                           2637 ;	ProjetoFinal.c:592: if (tecla == 0xE)
   ACEA BB 0E 0D           2638 	cjne	r3,#0x0E,00184$
                           2639 ;	ProjetoFinal.c:593: minAlarm = aux[0]*16 + aux[1];
   ACED E5 32              2640 	mov	a,_progAlarm_aux_1_1
   ACEF C4                 2641 	swap	a
   ACF0 54 F0              2642 	anl	a,#0xf0
   ACF2 FC                 2643 	mov	r4,a
   ACF3 90 21 03           2644 	mov	dptr,#_minAlarm
   ACF6 E5 33              2645 	mov	a,(_progAlarm_aux_1_1 + 0x0001)
   ACF8 2C                 2646 	add	a,r4
   ACF9 F0                 2647 	movx	@dptr,a
                           2648 ;	ProjetoFinal.c:595: INICIO_PROG_ALARM_S:
   ACFA                    2649 00184$:
                           2650 ;	ProjetoFinal.c:597: cleardisplay();
   ACFA C0 02              2651 	push	ar2
   ACFC 12 A2 6C           2652 	lcall	_cleardisplay
                           2653 ;	ProjetoFinal.c:598: printDisplay("SegAl(00-59): ");
   ACFF 90 B4 D7           2654 	mov	dptr,#__str_11
   AD02 75 F0 80           2655 	mov	b,#0x80
   AD05 12 A2 2B           2656 	lcall	_printDisplay
                           2657 ;	ProjetoFinal.c:599: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
   AD08 12 A1 4E           2658 	lcall	_NovaTeclaKeyDown
   AD0B 12 A1 B4           2659 	lcall	_Key_ASCII2BIN
   AD0E E5 82              2660 	mov	a,dpl
   AD10 D0 02              2661 	pop	ar2
   AD12 F5 32              2662 	mov	_progAlarm_aux_1_1,a
                           2663 ;	ProjetoFinal.c:600: while ( (aux[0] < 0 || aux[0] > 9) && aux[0] != 0xF )
   AD14                    2664 00187$:
   AD14 E5 32              2665 	mov	a,_progAlarm_aux_1_1
   AD16 20 E7 0D           2666 	jb	acc.7,00186$
   AD19 C3                 2667 	clr	c
   AD1A 74 89              2668 	mov	a,#(0x09 ^ 0x80)
   AD1C 85 32 F0           2669 	mov	b,_progAlarm_aux_1_1
   AD1F 63 F0 80           2670 	xrl	b,#0x80
   AD22 95 F0              2671 	subb	a,b
   AD24 50 17              2672 	jnc	00189$
   AD26                    2673 00186$:
   AD26 74 0F              2674 	mov	a,#0x0F
   AD28 B5 32 02           2675 	cjne	a,_progAlarm_aux_1_1,00330$
   AD2B 80 10              2676 	sjmp	00189$
   AD2D                    2677 00330$:
                           2678 ;	ProjetoFinal.c:601: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
   AD2D C0 02              2679 	push	ar2
   AD2F 12 A1 4E           2680 	lcall	_NovaTeclaKeyDown
   AD32 12 A1 B4           2681 	lcall	_Key_ASCII2BIN
   AD35 E5 82              2682 	mov	a,dpl
   AD37 D0 02              2683 	pop	ar2
   AD39 F5 32              2684 	mov	_progAlarm_aux_1_1,a
   AD3B 80 D7              2685 	sjmp	00187$
   AD3D                    2686 00189$:
                           2687 ;	ProjetoFinal.c:602: if (aux[0] == 0xF)
   AD3D 74 0F              2688 	mov	a,#0x0F
   AD3F B5 32 02           2689 	cjne	a,_progAlarm_aux_1_1,00331$
   AD42 80 B6              2690 	sjmp	00184$
   AD44                    2691 00331$:
                           2692 ;	ProjetoFinal.c:605: displaydata(aux[0] + 0x30);
   AD44 E5 32              2693 	mov	a,_progAlarm_aux_1_1
   AD46 FC                 2694 	mov	r4,a
   AD47 33                 2695 	rlc	a
   AD48 95 E0              2696 	subb	a,acc
   AD4A FD                 2697 	mov	r5,a
   AD4B 74 30              2698 	mov	a,#0x30
   AD4D 2C                 2699 	add	a,r4
   AD4E F5 82              2700 	mov	dpl,a
   AD50 E4                 2701 	clr	a
   AD51 3D                 2702 	addc	a,r5
   AD52 F5 83              2703 	mov	dph,a
   AD54 C0 02              2704 	push	ar2
   AD56 12 A2 19           2705 	lcall	_displaydata
                           2706 ;	ProjetoFinal.c:606: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
   AD59 12 A1 4E           2707 	lcall	_NovaTeclaKeyDown
   AD5C 12 A1 B4           2708 	lcall	_Key_ASCII2BIN
   AD5F E5 82              2709 	mov	a,dpl
   AD61 D0 02              2710 	pop	ar2
   AD63 F5 33              2711 	mov	(_progAlarm_aux_1_1 + 0x0001),a
                           2712 ;	ProjetoFinal.c:607: while ( (aux[1] < 0 || aux[1] > 9) && aux[1] != 0xF )
   AD65                    2713 00194$:
   AD65 E5 33              2714 	mov	a,(_progAlarm_aux_1_1 + 0x0001)
   AD67 20 E7 0D           2715 	jb	acc.7,00193$
   AD6A C3                 2716 	clr	c
   AD6B 74 89              2717 	mov	a,#(0x09 ^ 0x80)
   AD6D 85 33 F0           2718 	mov	b,(_progAlarm_aux_1_1 + 0x0001)
   AD70 63 F0 80           2719 	xrl	b,#0x80
   AD73 95 F0              2720 	subb	a,b
   AD75 50 17              2721 	jnc	00196$
   AD77                    2722 00193$:
   AD77 74 0F              2723 	mov	a,#0x0F
   AD79 B5 33 02           2724 	cjne	a,(_progAlarm_aux_1_1 + 0x0001),00334$
   AD7C 80 10              2725 	sjmp	00196$
   AD7E                    2726 00334$:
                           2727 ;	ProjetoFinal.c:608: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
   AD7E C0 02              2728 	push	ar2
   AD80 12 A1 4E           2729 	lcall	_NovaTeclaKeyDown
   AD83 12 A1 B4           2730 	lcall	_Key_ASCII2BIN
   AD86 E5 82              2731 	mov	a,dpl
   AD88 D0 02              2732 	pop	ar2
   AD8A F5 33              2733 	mov	(_progAlarm_aux_1_1 + 0x0001),a
   AD8C 80 D7              2734 	sjmp	00194$
   AD8E                    2735 00196$:
                           2736 ;	ProjetoFinal.c:609: if (aux[1] == 0xF)
   AD8E 74 0F              2737 	mov	a,#0x0F
   AD90 B5 33 03           2738 	cjne	a,(_progAlarm_aux_1_1 + 0x0001),00335$
   AD93 02 AC FA           2739 	ljmp	00184$
   AD96                    2740 00335$:
                           2741 ;	ProjetoFinal.c:612: displaydata(aux[1] + 0x30);
   AD96 AC 33              2742 	mov	r4,(_progAlarm_aux_1_1 + 0x0001)
   AD98 E5 33              2743 	mov	a,(_progAlarm_aux_1_1 + 0x0001)
   AD9A 33                 2744 	rlc	a
   AD9B 95 E0              2745 	subb	a,acc
   AD9D FD                 2746 	mov	r5,a
   AD9E 74 30              2747 	mov	a,#0x30
   ADA0 2C                 2748 	add	a,r4
   ADA1 F5 82              2749 	mov	dpl,a
   ADA3 E4                 2750 	clr	a
   ADA4 3D                 2751 	addc	a,r5
   ADA5 F5 83              2752 	mov	dph,a
   ADA7 C0 02              2753 	push	ar2
   ADA9 12 A2 19           2754 	lcall	_displaydata
                           2755 ;	ProjetoFinal.c:613: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
   ADAC 12 A1 4E           2756 	lcall	_NovaTeclaKeyDown
   ADAF 12 A1 B4           2757 	lcall	_Key_ASCII2BIN
   ADB2 AB 82              2758 	mov	r3,dpl
   ADB4 D0 02              2759 	pop	ar2
                           2760 ;	ProjetoFinal.c:614: while (tecla != 0xE && tecla != 0xF)
   ADB6                    2761 00200$:
   ADB6 BB 0E 02           2762 	cjne	r3,#0x0E,00336$
   ADB9 80 13              2763 	sjmp	00202$
   ADBB                    2764 00336$:
   ADBB BB 0F 02           2765 	cjne	r3,#0x0F,00337$
   ADBE 80 0E              2766 	sjmp	00202$
   ADC0                    2767 00337$:
                           2768 ;	ProjetoFinal.c:615: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
   ADC0 C0 02              2769 	push	ar2
   ADC2 12 A1 4E           2770 	lcall	_NovaTeclaKeyDown
   ADC5 12 A1 B4           2771 	lcall	_Key_ASCII2BIN
   ADC8 AB 82              2772 	mov	r3,dpl
   ADCA D0 02              2773 	pop	ar2
   ADCC 80 E8              2774 	sjmp	00200$
   ADCE                    2775 00202$:
                           2776 ;	ProjetoFinal.c:616: if (tecla == 0xF)
   ADCE BB 0F 03           2777 	cjne	r3,#0x0F,00338$
   ADD1 02 AC FA           2778 	ljmp	00184$
   ADD4                    2779 00338$:
                           2780 ;	ProjetoFinal.c:618: if (tecla == 0xE)
   ADD4 BB 0E 0D           2781 	cjne	r3,#0x0E,00206$
                           2782 ;	ProjetoFinal.c:619: secAlarm = aux[0]*16 + aux[1];
   ADD7 E5 32              2783 	mov	a,_progAlarm_aux_1_1
   ADD9 C4                 2784 	swap	a
   ADDA 54 F0              2785 	anl	a,#0xf0
   ADDC FB                 2786 	mov	r3,a
   ADDD 90 21 01           2787 	mov	dptr,#_secAlarm
   ADE0 E5 33              2788 	mov	a,(_progAlarm_aux_1_1 + 0x0001)
   ADE2 2B                 2789 	add	a,r3
   ADE3 F0                 2790 	movx	@dptr,a
   ADE4                    2791 00206$:
                           2792 ;	ProjetoFinal.c:621: cleardisplay();
   ADE4 C0 02              2793 	push	ar2
   ADE6 12 A2 6C           2794 	lcall	_cleardisplay
                           2795 ;	ProjetoFinal.c:622: printDisplay("Ativar alarme?");
   ADE9 90 B4 E6           2796 	mov	dptr,#__str_12
   ADEC 75 F0 80           2797 	mov	b,#0x80
   ADEF 12 A2 2B           2798 	lcall	_printDisplay
                           2799 ;	ProjetoFinal.c:623: line(2);
   ADF2 90 00 02           2800 	mov	dptr,#0x0002
   ADF5 12 A2 72           2801 	lcall	_line
                           2802 ;	ProjetoFinal.c:624: printDisplay("0=Sim/1=Não");
   ADF8 90 B4 F5           2803 	mov	dptr,#__str_13
   ADFB 75 F0 80           2804 	mov	b,#0x80
   ADFE 12 A2 2B           2805 	lcall	_printDisplay
                           2806 ;	ProjetoFinal.c:625: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
   AE01 12 A1 4E           2807 	lcall	_NovaTeclaKeyDown
   AE04 12 A1 B4           2808 	lcall	_Key_ASCII2BIN
   AE07 AB 82              2809 	mov	r3,dpl
   AE09 D0 02              2810 	pop	ar2
   AE0B 8B 32              2811 	mov	_progAlarm_aux_1_1,r3
                           2812 ;	ProjetoFinal.c:627: if (aux[0] == 0x01)
   AE0D BB 01 0A           2813 	cjne	r3,#0x01,00208$
                           2814 ;	ProjetoFinal.c:628: regB &= 0xDF;
   AE10 90 21 0B           2815 	mov	dptr,#_regB
   AE13 E0                 2816 	movx	a,@dptr
   AE14 FB                 2817 	mov	r3,a
   AE15 54 DF              2818 	anl	a,#0xDF
   AE17 F0                 2819 	movx	@dptr,a
   AE18 80 08              2820 	sjmp	00209$
   AE1A                    2821 00208$:
                           2822 ;	ProjetoFinal.c:629: else regB |= 0x20;
   AE1A 90 21 0B           2823 	mov	dptr,#_regB
   AE1D E0                 2824 	movx	a,@dptr
   AE1E FB                 2825 	mov	r3,a
   AE1F 44 20              2826 	orl	a,#0x20
   AE21 F0                 2827 	movx	@dptr,a
   AE22                    2828 00209$:
                           2829 ;	ProjetoFinal.c:631: regB &= 0x7F;
   AE22 90 21 0B           2830 	mov	dptr,#_regB
   AE25 E0                 2831 	movx	a,@dptr
   AE26 54 7F              2832 	anl	a,#0x7F
   AE28 F0                 2833 	movx	@dptr,a
                           2834 ;	ProjetoFinal.c:632: IE = auxIE;
   AE29 8A A8              2835 	mov	_IE,r2
                           2836 ;	ProjetoFinal.c:633: cleardisplay();
   AE2B 12 A2 6C           2837 	lcall	_cleardisplay
                           2838 ;	ProjetoFinal.c:634: printDisplay("Pronto");
   AE2E 90 B5 01           2839 	mov	dptr,#__str_14
   AE31 75 F0 80           2840 	mov	b,#0x80
   AE34 02 A2 2B           2841 	ljmp	_printDisplay
                           2842 ;------------------------------------------------------------
                           2843 ;Allocation info for local variables in function 'mostraDisplay'
                           2844 ;------------------------------------------------------------
                           2845 ;------------------------------------------------------------
                           2846 ;	ProjetoFinal.c:640: void mostraDisplay(){
                           2847 ;	-----------------------------------------
                           2848 ;	 function mostraDisplay
                           2849 ;	-----------------------------------------
   AE37                    2850 _mostraDisplay:
                           2851 ;	ProjetoFinal.c:641: cleardisplay();
   AE37 12 A2 6C           2852 	lcall	_cleardisplay
                           2853 ;	ProjetoFinal.c:642: line(1);
   AE3A 90 00 01           2854 	mov	dptr,#0x0001
   AE3D 12 A2 72           2855 	lcall	_line
                           2856 ;	ProjetoFinal.c:643: printDisplay(BCDtoStr(dateOfMounth));
   AE40 90 21 07           2857 	mov	dptr,#_dateOfMounth
   AE43 E0                 2858 	movx	a,@dptr
   AE44 F5 82              2859 	mov	dpl,a
   AE46 12 A0 A4           2860 	lcall	_BCDtoStr
   AE49 12 A2 2B           2861 	lcall	_printDisplay
                           2862 ;	ProjetoFinal.c:644: printDisplay("/");
   AE4C 90 B5 08           2863 	mov	dptr,#__str_15
   AE4F 75 F0 80           2864 	mov	b,#0x80
   AE52 12 A2 2B           2865 	lcall	_printDisplay
                           2866 ;	ProjetoFinal.c:645: printDisplay(BCDtoStr(mounth));
   AE55 90 21 08           2867 	mov	dptr,#_mounth
   AE58 E0                 2868 	movx	a,@dptr
   AE59 F5 82              2869 	mov	dpl,a
   AE5B 12 A0 A4           2870 	lcall	_BCDtoStr
   AE5E 12 A2 2B           2871 	lcall	_printDisplay
                           2872 ;	ProjetoFinal.c:646: printDisplay("/");
   AE61 90 B5 08           2873 	mov	dptr,#__str_15
   AE64 75 F0 80           2874 	mov	b,#0x80
   AE67 12 A2 2B           2875 	lcall	_printDisplay
                           2876 ;	ProjetoFinal.c:647: printDisplay(BCDtoStr(year));
   AE6A 90 21 09           2877 	mov	dptr,#_year
   AE6D E0                 2878 	movx	a,@dptr
   AE6E F5 82              2879 	mov	dpl,a
   AE70 12 A0 A4           2880 	lcall	_BCDtoStr
   AE73 12 A2 2B           2881 	lcall	_printDisplay
                           2882 ;	ProjetoFinal.c:648: printDisplay(" ");
   AE76 90 B5 0A           2883 	mov	dptr,#__str_16
   AE79 75 F0 80           2884 	mov	b,#0x80
   AE7C 12 A2 2B           2885 	lcall	_printDisplay
                           2886 ;	ProjetoFinal.c:650: switch (dayOfWeek){
   AE7F 90 21 06           2887 	mov	dptr,#_dayOfWeek
   AE82 E0                 2888 	movx	a,@dptr
   AE83 FA                 2889 	mov	r2,a
   AE84 74 07              2890 	mov	a,#0x07
   AE86 B5 02 00           2891 	cjne	a,ar2,00112$
   AE89                    2892 00112$:
   AE89 50 03              2893 	jnc	00113$
   AE8B 02 AE F8           2894 	ljmp	00108$
   AE8E                    2895 00113$:
   AE8E EA                 2896 	mov	a,r2
   AE8F 2A                 2897 	add	a,r2
   AE90 2A                 2898 	add	a,r2
   AE91 90 AE 95           2899 	mov	dptr,#00114$
   AE94 73                 2900 	jmp	@a+dptr
   AE95                    2901 00114$:
   AE95 02 AE F8           2902 	ljmp	00108$
   AE98 02 AE AD           2903 	ljmp	00101$
   AE9B 02 AE B8           2904 	ljmp	00102$
   AE9E 02 AE C3           2905 	ljmp	00103$
   AEA1 02 AE CE           2906 	ljmp	00104$
   AEA4 02 AE D9           2907 	ljmp	00105$
   AEA7 02 AE E4           2908 	ljmp	00106$
   AEAA 02 AE EF           2909 	ljmp	00107$
                           2910 ;	ProjetoFinal.c:651: case 1:
   AEAD                    2911 00101$:
                           2912 ;	ProjetoFinal.c:652: printDisplay("DOM");
   AEAD 90 B5 0C           2913 	mov	dptr,#__str_17
   AEB0 75 F0 80           2914 	mov	b,#0x80
   AEB3 12 A2 2B           2915 	lcall	_printDisplay
                           2916 ;	ProjetoFinal.c:653: break;
                           2917 ;	ProjetoFinal.c:654: case 2:
   AEB6 80 40              2918 	sjmp	00108$
   AEB8                    2919 00102$:
                           2920 ;	ProjetoFinal.c:655: printDisplay("SEG");
   AEB8 90 B5 10           2921 	mov	dptr,#__str_18
   AEBB 75 F0 80           2922 	mov	b,#0x80
   AEBE 12 A2 2B           2923 	lcall	_printDisplay
                           2924 ;	ProjetoFinal.c:656: break;
                           2925 ;	ProjetoFinal.c:657: case 3:
   AEC1 80 35              2926 	sjmp	00108$
   AEC3                    2927 00103$:
                           2928 ;	ProjetoFinal.c:658: printDisplay("TER");
   AEC3 90 B5 14           2929 	mov	dptr,#__str_19
   AEC6 75 F0 80           2930 	mov	b,#0x80
   AEC9 12 A2 2B           2931 	lcall	_printDisplay
                           2932 ;	ProjetoFinal.c:659: break;
                           2933 ;	ProjetoFinal.c:660: case 4:
   AECC 80 2A              2934 	sjmp	00108$
   AECE                    2935 00104$:
                           2936 ;	ProjetoFinal.c:661: printDisplay("QUA");
   AECE 90 B5 18           2937 	mov	dptr,#__str_20
   AED1 75 F0 80           2938 	mov	b,#0x80
   AED4 12 A2 2B           2939 	lcall	_printDisplay
                           2940 ;	ProjetoFinal.c:662: break;
                           2941 ;	ProjetoFinal.c:663: case 5:
   AED7 80 1F              2942 	sjmp	00108$
   AED9                    2943 00105$:
                           2944 ;	ProjetoFinal.c:664: printDisplay("QUI");
   AED9 90 B5 1C           2945 	mov	dptr,#__str_21
   AEDC 75 F0 80           2946 	mov	b,#0x80
   AEDF 12 A2 2B           2947 	lcall	_printDisplay
                           2948 ;	ProjetoFinal.c:665: break;
                           2949 ;	ProjetoFinal.c:666: case 6:
   AEE2 80 14              2950 	sjmp	00108$
   AEE4                    2951 00106$:
                           2952 ;	ProjetoFinal.c:667: printDisplay("SEX");
   AEE4 90 B5 20           2953 	mov	dptr,#__str_22
   AEE7 75 F0 80           2954 	mov	b,#0x80
   AEEA 12 A2 2B           2955 	lcall	_printDisplay
                           2956 ;	ProjetoFinal.c:668: break;
                           2957 ;	ProjetoFinal.c:669: case 7:
   AEED 80 09              2958 	sjmp	00108$
   AEEF                    2959 00107$:
                           2960 ;	ProjetoFinal.c:670: printDisplay("SAB");
   AEEF 90 B5 24           2961 	mov	dptr,#__str_23
   AEF2 75 F0 80           2962 	mov	b,#0x80
   AEF5 12 A2 2B           2963 	lcall	_printDisplay
                           2964 ;	ProjetoFinal.c:672: }
   AEF8                    2965 00108$:
                           2966 ;	ProjetoFinal.c:674: line(2);
   AEF8 90 00 02           2967 	mov	dptr,#0x0002
   AEFB 12 A2 72           2968 	lcall	_line
                           2969 ;	ProjetoFinal.c:676: printDisplay(BCDtoStr(hours));
   AEFE 90 21 04           2970 	mov	dptr,#_hours
   AF01 E0                 2971 	movx	a,@dptr
   AF02 F5 82              2972 	mov	dpl,a
   AF04 12 A0 A4           2973 	lcall	_BCDtoStr
   AF07 12 A2 2B           2974 	lcall	_printDisplay
                           2975 ;	ProjetoFinal.c:677: printDisplay(":");
   AF0A 90 B5 28           2976 	mov	dptr,#__str_24
   AF0D 75 F0 80           2977 	mov	b,#0x80
   AF10 12 A2 2B           2978 	lcall	_printDisplay
                           2979 ;	ProjetoFinal.c:678: printDisplay(BCDtoStr(minutes));
   AF13 90 21 02           2980 	mov	dptr,#_minutes
   AF16 E0                 2981 	movx	a,@dptr
   AF17 F5 82              2982 	mov	dpl,a
   AF19 12 A0 A4           2983 	lcall	_BCDtoStr
   AF1C 12 A2 2B           2984 	lcall	_printDisplay
                           2985 ;	ProjetoFinal.c:679: printDisplay(":");
   AF1F 90 B5 28           2986 	mov	dptr,#__str_24
   AF22 75 F0 80           2987 	mov	b,#0x80
   AF25 12 A2 2B           2988 	lcall	_printDisplay
                           2989 ;	ProjetoFinal.c:680: printDisplay(BCDtoStr(seconds));
   AF28 90 21 00           2990 	mov	dptr,#_seconds
   AF2B E0                 2991 	movx	a,@dptr
   AF2C F5 82              2992 	mov	dpl,a
   AF2E 12 A0 A4           2993 	lcall	_BCDtoStr
   AF31 12 A2 2B           2994 	lcall	_printDisplay
                           2995 ;	ProjetoFinal.c:681: printDisplay(" ");
   AF34 90 B5 0A           2996 	mov	dptr,#__str_16
   AF37 75 F0 80           2997 	mov	b,#0x80
   AF3A 02 A2 2B           2998 	ljmp	_printDisplay
                           2999 ;------------------------------------------------------------
                           3000 ;Allocation info for local variables in function 'adc_read'
                           3001 ;------------------------------------------------------------
                           3002 ;------------------------------------------------------------
                           3003 ;	ProjetoFinal.c:685: unsigned int adc_read()
                           3004 ;	-----------------------------------------
                           3005 ;	 function adc_read
                           3006 ;	-----------------------------------------
   AF3D                    3007 _adc_read:
                           3008 ;	ProjetoFinal.c:687: return adc_data;
   AF3D 90 22 00           3009 	mov	dptr,#_adc_data
   AF40 E0                 3010 	movx	a,@dptr
   AF41 FA                 3011 	mov	r2,a
   AF42 7B 00              3012 	mov	r3,#0x00
   AF44 8A 82              3013 	mov	dpl,r2
   AF46 8B 83              3014 	mov	dph,r3
   AF48 22                 3015 	ret
                           3016 ;------------------------------------------------------------
                           3017 ;Allocation info for local variables in function 'get_temperature'
                           3018 ;------------------------------------------------------------
                           3019 ;adc                       Allocated to registers r2 r3 
                           3020 ;result                    Allocated to registers 
                           3021 ;------------------------------------------------------------
                           3022 ;	ProjetoFinal.c:690: unsigned int get_temperature()
                           3023 ;	-----------------------------------------
                           3024 ;	 function get_temperature
                           3025 ;	-----------------------------------------
   AF49                    3026 _get_temperature:
                           3027 ;	ProjetoFinal.c:692: unsigned int adc = adc_read();
   AF49 12 AF 3D           3028 	lcall	_adc_read
                           3029 ;	ProjetoFinal.c:693: unsigned int result = adc*2;
   AF4C E5 83              3030 	mov	a,dph
   AF4E C5 82              3031 	xch	a,dpl
   AF50 25 E0              3032 	add	a,acc
   AF52 C5 82              3033 	xch	a,dpl
   AF54 33                 3034 	rlc	a
   AF55 F5 83              3035 	mov	dph,a
                           3036 ;	ProjetoFinal.c:694: return result;
   AF57 22                 3037 	ret
                           3038 ;------------------------------------------------------------
                           3039 ;Allocation info for local variables in function 'imprimeTemp'
                           3040 ;------------------------------------------------------------
                           3041 ;buffer                    Allocated with name '_imprimeTemp_buffer_1_1'
                           3042 ;temp                      Allocated to registers r2 r3 
                           3043 ;------------------------------------------------------------
                           3044 ;	ProjetoFinal.c:698: void imprimeTemp()
                           3045 ;	-----------------------------------------
                           3046 ;	 function imprimeTemp
                           3047 ;	-----------------------------------------
   AF58                    3048 _imprimeTemp:
                           3049 ;	ProjetoFinal.c:701: unsigned int temp = get_temperature();
   AF58 12 AF 49           3050 	lcall	_get_temperature
   AF5B AA 82              3051 	mov	r2,dpl
   AF5D AB 83              3052 	mov	r3,dph
                           3053 ;	ProjetoFinal.c:702: if (temp < 230) liga_aquecedor();
   AF5F C3                 3054 	clr	c
   AF60 EA                 3055 	mov	a,r2
   AF61 94 E6              3056 	subb	a,#0xE6
   AF63 EB                 3057 	mov	a,r3
   AF64 94 00              3058 	subb	a,#0x00
   AF66 50 0D              3059 	jnc	00104$
   AF68 C0 02              3060 	push	ar2
   AF6A C0 03              3061 	push	ar3
   AF6C 12 A0 9E           3062 	lcall	_liga_aquecedor
   AF6F D0 03              3063 	pop	ar3
   AF71 D0 02              3064 	pop	ar2
   AF73 80 14              3065 	sjmp	00105$
   AF75                    3066 00104$:
                           3067 ;	ProjetoFinal.c:703: else if (temp > 260) desliga_aquecedor();
   AF75 C3                 3068 	clr	c
   AF76 74 04              3069 	mov	a,#0x04
   AF78 9A                 3070 	subb	a,r2
   AF79 74 01              3071 	mov	a,#0x01
   AF7B 9B                 3072 	subb	a,r3
   AF7C 50 0B              3073 	jnc	00105$
   AF7E C0 02              3074 	push	ar2
   AF80 C0 03              3075 	push	ar3
   AF82 12 A0 A1           3076 	lcall	_desliga_aquecedor
   AF85 D0 03              3077 	pop	ar3
   AF87 D0 02              3078 	pop	ar2
   AF89                    3079 00105$:
                           3080 ;	ProjetoFinal.c:704: buffer[0] = temp/100 + 0x30;
   AF89 75 08 64           3081 	mov	__divuint_PARM_2,#0x64
   AF8C 75 09 00           3082 	mov	(__divuint_PARM_2 + 1),#0x00
   AF8F 8A 82              3083 	mov	dpl,r2
   AF91 8B 83              3084 	mov	dph,r3
   AF93 C0 02              3085 	push	ar2
   AF95 C0 03              3086 	push	ar3
   AF97 12 B3 8F           3087 	lcall	__divuint
   AF9A AC 82              3088 	mov	r4,dpl
   AF9C D0 03              3089 	pop	ar3
   AF9E D0 02              3090 	pop	ar2
   AFA0 74 30              3091 	mov	a,#0x30
   AFA2 2C                 3092 	add	a,r4
   AFA3 F5 34              3093 	mov	_imprimeTemp_buffer_1_1,a
                           3094 ;	ProjetoFinal.c:705: buffer[1] = (temp/10)%10 + 0x30;
   AFA5 75 08 0A           3095 	mov	__divuint_PARM_2,#0x0A
   AFA8 75 09 00           3096 	mov	(__divuint_PARM_2 + 1),#0x00
   AFAB 8A 82              3097 	mov	dpl,r2
   AFAD 8B 83              3098 	mov	dph,r3
   AFAF 12 B3 8F           3099 	lcall	__divuint
   AFB2 75 08 0A           3100 	mov	__moduint_PARM_2,#0x0A
   AFB5 75 09 00           3101 	mov	(__moduint_PARM_2 + 1),#0x00
   AFB8 12 B3 D5           3102 	lcall	__moduint
   AFBB AA 82              3103 	mov	r2,dpl
   AFBD 74 30              3104 	mov	a,#0x30
   AFBF 2A                 3105 	add	a,r2
   AFC0 F5 35              3106 	mov	(_imprimeTemp_buffer_1_1 + 0x0001),a
                           3107 ;	ProjetoFinal.c:706: buffer[2] = 'o';
   AFC2 75 36 6F           3108 	mov	(_imprimeTemp_buffer_1_1 + 0x0002),#0x6F
                           3109 ;	ProjetoFinal.c:707: buffer[3] = 'C';
   AFC5 75 37 43           3110 	mov	(_imprimeTemp_buffer_1_1 + 0x0003),#0x43
                           3111 ;	ProjetoFinal.c:708: printDisplay(buffer);
   AFC8 90 00 34           3112 	mov	dptr,#_imprimeTemp_buffer_1_1
   AFCB 75 F0 40           3113 	mov	b,#0x40
   AFCE 12 A2 2B           3114 	lcall	_printDisplay
                           3115 ;	ProjetoFinal.c:709: adc_data = 0x00;
   AFD1 90 22 00           3116 	mov	dptr,#_adc_data
   AFD4 E4                 3117 	clr	a
   AFD5 F0                 3118 	movx	@dptr,a
   AFD6 22                 3119 	ret
                           3120 ;------------------------------------------------------------
                           3121 ;Allocation info for local variables in function 'mostratemperatura'
                           3122 ;------------------------------------------------------------
                           3123 ;------------------------------------------------------------
                           3124 ;	ProjetoFinal.c:712: void mostratemperatura(void){
                           3125 ;	-----------------------------------------
                           3126 ;	 function mostratemperatura
                           3127 ;	-----------------------------------------
   AFD7                    3128 _mostratemperatura:
                           3129 ;	ProjetoFinal.c:713: imprimeTemp();
   AFD7 02 AF 58           3130 	ljmp	_imprimeTemp
                           3131 ;------------------------------------------------------------
                           3132 ;Allocation info for local variables in function 'int_EX0'
                           3133 ;------------------------------------------------------------
                           3134 ;AUX                       Allocated to registers r2 
                           3135 ;temp                      Allocated to registers r3 r4 
                           3136 ;------------------------------------------------------------
                           3137 ;	ProjetoFinal.c:720: void int_EX0 (void) __interrupt 0 __using 2
                           3138 ;	-----------------------------------------
                           3139 ;	 function int_EX0
                           3140 ;	-----------------------------------------
   AFDA                    3141 _int_EX0:
                    0012   3142 	ar2 = 0x12
                    0013   3143 	ar3 = 0x13
                    0014   3144 	ar4 = 0x14
                    0015   3145 	ar5 = 0x15
                    0016   3146 	ar6 = 0x16
                    0017   3147 	ar7 = 0x17
                    0010   3148 	ar0 = 0x10
                    0011   3149 	ar1 = 0x11
   AFDA C0 20              3150 	push	bits
   AFDC C0 E0              3151 	push	acc
   AFDE C0 F0              3152 	push	b
   AFE0 C0 82              3153 	push	dpl
   AFE2 C0 83              3154 	push	dph
   AFE4 C0 02              3155 	push	(0+2)
   AFE6 C0 03              3156 	push	(0+3)
   AFE8 C0 04              3157 	push	(0+4)
   AFEA C0 05              3158 	push	(0+5)
   AFEC C0 06              3159 	push	(0+6)
   AFEE C0 07              3160 	push	(0+7)
   AFF0 C0 00              3161 	push	(0+0)
   AFF2 C0 01              3162 	push	(0+1)
   AFF4 C0 D0              3163 	push	psw
   AFF6 75 D0 10           3164 	mov	psw,#0x10
                           3165 ;	ProjetoFinal.c:724: AUX = regC; /* Retira caractere recebido do bufer */
   AFF9 90 21 0C           3166 	mov	dptr,#_regC
   AFFC E0                 3167 	movx	a,@dptr
   AFFD FA                 3168 	mov	r2,a
                           3169 ;	ProjetoFinal.c:725: if ((AUX & 0x20) == 0x20) /*verifica se é interrupção de alarme*/
   AFFE 74 20              3170 	mov	a,#0x20
   B000 5A                 3171 	anl	a,r2
   B001 FB                 3172 	mov	r3,a
   B002 BB 20 02           3173 	cjne	r3,#0x20,00199$
   B005 80 03              3174 	sjmp	00200$
   B007                    3175 00199$:
   B007 02 B2 ED           3176 	ljmp	00158$
   B00A                    3177 00200$:
                           3178 ;	ProjetoFinal.c:727: temp = get_temperature();
   B00A C0 12              3179 	push	ar2
   B00C 75 D0 00           3180 	mov	psw,#0x00
   B00F 12 AF 49           3181 	lcall	_get_temperature
   B012 75 D0 10           3182 	mov	psw,#0x10
   B015 AB 82              3183 	mov	r3,dpl
   B017 AC 83              3184 	mov	r4,dph
   B019 D0 12              3185 	pop	ar2
                           3186 ;	ProjetoFinal.c:728: adc_data = 0x00;
   B01B 90 22 00           3187 	mov	dptr,#_adc_data
   B01E E4                 3188 	clr	a
   B01F F0                 3189 	movx	@dptr,a
                           3190 ;	ProjetoFinal.c:729: if ((temp < 230 || temp > 260) && indicador == 0)
   B020 C3                 3191 	clr	c
   B021 EB                 3192 	mov	a,r3
   B022 94 E6              3193 	subb	a,#0xE6
   B024 EC                 3194 	mov	a,r4
   B025 94 00              3195 	subb	a,#0x00
   B027 40 0B              3196 	jc	00156$
   B029 74 04              3197 	mov	a,#0x04
   B02B 9B                 3198 	subb	a,r3
   B02C 74 01              3199 	mov	a,#0x01
   B02E 9C                 3200 	subb	a,r4
   B02F 40 03              3201 	jc	00202$
   B031 02 B0 C0           3202 	ljmp	00153$
   B034                    3203 00202$:
   B034                    3204 00156$:
   B034 E5 2A              3205 	mov	a,_indicador
   B036 45 2B              3206 	orl	a,(_indicador + 1)
   B038 60 03              3207 	jz	00203$
   B03A 02 B0 C0           3208 	ljmp	00153$
   B03D                    3209 00203$:
                           3210 ;	ProjetoFinal.c:731: if (minAlarm % 0x10 == 9 && minAlarm != 0x59)
   B03D 90 21 03           3211 	mov	dptr,#_minAlarm
   B040 E0                 3212 	movx	a,@dptr
   B041 FB                 3213 	mov	r3,a
   B042 53 13 0F           3214 	anl	ar3,#0x0F
   B045 BB 09 20           3215 	cjne	r3,#0x09,00111$
   B048 90 21 03           3216 	mov	dptr,#_minAlarm
   B04B E0                 3217 	movx	a,@dptr
   B04C FB                 3218 	mov	r3,a
   B04D BB 59 02           3219 	cjne	r3,#0x59,00206$
   B050 80 16              3220 	sjmp	00111$
   B052                    3221 00206$:
                           3222 ;	ProjetoFinal.c:733: minAlarm &= 0xF0;
   B052 90 21 03           3223 	mov	dptr,#_minAlarm
   B055 E0                 3224 	movx	a,@dptr
   B056 54 F0              3225 	anl	a,#0xF0
   B058 F0                 3226 	movx	@dptr,a
                           3227 ;	ProjetoFinal.c:734: minAlarm += 0x10;
   B059 90 21 03           3228 	mov	dptr,#_minAlarm
   B05C E0                 3229 	movx	a,@dptr
   B05D FB                 3230 	mov	r3,a
   B05E 90 21 03           3231 	mov	dptr,#_minAlarm
   B061 74 10              3232 	mov	a,#0x10
   B063 2B                 3233 	add	a,r3
   B064 F0                 3234 	movx	@dptr,a
   B065 02 B2 DA           3235 	ljmp	00154$
   B068                    3236 00111$:
                           3237 ;	ProjetoFinal.c:736: else if (minAlarm == 0x59)
   B068 90 21 03           3238 	mov	dptr,#_minAlarm
   B06B E0                 3239 	movx	a,@dptr
   B06C FB                 3240 	mov	r3,a
   B06D BB 59 43           3241 	cjne	r3,#0x59,00108$
                           3242 ;	ProjetoFinal.c:738: minAlarm = 0x00;
   B070 90 21 03           3243 	mov	dptr,#_minAlarm
   B073 E4                 3244 	clr	a
   B074 F0                 3245 	movx	@dptr,a
                           3246 ;	ProjetoFinal.c:739: if (hoursAlarm % 0x10 == 9)
   B075 90 21 05           3247 	mov	dptr,#_hoursAlarm
   B078 E0                 3248 	movx	a,@dptr
   B079 FB                 3249 	mov	r3,a
   B07A 53 13 0F           3250 	anl	ar3,#0x0F
   B07D BB 09 16           3251 	cjne	r3,#0x09,00105$
                           3252 ;	ProjetoFinal.c:741: hoursAlarm &= 0xF0;
   B080 90 21 05           3253 	mov	dptr,#_hoursAlarm
   B083 E0                 3254 	movx	a,@dptr
   B084 54 F0              3255 	anl	a,#0xF0
   B086 F0                 3256 	movx	@dptr,a
                           3257 ;	ProjetoFinal.c:742: hoursAlarm += 0x10;
   B087 90 21 05           3258 	mov	dptr,#_hoursAlarm
   B08A E0                 3259 	movx	a,@dptr
   B08B FB                 3260 	mov	r3,a
   B08C 90 21 05           3261 	mov	dptr,#_hoursAlarm
   B08F 74 10              3262 	mov	a,#0x10
   B091 2B                 3263 	add	a,r3
   B092 F0                 3264 	movx	@dptr,a
   B093 02 B2 DA           3265 	ljmp	00154$
   B096                    3266 00105$:
                           3267 ;	ProjetoFinal.c:744: else if (hoursAlarm == 0x23) hoursAlarm = 0x00;
   B096 90 21 05           3268 	mov	dptr,#_hoursAlarm
   B099 E0                 3269 	movx	a,@dptr
   B09A FB                 3270 	mov	r3,a
   B09B BB 23 08           3271 	cjne	r3,#0x23,00102$
   B09E 90 21 05           3272 	mov	dptr,#_hoursAlarm
   B0A1 E4                 3273 	clr	a
   B0A2 F0                 3274 	movx	@dptr,a
   B0A3 02 B2 DA           3275 	ljmp	00154$
   B0A6                    3276 00102$:
                           3277 ;	ProjetoFinal.c:745: else hoursAlarm += 0x01;
   B0A6 90 21 05           3278 	mov	dptr,#_hoursAlarm
   B0A9 E0                 3279 	movx	a,@dptr
   B0AA FB                 3280 	mov	r3,a
   B0AB 90 21 05           3281 	mov	dptr,#_hoursAlarm
   B0AE 04                 3282 	inc	a
   B0AF F0                 3283 	movx	@dptr,a
   B0B0 02 B2 DA           3284 	ljmp	00154$
   B0B3                    3285 00108$:
                           3286 ;	ProjetoFinal.c:747: else minAlarm += 0x01;
   B0B3 90 21 03           3287 	mov	dptr,#_minAlarm
   B0B6 E0                 3288 	movx	a,@dptr
   B0B7 FB                 3289 	mov	r3,a
   B0B8 90 21 03           3290 	mov	dptr,#_minAlarm
   B0BB 04                 3291 	inc	a
   B0BC F0                 3292 	movx	@dptr,a
   B0BD 02 B2 DA           3293 	ljmp	00154$
   B0C0                    3294 00153$:
                           3295 ;	ProjetoFinal.c:749: else if (indicador == 0)
   B0C0 E5 2A              3296 	mov	a,_indicador
   B0C2 45 2B              3297 	orl	a,(_indicador + 1)
   B0C4 60 03              3298 	jz	00213$
   B0C6 02 B2 B7           3299 	ljmp	00150$
   B0C9                    3300 00213$:
                           3301 ;	ProjetoFinal.c:751: indicador = 1;
   B0C9 75 2A 01           3302 	mov	_indicador,#0x01
   B0CC 75 2B 00           3303 	mov	(_indicador + 1),#0x00
                           3304 ;	ProjetoFinal.c:752: liga_motor();
   B0CF C0 12              3305 	push	ar2
   B0D1 75 D0 00           3306 	mov	psw,#0x00
   B0D4 12 A0 98           3307 	lcall	_liga_motor
   B0D7 75 D0 10           3308 	mov	psw,#0x10
                           3309 ;	ProjetoFinal.c:753: qtd_quociente = qtd_real % 900;
   B0DA 75 08 84           3310 	mov	__moduint_PARM_2,#0x84
   B0DD 75 09 03           3311 	mov	(__moduint_PARM_2 + 1),#0x03
   B0E0 85 26 82           3312 	mov	dpl,_qtd_real
   B0E3 85 27 83           3313 	mov	dph,(_qtd_real + 1)
   B0E6 75 D0 00           3314 	mov	psw,#0x00
   B0E9 12 B3 D5           3315 	lcall	__moduint
   B0EC 75 D0 10           3316 	mov	psw,#0x10
   B0EF 85 82 28           3317 	mov	_qtd_quociente,dpl
   B0F2 85 83 29           3318 	mov	(_qtd_quociente + 1),dph
                           3319 ;	ProjetoFinal.c:754: qtd_real /= 900;
   B0F5 75 08 84           3320 	mov	__divuint_PARM_2,#0x84
   B0F8 75 09 03           3321 	mov	(__divuint_PARM_2 + 1),#0x03
   B0FB 85 26 82           3322 	mov	dpl,_qtd_real
   B0FE 85 27 83           3323 	mov	dph,(_qtd_real + 1)
   B101 75 D0 00           3324 	mov	psw,#0x00
   B104 12 B3 8F           3325 	lcall	__divuint
   B107 75 D0 10           3326 	mov	psw,#0x10
   B10A 85 82 26           3327 	mov	_qtd_real,dpl
   B10D 85 83 27           3328 	mov	(_qtd_real + 1),dph
   B110 D0 12              3329 	pop	ar2
                           3330 ;	ProjetoFinal.c:755: for (i=0;i<qtd_real;i++)
   B112 E4                 3331 	clr	a
   B113 F5 2C              3332 	mov	_i,a
   B115 F5 2D              3333 	mov	(_i + 1),a
   B117                    3334 00161$:
   B117 C3                 3335 	clr	c
   B118 E5 2C              3336 	mov	a,_i
   B11A 95 26              3337 	subb	a,_qtd_real
   B11C E5 2D              3338 	mov	a,(_i + 1)
   B11E 95 27              3339 	subb	a,(_qtd_real + 1)
   B120 40 03              3340 	jc	00214$
   B122 02 B1 AC           3341 	ljmp	00164$
   B125                    3342 00214$:
                           3343 ;	ProjetoFinal.c:757: if (minAlarm % 0x10 == 9 && minAlarm != 0x59)
   B125 90 21 03           3344 	mov	dptr,#_minAlarm
   B128 E0                 3345 	movx	a,@dptr
   B129 FB                 3346 	mov	r3,a
   B12A 53 13 0F           3347 	anl	ar3,#0x0F
   B12D BB 09 1F           3348 	cjne	r3,#0x09,00124$
   B130 90 21 03           3349 	mov	dptr,#_minAlarm
   B133 E0                 3350 	movx	a,@dptr
   B134 FB                 3351 	mov	r3,a
   B135 BB 59 02           3352 	cjne	r3,#0x59,00217$
   B138 80 15              3353 	sjmp	00124$
   B13A                    3354 00217$:
                           3355 ;	ProjetoFinal.c:759: minAlarm &= 0xF0;
   B13A 90 21 03           3356 	mov	dptr,#_minAlarm
   B13D E0                 3357 	movx	a,@dptr
   B13E 54 F0              3358 	anl	a,#0xF0
   B140 F0                 3359 	movx	@dptr,a
                           3360 ;	ProjetoFinal.c:760: minAlarm += 0x10;
   B141 90 21 03           3361 	mov	dptr,#_minAlarm
   B144 E0                 3362 	movx	a,@dptr
   B145 FB                 3363 	mov	r3,a
   B146 90 21 03           3364 	mov	dptr,#_minAlarm
   B149 74 10              3365 	mov	a,#0x10
   B14B 2B                 3366 	add	a,r3
   B14C F0                 3367 	movx	@dptr,a
   B14D 80 52              3368 	sjmp	00163$
   B14F                    3369 00124$:
                           3370 ;	ProjetoFinal.c:762: else if (minAlarm == 0x59)
   B14F 90 21 03           3371 	mov	dptr,#_minAlarm
   B152 E0                 3372 	movx	a,@dptr
   B153 FB                 3373 	mov	r3,a
   B154 BB 59 40           3374 	cjne	r3,#0x59,00121$
                           3375 ;	ProjetoFinal.c:764: minAlarm = 0x00;
   B157 90 21 03           3376 	mov	dptr,#_minAlarm
   B15A E4                 3377 	clr	a
   B15B F0                 3378 	movx	@dptr,a
                           3379 ;	ProjetoFinal.c:765: if (hoursAlarm % 0x10 == 9)
   B15C 90 21 05           3380 	mov	dptr,#_hoursAlarm
   B15F E0                 3381 	movx	a,@dptr
   B160 FB                 3382 	mov	r3,a
   B161 53 13 0F           3383 	anl	ar3,#0x0F
   B164 BB 09 15           3384 	cjne	r3,#0x09,00118$
                           3385 ;	ProjetoFinal.c:767: hoursAlarm &= 0xF0;
   B167 90 21 05           3386 	mov	dptr,#_hoursAlarm
   B16A E0                 3387 	movx	a,@dptr
   B16B 54 F0              3388 	anl	a,#0xF0
   B16D F0                 3389 	movx	@dptr,a
                           3390 ;	ProjetoFinal.c:768: hoursAlarm += 0x10;
   B16E 90 21 05           3391 	mov	dptr,#_hoursAlarm
   B171 E0                 3392 	movx	a,@dptr
   B172 FB                 3393 	mov	r3,a
   B173 90 21 05           3394 	mov	dptr,#_hoursAlarm
   B176 74 10              3395 	mov	a,#0x10
   B178 2B                 3396 	add	a,r3
   B179 F0                 3397 	movx	@dptr,a
   B17A 80 25              3398 	sjmp	00163$
   B17C                    3399 00118$:
                           3400 ;	ProjetoFinal.c:770: else if (hoursAlarm == 0x23) hoursAlarm = 0x00;
   B17C 90 21 05           3401 	mov	dptr,#_hoursAlarm
   B17F E0                 3402 	movx	a,@dptr
   B180 FB                 3403 	mov	r3,a
   B181 BB 23 07           3404 	cjne	r3,#0x23,00115$
   B184 90 21 05           3405 	mov	dptr,#_hoursAlarm
   B187 E4                 3406 	clr	a
   B188 F0                 3407 	movx	@dptr,a
   B189 80 16              3408 	sjmp	00163$
   B18B                    3409 00115$:
                           3410 ;	ProjetoFinal.c:771: else hoursAlarm += 0x01;
   B18B 90 21 05           3411 	mov	dptr,#_hoursAlarm
   B18E E0                 3412 	movx	a,@dptr
   B18F FB                 3413 	mov	r3,a
   B190 90 21 05           3414 	mov	dptr,#_hoursAlarm
   B193 04                 3415 	inc	a
   B194 F0                 3416 	movx	@dptr,a
   B195 80 0A              3417 	sjmp	00163$
   B197                    3418 00121$:
                           3419 ;	ProjetoFinal.c:773: else minAlarm += 0x01;
   B197 90 21 03           3420 	mov	dptr,#_minAlarm
   B19A E0                 3421 	movx	a,@dptr
   B19B FB                 3422 	mov	r3,a
   B19C 90 21 03           3423 	mov	dptr,#_minAlarm
   B19F 04                 3424 	inc	a
   B1A0 F0                 3425 	movx	@dptr,a
   B1A1                    3426 00163$:
                           3427 ;	ProjetoFinal.c:755: for (i=0;i<qtd_real;i++)
   B1A1 05 2C              3428 	inc	_i
   B1A3 E4                 3429 	clr	a
   B1A4 B5 2C 02           3430 	cjne	a,_i,00224$
   B1A7 05 2D              3431 	inc	(_i + 1)
   B1A9                    3432 00224$:
   B1A9 02 B1 17           3433 	ljmp	00161$
   B1AC                    3434 00164$:
                           3435 ;	ProjetoFinal.c:776: qtd_quociente /= 15;
   B1AC 75 08 0F           3436 	mov	__divuint_PARM_2,#0x0F
   B1AF 75 09 00           3437 	mov	(__divuint_PARM_2 + 1),#0x00
   B1B2 85 28 82           3438 	mov	dpl,_qtd_quociente
   B1B5 85 29 83           3439 	mov	dph,(_qtd_quociente + 1)
   B1B8 C0 12              3440 	push	ar2
   B1BA 75 D0 00           3441 	mov	psw,#0x00
   B1BD 12 B3 8F           3442 	lcall	__divuint
   B1C0 75 D0 10           3443 	mov	psw,#0x10
   B1C3 85 82 28           3444 	mov	_qtd_quociente,dpl
   B1C6 85 83 29           3445 	mov	(_qtd_quociente + 1),dph
   B1C9 D0 12              3446 	pop	ar2
                           3447 ;	ProjetoFinal.c:777: for (i=0;i<qtd_quociente;i++)
   B1CB E4                 3448 	clr	a
   B1CC F5 2C              3449 	mov	_i,a
   B1CE F5 2D              3450 	mov	(_i + 1),a
   B1D0                    3451 00165$:
   B1D0 C3                 3452 	clr	c
   B1D1 E5 2C              3453 	mov	a,_i
   B1D3 95 28              3454 	subb	a,_qtd_quociente
   B1D5 E5 2D              3455 	mov	a,(_i + 1)
   B1D7 95 29              3456 	subb	a,(_qtd_quociente + 1)
   B1D9 40 03              3457 	jc	00225$
   B1DB 02 B2 AD           3458 	ljmp	00168$
   B1DE                    3459 00225$:
                           3460 ;	ProjetoFinal.c:779: if (secAlarm % 0x10 == 9 && secAlarm != 0x59)
   B1DE 90 21 01           3461 	mov	dptr,#_secAlarm
   B1E1 E0                 3462 	movx	a,@dptr
   B1E2 FB                 3463 	mov	r3,a
   B1E3 53 13 0F           3464 	anl	ar3,#0x0F
   B1E6 BB 09 20           3465 	cjne	r3,#0x09,00144$
   B1E9 90 21 01           3466 	mov	dptr,#_secAlarm
   B1EC E0                 3467 	movx	a,@dptr
   B1ED FB                 3468 	mov	r3,a
   B1EE BB 59 02           3469 	cjne	r3,#0x59,00228$
   B1F1 80 16              3470 	sjmp	00144$
   B1F3                    3471 00228$:
                           3472 ;	ProjetoFinal.c:781: secAlarm &= 0xF0;
   B1F3 90 21 01           3473 	mov	dptr,#_secAlarm
   B1F6 E0                 3474 	movx	a,@dptr
   B1F7 54 F0              3475 	anl	a,#0xF0
   B1F9 F0                 3476 	movx	@dptr,a
                           3477 ;	ProjetoFinal.c:782: secAlarm += 0x10;
   B1FA 90 21 01           3478 	mov	dptr,#_secAlarm
   B1FD E0                 3479 	movx	a,@dptr
   B1FE FB                 3480 	mov	r3,a
   B1FF 90 21 01           3481 	mov	dptr,#_secAlarm
   B202 74 10              3482 	mov	a,#0x10
   B204 2B                 3483 	add	a,r3
   B205 F0                 3484 	movx	@dptr,a
   B206 02 B2 A2           3485 	ljmp	00167$
   B209                    3486 00144$:
                           3487 ;	ProjetoFinal.c:784: else if (secAlarm == 0x59)
   B209 90 21 01           3488 	mov	dptr,#_secAlarm
   B20C E0                 3489 	movx	a,@dptr
   B20D FB                 3490 	mov	r3,a
   B20E BB 59 02           3491 	cjne	r3,#0x59,00229$
   B211 80 03              3492 	sjmp	00230$
   B213                    3493 00229$:
   B213 02 B2 98           3494 	ljmp	00141$
   B216                    3495 00230$:
                           3496 ;	ProjetoFinal.c:786: secAlarm == 0x00;
   B216 90 21 01           3497 	mov	dptr,#_secAlarm
   B219 E0                 3498 	movx	a,@dptr
                           3499 ;	ProjetoFinal.c:788: if (minAlarm % 0x10 == 9 && minAlarm != 0x59)
   B21A 90 21 03           3500 	mov	dptr,#_minAlarm
   B21D E0                 3501 	movx	a,@dptr
   B21E FB                 3502 	mov	r3,a
   B21F 53 13 0F           3503 	anl	ar3,#0x0F
   B222 BB 09 1F           3504 	cjne	r3,#0x09,00137$
   B225 90 21 03           3505 	mov	dptr,#_minAlarm
   B228 E0                 3506 	movx	a,@dptr
   B229 FB                 3507 	mov	r3,a
   B22A BB 59 02           3508 	cjne	r3,#0x59,00233$
   B22D 80 15              3509 	sjmp	00137$
   B22F                    3510 00233$:
                           3511 ;	ProjetoFinal.c:790: minAlarm &= 0xF0;
   B22F 90 21 03           3512 	mov	dptr,#_minAlarm
   B232 E0                 3513 	movx	a,@dptr
   B233 54 F0              3514 	anl	a,#0xF0
   B235 F0                 3515 	movx	@dptr,a
                           3516 ;	ProjetoFinal.c:791: minAlarm += 0x10;
   B236 90 21 03           3517 	mov	dptr,#_minAlarm
   B239 E0                 3518 	movx	a,@dptr
   B23A FB                 3519 	mov	r3,a
   B23B 90 21 03           3520 	mov	dptr,#_minAlarm
   B23E 74 10              3521 	mov	a,#0x10
   B240 2B                 3522 	add	a,r3
   B241 F0                 3523 	movx	@dptr,a
   B242 80 5E              3524 	sjmp	00167$
   B244                    3525 00137$:
                           3526 ;	ProjetoFinal.c:793: else if (minAlarm == 0x59)
   B244 90 21 03           3527 	mov	dptr,#_minAlarm
   B247 E0                 3528 	movx	a,@dptr
   B248 FB                 3529 	mov	r3,a
   B249 BB 59 40           3530 	cjne	r3,#0x59,00134$
                           3531 ;	ProjetoFinal.c:795: minAlarm = 0x00;
   B24C 90 21 03           3532 	mov	dptr,#_minAlarm
   B24F E4                 3533 	clr	a
   B250 F0                 3534 	movx	@dptr,a
                           3535 ;	ProjetoFinal.c:796: if (hoursAlarm % 0x10 == 9)
   B251 90 21 05           3536 	mov	dptr,#_hoursAlarm
   B254 E0                 3537 	movx	a,@dptr
   B255 FB                 3538 	mov	r3,a
   B256 53 13 0F           3539 	anl	ar3,#0x0F
   B259 BB 09 15           3540 	cjne	r3,#0x09,00131$
                           3541 ;	ProjetoFinal.c:798: hoursAlarm &= 0xF0;
   B25C 90 21 05           3542 	mov	dptr,#_hoursAlarm
   B25F E0                 3543 	movx	a,@dptr
   B260 54 F0              3544 	anl	a,#0xF0
   B262 F0                 3545 	movx	@dptr,a
                           3546 ;	ProjetoFinal.c:799: hoursAlarm += 0x10;
   B263 90 21 05           3547 	mov	dptr,#_hoursAlarm
   B266 E0                 3548 	movx	a,@dptr
   B267 FB                 3549 	mov	r3,a
   B268 90 21 05           3550 	mov	dptr,#_hoursAlarm
   B26B 74 10              3551 	mov	a,#0x10
   B26D 2B                 3552 	add	a,r3
   B26E F0                 3553 	movx	@dptr,a
   B26F 80 31              3554 	sjmp	00167$
   B271                    3555 00131$:
                           3556 ;	ProjetoFinal.c:801: else if (hoursAlarm == 0x23) hoursAlarm = 0x00;
   B271 90 21 05           3557 	mov	dptr,#_hoursAlarm
   B274 E0                 3558 	movx	a,@dptr
   B275 FB                 3559 	mov	r3,a
   B276 BB 23 07           3560 	cjne	r3,#0x23,00128$
   B279 90 21 05           3561 	mov	dptr,#_hoursAlarm
   B27C E4                 3562 	clr	a
   B27D F0                 3563 	movx	@dptr,a
   B27E 80 22              3564 	sjmp	00167$
   B280                    3565 00128$:
                           3566 ;	ProjetoFinal.c:802: else hoursAlarm += 0x01;
   B280 90 21 05           3567 	mov	dptr,#_hoursAlarm
   B283 E0                 3568 	movx	a,@dptr
   B284 FB                 3569 	mov	r3,a
   B285 90 21 05           3570 	mov	dptr,#_hoursAlarm
   B288 04                 3571 	inc	a
   B289 F0                 3572 	movx	@dptr,a
   B28A 80 16              3573 	sjmp	00167$
   B28C                    3574 00134$:
                           3575 ;	ProjetoFinal.c:804: else minAlarm += 0x01;
   B28C 90 21 03           3576 	mov	dptr,#_minAlarm
   B28F E0                 3577 	movx	a,@dptr
   B290 FB                 3578 	mov	r3,a
   B291 90 21 03           3579 	mov	dptr,#_minAlarm
   B294 04                 3580 	inc	a
   B295 F0                 3581 	movx	@dptr,a
   B296 80 0A              3582 	sjmp	00167$
   B298                    3583 00141$:
                           3584 ;	ProjetoFinal.c:806: else secAlarm+= 0x01;
   B298 90 21 01           3585 	mov	dptr,#_secAlarm
   B29B E0                 3586 	movx	a,@dptr
   B29C FB                 3587 	mov	r3,a
   B29D 90 21 01           3588 	mov	dptr,#_secAlarm
   B2A0 04                 3589 	inc	a
   B2A1 F0                 3590 	movx	@dptr,a
   B2A2                    3591 00167$:
                           3592 ;	ProjetoFinal.c:777: for (i=0;i<qtd_quociente;i++)
   B2A2 05 2C              3593 	inc	_i
   B2A4 E4                 3594 	clr	a
   B2A5 B5 2C 02           3595 	cjne	a,_i,00240$
   B2A8 05 2D              3596 	inc	(_i + 1)
   B2AA                    3597 00240$:
   B2AA 02 B1 D0           3598 	ljmp	00165$
   B2AD                    3599 00168$:
                           3600 ;	ProjetoFinal.c:808: indicador1++;
   B2AD 05 2E              3601 	inc	_indicador1
   B2AF E4                 3602 	clr	a
   B2B0 B5 2E 27           3603 	cjne	a,_indicador1,00154$
   B2B3 05 2F              3604 	inc	(_indicador1 + 1)
   B2B5 80 23              3605 	sjmp	00154$
   B2B7                    3606 00150$:
                           3607 ;	ProjetoFinal.c:811: else if (indicador1 == 1)
   B2B7 74 01              3608 	mov	a,#0x01
   B2B9 B5 2E 06           3609 	cjne	a,_indicador1,00242$
   B2BC E4                 3610 	clr	a
   B2BD B5 2F 02           3611 	cjne	a,(_indicador1 + 1),00242$
   B2C0 80 02              3612 	sjmp	00243$
   B2C2                    3613 00242$:
   B2C2 80 16              3614 	sjmp	00154$
   B2C4                    3615 00243$:
                           3616 ;	ProjetoFinal.c:813: desliga_motor();
   B2C4 C0 12              3617 	push	ar2
   B2C6 75 D0 00           3618 	mov	psw,#0x00
   B2C9 12 A0 9B           3619 	lcall	_desliga_motor
   B2CC 75 D0 10           3620 	mov	psw,#0x10
   B2CF D0 12              3621 	pop	ar2
                           3622 ;	ProjetoFinal.c:814: indicador = 0;
                           3623 ;	ProjetoFinal.c:815: indicador1 = 0;
   B2D1 E4                 3624 	clr	a
   B2D2 F5 2A              3625 	mov	_indicador,a
   B2D4 F5 2B              3626 	mov	(_indicador + 1),a
   B2D6 F5 2E              3627 	mov	_indicador1,a
   B2D8 F5 2F              3628 	mov	(_indicador1 + 1),a
   B2DA                    3629 00154$:
                           3630 ;	ProjetoFinal.c:817: printDisplay("ALARME!");
   B2DA 90 B5 2A           3631 	mov	dptr,#__str_25
   B2DD 75 F0 80           3632 	mov	b,#0x80
   B2E0 C0 12              3633 	push	ar2
   B2E2 75 D0 00           3634 	mov	psw,#0x00
   B2E5 12 A2 2B           3635 	lcall	_printDisplay
   B2E8 75 D0 10           3636 	mov	psw,#0x10
   B2EB D0 12              3637 	pop	ar2
   B2ED                    3638 00158$:
                           3639 ;	ProjetoFinal.c:819: if ((AUX & 0x10) == 0x10) /*verifica se é interrupção de atualização*/
   B2ED 53 12 10           3640 	anl	ar2,#0x10
   B2F0 BA 10 0F           3641 	cjne	r2,#0x10,00169$
                           3642 ;	ProjetoFinal.c:821: mostraDisplay();
   B2F3 75 D0 00           3643 	mov	psw,#0x00
   B2F6 12 AE 37           3644 	lcall	_mostraDisplay
                           3645 ;	ProjetoFinal.c:822: mostratemperatura();
   B2F9 75 D0 00           3646 	mov	psw,#0x00
   B2FC 12 AF D7           3647 	lcall	_mostratemperatura
   B2FF 75 D0 10           3648 	mov	psw,#0x10
   B302                    3649 00169$:
   B302 D0 D0              3650 	pop	psw
   B304 D0 01              3651 	pop	(0+1)
   B306 D0 00              3652 	pop	(0+0)
   B308 D0 07              3653 	pop	(0+7)
   B30A D0 06              3654 	pop	(0+6)
   B30C D0 05              3655 	pop	(0+5)
   B30E D0 04              3656 	pop	(0+4)
   B310 D0 03              3657 	pop	(0+3)
   B312 D0 02              3658 	pop	(0+2)
   B314 D0 83              3659 	pop	dph
   B316 D0 82              3660 	pop	dpl
   B318 D0 F0              3661 	pop	b
   B31A D0 E0              3662 	pop	acc
   B31C D0 20              3663 	pop	bits
   B31E 32                 3664 	reti
                           3665 ;------------------------------------------------------------
                           3666 ;Allocation info for local variables in function 'main'
                           3667 ;------------------------------------------------------------
                           3668 ;tecla                     Allocated to registers r2 
                           3669 ;------------------------------------------------------------
                           3670 ;	ProjetoFinal.c:828: void main(void){
                           3671 ;	-----------------------------------------
                           3672 ;	 function main
                           3673 ;	-----------------------------------------
   B31F                    3674 _main:
                    0002   3675 	ar2 = 0x02
                    0003   3676 	ar3 = 0x03
                    0004   3677 	ar4 = 0x04
                    0005   3678 	ar5 = 0x05
                    0006   3679 	ar6 = 0x06
                    0007   3680 	ar7 = 0x07
                    0000   3681 	ar0 = 0x00
                    0001   3682 	ar1 = 0x01
                           3683 ;	ProjetoFinal.c:830: progrdisplay(); /* programa display */
   B31F 12 A2 5A           3684 	lcall	_progrdisplay
                           3685 ;	ProjetoFinal.c:831: line(1);
   B322 90 00 01           3686 	mov	dptr,#0x0001
   B325 12 A2 72           3687 	lcall	_line
                           3688 ;	ProjetoFinal.c:832: cleardisplay();
   B328 12 A2 6C           3689 	lcall	_cleardisplay
                           3690 ;	ProjetoFinal.c:833: IE = 0x81;
   B32B 75 A8 81           3691 	mov	_IE,#0x81
                           3692 ;	ProjetoFinal.c:835: adc_data = 0x00;
   B32E 90 22 00           3693 	mov	dptr,#_adc_data
   B331 E4                 3694 	clr	a
   B332 F0                 3695 	movx	@dptr,a
                           3696 ;	ProjetoFinal.c:836: initTempoReal();
   B333 12 A2 96           3697 	lcall	_initTempoReal
                           3698 ;	ProjetoFinal.c:838: T0 = 1;
   B336 D2 B4              3699 	setb	_T0
                           3700 ;	ProjetoFinal.c:839: T1 = 1;
   B338 D2 B5              3701 	setb	_T1
                           3702 ;	ProjetoFinal.c:843: while (1) {
   B33A                    3703 00116$:
                           3704 ;	ProjetoFinal.c:844: cleardisplay();
   B33A 12 A2 6C           3705 	lcall	_cleardisplay
                           3706 ;	ProjetoFinal.c:845: printDisplay("Escolha:");
   B33D 90 B5 32           3707 	mov	dptr,#__str_26
   B340 75 F0 80           3708 	mov	b,#0x80
   B343 12 A2 2B           3709 	lcall	_printDisplay
                           3710 ;	ProjetoFinal.c:846: tecla = NovaTeclaKeyDown();
   B346 12 A1 4E           3711 	lcall	_NovaTeclaKeyDown
   B349 AA 82              3712 	mov	r2,dpl
                           3713 ;	ProjetoFinal.c:847: if (tecla == '0') prog();
   B34B BA 30 07           3714 	cjne	r2,#0x30,00102$
   B34E C0 02              3715 	push	ar2
   B350 12 A2 AA           3716 	lcall	_prog
   B353 D0 02              3717 	pop	ar2
   B355                    3718 00102$:
                           3719 ;	ProjetoFinal.c:848: if (tecla == '1') progAlarm();
   B355 BA 31 07           3720 	cjne	r2,#0x31,00104$
   B358 C0 02              3721 	push	ar2
   B35A 12 A9 27           3722 	lcall	_progAlarm
   B35D D0 02              3723 	pop	ar2
   B35F                    3724 00104$:
                           3725 ;	ProjetoFinal.c:849: if (tecla == '2') liga_motor();
   B35F BA 32 07           3726 	cjne	r2,#0x32,00106$
   B362 C0 02              3727 	push	ar2
   B364 12 A0 98           3728 	lcall	_liga_motor
   B367 D0 02              3729 	pop	ar2
   B369                    3730 00106$:
                           3731 ;	ProjetoFinal.c:850: if (tecla == '3') desliga_motor();
   B369 BA 33 07           3732 	cjne	r2,#0x33,00108$
   B36C C0 02              3733 	push	ar2
   B36E 12 A0 9B           3734 	lcall	_desliga_motor
   B371 D0 02              3735 	pop	ar2
   B373                    3736 00108$:
                           3737 ;	ProjetoFinal.c:851: if (tecla == '4') liga_aquecedor();
   B373 BA 34 07           3738 	cjne	r2,#0x34,00110$
   B376 C0 02              3739 	push	ar2
   B378 12 A0 9E           3740 	lcall	_liga_aquecedor
   B37B D0 02              3741 	pop	ar2
   B37D                    3742 00110$:
                           3743 ;	ProjetoFinal.c:852: if (tecla == '5') desliga_aquecedor();
   B37D BA 35 07           3744 	cjne	r2,#0x35,00112$
   B380 C0 02              3745 	push	ar2
   B382 12 A0 A1           3746 	lcall	_desliga_aquecedor
   B385 D0 02              3747 	pop	ar2
   B387                    3748 00112$:
                           3749 ;	ProjetoFinal.c:853: if (tecla == '7') mostraDisplay();
   B387 BA 37 B0           3750 	cjne	r2,#0x37,00116$
   B38A 12 AE 37           3751 	lcall	_mostraDisplay
   B38D 80 AB              3752 	sjmp	00116$
                           3753 	.area CSEG    (CODE)
                           3754 	.area CONST   (CODE)
   B442                    3755 __str_0:
   B442 41 6E 6F 28 30 30  3756 	.ascii "Ano(00-99): "
        2D 39 39 29 3A 20
   B44E 00                 3757 	.db 0x00
   B44F                    3758 __str_1:
   B44F 4D 65 73 28 30 30  3759 	.ascii "Mes(00-12): "
        2D 31 32 29 3A 20
   B45B 00                 3760 	.db 0x00
   B45C                    3761 __str_2:
   B45C 44 69 61 28 30 30  3762 	.ascii "Dia(00-31): "
        2D 33 31 29 3A 20
   B468 00                 3763 	.db 0x00
   B469                    3764 __str_3:
   B469 44 69 61 53 65 6D  3765 	.ascii "DiaSem(01-07):"
        28 30 31 2D 30 37
        29 3A
   B477 00                 3766 	.db 0x00
   B478                    3767 __str_4:
   B478 48 6F 72 61 28 30  3768 	.ascii "Hora(00-23): "
        30 2D 32 33 29 3A
        20
   B485 00                 3769 	.db 0x00
   B486                    3770 __str_5:
   B486 4D 69 6E 28 30 30  3771 	.ascii "Min(00-59): "
        2D 35 39 29 3A 20
   B492 00                 3772 	.db 0x00
   B493                    3773 __str_6:
   B493 53 65 67 28 30 30  3774 	.ascii "Seg(00-59): "
        2D 35 39 29 3A 20
   B49F 00                 3775 	.db 0x00
   B4A0                    3776 __str_7:
   B4A0 51 75 61 6E 74 6F  3777 	.ascii "Quantos ml?"
        73 20 6D 6C 3F
   B4AB 00                 3778 	.db 0x00
   B4AC                    3779 __str_8:
   B4AC 28 30 30 30 30 2D  3780 	.ascii "(0000-9999):"
        39 39 39 39 29 3A
   B4B8 00                 3781 	.db 0x00
   B4B9                    3782 __str_9:
   B4B9 48 6F 72 61 41 6C  3783 	.ascii "HoraAl(00-23):"
        28 30 30 2D 32 33
        29 3A
   B4C7 00                 3784 	.db 0x00
   B4C8                    3785 __str_10:
   B4C8 4D 69 6E 41 6C 28  3786 	.ascii "MinAl(00-59): "
        30 30 2D 35 39 29
        3A 20
   B4D6 00                 3787 	.db 0x00
   B4D7                    3788 __str_11:
   B4D7 53 65 67 41 6C 28  3789 	.ascii "SegAl(00-59): "
        30 30 2D 35 39 29
        3A 20
   B4E5 00                 3790 	.db 0x00
   B4E6                    3791 __str_12:
   B4E6 41 74 69 76 61 72  3792 	.ascii "Ativar alarme?"
        20 61 6C 61 72 6D
        65 3F
   B4F4 00                 3793 	.db 0x00
   B4F5                    3794 __str_13:
   B4F5 30 3D 53 69 6D 2F  3795 	.ascii "0=Sim/1=N"
        31 3D 4E
   B4FE E3                 3796 	.db 0xE3
   B4FF 6F                 3797 	.ascii "o"
   B500 00                 3798 	.db 0x00
   B501                    3799 __str_14:
   B501 50 72 6F 6E 74 6F  3800 	.ascii "Pronto"
   B507 00                 3801 	.db 0x00
   B508                    3802 __str_15:
   B508 2F                 3803 	.ascii "/"
   B509 00                 3804 	.db 0x00
   B50A                    3805 __str_16:
   B50A 20                 3806 	.ascii " "
   B50B 00                 3807 	.db 0x00
   B50C                    3808 __str_17:
   B50C 44 4F 4D           3809 	.ascii "DOM"
   B50F 00                 3810 	.db 0x00
   B510                    3811 __str_18:
   B510 53 45 47           3812 	.ascii "SEG"
   B513 00                 3813 	.db 0x00
   B514                    3814 __str_19:
   B514 54 45 52           3815 	.ascii "TER"
   B517 00                 3816 	.db 0x00
   B518                    3817 __str_20:
   B518 51 55 41           3818 	.ascii "QUA"
   B51B 00                 3819 	.db 0x00
   B51C                    3820 __str_21:
   B51C 51 55 49           3821 	.ascii "QUI"
   B51F 00                 3822 	.db 0x00
   B520                    3823 __str_22:
   B520 53 45 58           3824 	.ascii "SEX"
   B523 00                 3825 	.db 0x00
   B524                    3826 __str_23:
   B524 53 41 42           3827 	.ascii "SAB"
   B527 00                 3828 	.db 0x00
   B528                    3829 __str_24:
   B528 3A                 3830 	.ascii ":"
   B529 00                 3831 	.db 0x00
   B52A                    3832 __str_25:
   B52A 41 4C 41 52 4D 45  3833 	.ascii "ALARME!"
        21
   B531 00                 3834 	.db 0x00
   B532                    3835 __str_26:
   B532 45 73 63 6F 6C 68  3836 	.ascii "Escolha:"
        61 3A
   B53A 00                 3837 	.db 0x00
                           3838 	.area XINIT   (CODE)
                           3839 	.area CABS    (ABS,CODE)
