;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.0.0 #6037 (Oct 31 2010) (MINGW32)
; This file was generated Fri Nov 18 19:14:50 2011
;--------------------------------------------------------
	.module ProjetoFinal
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _int_EX0
	.globl _mostratemperatura
	.globl _imprimeTemp
	.globl _get_temperature
	.globl _adc_read
	.globl _mostraDisplay
	.globl _progAlarm
	.globl _prog
	.globl _initTempoReal
	.globl _line
	.globl _cleardisplay
	.globl _progrdisplay
	.globl _printDisplay
	.globl _displaydata
	.globl _displaycommand
	.globl _delay
	.globl _Key_ASCII2BIN
	.globl _EsperaSoltarTecla
	.globl _NovaTeclaKeyDown
	.globl _TeclaPressionada
	.globl _BCDtoStr
	.globl _desliga_aquecedor
	.globl _liga_aquecedor
	.globl _desliga_motor
	.globl _liga_motor
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _vet_adc_interrupt
	.globl _vetorInterrEX0
	.globl _adc_data
	.globl _userRam
	.globl _regD
	.globl _regC
	.globl _regB
	.globl _regA
	.globl _year
	.globl _mounth
	.globl _dateOfMounth
	.globl _dayOfWeek
	.globl _hoursAlarm
	.globl _hours
	.globl _minAlarm
	.globl _minutes
	.globl _secAlarm
	.globl _seconds
	.globl _rstatus
	.globl _wcommand
	.globl _rdata
	.globl _wdata
	.globl _indicador1
	.globl _i
	.globl _indicador
	.globl _qtd_quociente
	.globl _qtd_real
	.globl _qtd
	.globl _alarme
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_2	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_alarme::
	.ds 1
_qtd::
	.ds 4
_qtd_real::
	.ds 2
_qtd_quociente::
	.ds 2
_indicador::
	.ds 2
_i::
	.ds 2
_indicador1::
	.ds 2
_prog_aux_1_1:
	.ds 2
_progAlarm_aux_1_1:
	.ds 2
_imprimeTemp_buffer_1_1:
	.ds 5
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_BCDtoStr_aux_1_1::
	.ds 3
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_wdata	=	0x2010
_rdata	=	0x2030
_wcommand	=	0x2000
_rstatus	=	0x2020
_seconds	=	0x2100
_secAlarm	=	0x2101
_minutes	=	0x2102
_minAlarm	=	0x2103
_hours	=	0x2104
_hoursAlarm	=	0x2105
_dayOfWeek	=	0x2106
_dateOfMounth	=	0x2107
_mounth	=	0x2108
_year	=	0x2109
_regA	=	0x210a
_regB	=	0x210b
_regC	=	0x210c
_regD	=	0x210d
_userRam	=	0x210e
_adc_data	=	0x2200
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
	.org 0xFFF0
_vetorInterrEX0::
	.ds 3
	.org 0xFFF6
_vet_adc_interrupt::
	.ds 3
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_int_EX0
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	ProjetoFinal.c:48: unsigned char alarme = 0;
	mov	_alarme,#0x00
;	ProjetoFinal.c:51: unsigned int indicador = 0;
	clr	a
	mov	_indicador,a
	mov	(_indicador + 1),a
;	ProjetoFinal.c:53: unsigned int indicador1 = 0;
	clr	a
	mov	_indicador1,a
	mov	(_indicador1 + 1),a
;	ProjetoFinal.c:46: unsigned char __far __at @0xFFF0 vetorInterrEX0[3] = {0x02, 0xA0, 0x03};
	mov	dptr,#_vetorInterrEX0
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_vetorInterrEX0 + 0x0001)
	mov	a,#0xA0
	movx	@dptr,a
	mov	dptr,#(_vetorInterrEX0 + 0x0002)
	mov	a,#0x03
	movx	@dptr,a
;	ProjetoFinal.c:75: unsigned char __far __at @0xFFF6 vet_adc_interrupt[] = {0x02, 0xA0, 0x13};
	mov	dptr,#_vet_adc_interrupt
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_vet_adc_interrupt + 0x0001)
	mov	a,#0xA0
	movx	@dptr,a
	mov	dptr,#(_vet_adc_interrupt + 0x0002)
	mov	a,#0x13
	movx	@dptr,a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'liga_motor'
;------------------------------------------------------------
;------------------------------------------------------------
;	ProjetoFinal.c:55: void liga_motor (void)
;	-----------------------------------------
;	 function liga_motor
;	-----------------------------------------
_liga_motor:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	ProjetoFinal.c:57: T0 = 0;
	clr	_T0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'desliga_motor'
;------------------------------------------------------------
;------------------------------------------------------------
;	ProjetoFinal.c:60: void desliga_motor (void)
;	-----------------------------------------
;	 function desliga_motor
;	-----------------------------------------
_desliga_motor:
;	ProjetoFinal.c:62: T0 = 1;
	setb	_T0
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'liga_aquecedor'
;------------------------------------------------------------
;------------------------------------------------------------
;	ProjetoFinal.c:65: void liga_aquecedor (void)
;	-----------------------------------------
;	 function liga_aquecedor
;	-----------------------------------------
_liga_aquecedor:
;	ProjetoFinal.c:67: T1 = 0;
	clr	_T1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'desliga_aquecedor'
;------------------------------------------------------------
;------------------------------------------------------------
;	ProjetoFinal.c:70: void desliga_aquecedor (void)
;	-----------------------------------------
;	 function desliga_aquecedor
;	-----------------------------------------
_desliga_aquecedor:
;	ProjetoFinal.c:72: T1 = 1;
	setb	_T1
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'BCDtoStr'
;------------------------------------------------------------
;BCD                       Allocated to registers r2 
;aux                       Allocated with name '_BCDtoStr_aux_1_1'
;------------------------------------------------------------
;	ProjetoFinal.c:78: unsigned char *BCDtoStr(unsigned char BCD){
;	-----------------------------------------
;	 function BCDtoStr
;	-----------------------------------------
_BCDtoStr:
;	ProjetoFinal.c:81: aux[0] = BCD / 0x10; // pega o primeiro digito
	mov	a,dpl
	mov	r2,a
	swap	a
	anl	a,#0x0f
	mov	r3,a
	mov	_BCDtoStr_aux_1_1,r3
;	ProjetoFinal.c:82: aux[0] += 0x30;
	mov	a,#0x30
	add	a,r3
	mov	_BCDtoStr_aux_1_1,a
;	ProjetoFinal.c:84: aux[1] = BCD & 0x0F;// pega o digito menos significativo
	anl	ar2,#0x0F
	mov	(_BCDtoStr_aux_1_1 + 0x0001),r2
;	ProjetoFinal.c:85: aux[1] += 0x30;
	mov	a,#0x30
	add	a,r2
	mov	(_BCDtoStr_aux_1_1 + 0x0001),a
;	ProjetoFinal.c:87: aux[2] = 0;
	mov	(_BCDtoStr_aux_1_1 + 0x0002),#0x00
;	ProjetoFinal.c:89: return aux;
	mov	dptr,#_BCDtoStr_aux_1_1
	mov	b,#0x40
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'TeclaPressionada'
;------------------------------------------------------------
;------------------------------------------------------------
;	ProjetoFinal.c:113: char TeclaPressionada(){
;	-----------------------------------------
;	 function TeclaPressionada
;	-----------------------------------------
_TeclaPressionada:
;	ProjetoFinal.c:114: P1=0xFF;
	mov	_P1,#0xFF
;	ProjetoFinal.c:115: P1_0=0;
	clr	_P1_0
;	ProjetoFinal.c:116: if(P1_4==0) return TECLA04;
	jb	_P1_4,00102$
	mov	dpl,#0x46
	ret
00102$:
;	ProjetoFinal.c:117: if(P1_5==0) return TECLA05;
	jb	_P1_5,00104$
	mov	dpl,#0x45
	ret
00104$:
;	ProjetoFinal.c:118: if(P1_6==0) return TECLA06;
	jb	_P1_6,00106$
	mov	dpl,#0x44
	ret
00106$:
;	ProjetoFinal.c:119: if(P1_7==0) return TECLA07;
	jb	_P1_7,00108$
	mov	dpl,#0x43
	ret
00108$:
;	ProjetoFinal.c:121: P1=0xFF;
	mov	_P1,#0xFF
;	ProjetoFinal.c:122: P1_1=0;
	clr	_P1_1
;	ProjetoFinal.c:123: if(P1_4==0) return TECLA14;
	jb	_P1_4,00110$
	mov	dpl,#0x33
	ret
00110$:
;	ProjetoFinal.c:124: if(P1_5==0) return TECLA15;
	jb	_P1_5,00112$
	mov	dpl,#0x32
	ret
00112$:
;	ProjetoFinal.c:125: if(P1_6==0) return TECLA16;
	jb	_P1_6,00114$
	mov	dpl,#0x31
	ret
00114$:
;	ProjetoFinal.c:126: if(P1_7==0) return TECLA17;
	jb	_P1_7,00116$
	mov	dpl,#0x30
	ret
00116$:
;	ProjetoFinal.c:128: P1=0xFF;
	mov	_P1,#0xFF
;	ProjetoFinal.c:129: P1_2=0;
	clr	_P1_2
;	ProjetoFinal.c:130: if(P1_4==0) return TECLA24;
	jb	_P1_4,00118$
	mov	dpl,#0x42
	ret
00118$:
;	ProjetoFinal.c:131: if(P1_5==0) return TECLA25;
	jb	_P1_5,00120$
	mov	dpl,#0x41
	ret
00120$:
;	ProjetoFinal.c:132: if(P1_6==0) return TECLA26;
	jb	_P1_6,00122$
	mov	dpl,#0x39
	ret
00122$:
;	ProjetoFinal.c:133: if(P1_7==0) return TECLA27;
	jb	_P1_7,00124$
	mov	dpl,#0x38
	ret
00124$:
;	ProjetoFinal.c:135: P1=0xFF;
	mov	_P1,#0xFF
;	ProjetoFinal.c:136: P1_3=0;
	clr	_P1_3
;	ProjetoFinal.c:137: if(P1_4==0) return TECLA34;
	jb	_P1_4,00126$
	mov	dpl,#0x37
	ret
00126$:
;	ProjetoFinal.c:138: if(P1_5==0) return TECLA35;
	jb	_P1_5,00128$
	mov	dpl,#0x36
	ret
00128$:
;	ProjetoFinal.c:139: if(P1_6==0) return TECLA36;
	jb	_P1_6,00130$
	mov	dpl,#0x35
	ret
00130$:
;	ProjetoFinal.c:140: if(P1_7==0) return TECLA37;
	jb	_P1_7,00132$
	mov	dpl,#0x34
;	ProjetoFinal.c:142: return 0; /* Nada foi pressionado */
	ret
00132$:
	mov	dpl,#0x00
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'NovaTeclaKeyDown'
;------------------------------------------------------------
;tmp                       Allocated to registers r2 
;tmp2                      Allocated to registers r5 
;i                         Allocated to registers r3 r4 
;------------------------------------------------------------
;	ProjetoFinal.c:145: char NovaTeclaKeyDown(){
;	-----------------------------------------
;	 function NovaTeclaKeyDown
;	-----------------------------------------
_NovaTeclaKeyDown:
;	ProjetoFinal.c:148: tmp = TeclaPressionada();
	lcall	_TeclaPressionada
	mov	r2,dpl
;	ProjetoFinal.c:150: for(i=0;i<DEBOUNCE_REPEATS;i++){
	mov	r3,#0x00
	mov	r4,#0x00
00104$:
	clr	c
	mov	a,r3
	subb	a,#0xB8
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0x8b
	jnc	00107$
;	ProjetoFinal.c:151: tmp2 = TeclaPressionada();
	push	ar2
	push	ar3
	push	ar4
	lcall	_TeclaPressionada
	mov	r5,dpl
	pop	ar4
	pop	ar3
	pop	ar2
;	ProjetoFinal.c:152: if((tmp != tmp2) || (tmp2 == 0)){
	mov	a,r2
	cjne	a,ar5,00101$
	mov	a,r5
	jnz	00106$
00101$:
;	ProjetoFinal.c:153: i = -1;      /* Recomeça a varredura, não passou no teste do debounce */
	mov	r3,#0xFF
	mov	r4,#0xFF
;	ProjetoFinal.c:154: tmp = tmp2;
	mov	ar2,r5
00106$:
;	ProjetoFinal.c:150: for(i=0;i<DEBOUNCE_REPEATS;i++){
	inc	r3
	cjne	r3,#0x00,00104$
	inc	r4
	sjmp	00104$
00107$:
;	ProjetoFinal.c:157: return tmp;
	mov	dpl,r2
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'EsperaSoltarTecla'
;------------------------------------------------------------
;i                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	ProjetoFinal.c:160: void EsperaSoltarTecla(){
;	-----------------------------------------
;	 function EsperaSoltarTecla
;	-----------------------------------------
_EsperaSoltarTecla:
;	ProjetoFinal.c:163: for(i=0;i<DEBOUNCE_REPEATS;i++)
	mov	r2,#0x00
	mov	r3,#0x00
00103$:
	clr	c
	mov	a,r2
	subb	a,#0xB8
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x8b
	jnc	00107$
;	ProjetoFinal.c:164: if(TeclaPressionada()!=0)
	push	ar2
	push	ar3
	lcall	_TeclaPressionada
	mov	a,dpl
	pop	ar3
	pop	ar2
	jz	00105$
;	ProjetoFinal.c:165: i = -1;      /* Recomeça a varredura, não passou no teste do debounce */
	mov	r2,#0xFF
	mov	r3,#0xFF
00105$:
;	ProjetoFinal.c:163: for(i=0;i<DEBOUNCE_REPEATS;i++)
	inc	r2
	cjne	r2,#0x00,00103$
	inc	r3
	sjmp	00103$
00107$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Key_ASCII2BIN'
;------------------------------------------------------------
;tecla                     Allocated to registers r2 
;------------------------------------------------------------
;	ProjetoFinal.c:168: char Key_ASCII2BIN(char tecla){
;	-----------------------------------------
;	 function Key_ASCII2BIN
;	-----------------------------------------
_Key_ASCII2BIN:
	mov	r2,dpl
;	ProjetoFinal.c:169: if(tecla > '9')
	clr	c
	mov	a,#(0x39 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
	jnc	00102$
;	ProjetoFinal.c:170: return tecla - 0x37;
	mov	a,r2
	add	a,#0xc9
	mov	dpl,a
	ret
00102$:
;	ProjetoFinal.c:171: return tecla - 0x30;
	mov	a,r2
	add	a,#0xd0
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'delay'
;------------------------------------------------------------
;tempo                     Allocated to registers r2 r3 
;i                         Allocated to registers r2 r3 
;j                         Allocated to registers r4 r5 
;------------------------------------------------------------
;	ProjetoFinal.c:183: void delay (int tempo) {
;	-----------------------------------------
;	 function delay
;	-----------------------------------------
_delay:
	mov	r2,dpl
	mov	r3,dph
;	ProjetoFinal.c:185: for (i=tempo;i>0;i--) {
00105$:
	clr	c
	clr	a
	subb	a,r2
	mov	a,#(0x00 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00109$
;	ProjetoFinal.c:186: for (j=50;j>0;j--) {
	mov	r4,#0x32
	mov	r5,#0x00
00101$:
	clr	c
	clr	a
	subb	a,r4
	mov	a,#(0x00 ^ 0x80)
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc	00107$
	dec	r4
	cjne	r4,#0xff,00101$
	dec	r5
	sjmp	00101$
00107$:
;	ProjetoFinal.c:185: for (i=tempo;i>0;i--) {
	dec	r2
	cjne	r2,#0xff,00105$
	dec	r3
	sjmp	00105$
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'displaycommand'
;------------------------------------------------------------
;cmd                       Allocated to registers r2 r3 
;------------------------------------------------------------
;	ProjetoFinal.c:200: void displaycommand (int cmd) {
;	-----------------------------------------
;	 function displaycommand
;	-----------------------------------------
_displaycommand:
	mov	r2,dpl
	mov	r3,dph
;	ProjetoFinal.c:201: delay (2);
	mov	dptr,#0x0002
	push	ar2
	push	ar3
	lcall	_delay
	pop	ar3
	pop	ar2
;	ProjetoFinal.c:202: wcommand = cmd;
	mov	dptr,#_wcommand
	mov	a,r2
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'displaydata'
;------------------------------------------------------------
;car                       Allocated to registers r2 r3 
;------------------------------------------------------------
;	ProjetoFinal.c:214: void displaydata (int car){
;	-----------------------------------------
;	 function displaydata
;	-----------------------------------------
_displaydata:
	mov	r2,dpl
	mov	r3,dph
;	ProjetoFinal.c:221: __endasm;
	
	 BUSY:
	MOV DPTR,#_rstatus
	  MOVX A,@DPTR
	  ANL A,#0x80
	  JNZ BUSY
	 
;	ProjetoFinal.c:222: wdata = car;
	mov	dptr,#_wdata
	mov	a,r2
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'printDisplay'
;------------------------------------------------------------
;str                       Allocated to registers r2 r3 r4 
;aux                       Allocated to registers r2 r3 r4 
;------------------------------------------------------------
;	ProjetoFinal.c:229: void printDisplay(unsigned char *str){
;	-----------------------------------------
;	 function printDisplay
;	-----------------------------------------
_printDisplay:
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
;	ProjetoFinal.c:231: while ((*aux)!=0x00) {
00101$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	jz	00104$
;	ProjetoFinal.c:232: displaydata(*aux);
	mov	r6,#0x00
	mov	dpl,r5
	mov	dph,r6
	push	ar2
	push	ar3
	push	ar4
	lcall	_displaydata
	pop	ar4
	pop	ar3
	pop	ar2
;	ProjetoFinal.c:233: aux++;
	inc	r2
	cjne	r2,#0x00,00101$
	inc	r3
	sjmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'progrdisplay'
;------------------------------------------------------------
;------------------------------------------------------------
;	ProjetoFinal.c:246: void progrdisplay (void){
;	-----------------------------------------
;	 function progrdisplay
;	-----------------------------------------
_progrdisplay:
;	ProjetoFinal.c:247: displaycommand (0x38); /* 2 linhas 5x7 */
	mov	dptr,#0x0038
	lcall	_displaycommand
;	ProjetoFinal.c:248: displaycommand (0x0C); /* sem cursor */
	mov	dptr,#0x000C
	lcall	_displaycommand
;	ProjetoFinal.c:249: displaycommand (0x06); /* escreve deslocando para a direita */
	mov	dptr,#0x0006
	ljmp	_displaycommand
;------------------------------------------------------------
;Allocation info for local variables in function 'cleardisplay'
;------------------------------------------------------------
;------------------------------------------------------------
;	ProjetoFinal.c:261: void cleardisplay (void) {
;	-----------------------------------------
;	 function cleardisplay
;	-----------------------------------------
_cleardisplay:
;	ProjetoFinal.c:262: displaycommand (0x01);
	mov	dptr,#0x0001
	ljmp	_displaycommand
;------------------------------------------------------------
;Allocation info for local variables in function 'line'
;------------------------------------------------------------
;lin                       Allocated to registers r2 r3 
;------------------------------------------------------------
;	ProjetoFinal.c:275: void line (int lin) { /* seleciona a linha do display */
;	-----------------------------------------
;	 function line
;	-----------------------------------------
_line:
	mov	r2,dpl
	mov	r3,dph
;	ProjetoFinal.c:276: displaycommand (0x80);
	mov	dptr,#0x0080
	push	ar2
	push	ar3
	lcall	_displaycommand
	pop	ar3
	pop	ar2
;	ProjetoFinal.c:277: if (lin==1) displaycommand (0x80);  /*desloca cursor 1a.lin e 1a.col */
	cjne	r2,#0x01,00102$
	cjne	r3,#0x00,00102$
	mov	dptr,#0x0080
	ljmp	_displaycommand
00102$:
;	ProjetoFinal.c:278: else displaycommand (0xC0);  /*desloca cursor 2a.lin e 1a.col */
	mov	dptr,#0x00C0
	ljmp	_displaycommand
;------------------------------------------------------------
;Allocation info for local variables in function 'initTempoReal'
;------------------------------------------------------------
;------------------------------------------------------------
;	ProjetoFinal.c:284: void initTempoReal ()
;	-----------------------------------------
;	 function initTempoReal
;	-----------------------------------------
_initTempoReal:
;	ProjetoFinal.c:289: regB = 0x92;
	mov	dptr,#_regB
	mov	a,#0x92
	movx	@dptr,a
;	ProjetoFinal.c:290: regA = 0x20;
	mov	dptr,#_regA
	mov	a,#0x20
	movx	@dptr,a
;	ProjetoFinal.c:291: regB &= 0x7F;
	mov	dptr,#_regB
	movx	a,@dptr
	anl	a,#0x7F
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'prog'
;------------------------------------------------------------
;auxIE                     Allocated to registers r2 
;aux                       Allocated with name '_prog_aux_1_1'
;tecla                     Allocated to registers r3 
;------------------------------------------------------------
;	ProjetoFinal.c:295: void prog()
;	-----------------------------------------
;	 function prog
;	-----------------------------------------
_prog:
;	ProjetoFinal.c:298: auxIE = IE;
	mov	r2,_IE
;	ProjetoFinal.c:299: IE &= 0xEF;
	anl	_IE,#0xEF
;	ProjetoFinal.c:300: regB |= 0x80;
	mov	dptr,#_regB
	movx	a,@dptr
	mov	r3,a
	orl	a,#0x80
	movx	@dptr,a
;	ProjetoFinal.c:302: INICIO_PROG_ANO:
00101$:
;	ProjetoFinal.c:304: cleardisplay();
	push	ar2
	lcall	_cleardisplay
;	ProjetoFinal.c:305: printDisplay("Ano(00-99): ");
	mov	dptr,#__str_0
	mov	b,#0x80
	lcall	_printDisplay
;	ProjetoFinal.c:306: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	_prog_aux_1_1,a
;	ProjetoFinal.c:307: while ( (aux[0] < 0 || aux[0] > 9) && aux[0] != 0xF )
00104$:
	mov	a,_prog_aux_1_1
	jb	acc.7,00103$
	clr	c
	mov	a,#(0x09 ^ 0x80)
	mov	b,_prog_aux_1_1
	xrl	b,#0x80
	subb	a,b
	jnc	00106$
00103$:
	mov	a,#0x0F
	cjne	a,_prog_aux_1_1,00364$
	sjmp	00106$
00364$:
;	ProjetoFinal.c:308: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	_prog_aux_1_1,a
	sjmp	00104$
00106$:
;	ProjetoFinal.c:309: if (aux[0] == 0xF)
	mov	a,#0x0F
	cjne	a,_prog_aux_1_1,00365$
	sjmp	00101$
00365$:
;	ProjetoFinal.c:312: displaydata(aux[0]+0x30);
	mov	a,_prog_aux_1_1
	mov	r3,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,#0x30
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	push	ar2
	lcall	_displaydata
;	ProjetoFinal.c:313: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	(_prog_aux_1_1 + 0x0001),a
;	ProjetoFinal.c:314: while ( (aux[1] < 0 || aux[1] > 9) && aux[1] != 0xF)
00111$:
	mov	a,(_prog_aux_1_1 + 0x0001)
	jb	acc.7,00110$
	clr	c
	mov	a,#(0x09 ^ 0x80)
	mov	b,(_prog_aux_1_1 + 0x0001)
	xrl	b,#0x80
	subb	a,b
	jnc	00113$
00110$:
	mov	a,#0x0F
	cjne	a,(_prog_aux_1_1 + 0x0001),00368$
	sjmp	00113$
00368$:
;	ProjetoFinal.c:315: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	(_prog_aux_1_1 + 0x0001),a
	sjmp	00111$
00113$:
;	ProjetoFinal.c:316: if (aux[1] == 0xF)
	mov	a,#0x0F
	cjne	a,(_prog_aux_1_1 + 0x0001),00369$
	ljmp	00101$
00369$:
;	ProjetoFinal.c:319: displaydata(aux[1]+0x30);
	mov	r3,(_prog_aux_1_1 + 0x0001)
	mov	a,(_prog_aux_1_1 + 0x0001)
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,#0x30
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	push	ar2
	lcall	_displaydata
;	ProjetoFinal.c:321: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	r3,dpl
	pop	ar2
;	ProjetoFinal.c:322: while (tecla != 0xE && tecla != 0xF)
00117$:
	cjne	r3,#0x0E,00370$
	sjmp	00119$
00370$:
	cjne	r3,#0x0F,00371$
	sjmp	00119$
00371$:
;	ProjetoFinal.c:323: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	r3,dpl
	pop	ar2
	sjmp	00117$
00119$:
;	ProjetoFinal.c:324: if (tecla == 0xF)
	cjne	r3,#0x0F,00372$
	ljmp	00101$
00372$:
;	ProjetoFinal.c:326: if (tecla == 0xE)
	cjne	r3,#0x0E,00124$
;	ProjetoFinal.c:327: year = aux[0]*16 + aux[1];
	mov	a,_prog_aux_1_1
	swap	a
	anl	a,#0xf0
	mov	r4,a
	mov	dptr,#_year
	mov	a,(_prog_aux_1_1 + 0x0001)
	add	a,r4
	movx	@dptr,a
;	ProjetoFinal.c:329: INICIO_PROG_MES:
00124$:
;	ProjetoFinal.c:331: cleardisplay();
	push	ar2
	lcall	_cleardisplay
;	ProjetoFinal.c:332: printDisplay("Mes(00-12): ");
	mov	dptr,#__str_1
	mov	b,#0x80
	lcall	_printDisplay
;	ProjetoFinal.c:333: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	_prog_aux_1_1,a
;	ProjetoFinal.c:334: while ( (aux[0] < 0 || aux[0] > 9) && aux[0] != 0xF )
00127$:
	mov	a,_prog_aux_1_1
	jb	acc.7,00126$
	clr	c
	mov	a,#(0x09 ^ 0x80)
	mov	b,_prog_aux_1_1
	xrl	b,#0x80
	subb	a,b
	jnc	00129$
00126$:
	mov	a,#0x0F
	cjne	a,_prog_aux_1_1,00377$
	sjmp	00129$
00377$:
;	ProjetoFinal.c:335: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	_prog_aux_1_1,a
	sjmp	00127$
00129$:
;	ProjetoFinal.c:336: if (aux[0] == 0xF)
	mov	a,#0x0F
	cjne	a,_prog_aux_1_1,00378$
	sjmp	00124$
00378$:
;	ProjetoFinal.c:339: displaydata(aux[0] + 0x30);
	mov	a,_prog_aux_1_1
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	push	ar2
	lcall	_displaydata
;	ProjetoFinal.c:340: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	(_prog_aux_1_1 + 0x0001),a
;	ProjetoFinal.c:341: while ( (aux[1] < 0 || aux[1] > 9) && aux[1] != 0xF )
00134$:
	mov	a,(_prog_aux_1_1 + 0x0001)
	jb	acc.7,00133$
	clr	c
	mov	a,#(0x09 ^ 0x80)
	mov	b,(_prog_aux_1_1 + 0x0001)
	xrl	b,#0x80
	subb	a,b
	jnc	00136$
00133$:
	mov	a,#0x0F
	cjne	a,(_prog_aux_1_1 + 0x0001),00381$
	sjmp	00136$
00381$:
;	ProjetoFinal.c:342: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	(_prog_aux_1_1 + 0x0001),a
	sjmp	00134$
00136$:
;	ProjetoFinal.c:343: if (aux[1] == 0xF)
	mov	a,#0x0F
	cjne	a,(_prog_aux_1_1 + 0x0001),00382$
	ljmp	00124$
00382$:
;	ProjetoFinal.c:346: displaydata(aux[1] + 0x30);
	mov	r4,(_prog_aux_1_1 + 0x0001)
	mov	a,(_prog_aux_1_1 + 0x0001)
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	push	ar2
	lcall	_displaydata
;	ProjetoFinal.c:347: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	r3,dpl
	pop	ar2
;	ProjetoFinal.c:348: while (tecla != 0xE && tecla != 0xF)
00140$:
	cjne	r3,#0x0E,00383$
	sjmp	00142$
00383$:
	cjne	r3,#0x0F,00384$
	sjmp	00142$
00384$:
;	ProjetoFinal.c:349: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	r3,dpl
	pop	ar2
	sjmp	00140$
00142$:
;	ProjetoFinal.c:350: if (tecla == 0xF)
	cjne	r3,#0x0F,00385$
	ljmp	00124$
00385$:
;	ProjetoFinal.c:352: if (tecla == 0xE)
	cjne	r3,#0x0E,00147$
;	ProjetoFinal.c:353: mounth = aux[0]*16 + aux[1];
	mov	a,_prog_aux_1_1
	swap	a
	anl	a,#0xf0
	mov	r4,a
	mov	dptr,#_mounth
	mov	a,(_prog_aux_1_1 + 0x0001)
	add	a,r4
	movx	@dptr,a
;	ProjetoFinal.c:355: INICIO_PROG_DIA:
00147$:
;	ProjetoFinal.c:357: cleardisplay();
	push	ar2
	lcall	_cleardisplay
;	ProjetoFinal.c:358: printDisplay("Dia(00-31): ");
	mov	dptr,#__str_2
	mov	b,#0x80
	lcall	_printDisplay
;	ProjetoFinal.c:359: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	_prog_aux_1_1,a
;	ProjetoFinal.c:360: while ( (aux[0] < 0 || aux[0] > 9) && aux[0] != 0xF )
00150$:
	mov	a,_prog_aux_1_1
	jb	acc.7,00149$
	clr	c
	mov	a,#(0x09 ^ 0x80)
	mov	b,_prog_aux_1_1
	xrl	b,#0x80
	subb	a,b
	jnc	00152$
00149$:
	mov	a,#0x0F
	cjne	a,_prog_aux_1_1,00390$
	sjmp	00152$
00390$:
;	ProjetoFinal.c:361: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	_prog_aux_1_1,a
	sjmp	00150$
00152$:
;	ProjetoFinal.c:362: if (aux[0] == 0xF)
	mov	a,#0x0F
	cjne	a,_prog_aux_1_1,00391$
	sjmp	00147$
00391$:
;	ProjetoFinal.c:365: displaydata(aux[0] + 0x30);
	mov	a,_prog_aux_1_1
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	push	ar2
	lcall	_displaydata
;	ProjetoFinal.c:366: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	(_prog_aux_1_1 + 0x0001),a
;	ProjetoFinal.c:367: while ( (aux[1] < 0 || aux[1] > 9) && aux[1] != 0xF )
00157$:
	mov	a,(_prog_aux_1_1 + 0x0001)
	jb	acc.7,00156$
	clr	c
	mov	a,#(0x09 ^ 0x80)
	mov	b,(_prog_aux_1_1 + 0x0001)
	xrl	b,#0x80
	subb	a,b
	jnc	00159$
00156$:
	mov	a,#0x0F
	cjne	a,(_prog_aux_1_1 + 0x0001),00394$
	sjmp	00159$
00394$:
;	ProjetoFinal.c:368: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	(_prog_aux_1_1 + 0x0001),a
	sjmp	00157$
00159$:
;	ProjetoFinal.c:369: if (aux[1] == 0xF)
	mov	a,#0x0F
	cjne	a,(_prog_aux_1_1 + 0x0001),00395$
	ljmp	00147$
00395$:
;	ProjetoFinal.c:372: displaydata(aux[1] + 0x30);
	mov	r4,(_prog_aux_1_1 + 0x0001)
	mov	a,(_prog_aux_1_1 + 0x0001)
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	push	ar2
	lcall	_displaydata
;	ProjetoFinal.c:373: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	r3,dpl
	pop	ar2
;	ProjetoFinal.c:374: while (tecla != 0xE && tecla != 0xF)
00163$:
	cjne	r3,#0x0E,00396$
	sjmp	00165$
00396$:
	cjne	r3,#0x0F,00397$
	sjmp	00165$
00397$:
;	ProjetoFinal.c:375: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	r3,dpl
	pop	ar2
	sjmp	00163$
00165$:
;	ProjetoFinal.c:376: if (tecla == 0xF)
	cjne	r3,#0x0F,00398$
	ljmp	00147$
00398$:
;	ProjetoFinal.c:378: if (tecla == 0xE)
	cjne	r3,#0x0E,00170$
;	ProjetoFinal.c:379: dateOfMounth = aux[0]*16 + aux[1];
	mov	a,_prog_aux_1_1
	swap	a
	anl	a,#0xf0
	mov	r4,a
	mov	dptr,#_dateOfMounth
	mov	a,(_prog_aux_1_1 + 0x0001)
	add	a,r4
	movx	@dptr,a
;	ProjetoFinal.c:381: INICIO_PROG_SEMANA:
00170$:
;	ProjetoFinal.c:383: cleardisplay();
	push	ar2
	lcall	_cleardisplay
;	ProjetoFinal.c:384: printDisplay("DiaSem(01-07):");
	mov	dptr,#__str_3
	mov	b,#0x80
	lcall	_printDisplay
;	ProjetoFinal.c:385: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	_prog_aux_1_1,a
;	ProjetoFinal.c:386: while ( (aux[0] < 0 || aux[0] > 9) && aux[0] != 0xF )
00173$:
	mov	a,_prog_aux_1_1
	jb	acc.7,00172$
	clr	c
	mov	a,#(0x09 ^ 0x80)
	mov	b,_prog_aux_1_1
	xrl	b,#0x80
	subb	a,b
	jnc	00175$
00172$:
	mov	a,#0x0F
	cjne	a,_prog_aux_1_1,00403$
	sjmp	00175$
00403$:
;	ProjetoFinal.c:387: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	_prog_aux_1_1,a
	sjmp	00173$
00175$:
;	ProjetoFinal.c:388: if (aux[0] == 0xF)
	mov	a,#0x0F
	cjne	a,_prog_aux_1_1,00404$
	sjmp	00170$
00404$:
;	ProjetoFinal.c:391: displaydata(aux[0] + 0x30);
	mov	a,_prog_aux_1_1
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	push	ar2
	lcall	_displaydata
;	ProjetoFinal.c:392: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	(_prog_aux_1_1 + 0x0001),a
;	ProjetoFinal.c:393: while ( (aux[1] < 0 || aux[1] > 9) && aux[1] != 0xF )
00180$:
	mov	a,(_prog_aux_1_1 + 0x0001)
	jb	acc.7,00179$
	clr	c
	mov	a,#(0x09 ^ 0x80)
	mov	b,(_prog_aux_1_1 + 0x0001)
	xrl	b,#0x80
	subb	a,b
	jnc	00182$
00179$:
	mov	a,#0x0F
	cjne	a,(_prog_aux_1_1 + 0x0001),00407$
	sjmp	00182$
00407$:
;	ProjetoFinal.c:394: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	(_prog_aux_1_1 + 0x0001),a
	sjmp	00180$
00182$:
;	ProjetoFinal.c:395: if (aux[1] == 0xF)
	mov	a,#0x0F
	cjne	a,(_prog_aux_1_1 + 0x0001),00408$
	ljmp	00170$
00408$:
;	ProjetoFinal.c:398: displaydata(aux[1] + 0x30);
	mov	r4,(_prog_aux_1_1 + 0x0001)
	mov	a,(_prog_aux_1_1 + 0x0001)
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	push	ar2
	lcall	_displaydata
;	ProjetoFinal.c:399: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	r3,dpl
	pop	ar2
;	ProjetoFinal.c:400: while (tecla != 0xE && tecla != 0xF)
00186$:
	cjne	r3,#0x0E,00409$
	sjmp	00188$
00409$:
	cjne	r3,#0x0F,00410$
	sjmp	00188$
00410$:
;	ProjetoFinal.c:401: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	r3,dpl
	pop	ar2
	sjmp	00186$
00188$:
;	ProjetoFinal.c:402: if (tecla == 0xF)
	cjne	r3,#0x0F,00411$
	ljmp	00170$
00411$:
;	ProjetoFinal.c:404: if (tecla == 0xE)
	cjne	r3,#0x0E,00193$
;	ProjetoFinal.c:405: dayOfWeek = aux[0]*16 + aux[1];
	mov	a,_prog_aux_1_1
	swap	a
	anl	a,#0xf0
	mov	r4,a
	mov	dptr,#_dayOfWeek
	mov	a,(_prog_aux_1_1 + 0x0001)
	add	a,r4
	movx	@dptr,a
;	ProjetoFinal.c:407: INICIO_PROG_HORA:
00193$:
;	ProjetoFinal.c:409: cleardisplay();
	push	ar2
	lcall	_cleardisplay
;	ProjetoFinal.c:410: printDisplay("Hora(00-23): ");
	mov	dptr,#__str_4
	mov	b,#0x80
	lcall	_printDisplay
;	ProjetoFinal.c:411: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	_prog_aux_1_1,a
;	ProjetoFinal.c:412: while ( (aux[0] < 0 || aux[0] > 9) && aux[0] != 0xF )
00196$:
	mov	a,_prog_aux_1_1
	jb	acc.7,00195$
	clr	c
	mov	a,#(0x09 ^ 0x80)
	mov	b,_prog_aux_1_1
	xrl	b,#0x80
	subb	a,b
	jnc	00198$
00195$:
	mov	a,#0x0F
	cjne	a,_prog_aux_1_1,00416$
	sjmp	00198$
00416$:
;	ProjetoFinal.c:413: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	_prog_aux_1_1,a
	sjmp	00196$
00198$:
;	ProjetoFinal.c:414: if (aux[0] == 0xF)
	mov	a,#0x0F
	cjne	a,_prog_aux_1_1,00417$
	sjmp	00193$
00417$:
;	ProjetoFinal.c:417: displaydata(aux[0] + 0x30);
	mov	a,_prog_aux_1_1
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	push	ar2
	lcall	_displaydata
;	ProjetoFinal.c:418: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	(_prog_aux_1_1 + 0x0001),a
;	ProjetoFinal.c:419: while ( (aux[1] < 0 || aux[1] > 9) && aux[1] != 0xF )
00203$:
	mov	a,(_prog_aux_1_1 + 0x0001)
	jb	acc.7,00202$
	clr	c
	mov	a,#(0x09 ^ 0x80)
	mov	b,(_prog_aux_1_1 + 0x0001)
	xrl	b,#0x80
	subb	a,b
	jnc	00205$
00202$:
	mov	a,#0x0F
	cjne	a,(_prog_aux_1_1 + 0x0001),00420$
	sjmp	00205$
00420$:
;	ProjetoFinal.c:420: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	(_prog_aux_1_1 + 0x0001),a
	sjmp	00203$
00205$:
;	ProjetoFinal.c:421: if (aux[1] == 0xF)
	mov	a,#0x0F
	cjne	a,(_prog_aux_1_1 + 0x0001),00421$
	ljmp	00193$
00421$:
;	ProjetoFinal.c:424: displaydata(aux[1] + 0x30);
	mov	r4,(_prog_aux_1_1 + 0x0001)
	mov	a,(_prog_aux_1_1 + 0x0001)
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	push	ar2
	lcall	_displaydata
;	ProjetoFinal.c:425: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	r3,dpl
	pop	ar2
;	ProjetoFinal.c:426: while (tecla != 0xE && tecla != 0xF)
00209$:
	cjne	r3,#0x0E,00422$
	sjmp	00211$
00422$:
	cjne	r3,#0x0F,00423$
	sjmp	00211$
00423$:
;	ProjetoFinal.c:427: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	r3,dpl
	pop	ar2
	sjmp	00209$
00211$:
;	ProjetoFinal.c:428: if (tecla == 0xF)
	cjne	r3,#0x0F,00424$
	ljmp	00193$
00424$:
;	ProjetoFinal.c:430: if (tecla == 0xE)
	cjne	r3,#0x0E,00216$
;	ProjetoFinal.c:431: hours = aux[0]*16 + aux[1];
	mov	a,_prog_aux_1_1
	swap	a
	anl	a,#0xf0
	mov	r4,a
	mov	dptr,#_hours
	mov	a,(_prog_aux_1_1 + 0x0001)
	add	a,r4
	movx	@dptr,a
;	ProjetoFinal.c:433: INICIO_PROG_MIN:
00216$:
;	ProjetoFinal.c:435: cleardisplay();
	push	ar2
	lcall	_cleardisplay
;	ProjetoFinal.c:436: printDisplay("Min(00-59): ");
	mov	dptr,#__str_5
	mov	b,#0x80
	lcall	_printDisplay
;	ProjetoFinal.c:437: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	_prog_aux_1_1,a
;	ProjetoFinal.c:438: while ( (aux[0] < 0 || aux[0] > 9) && aux[0] != 0xF )
00219$:
	mov	a,_prog_aux_1_1
	jb	acc.7,00218$
	clr	c
	mov	a,#(0x09 ^ 0x80)
	mov	b,_prog_aux_1_1
	xrl	b,#0x80
	subb	a,b
	jnc	00221$
00218$:
	mov	a,#0x0F
	cjne	a,_prog_aux_1_1,00429$
	sjmp	00221$
00429$:
;	ProjetoFinal.c:439: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	_prog_aux_1_1,a
	sjmp	00219$
00221$:
;	ProjetoFinal.c:440: if (aux[0] == 0xF)
	mov	a,#0x0F
	cjne	a,_prog_aux_1_1,00430$
	sjmp	00216$
00430$:
;	ProjetoFinal.c:443: displaydata(aux[0] + 0x30);
	mov	a,_prog_aux_1_1
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	push	ar2
	lcall	_displaydata
;	ProjetoFinal.c:444: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	(_prog_aux_1_1 + 0x0001),a
;	ProjetoFinal.c:445: while ( (aux[1] < 0 || aux[1] > 9) && aux[1] != 0xF )
00226$:
	mov	a,(_prog_aux_1_1 + 0x0001)
	jb	acc.7,00225$
	clr	c
	mov	a,#(0x09 ^ 0x80)
	mov	b,(_prog_aux_1_1 + 0x0001)
	xrl	b,#0x80
	subb	a,b
	jnc	00228$
00225$:
	mov	a,#0x0F
	cjne	a,(_prog_aux_1_1 + 0x0001),00433$
	sjmp	00228$
00433$:
;	ProjetoFinal.c:446: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	(_prog_aux_1_1 + 0x0001),a
	sjmp	00226$
00228$:
;	ProjetoFinal.c:447: if (aux[1] == 0xF)
	mov	a,#0x0F
	cjne	a,(_prog_aux_1_1 + 0x0001),00434$
	ljmp	00216$
00434$:
;	ProjetoFinal.c:450: displaydata(aux[1] + 0x30);
	mov	r4,(_prog_aux_1_1 + 0x0001)
	mov	a,(_prog_aux_1_1 + 0x0001)
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	push	ar2
	lcall	_displaydata
;	ProjetoFinal.c:451: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	r3,dpl
	pop	ar2
;	ProjetoFinal.c:452: while (tecla != 0xE && tecla != 0xF)
00232$:
	cjne	r3,#0x0E,00435$
	sjmp	00234$
00435$:
	cjne	r3,#0x0F,00436$
	sjmp	00234$
00436$:
;	ProjetoFinal.c:453: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	r3,dpl
	pop	ar2
	sjmp	00232$
00234$:
;	ProjetoFinal.c:454: if (tecla == 0xF)
	cjne	r3,#0x0F,00437$
	ljmp	00216$
00437$:
;	ProjetoFinal.c:456: if (tecla == 0xE)
	cjne	r3,#0x0E,00239$
;	ProjetoFinal.c:457: minutes = aux[0]*16 + aux[1];
	mov	a,_prog_aux_1_1
	swap	a
	anl	a,#0xf0
	mov	r4,a
	mov	dptr,#_minutes
	mov	a,(_prog_aux_1_1 + 0x0001)
	add	a,r4
	movx	@dptr,a
;	ProjetoFinal.c:459: INICIO_PROG_SEG:
00239$:
;	ProjetoFinal.c:461: cleardisplay();
	push	ar2
	lcall	_cleardisplay
;	ProjetoFinal.c:462: printDisplay("Seg(00-59): ");
	mov	dptr,#__str_6
	mov	b,#0x80
	lcall	_printDisplay
;	ProjetoFinal.c:463: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	_prog_aux_1_1,a
;	ProjetoFinal.c:464: while ( (aux[0] < 0 || aux[0] > 9) && aux[0] != 0xF )
00242$:
	mov	a,_prog_aux_1_1
	jb	acc.7,00241$
	clr	c
	mov	a,#(0x09 ^ 0x80)
	mov	b,_prog_aux_1_1
	xrl	b,#0x80
	subb	a,b
	jnc	00244$
00241$:
	mov	a,#0x0F
	cjne	a,_prog_aux_1_1,00442$
	sjmp	00244$
00442$:
;	ProjetoFinal.c:465: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	_prog_aux_1_1,a
	sjmp	00242$
00244$:
;	ProjetoFinal.c:466: if (aux[0] == 0xF)
	mov	a,#0x0F
	cjne	a,_prog_aux_1_1,00443$
	sjmp	00239$
00443$:
;	ProjetoFinal.c:469: displaydata(aux[0] + 0x30);
	mov	a,_prog_aux_1_1
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	push	ar2
	lcall	_displaydata
;	ProjetoFinal.c:470: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	(_prog_aux_1_1 + 0x0001),a
;	ProjetoFinal.c:471: while ( (aux[1] < 0 || aux[1] > 9) && aux[1] != 0xF )
00249$:
	mov	a,(_prog_aux_1_1 + 0x0001)
	jb	acc.7,00248$
	clr	c
	mov	a,#(0x09 ^ 0x80)
	mov	b,(_prog_aux_1_1 + 0x0001)
	xrl	b,#0x80
	subb	a,b
	jnc	00251$
00248$:
	mov	a,#0x0F
	cjne	a,(_prog_aux_1_1 + 0x0001),00446$
	sjmp	00251$
00446$:
;	ProjetoFinal.c:472: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	(_prog_aux_1_1 + 0x0001),a
	sjmp	00249$
00251$:
;	ProjetoFinal.c:473: if (aux[1] == 0xF)
	mov	a,#0x0F
	cjne	a,(_prog_aux_1_1 + 0x0001),00447$
	ljmp	00239$
00447$:
;	ProjetoFinal.c:476: displaydata(aux[1] + 0x30);
	mov	r4,(_prog_aux_1_1 + 0x0001)
	mov	a,(_prog_aux_1_1 + 0x0001)
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	push	ar2
	lcall	_displaydata
;	ProjetoFinal.c:477: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	r3,dpl
	pop	ar2
;	ProjetoFinal.c:478: while (tecla != 0xE && tecla != 0xF)
00255$:
	cjne	r3,#0x0E,00448$
	sjmp	00257$
00448$:
	cjne	r3,#0x0F,00449$
	sjmp	00257$
00449$:
;	ProjetoFinal.c:479: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	r3,dpl
	pop	ar2
	sjmp	00255$
00257$:
;	ProjetoFinal.c:480: if (tecla == 0xF)
	cjne	r3,#0x0F,00450$
	ljmp	00239$
00450$:
;	ProjetoFinal.c:482: if (tecla == 0xE)
	cjne	r3,#0x0E,00261$
;	ProjetoFinal.c:483: seconds = aux[0]*16 + aux[1];
	mov	a,_prog_aux_1_1
	swap	a
	anl	a,#0xf0
	mov	r3,a
	mov	dptr,#_seconds
	mov	a,(_prog_aux_1_1 + 0x0001)
	add	a,r3
	movx	@dptr,a
00261$:
;	ProjetoFinal.c:486: IE = auxIE;
	mov	_IE,r2
;	ProjetoFinal.c:487: regB &= 0x7F;
	mov	dptr,#_regB
	movx	a,@dptr
	anl	a,#0x7F
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'progAlarm'
;------------------------------------------------------------
;auxIE                     Allocated to registers r2 
;aux                       Allocated with name '_progAlarm_aux_1_1'
;tecla                     Allocated to registers r3 
;------------------------------------------------------------
;	ProjetoFinal.c:495: void progAlarm(){
;	-----------------------------------------
;	 function progAlarm
;	-----------------------------------------
_progAlarm:
;	ProjetoFinal.c:498: auxIE = IE;
	mov	r2,_IE
;	ProjetoFinal.c:499: IE &= 0xEF;
	anl	_IE,#0xEF
;	ProjetoFinal.c:500: regB |= 0x80;
	mov	dptr,#_regB
	movx	a,@dptr
	mov	r3,a
	orl	a,#0x80
	movx	@dptr,a
;	ProjetoFinal.c:502: INICIO_PROG_ALARM_QTD:
00101$:
;	ProjetoFinal.c:504: cleardisplay();
	push	ar2
	lcall	_cleardisplay
;	ProjetoFinal.c:505: printDisplay("Quantos ml?");
	mov	dptr,#__str_7
	mov	b,#0x80
	lcall	_printDisplay
;	ProjetoFinal.c:506: line(2);
	mov	dptr,#0x0002
	lcall	_line
;	ProjetoFinal.c:507: printDisplay("(0000-9999):");
	mov	dptr,#__str_8
	mov	b,#0x80
	lcall	_printDisplay
;	ProjetoFinal.c:509: qtd[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	_qtd,a
;	ProjetoFinal.c:510: while ( (qtd[0] < 0 || qtd[0] > 9) && qtd[0] != 0xF )
00104$:
	mov	a,_qtd
	mov	r3,a
	jb	acc.7,00103$
	clr	c
	mov	a,#(0x09 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00106$
00103$:
	mov	a,#0x0F
	cjne	a,_qtd,00279$
	sjmp	00106$
00279$:
;	ProjetoFinal.c:511: qtd[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	_qtd,a
	sjmp	00104$
00106$:
;	ProjetoFinal.c:512: if (qtd[0] == 0xF)
	mov	r3,_qtd
	cjne	r3,#0x0F,00280$
	sjmp	00101$
00280$:
;	ProjetoFinal.c:514: displaydata(qtd[0] + 0x30);
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,#0x30
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	push	ar2
	lcall	_displaydata
;	ProjetoFinal.c:515: qtd[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	(_qtd + 0x0001),a
;	ProjetoFinal.c:516: while ( (qtd[1] < 0 || qtd[1] > 9) && qtd[1] != 0xF )
00111$:
	mov	a,(_qtd + 0x0001)
	mov	r3,a
	jb	acc.7,00110$
	clr	c
	mov	a,#(0x09 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00113$
00110$:
	mov	a,#0x0F
	cjne	a,(_qtd + 0x0001),00283$
	sjmp	00113$
00283$:
;	ProjetoFinal.c:517: qtd[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	(_qtd + 0x0001),a
	sjmp	00111$
00113$:
;	ProjetoFinal.c:518: if (qtd[1] == 0xF)
	mov	r3,(_qtd + 0x0001)
	cjne	r3,#0x0F,00284$
	ljmp	00101$
00284$:
;	ProjetoFinal.c:520: displaydata(qtd[1] + 0x30);
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,#0x30
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	push	ar2
	lcall	_displaydata
;	ProjetoFinal.c:521: qtd[2] = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	(_qtd + 0x0002),a
;	ProjetoFinal.c:522: while ( (qtd[2] < 0 || qtd[2] > 9) && qtd[2] != 0xF )
00118$:
	mov	a,(_qtd + 0x0002)
	mov	r3,a
	jb	acc.7,00117$
	clr	c
	mov	a,#(0x09 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00120$
00117$:
	mov	a,#0x0F
	cjne	a,(_qtd + 0x0002),00287$
	sjmp	00120$
00287$:
;	ProjetoFinal.c:523: qtd[2] = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	(_qtd + 0x0002),a
	sjmp	00118$
00120$:
;	ProjetoFinal.c:524: if (qtd[2] == 0xF)
	mov	r3,(_qtd + 0x0002)
	cjne	r3,#0x0F,00288$
	ljmp	00101$
00288$:
;	ProjetoFinal.c:526: displaydata(qtd[2] + 0x30);
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,#0x30
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	push	ar2
	lcall	_displaydata
;	ProjetoFinal.c:527: qtd[3] = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	(_qtd + 0x0003),a
;	ProjetoFinal.c:528: while ( (qtd[3] < 0 || qtd[3] > 9) && qtd[3] != 0xF )
00125$:
	mov	a,(_qtd + 0x0003)
	mov	r3,a
	jb	acc.7,00124$
	clr	c
	mov	a,#(0x09 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
	jnc	00127$
00124$:
	mov	a,#0x0F
	cjne	a,(_qtd + 0x0003),00291$
	sjmp	00127$
00291$:
;	ProjetoFinal.c:529: qtd[3] = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	(_qtd + 0x0003),a
	sjmp	00125$
00127$:
;	ProjetoFinal.c:530: if (qtd[3] == 0xF)
	mov	r3,(_qtd + 0x0003)
	cjne	r3,#0x0F,00292$
	ljmp	00101$
00292$:
;	ProjetoFinal.c:532: displaydata(qtd[3] + 0x30);
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,#0x30
	add	a,r3
	mov	dpl,a
	clr	a
	addc	a,r4
	mov	dph,a
	push	ar2
	lcall	_displaydata
;	ProjetoFinal.c:533: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	r3,dpl
	pop	ar2
;	ProjetoFinal.c:534: while (tecla != 0xE && tecla != 0xF)
00131$:
	cjne	r3,#0x0E,00293$
	sjmp	00133$
00293$:
	cjne	r3,#0x0F,00294$
	sjmp	00133$
00294$:
;	ProjetoFinal.c:535: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	r3,dpl
	pop	ar2
	sjmp	00131$
00133$:
;	ProjetoFinal.c:536: if (tecla == 0xF)
	cjne	r3,#0x0F,00295$
	ljmp	00101$
00295$:
;	ProjetoFinal.c:538: if (tecla == 0xE)
	cjne	r3,#0x0E,00138$
;	ProjetoFinal.c:539: qtd_real = qtd[0]*1000 + qtd[1]*100+qtd[2]*10+qtd[3];
	mov	a,_qtd
	mov	__mulint_PARM_2,a
	rlc	a
	subb	a,acc
	mov	(__mulint_PARM_2 + 1),a
	mov	dptr,#0x03E8
	push	ar2
	lcall	__mulint
	mov	r4,dpl
	mov	r5,dph
	pop	ar2
	clr	F0
	mov	b,#0x64
	mov	a,(_qtd + 0x0001)
	jnb	acc.7,00298$
	cpl	F0
	cpl	a
	inc	a
00298$:
	mul	ab
	jnb	F0,00299$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00299$:
	add	a,r4
	mov	r4,a
	mov	a,r5
	addc	a,b
	mov	r5,a
	clr	F0
	mov	b,#0x0a
	mov	a,(_qtd + 0x0002)
	jnb	acc.7,00300$
	cpl	F0
	cpl	a
	inc	a
00300$:
	mul	ab
	jnb	F0,00301$
	cpl	a
	add	a,#0x01
	xch	a,b
	cpl	a
	addc	a,#0x00
	xch	a,b
00301$:
	add	a,r4
	mov	r4,a
	mov	a,r5
	addc	a,b
	mov	r5,a
	mov	r6,(_qtd + 0x0003)
	mov	a,(_qtd + 0x0003)
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	a,r6
	add	a,r4
	mov	_qtd_real,a
	mov	a,r7
	addc	a,r5
	mov	(_qtd_real + 1),a
;	ProjetoFinal.c:542: INICIO_PROG_ALARM_H:
00138$:
;	ProjetoFinal.c:544: cleardisplay();
	push	ar2
	lcall	_cleardisplay
;	ProjetoFinal.c:545: printDisplay("HoraAl(00-23):");
	mov	dptr,#__str_9
	mov	b,#0x80
	lcall	_printDisplay
;	ProjetoFinal.c:546: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	_progAlarm_aux_1_1,a
;	ProjetoFinal.c:547: while ( (aux[0] < 0 || aux[0] > 9) && aux[0] != 0xF )
00141$:
	mov	a,_progAlarm_aux_1_1
	jb	acc.7,00140$
	clr	c
	mov	a,#(0x09 ^ 0x80)
	mov	b,_progAlarm_aux_1_1
	xrl	b,#0x80
	subb	a,b
	jnc	00143$
00140$:
	mov	a,#0x0F
	cjne	a,_progAlarm_aux_1_1,00304$
	sjmp	00143$
00304$:
;	ProjetoFinal.c:548: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	_progAlarm_aux_1_1,a
	sjmp	00141$
00143$:
;	ProjetoFinal.c:549: if (aux[0] == 0xF)
	mov	a,#0x0F
	cjne	a,_progAlarm_aux_1_1,00305$
	sjmp	00138$
00305$:
;	ProjetoFinal.c:552: displaydata(aux[0] + 0x30);
	mov	a,_progAlarm_aux_1_1
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	push	ar2
	lcall	_displaydata
;	ProjetoFinal.c:553: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	(_progAlarm_aux_1_1 + 0x0001),a
;	ProjetoFinal.c:554: while ( (aux[1] < 0 || aux[1] > 9) && aux[1] != 0xF )
00148$:
	mov	a,(_progAlarm_aux_1_1 + 0x0001)
	jb	acc.7,00147$
	clr	c
	mov	a,#(0x09 ^ 0x80)
	mov	b,(_progAlarm_aux_1_1 + 0x0001)
	xrl	b,#0x80
	subb	a,b
	jnc	00150$
00147$:
	mov	a,#0x0F
	cjne	a,(_progAlarm_aux_1_1 + 0x0001),00308$
	sjmp	00150$
00308$:
;	ProjetoFinal.c:555: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	(_progAlarm_aux_1_1 + 0x0001),a
	sjmp	00148$
00150$:
;	ProjetoFinal.c:556: if (aux[1] == 0xF)
	mov	a,#0x0F
	cjne	a,(_progAlarm_aux_1_1 + 0x0001),00309$
	ljmp	00138$
00309$:
;	ProjetoFinal.c:559: displaydata(aux[1] + 0x30);
	mov	r4,(_progAlarm_aux_1_1 + 0x0001)
	mov	a,(_progAlarm_aux_1_1 + 0x0001)
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	push	ar2
	lcall	_displaydata
;	ProjetoFinal.c:560: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	r3,dpl
	pop	ar2
;	ProjetoFinal.c:561: while (tecla != 0xE && tecla != 0xF)
00154$:
	cjne	r3,#0x0E,00310$
	sjmp	00156$
00310$:
	cjne	r3,#0x0F,00311$
	sjmp	00156$
00311$:
;	ProjetoFinal.c:562: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	r3,dpl
	pop	ar2
	sjmp	00154$
00156$:
;	ProjetoFinal.c:563: if (tecla == 0xF)
	cjne	r3,#0x0F,00312$
	ljmp	00138$
00312$:
;	ProjetoFinal.c:565: if (tecla == 0xE)
	cjne	r3,#0x0E,00161$
;	ProjetoFinal.c:566: hoursAlarm = aux[0]*16 + aux[1];
	mov	a,_progAlarm_aux_1_1
	swap	a
	anl	a,#0xf0
	mov	r4,a
	mov	dptr,#_hoursAlarm
	mov	a,(_progAlarm_aux_1_1 + 0x0001)
	add	a,r4
	movx	@dptr,a
;	ProjetoFinal.c:569: INICIO_PROG_ALARM_M:
00161$:
;	ProjetoFinal.c:571: cleardisplay();
	push	ar2
	lcall	_cleardisplay
;	ProjetoFinal.c:572: printDisplay("MinAl(00-59): ");
	mov	dptr,#__str_10
	mov	b,#0x80
	lcall	_printDisplay
;	ProjetoFinal.c:573: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	_progAlarm_aux_1_1,a
;	ProjetoFinal.c:574: while ( (aux[0] < 0 || aux[0] > 9) && aux[0] != 0xF )
00164$:
	mov	a,_progAlarm_aux_1_1
	jb	acc.7,00163$
	clr	c
	mov	a,#(0x09 ^ 0x80)
	mov	b,_progAlarm_aux_1_1
	xrl	b,#0x80
	subb	a,b
	jnc	00166$
00163$:
	mov	a,#0x0F
	cjne	a,_progAlarm_aux_1_1,00317$
	sjmp	00166$
00317$:
;	ProjetoFinal.c:575: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	_progAlarm_aux_1_1,a
	sjmp	00164$
00166$:
;	ProjetoFinal.c:576: if (aux[0] == 0xF)
	mov	a,#0x0F
	cjne	a,_progAlarm_aux_1_1,00318$
	sjmp	00161$
00318$:
;	ProjetoFinal.c:579: displaydata(aux[0] + 0x30);
	mov	a,_progAlarm_aux_1_1
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	push	ar2
	lcall	_displaydata
;	ProjetoFinal.c:580: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	(_progAlarm_aux_1_1 + 0x0001),a
;	ProjetoFinal.c:581: while ( (aux[1] < 0 || aux[1] > 9) && aux[1] != 0xF )
00171$:
	mov	a,(_progAlarm_aux_1_1 + 0x0001)
	jb	acc.7,00170$
	clr	c
	mov	a,#(0x09 ^ 0x80)
	mov	b,(_progAlarm_aux_1_1 + 0x0001)
	xrl	b,#0x80
	subb	a,b
	jnc	00173$
00170$:
	mov	a,#0x0F
	cjne	a,(_progAlarm_aux_1_1 + 0x0001),00321$
	sjmp	00173$
00321$:
;	ProjetoFinal.c:582: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	(_progAlarm_aux_1_1 + 0x0001),a
	sjmp	00171$
00173$:
;	ProjetoFinal.c:583: if (aux[1] == 0xF)
	mov	a,#0x0F
	cjne	a,(_progAlarm_aux_1_1 + 0x0001),00322$
	ljmp	00161$
00322$:
;	ProjetoFinal.c:586: displaydata(aux[1] + 0x30);
	mov	r4,(_progAlarm_aux_1_1 + 0x0001)
	mov	a,(_progAlarm_aux_1_1 + 0x0001)
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	push	ar2
	lcall	_displaydata
;	ProjetoFinal.c:587: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	r3,dpl
	pop	ar2
;	ProjetoFinal.c:588: while (tecla != 0xE && tecla != 0xF)
00177$:
	cjne	r3,#0x0E,00323$
	sjmp	00179$
00323$:
	cjne	r3,#0x0F,00324$
	sjmp	00179$
00324$:
;	ProjetoFinal.c:589: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	r3,dpl
	pop	ar2
	sjmp	00177$
00179$:
;	ProjetoFinal.c:590: if (tecla == 0xF)
	cjne	r3,#0x0F,00325$
	ljmp	00161$
00325$:
;	ProjetoFinal.c:592: if (tecla == 0xE)
	cjne	r3,#0x0E,00184$
;	ProjetoFinal.c:593: minAlarm = aux[0]*16 + aux[1];
	mov	a,_progAlarm_aux_1_1
	swap	a
	anl	a,#0xf0
	mov	r4,a
	mov	dptr,#_minAlarm
	mov	a,(_progAlarm_aux_1_1 + 0x0001)
	add	a,r4
	movx	@dptr,a
;	ProjetoFinal.c:595: INICIO_PROG_ALARM_S:
00184$:
;	ProjetoFinal.c:597: cleardisplay();
	push	ar2
	lcall	_cleardisplay
;	ProjetoFinal.c:598: printDisplay("SegAl(00-59): ");
	mov	dptr,#__str_11
	mov	b,#0x80
	lcall	_printDisplay
;	ProjetoFinal.c:599: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	_progAlarm_aux_1_1,a
;	ProjetoFinal.c:600: while ( (aux[0] < 0 || aux[0] > 9) && aux[0] != 0xF )
00187$:
	mov	a,_progAlarm_aux_1_1
	jb	acc.7,00186$
	clr	c
	mov	a,#(0x09 ^ 0x80)
	mov	b,_progAlarm_aux_1_1
	xrl	b,#0x80
	subb	a,b
	jnc	00189$
00186$:
	mov	a,#0x0F
	cjne	a,_progAlarm_aux_1_1,00330$
	sjmp	00189$
00330$:
;	ProjetoFinal.c:601: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	_progAlarm_aux_1_1,a
	sjmp	00187$
00189$:
;	ProjetoFinal.c:602: if (aux[0] == 0xF)
	mov	a,#0x0F
	cjne	a,_progAlarm_aux_1_1,00331$
	sjmp	00184$
00331$:
;	ProjetoFinal.c:605: displaydata(aux[0] + 0x30);
	mov	a,_progAlarm_aux_1_1
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	push	ar2
	lcall	_displaydata
;	ProjetoFinal.c:606: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	(_progAlarm_aux_1_1 + 0x0001),a
;	ProjetoFinal.c:607: while ( (aux[1] < 0 || aux[1] > 9) && aux[1] != 0xF )
00194$:
	mov	a,(_progAlarm_aux_1_1 + 0x0001)
	jb	acc.7,00193$
	clr	c
	mov	a,#(0x09 ^ 0x80)
	mov	b,(_progAlarm_aux_1_1 + 0x0001)
	xrl	b,#0x80
	subb	a,b
	jnc	00196$
00193$:
	mov	a,#0x0F
	cjne	a,(_progAlarm_aux_1_1 + 0x0001),00334$
	sjmp	00196$
00334$:
;	ProjetoFinal.c:608: aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	a,dpl
	pop	ar2
	mov	(_progAlarm_aux_1_1 + 0x0001),a
	sjmp	00194$
00196$:
;	ProjetoFinal.c:609: if (aux[1] == 0xF)
	mov	a,#0x0F
	cjne	a,(_progAlarm_aux_1_1 + 0x0001),00335$
	ljmp	00184$
00335$:
;	ProjetoFinal.c:612: displaydata(aux[1] + 0x30);
	mov	r4,(_progAlarm_aux_1_1 + 0x0001)
	mov	a,(_progAlarm_aux_1_1 + 0x0001)
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,#0x30
	add	a,r4
	mov	dpl,a
	clr	a
	addc	a,r5
	mov	dph,a
	push	ar2
	lcall	_displaydata
;	ProjetoFinal.c:613: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	r3,dpl
	pop	ar2
;	ProjetoFinal.c:614: while (tecla != 0xE && tecla != 0xF)
00200$:
	cjne	r3,#0x0E,00336$
	sjmp	00202$
00336$:
	cjne	r3,#0x0F,00337$
	sjmp	00202$
00337$:
;	ProjetoFinal.c:615: tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	push	ar2
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	r3,dpl
	pop	ar2
	sjmp	00200$
00202$:
;	ProjetoFinal.c:616: if (tecla == 0xF)
	cjne	r3,#0x0F,00338$
	ljmp	00184$
00338$:
;	ProjetoFinal.c:618: if (tecla == 0xE)
	cjne	r3,#0x0E,00206$
;	ProjetoFinal.c:619: secAlarm = aux[0]*16 + aux[1];
	mov	a,_progAlarm_aux_1_1
	swap	a
	anl	a,#0xf0
	mov	r3,a
	mov	dptr,#_secAlarm
	mov	a,(_progAlarm_aux_1_1 + 0x0001)
	add	a,r3
	movx	@dptr,a
00206$:
;	ProjetoFinal.c:621: cleardisplay();
	push	ar2
	lcall	_cleardisplay
;	ProjetoFinal.c:622: printDisplay("Ativar alarme?");
	mov	dptr,#__str_12
	mov	b,#0x80
	lcall	_printDisplay
;	ProjetoFinal.c:623: line(2);
	mov	dptr,#0x0002
	lcall	_line
;	ProjetoFinal.c:624: printDisplay("0=Sim/1=Não");
	mov	dptr,#__str_13
	mov	b,#0x80
	lcall	_printDisplay
;	ProjetoFinal.c:625: aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	lcall	_NovaTeclaKeyDown
	lcall	_Key_ASCII2BIN
	mov	r3,dpl
	pop	ar2
	mov	_progAlarm_aux_1_1,r3
;	ProjetoFinal.c:627: if (aux[0] == 0x01)
	cjne	r3,#0x01,00208$
;	ProjetoFinal.c:628: regB &= 0xDF;
	mov	dptr,#_regB
	movx	a,@dptr
	mov	r3,a
	anl	a,#0xDF
	movx	@dptr,a
	sjmp	00209$
00208$:
;	ProjetoFinal.c:629: else regB |= 0x20;
	mov	dptr,#_regB
	movx	a,@dptr
	mov	r3,a
	orl	a,#0x20
	movx	@dptr,a
00209$:
;	ProjetoFinal.c:631: regB &= 0x7F;
	mov	dptr,#_regB
	movx	a,@dptr
	anl	a,#0x7F
	movx	@dptr,a
;	ProjetoFinal.c:632: IE = auxIE;
	mov	_IE,r2
;	ProjetoFinal.c:633: cleardisplay();
	lcall	_cleardisplay
;	ProjetoFinal.c:634: printDisplay("Pronto");
	mov	dptr,#__str_14
	mov	b,#0x80
	ljmp	_printDisplay
;------------------------------------------------------------
;Allocation info for local variables in function 'mostraDisplay'
;------------------------------------------------------------
;------------------------------------------------------------
;	ProjetoFinal.c:640: void mostraDisplay(){
;	-----------------------------------------
;	 function mostraDisplay
;	-----------------------------------------
_mostraDisplay:
;	ProjetoFinal.c:641: cleardisplay();
	lcall	_cleardisplay
;	ProjetoFinal.c:642: line(1);
	mov	dptr,#0x0001
	lcall	_line
;	ProjetoFinal.c:643: printDisplay(BCDtoStr(dateOfMounth));
	mov	dptr,#_dateOfMounth
	movx	a,@dptr
	mov	dpl,a
	lcall	_BCDtoStr
	lcall	_printDisplay
;	ProjetoFinal.c:644: printDisplay("/");
	mov	dptr,#__str_15
	mov	b,#0x80
	lcall	_printDisplay
;	ProjetoFinal.c:645: printDisplay(BCDtoStr(mounth));
	mov	dptr,#_mounth
	movx	a,@dptr
	mov	dpl,a
	lcall	_BCDtoStr
	lcall	_printDisplay
;	ProjetoFinal.c:646: printDisplay("/");
	mov	dptr,#__str_15
	mov	b,#0x80
	lcall	_printDisplay
;	ProjetoFinal.c:647: printDisplay(BCDtoStr(year));
	mov	dptr,#_year
	movx	a,@dptr
	mov	dpl,a
	lcall	_BCDtoStr
	lcall	_printDisplay
;	ProjetoFinal.c:648: printDisplay(" ");
	mov	dptr,#__str_16
	mov	b,#0x80
	lcall	_printDisplay
;	ProjetoFinal.c:650: switch (dayOfWeek){
	mov	dptr,#_dayOfWeek
	movx	a,@dptr
	mov	r2,a
	mov	a,#0x07
	cjne	a,ar2,00112$
00112$:
	jnc	00113$
	ljmp	00108$
00113$:
	mov	a,r2
	add	a,r2
	add	a,r2
	mov	dptr,#00114$
	jmp	@a+dptr
00114$:
	ljmp	00108$
	ljmp	00101$
	ljmp	00102$
	ljmp	00103$
	ljmp	00104$
	ljmp	00105$
	ljmp	00106$
	ljmp	00107$
;	ProjetoFinal.c:651: case 1:
00101$:
;	ProjetoFinal.c:652: printDisplay("DOM");
	mov	dptr,#__str_17
	mov	b,#0x80
	lcall	_printDisplay
;	ProjetoFinal.c:653: break;
;	ProjetoFinal.c:654: case 2:
	sjmp	00108$
00102$:
;	ProjetoFinal.c:655: printDisplay("SEG");
	mov	dptr,#__str_18
	mov	b,#0x80
	lcall	_printDisplay
;	ProjetoFinal.c:656: break;
;	ProjetoFinal.c:657: case 3:
	sjmp	00108$
00103$:
;	ProjetoFinal.c:658: printDisplay("TER");
	mov	dptr,#__str_19
	mov	b,#0x80
	lcall	_printDisplay
;	ProjetoFinal.c:659: break;
;	ProjetoFinal.c:660: case 4:
	sjmp	00108$
00104$:
;	ProjetoFinal.c:661: printDisplay("QUA");
	mov	dptr,#__str_20
	mov	b,#0x80
	lcall	_printDisplay
;	ProjetoFinal.c:662: break;
;	ProjetoFinal.c:663: case 5:
	sjmp	00108$
00105$:
;	ProjetoFinal.c:664: printDisplay("QUI");
	mov	dptr,#__str_21
	mov	b,#0x80
	lcall	_printDisplay
;	ProjetoFinal.c:665: break;
;	ProjetoFinal.c:666: case 6:
	sjmp	00108$
00106$:
;	ProjetoFinal.c:667: printDisplay("SEX");
	mov	dptr,#__str_22
	mov	b,#0x80
	lcall	_printDisplay
;	ProjetoFinal.c:668: break;
;	ProjetoFinal.c:669: case 7:
	sjmp	00108$
00107$:
;	ProjetoFinal.c:670: printDisplay("SAB");
	mov	dptr,#__str_23
	mov	b,#0x80
	lcall	_printDisplay
;	ProjetoFinal.c:672: }
00108$:
;	ProjetoFinal.c:674: line(2);
	mov	dptr,#0x0002
	lcall	_line
;	ProjetoFinal.c:676: printDisplay(BCDtoStr(hours));
	mov	dptr,#_hours
	movx	a,@dptr
	mov	dpl,a
	lcall	_BCDtoStr
	lcall	_printDisplay
;	ProjetoFinal.c:677: printDisplay(":");
	mov	dptr,#__str_24
	mov	b,#0x80
	lcall	_printDisplay
;	ProjetoFinal.c:678: printDisplay(BCDtoStr(minutes));
	mov	dptr,#_minutes
	movx	a,@dptr
	mov	dpl,a
	lcall	_BCDtoStr
	lcall	_printDisplay
;	ProjetoFinal.c:679: printDisplay(":");
	mov	dptr,#__str_24
	mov	b,#0x80
	lcall	_printDisplay
;	ProjetoFinal.c:680: printDisplay(BCDtoStr(seconds));
	mov	dptr,#_seconds
	movx	a,@dptr
	mov	dpl,a
	lcall	_BCDtoStr
	lcall	_printDisplay
;	ProjetoFinal.c:681: printDisplay(" ");
	mov	dptr,#__str_16
	mov	b,#0x80
	ljmp	_printDisplay
;------------------------------------------------------------
;Allocation info for local variables in function 'adc_read'
;------------------------------------------------------------
;------------------------------------------------------------
;	ProjetoFinal.c:685: unsigned int adc_read()
;	-----------------------------------------
;	 function adc_read
;	-----------------------------------------
_adc_read:
;	ProjetoFinal.c:687: return adc_data;
	mov	dptr,#_adc_data
	movx	a,@dptr
	mov	r2,a
	mov	r3,#0x00
	mov	dpl,r2
	mov	dph,r3
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_temperature'
;------------------------------------------------------------
;adc                       Allocated to registers r2 r3 
;result                    Allocated to registers 
;------------------------------------------------------------
;	ProjetoFinal.c:690: unsigned int get_temperature()
;	-----------------------------------------
;	 function get_temperature
;	-----------------------------------------
_get_temperature:
;	ProjetoFinal.c:692: unsigned int adc = adc_read();
	lcall	_adc_read
;	ProjetoFinal.c:693: unsigned int result = adc*2;
	mov	a,dph
	xch	a,dpl
	add	a,acc
	xch	a,dpl
	rlc	a
	mov	dph,a
;	ProjetoFinal.c:694: return result;
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'imprimeTemp'
;------------------------------------------------------------
;buffer                    Allocated with name '_imprimeTemp_buffer_1_1'
;temp                      Allocated to registers r2 r3 
;------------------------------------------------------------
;	ProjetoFinal.c:698: void imprimeTemp()
;	-----------------------------------------
;	 function imprimeTemp
;	-----------------------------------------
_imprimeTemp:
;	ProjetoFinal.c:701: unsigned int temp = get_temperature();
	lcall	_get_temperature
	mov	r2,dpl
	mov	r3,dph
;	ProjetoFinal.c:702: if (temp < 230) liga_aquecedor();
	clr	c
	mov	a,r2
	subb	a,#0xE6
	mov	a,r3
	subb	a,#0x00
	jnc	00104$
	push	ar2
	push	ar3
	lcall	_liga_aquecedor
	pop	ar3
	pop	ar2
	sjmp	00105$
00104$:
;	ProjetoFinal.c:703: else if (temp > 260) desliga_aquecedor();
	clr	c
	mov	a,#0x04
	subb	a,r2
	mov	a,#0x01
	subb	a,r3
	jnc	00105$
	push	ar2
	push	ar3
	lcall	_desliga_aquecedor
	pop	ar3
	pop	ar2
00105$:
;	ProjetoFinal.c:704: buffer[0] = temp/100 + 0x30;
	mov	__divuint_PARM_2,#0x64
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r2
	mov	dph,r3
	push	ar2
	push	ar3
	lcall	__divuint
	mov	r4,dpl
	pop	ar3
	pop	ar2
	mov	a,#0x30
	add	a,r4
	mov	_imprimeTemp_buffer_1_1,a
;	ProjetoFinal.c:705: buffer[1] = (temp/10)%10 + 0x30;
	mov	__divuint_PARM_2,#0x0A
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,r2
	mov	dph,r3
	lcall	__divuint
	mov	__moduint_PARM_2,#0x0A
	mov	(__moduint_PARM_2 + 1),#0x00
	lcall	__moduint
	mov	r2,dpl
	mov	a,#0x30
	add	a,r2
	mov	(_imprimeTemp_buffer_1_1 + 0x0001),a
;	ProjetoFinal.c:706: buffer[2] = 'o';
	mov	(_imprimeTemp_buffer_1_1 + 0x0002),#0x6F
;	ProjetoFinal.c:707: buffer[3] = 'C';
	mov	(_imprimeTemp_buffer_1_1 + 0x0003),#0x43
;	ProjetoFinal.c:708: printDisplay(buffer);
	mov	dptr,#_imprimeTemp_buffer_1_1
	mov	b,#0x40
	lcall	_printDisplay
;	ProjetoFinal.c:709: adc_data = 0x00;
	mov	dptr,#_adc_data
	clr	a
	movx	@dptr,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'mostratemperatura'
;------------------------------------------------------------
;------------------------------------------------------------
;	ProjetoFinal.c:712: void mostratemperatura(void){
;	-----------------------------------------
;	 function mostratemperatura
;	-----------------------------------------
_mostratemperatura:
;	ProjetoFinal.c:713: imprimeTemp();
	ljmp	_imprimeTemp
;------------------------------------------------------------
;Allocation info for local variables in function 'int_EX0'
;------------------------------------------------------------
;AUX                       Allocated to registers r2 
;temp                      Allocated to registers r3 r4 
;------------------------------------------------------------
;	ProjetoFinal.c:720: void int_EX0 (void) __interrupt 0 __using 2
;	-----------------------------------------
;	 function int_EX0
;	-----------------------------------------
_int_EX0:
	ar2 = 0x12
	ar3 = 0x13
	ar4 = 0x14
	ar5 = 0x15
	ar6 = 0x16
	ar7 = 0x17
	ar0 = 0x10
	ar1 = 0x11
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+2)
	push	(0+3)
	push	(0+4)
	push	(0+5)
	push	(0+6)
	push	(0+7)
	push	(0+0)
	push	(0+1)
	push	psw
	mov	psw,#0x10
;	ProjetoFinal.c:724: AUX = regC; /* Retira caractere recebido do bufer */
	mov	dptr,#_regC
	movx	a,@dptr
	mov	r2,a
;	ProjetoFinal.c:725: if ((AUX & 0x20) == 0x20) /*verifica se é interrupção de alarme*/
	mov	a,#0x20
	anl	a,r2
	mov	r3,a
	cjne	r3,#0x20,00199$
	sjmp	00200$
00199$:
	ljmp	00158$
00200$:
;	ProjetoFinal.c:727: temp = get_temperature();
	push	ar2
	mov	psw,#0x00
	lcall	_get_temperature
	mov	psw,#0x10
	mov	r3,dpl
	mov	r4,dph
	pop	ar2
;	ProjetoFinal.c:728: adc_data = 0x00;
	mov	dptr,#_adc_data
	clr	a
	movx	@dptr,a
;	ProjetoFinal.c:729: if ((temp < 230 || temp > 260) && indicador == 0)
	clr	c
	mov	a,r3
	subb	a,#0xE6
	mov	a,r4
	subb	a,#0x00
	jc	00156$
	mov	a,#0x04
	subb	a,r3
	mov	a,#0x01
	subb	a,r4
	jc	00202$
	ljmp	00153$
00202$:
00156$:
	mov	a,_indicador
	orl	a,(_indicador + 1)
	jz	00203$
	ljmp	00153$
00203$:
;	ProjetoFinal.c:731: if (minAlarm % 0x10 == 9 && minAlarm != 0x59)
	mov	dptr,#_minAlarm
	movx	a,@dptr
	mov	r3,a
	anl	ar3,#0x0F
	cjne	r3,#0x09,00111$
	mov	dptr,#_minAlarm
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x59,00206$
	sjmp	00111$
00206$:
;	ProjetoFinal.c:733: minAlarm &= 0xF0;
	mov	dptr,#_minAlarm
	movx	a,@dptr
	anl	a,#0xF0
	movx	@dptr,a
;	ProjetoFinal.c:734: minAlarm += 0x10;
	mov	dptr,#_minAlarm
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_minAlarm
	mov	a,#0x10
	add	a,r3
	movx	@dptr,a
	ljmp	00154$
00111$:
;	ProjetoFinal.c:736: else if (minAlarm == 0x59)
	mov	dptr,#_minAlarm
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x59,00108$
;	ProjetoFinal.c:738: minAlarm = 0x00;
	mov	dptr,#_minAlarm
	clr	a
	movx	@dptr,a
;	ProjetoFinal.c:739: if (hoursAlarm % 0x10 == 9)
	mov	dptr,#_hoursAlarm
	movx	a,@dptr
	mov	r3,a
	anl	ar3,#0x0F
	cjne	r3,#0x09,00105$
;	ProjetoFinal.c:741: hoursAlarm &= 0xF0;
	mov	dptr,#_hoursAlarm
	movx	a,@dptr
	anl	a,#0xF0
	movx	@dptr,a
;	ProjetoFinal.c:742: hoursAlarm += 0x10;
	mov	dptr,#_hoursAlarm
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_hoursAlarm
	mov	a,#0x10
	add	a,r3
	movx	@dptr,a
	ljmp	00154$
00105$:
;	ProjetoFinal.c:744: else if (hoursAlarm == 0x23) hoursAlarm = 0x00;
	mov	dptr,#_hoursAlarm
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x23,00102$
	mov	dptr,#_hoursAlarm
	clr	a
	movx	@dptr,a
	ljmp	00154$
00102$:
;	ProjetoFinal.c:745: else hoursAlarm += 0x01;
	mov	dptr,#_hoursAlarm
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_hoursAlarm
	inc	a
	movx	@dptr,a
	ljmp	00154$
00108$:
;	ProjetoFinal.c:747: else minAlarm += 0x01;
	mov	dptr,#_minAlarm
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_minAlarm
	inc	a
	movx	@dptr,a
	ljmp	00154$
00153$:
;	ProjetoFinal.c:749: else if (indicador == 0)
	mov	a,_indicador
	orl	a,(_indicador + 1)
	jz	00213$
	ljmp	00150$
00213$:
;	ProjetoFinal.c:751: indicador = 1;
	mov	_indicador,#0x01
	mov	(_indicador + 1),#0x00
;	ProjetoFinal.c:752: liga_motor();
	push	ar2
	mov	psw,#0x00
	lcall	_liga_motor
	mov	psw,#0x10
;	ProjetoFinal.c:753: qtd_quociente = qtd_real % 900;
	mov	__moduint_PARM_2,#0x84
	mov	(__moduint_PARM_2 + 1),#0x03
	mov	dpl,_qtd_real
	mov	dph,(_qtd_real + 1)
	mov	psw,#0x00
	lcall	__moduint
	mov	psw,#0x10
	mov	_qtd_quociente,dpl
	mov	(_qtd_quociente + 1),dph
;	ProjetoFinal.c:754: qtd_real /= 900;
	mov	__divuint_PARM_2,#0x84
	mov	(__divuint_PARM_2 + 1),#0x03
	mov	dpl,_qtd_real
	mov	dph,(_qtd_real + 1)
	mov	psw,#0x00
	lcall	__divuint
	mov	psw,#0x10
	mov	_qtd_real,dpl
	mov	(_qtd_real + 1),dph
	pop	ar2
;	ProjetoFinal.c:755: for (i=0;i<qtd_real;i++)
	clr	a
	mov	_i,a
	mov	(_i + 1),a
00161$:
	clr	c
	mov	a,_i
	subb	a,_qtd_real
	mov	a,(_i + 1)
	subb	a,(_qtd_real + 1)
	jc	00214$
	ljmp	00164$
00214$:
;	ProjetoFinal.c:757: if (minAlarm % 0x10 == 9 && minAlarm != 0x59)
	mov	dptr,#_minAlarm
	movx	a,@dptr
	mov	r3,a
	anl	ar3,#0x0F
	cjne	r3,#0x09,00124$
	mov	dptr,#_minAlarm
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x59,00217$
	sjmp	00124$
00217$:
;	ProjetoFinal.c:759: minAlarm &= 0xF0;
	mov	dptr,#_minAlarm
	movx	a,@dptr
	anl	a,#0xF0
	movx	@dptr,a
;	ProjetoFinal.c:760: minAlarm += 0x10;
	mov	dptr,#_minAlarm
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_minAlarm
	mov	a,#0x10
	add	a,r3
	movx	@dptr,a
	sjmp	00163$
00124$:
;	ProjetoFinal.c:762: else if (minAlarm == 0x59)
	mov	dptr,#_minAlarm
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x59,00121$
;	ProjetoFinal.c:764: minAlarm = 0x00;
	mov	dptr,#_minAlarm
	clr	a
	movx	@dptr,a
;	ProjetoFinal.c:765: if (hoursAlarm % 0x10 == 9)
	mov	dptr,#_hoursAlarm
	movx	a,@dptr
	mov	r3,a
	anl	ar3,#0x0F
	cjne	r3,#0x09,00118$
;	ProjetoFinal.c:767: hoursAlarm &= 0xF0;
	mov	dptr,#_hoursAlarm
	movx	a,@dptr
	anl	a,#0xF0
	movx	@dptr,a
;	ProjetoFinal.c:768: hoursAlarm += 0x10;
	mov	dptr,#_hoursAlarm
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_hoursAlarm
	mov	a,#0x10
	add	a,r3
	movx	@dptr,a
	sjmp	00163$
00118$:
;	ProjetoFinal.c:770: else if (hoursAlarm == 0x23) hoursAlarm = 0x00;
	mov	dptr,#_hoursAlarm
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x23,00115$
	mov	dptr,#_hoursAlarm
	clr	a
	movx	@dptr,a
	sjmp	00163$
00115$:
;	ProjetoFinal.c:771: else hoursAlarm += 0x01;
	mov	dptr,#_hoursAlarm
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_hoursAlarm
	inc	a
	movx	@dptr,a
	sjmp	00163$
00121$:
;	ProjetoFinal.c:773: else minAlarm += 0x01;
	mov	dptr,#_minAlarm
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_minAlarm
	inc	a
	movx	@dptr,a
00163$:
;	ProjetoFinal.c:755: for (i=0;i<qtd_real;i++)
	inc	_i
	clr	a
	cjne	a,_i,00224$
	inc	(_i + 1)
00224$:
	ljmp	00161$
00164$:
;	ProjetoFinal.c:776: qtd_quociente /= 15;
	mov	__divuint_PARM_2,#0x0F
	mov	(__divuint_PARM_2 + 1),#0x00
	mov	dpl,_qtd_quociente
	mov	dph,(_qtd_quociente + 1)
	push	ar2
	mov	psw,#0x00
	lcall	__divuint
	mov	psw,#0x10
	mov	_qtd_quociente,dpl
	mov	(_qtd_quociente + 1),dph
	pop	ar2
;	ProjetoFinal.c:777: for (i=0;i<qtd_quociente;i++)
	clr	a
	mov	_i,a
	mov	(_i + 1),a
00165$:
	clr	c
	mov	a,_i
	subb	a,_qtd_quociente
	mov	a,(_i + 1)
	subb	a,(_qtd_quociente + 1)
	jc	00225$
	ljmp	00168$
00225$:
;	ProjetoFinal.c:779: if (secAlarm % 0x10 == 9 && secAlarm != 0x59)
	mov	dptr,#_secAlarm
	movx	a,@dptr
	mov	r3,a
	anl	ar3,#0x0F
	cjne	r3,#0x09,00144$
	mov	dptr,#_secAlarm
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x59,00228$
	sjmp	00144$
00228$:
;	ProjetoFinal.c:781: secAlarm &= 0xF0;
	mov	dptr,#_secAlarm
	movx	a,@dptr
	anl	a,#0xF0
	movx	@dptr,a
;	ProjetoFinal.c:782: secAlarm += 0x10;
	mov	dptr,#_secAlarm
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_secAlarm
	mov	a,#0x10
	add	a,r3
	movx	@dptr,a
	ljmp	00167$
00144$:
;	ProjetoFinal.c:784: else if (secAlarm == 0x59)
	mov	dptr,#_secAlarm
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x59,00229$
	sjmp	00230$
00229$:
	ljmp	00141$
00230$:
;	ProjetoFinal.c:786: secAlarm == 0x00;
	mov	dptr,#_secAlarm
	movx	a,@dptr
;	ProjetoFinal.c:788: if (minAlarm % 0x10 == 9 && minAlarm != 0x59)
	mov	dptr,#_minAlarm
	movx	a,@dptr
	mov	r3,a
	anl	ar3,#0x0F
	cjne	r3,#0x09,00137$
	mov	dptr,#_minAlarm
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x59,00233$
	sjmp	00137$
00233$:
;	ProjetoFinal.c:790: minAlarm &= 0xF0;
	mov	dptr,#_minAlarm
	movx	a,@dptr
	anl	a,#0xF0
	movx	@dptr,a
;	ProjetoFinal.c:791: minAlarm += 0x10;
	mov	dptr,#_minAlarm
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_minAlarm
	mov	a,#0x10
	add	a,r3
	movx	@dptr,a
	sjmp	00167$
00137$:
;	ProjetoFinal.c:793: else if (minAlarm == 0x59)
	mov	dptr,#_minAlarm
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x59,00134$
;	ProjetoFinal.c:795: minAlarm = 0x00;
	mov	dptr,#_minAlarm
	clr	a
	movx	@dptr,a
;	ProjetoFinal.c:796: if (hoursAlarm % 0x10 == 9)
	mov	dptr,#_hoursAlarm
	movx	a,@dptr
	mov	r3,a
	anl	ar3,#0x0F
	cjne	r3,#0x09,00131$
;	ProjetoFinal.c:798: hoursAlarm &= 0xF0;
	mov	dptr,#_hoursAlarm
	movx	a,@dptr
	anl	a,#0xF0
	movx	@dptr,a
;	ProjetoFinal.c:799: hoursAlarm += 0x10;
	mov	dptr,#_hoursAlarm
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_hoursAlarm
	mov	a,#0x10
	add	a,r3
	movx	@dptr,a
	sjmp	00167$
00131$:
;	ProjetoFinal.c:801: else if (hoursAlarm == 0x23) hoursAlarm = 0x00;
	mov	dptr,#_hoursAlarm
	movx	a,@dptr
	mov	r3,a
	cjne	r3,#0x23,00128$
	mov	dptr,#_hoursAlarm
	clr	a
	movx	@dptr,a
	sjmp	00167$
00128$:
;	ProjetoFinal.c:802: else hoursAlarm += 0x01;
	mov	dptr,#_hoursAlarm
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_hoursAlarm
	inc	a
	movx	@dptr,a
	sjmp	00167$
00134$:
;	ProjetoFinal.c:804: else minAlarm += 0x01;
	mov	dptr,#_minAlarm
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_minAlarm
	inc	a
	movx	@dptr,a
	sjmp	00167$
00141$:
;	ProjetoFinal.c:806: else secAlarm+= 0x01;
	mov	dptr,#_secAlarm
	movx	a,@dptr
	mov	r3,a
	mov	dptr,#_secAlarm
	inc	a
	movx	@dptr,a
00167$:
;	ProjetoFinal.c:777: for (i=0;i<qtd_quociente;i++)
	inc	_i
	clr	a
	cjne	a,_i,00240$
	inc	(_i + 1)
00240$:
	ljmp	00165$
00168$:
;	ProjetoFinal.c:808: indicador1++;
	inc	_indicador1
	clr	a
	cjne	a,_indicador1,00154$
	inc	(_indicador1 + 1)
	sjmp	00154$
00150$:
;	ProjetoFinal.c:811: else if (indicador1 == 1)
	mov	a,#0x01
	cjne	a,_indicador1,00242$
	clr	a
	cjne	a,(_indicador1 + 1),00242$
	sjmp	00243$
00242$:
	sjmp	00154$
00243$:
;	ProjetoFinal.c:813: desliga_motor();
	push	ar2
	mov	psw,#0x00
	lcall	_desliga_motor
	mov	psw,#0x10
	pop	ar2
;	ProjetoFinal.c:814: indicador = 0;
;	ProjetoFinal.c:815: indicador1 = 0;
	clr	a
	mov	_indicador,a
	mov	(_indicador + 1),a
	mov	_indicador1,a
	mov	(_indicador1 + 1),a
00154$:
;	ProjetoFinal.c:817: printDisplay("ALARME!");
	mov	dptr,#__str_25
	mov	b,#0x80
	push	ar2
	mov	psw,#0x00
	lcall	_printDisplay
	mov	psw,#0x10
	pop	ar2
00158$:
;	ProjetoFinal.c:819: if ((AUX & 0x10) == 0x10) /*verifica se é interrupção de atualização*/
	anl	ar2,#0x10
	cjne	r2,#0x10,00169$
;	ProjetoFinal.c:821: mostraDisplay();
	mov	psw,#0x00
	lcall	_mostraDisplay
;	ProjetoFinal.c:822: mostratemperatura();
	mov	psw,#0x00
	lcall	_mostratemperatura
	mov	psw,#0x10
00169$:
	pop	psw
	pop	(0+1)
	pop	(0+0)
	pop	(0+7)
	pop	(0+6)
	pop	(0+5)
	pop	(0+4)
	pop	(0+3)
	pop	(0+2)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;tecla                     Allocated to registers r2 
;------------------------------------------------------------
;	ProjetoFinal.c:828: void main(void){
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	ProjetoFinal.c:830: progrdisplay(); /* programa display */
	lcall	_progrdisplay
;	ProjetoFinal.c:831: line(1);
	mov	dptr,#0x0001
	lcall	_line
;	ProjetoFinal.c:832: cleardisplay();
	lcall	_cleardisplay
;	ProjetoFinal.c:833: IE = 0x81;
	mov	_IE,#0x81
;	ProjetoFinal.c:835: adc_data = 0x00;
	mov	dptr,#_adc_data
	clr	a
	movx	@dptr,a
;	ProjetoFinal.c:836: initTempoReal();
	lcall	_initTempoReal
;	ProjetoFinal.c:838: T0 = 1;
	setb	_T0
;	ProjetoFinal.c:839: T1 = 1;
	setb	_T1
;	ProjetoFinal.c:843: while (1) {
00116$:
;	ProjetoFinal.c:844: cleardisplay();
	lcall	_cleardisplay
;	ProjetoFinal.c:845: printDisplay("Escolha:");
	mov	dptr,#__str_26
	mov	b,#0x80
	lcall	_printDisplay
;	ProjetoFinal.c:846: tecla = NovaTeclaKeyDown();
	lcall	_NovaTeclaKeyDown
	mov	r2,dpl
;	ProjetoFinal.c:847: if (tecla == '0') prog();
	cjne	r2,#0x30,00102$
	push	ar2
	lcall	_prog
	pop	ar2
00102$:
;	ProjetoFinal.c:848: if (tecla == '1') progAlarm();
	cjne	r2,#0x31,00104$
	push	ar2
	lcall	_progAlarm
	pop	ar2
00104$:
;	ProjetoFinal.c:849: if (tecla == '2') liga_motor();
	cjne	r2,#0x32,00106$
	push	ar2
	lcall	_liga_motor
	pop	ar2
00106$:
;	ProjetoFinal.c:850: if (tecla == '3') desliga_motor();
	cjne	r2,#0x33,00108$
	push	ar2
	lcall	_desliga_motor
	pop	ar2
00108$:
;	ProjetoFinal.c:851: if (tecla == '4') liga_aquecedor();
	cjne	r2,#0x34,00110$
	push	ar2
	lcall	_liga_aquecedor
	pop	ar2
00110$:
;	ProjetoFinal.c:852: if (tecla == '5') desliga_aquecedor();
	cjne	r2,#0x35,00112$
	push	ar2
	lcall	_desliga_aquecedor
	pop	ar2
00112$:
;	ProjetoFinal.c:853: if (tecla == '7') mostraDisplay();
	cjne	r2,#0x37,00116$
	lcall	_mostraDisplay
	sjmp	00116$
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.ascii "Ano(00-99): "
	.db 0x00
__str_1:
	.ascii "Mes(00-12): "
	.db 0x00
__str_2:
	.ascii "Dia(00-31): "
	.db 0x00
__str_3:
	.ascii "DiaSem(01-07):"
	.db 0x00
__str_4:
	.ascii "Hora(00-23): "
	.db 0x00
__str_5:
	.ascii "Min(00-59): "
	.db 0x00
__str_6:
	.ascii "Seg(00-59): "
	.db 0x00
__str_7:
	.ascii "Quantos ml?"
	.db 0x00
__str_8:
	.ascii "(0000-9999):"
	.db 0x00
__str_9:
	.ascii "HoraAl(00-23):"
	.db 0x00
__str_10:
	.ascii "MinAl(00-59): "
	.db 0x00
__str_11:
	.ascii "SegAl(00-59): "
	.db 0x00
__str_12:
	.ascii "Ativar alarme?"
	.db 0x00
__str_13:
	.ascii "0=Sim/1=N"
	.db 0xE3
	.ascii "o"
	.db 0x00
__str_14:
	.ascii "Pronto"
	.db 0x00
__str_15:
	.ascii "/"
	.db 0x00
__str_16:
	.ascii " "
	.db 0x00
__str_17:
	.ascii "DOM"
	.db 0x00
__str_18:
	.ascii "SEG"
	.db 0x00
__str_19:
	.ascii "TER"
	.db 0x00
__str_20:
	.ascii "QUA"
	.db 0x00
__str_21:
	.ascii "QUI"
	.db 0x00
__str_22:
	.ascii "SEX"
	.db 0x00
__str_23:
	.ascii "SAB"
	.db 0x00
__str_24:
	.ascii ":"
	.db 0x00
__str_25:
	.ascii "ALARME!"
	.db 0x00
__str_26:
	.ascii "Escolha:"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
