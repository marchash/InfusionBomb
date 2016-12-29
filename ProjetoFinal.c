#include<8051.h>

#define WCOMMAND 	0x2000 /* Posicao de escrita de comandos no display */
#define WDATA 		0x2010 /* Posicao de escrita de dados no display */
#define RSTATUS 	0x2020 /* Posicao de leitura de estado do display */
#define RDATA 		0x2030 /* Posicao de leitura de dados do display */

#define SECONDS 		0x2100
#define SECALARM 		0x2101
#define MINUTES 		0x2102
#define MINALARM 		0x2103
#define HOURS 			0x2104
#define HOURSALARM 		0x2105
#define DAYOFWEEK 		0x2106
#define DATEOFMOUNTH	0x2107
#define MONTH			0x2108
#define YEAR			0x2109
#define REGA			0x210A
#define REGB 			0x210B
#define REGC			0x210C
#define REGD			0x210D
#define USERRAM 		0x210E

#define ADC_DATA 0x2200

unsigned char __far __at @WDATA wdata;
unsigned char __far __at @RDATA rdata;
unsigned char __far __at @WCOMMAND wcommand;
unsigned char __far __at @RSTATUS rstatus;
unsigned char __far __at @SECONDS seconds;
unsigned char __far __at @SECALARM secAlarm;
unsigned char __far __at @MINUTES minutes;
unsigned char __far __at @MINALARM minAlarm;
unsigned char __far __at @HOURS hours;
unsigned char __far __at @HOURSALARM hoursAlarm;
unsigned char __far __at @DAYOFWEEK dayOfWeek;
unsigned char __far __at @DATEOFMOUNTH dateOfMounth;
unsigned char __far __at @MONTH mounth;
unsigned char __far __at @YEAR year;
unsigned char __far __at @REGA regA;
unsigned char __far __at @REGB regB;
unsigned char __far __at @REGC regC;
unsigned char __far __at @REGD regD;
unsigned char __far __at @USERRAM userRam[0x32];

unsigned char __far __at @0xFFF0 vetorInterrEX0[3] = {0x02, 0xA0, 0x03};

unsigned char alarme = 0;
char qtd[4];
unsigned int qtd_real, qtd_quociente;
unsigned int indicador = 0;
unsigned int i;
unsigned int indicador1 = 0;

void liga_motor (void)
{
T0 = 0;
}

void desliga_motor (void)
{
T0 = 1;
}

void liga_aquecedor (void)
{
T1 = 0;
}

void desliga_aquecedor (void)
{
T1 = 1;
}

unsigned char __far __at @0xFFF6 vet_adc_interrupt[] = {0x02, 0xA0, 0x13};
unsigned char __far __at @ADC_DATA adc_data;

unsigned char *BCDtoStr(unsigned char BCD){
	unsigned char aux[3];

	aux[0] = BCD / 0x10; // pega o primeiro digito
	aux[0] += 0x30;

	aux[1] = BCD & 0x0F; // pega o digito menos significativo
	aux[1] += 0x30;

	aux[2] = 0;

	return aux;
}

/*Funções do teclado*/

#define DEBOUNCE_REPEATS 3000 /* Número de leituras iguais que assegura o debounce*/

#define TECLA04 'F' /* Teclado do painel - tabela de códigos */
#define TECLA05 'E'
#define TECLA06 'D'
#define TECLA07 'C'
#define TECLA14 '3'
#define TECLA15 '2'
#define TECLA16 '1'
#define TECLA17 '0'
#define TECLA24 'B'
#define TECLA25 'A'
#define TECLA26 '9'
#define TECLA27 '8'
#define TECLA34 '7'
#define TECLA35 '6'
#define TECLA36 '5'
#define TECLA37 '4'

char TeclaPressionada(){
    P1=0xFF;
    P1_0=0;
    if(P1_4==0) return TECLA04;
    if(P1_5==0) return TECLA05;
    if(P1_6==0) return TECLA06;
    if(P1_7==0) return TECLA07;

    P1=0xFF;
    P1_1=0;
    if(P1_4==0) return TECLA14;
    if(P1_5==0) return TECLA15;
    if(P1_6==0) return TECLA16;
    if(P1_7==0) return TECLA17;

    P1=0xFF;
    P1_2=0;
    if(P1_4==0) return TECLA24;
    if(P1_5==0) return TECLA25;
    if(P1_6==0) return TECLA26;
    if(P1_7==0) return TECLA27;

    P1=0xFF;
    P1_3=0;
    if(P1_4==0) return TECLA34;
    if(P1_5==0) return TECLA35;
    if(P1_6==0) return TECLA36;
    if(P1_7==0) return TECLA37;

    return 0; /* Nada foi pressionado */
}

char NovaTeclaKeyDown(){
    char tmp, tmp2;
    int i;
    tmp = TeclaPressionada();
    /* Descobre a tecla pressionada */
    for(i=0;i<DEBOUNCE_REPEATS;i++){
        tmp2 = TeclaPressionada();
        if((tmp != tmp2) || (tmp2 == 0)){
            i = -1;      /* Recomeça a varredura, não passou no teste do debounce */
            tmp = tmp2;
        }
    }
    return tmp;
}

void EsperaSoltarTecla(){
    int i;
    /* Espera soltar a tecla */
    for(i=0;i<DEBOUNCE_REPEATS;i++)
        if(TeclaPressionada()!=0)
            i = -1;      /* Recomeça a varredura, não passou no teste do debounce */
}

char Key_ASCII2BIN(char tecla){
   if(tecla > '9')
      return tecla - 0x37;
   return tecla - 0x30;
}

/***************************************************
* Nome: delay
* Descrição: Rotina de espera de tempo
* Entradas: int tempo
* Saídas: nenhuma
* Variáveis: i, j, tempo
* Rotinas que chama: nenhuma
****************************************************/

void delay (int tempo) {
	int i,j;
	for (i=tempo;i>0;i--) {
		for (j=50;j>0;j--) {
		};
	};
}

/***************************************************
* Nome: displaycommand
* Descrição: Rotina que envia comandos ao display
* Entradas: int cmd (comando)
* Saídas: nenhuma
* Variáveis: wcommand
* Rotinas que chama: delay()
****************************************************/

void displaycommand (int cmd) {
	delay (2);
	wcommand = cmd;
}

/***************************************************
* Nome: displaydata
* Descrição: Rotina que envia um caractere ao display
* Entradas: int car (caractere)
* Saídas: nenhuma
* Variáveis: wdata
* Rotinas que chama: nenhuma
****************************************************/

void displaydata (int car){
/* Testa Busy Flag antes de escrever */
	__asm
	BUSY: MOV 	DPTR,#_rstatus
		MOVX 	A,@DPTR
		ANL	A,#0x80
		JNZ 	BUSY
	__endasm;
	wdata = car;
}

/**
* Rotina para imprimir um string ASCII no display. Fim de string 0x00 /
* Parâmetro: endereco inicial do conjunto de caracteres
*/
void printDisplay(unsigned char *str){
	unsigned char *aux = str;
	while ((*aux)!=0x00) {
		displaydata(*aux);
		aux++;
	}
}

/***************************************************
* Nome: progrdisplay
* Descrição: Rotina que programa o display
* Entradas: nenhuma
* Saídas: nenhuma
* Variáveis: nenhuma
* Rotinas que chama: displaycommand()
****************************************************/

void progrdisplay (void){
	displaycommand (0x38); /* 2 linhas 5x7 */
	displaycommand (0x0C); /* sem cursor */
	displaycommand (0x06); /* escreve deslocando para a direita */
}

/***************************************************
* Nome: displaydata
* Descrição: Rotina que limpa o display
* Entradas: nenhuma
* Saídas: nenhuma
* Variáveis: nenhuma
* Rotinas que chama: displaycommand()
****************************************************/

void cleardisplay (void) {
	displaycommand (0x01);
}

/***************************************************
* Nome: line
* Descrição: Rotina que seleciona a linha do
* display que será escrita
* Entradas: lin (numero da linha do display)
* Saídas: nenhuma
* Variáveis: lin
* Rotinas que chama: displaycommand()
****************************************************/

void line (int lin) { /* seleciona a linha do display */
	displaycommand (0x80);
	if (lin==1) displaycommand (0x80);  /*desloca cursor 1a.lin e 1a.col */
		else displaycommand (0xC0);  /*desloca cursor 2a.lin e 1a.col */
}

/**
* inicializa o relógio de tempo real
*/
void initTempoReal ()
{
	/* programa o relógio com desabilita tempo real, seleciona BCD,
	*   habilita interrupção de update , e seleciona relógio de 24h
	*/
	regB = 0x92;
	regA = 0x20;
	regB &= 0x7F;
}


void prog()
{
    char auxIE, aux[2], tecla;
	auxIE = IE;
	IE &= 0xEF;
	regB |= 0x80;

    INICIO_PROG_ANO:

	cleardisplay();
	printDisplay("Ano(00-99): ");
	aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	while ( (aux[0] < 0 || aux[0] > 9) && aux[0] != 0xF )
        aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
    if (aux[0] == 0xF)
        goto INICIO_PROG_ANO;

	displaydata(aux[0]+0x30);
	aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	while ( (aux[1] < 0 || aux[1] > 9) && aux[1] != 0xF)
        aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
    if (aux[1] == 0xF)
        goto INICIO_PROG_ANO;

	displaydata(aux[1]+0x30);

	tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	while (tecla != 0xE && tecla != 0xF)
        tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	if (tecla == 0xF)
        goto INICIO_PROG_ANO;
	if (tecla == 0xE)
        year = aux[0]*16 + aux[1];

    INICIO_PROG_MES:

	cleardisplay();
	printDisplay("Mes(00-12): ");
	aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	while ( (aux[0] < 0 || aux[0] > 9) && aux[0] != 0xF )
        aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
    if (aux[0] == 0xF)
        goto INICIO_PROG_MES;

	displaydata(aux[0] + 0x30);
	aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	while ( (aux[1] < 0 || aux[1] > 9) && aux[1] != 0xF )
        aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
    if (aux[1] == 0xF)
        goto INICIO_PROG_MES;

	displaydata(aux[1] + 0x30);
	tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	while (tecla != 0xE && tecla != 0xF)
        tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	if (tecla == 0xF)
        goto INICIO_PROG_MES;
	if (tecla == 0xE)
        mounth = aux[0]*16 + aux[1];

    INICIO_PROG_DIA:

	cleardisplay();
	printDisplay("Dia(00-31): ");
	aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	while ( (aux[0] < 0 || aux[0] > 9) && aux[0] != 0xF )
        aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
    if (aux[0] == 0xF)
        goto INICIO_PROG_DIA;

	displaydata(aux[0] + 0x30);
	aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	while ( (aux[1] < 0 || aux[1] > 9) && aux[1] != 0xF )
        aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
    if (aux[1] == 0xF)
        goto INICIO_PROG_DIA;

	displaydata(aux[1] + 0x30);
	tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	while (tecla != 0xE && tecla != 0xF)
        tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	if (tecla == 0xF)
        goto INICIO_PROG_DIA;
	if (tecla == 0xE)
        dateOfMounth = aux[0]*16 + aux[1];

    INICIO_PROG_SEMANA:

	cleardisplay();
	printDisplay("DiaSem(01-07):");
	aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	while ( (aux[0] < 0 || aux[0] > 9) && aux[0] != 0xF )
        aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
    if (aux[0] == 0xF)
        goto INICIO_PROG_SEMANA;

	displaydata(aux[0] + 0x30);
	aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	while ( (aux[1] < 0 || aux[1] > 9) && aux[1] != 0xF )
        aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
    if (aux[1] == 0xF)
        goto INICIO_PROG_SEMANA;

	displaydata(aux[1] + 0x30);
	tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	while (tecla != 0xE && tecla != 0xF)
        tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	if (tecla == 0xF)
        goto INICIO_PROG_SEMANA;
	if (tecla == 0xE)
        dayOfWeek = aux[0]*16 + aux[1];

    INICIO_PROG_HORA:

	cleardisplay();
	printDisplay("Hora(00-23): ");
	aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	while ( (aux[0] < 0 || aux[0] > 9) && aux[0] != 0xF )
        aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
    if (aux[0] == 0xF)
        goto INICIO_PROG_HORA;

	displaydata(aux[0] + 0x30);
	aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	while ( (aux[1] < 0 || aux[1] > 9) && aux[1] != 0xF )
        aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
    if (aux[1] == 0xF)
        goto INICIO_PROG_HORA;

	displaydata(aux[1] + 0x30);
	tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	while (tecla != 0xE && tecla != 0xF)
        tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	if (tecla == 0xF)
        goto INICIO_PROG_HORA;
	if (tecla == 0xE)
        hours = aux[0]*16 + aux[1];

    INICIO_PROG_MIN:

	cleardisplay();
	printDisplay("Min(00-59): ");
	aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	while ( (aux[0] < 0 || aux[0] > 9) && aux[0] != 0xF )
        aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
    if (aux[0] == 0xF)
        goto INICIO_PROG_MIN;

	displaydata(aux[0] + 0x30);
	aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	while ( (aux[1] < 0 || aux[1] > 9) && aux[1] != 0xF )
        aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
    if (aux[1] == 0xF)
        goto INICIO_PROG_MIN;

	displaydata(aux[1] + 0x30);
	tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	while (tecla != 0xE && tecla != 0xF)
        tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	if (tecla == 0xF)
        goto INICIO_PROG_MIN;
	if (tecla == 0xE)
        minutes = aux[0]*16 + aux[1];

    INICIO_PROG_SEG:

	cleardisplay();
	printDisplay("Seg(00-59): ");
	aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	while ( (aux[0] < 0 || aux[0] > 9) && aux[0] != 0xF )
        aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
    if (aux[0] == 0xF)
        goto INICIO_PROG_SEG;

	displaydata(aux[0] + 0x30);
	aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	while ( (aux[1] < 0 || aux[1] > 9) && aux[1] != 0xF )
        aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
    if (aux[1] == 0xF)
        goto INICIO_PROG_SEG;

	displaydata(aux[1] + 0x30);
	tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	while (tecla != 0xE && tecla != 0xF)
        tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	if (tecla == 0xF)
        goto INICIO_PROG_SEG;
	if (tecla == 0xE)
        seconds = aux[0]*16 + aux[1];


	IE = auxIE;
	regB &= 0x7F;

}


/**
* rotina para a configurar o alarme do display
*/
void progAlarm(){
	char auxIE, aux[2], tecla;

	auxIE = IE;
	IE &= 0xEF;
	regB |= 0x80;

	INICIO_PROG_ALARM_QTD:

	cleardisplay();
	printDisplay("Quantos ml?");
	line(2);
	printDisplay("(0000-9999):");

	qtd[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	while ( (qtd[0] < 0 || qtd[0] > 9) && qtd[0] != 0xF )
        qtd[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
    if (qtd[0] == 0xF)
        goto INICIO_PROG_ALARM_QTD;
	displaydata(qtd[0] + 0x30);
	qtd[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	while ( (qtd[1] < 0 || qtd[1] > 9) && qtd[1] != 0xF )
        qtd[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
    if (qtd[1] == 0xF)
        goto INICIO_PROG_ALARM_QTD;
	displaydata(qtd[1] + 0x30);
	qtd[2] = Key_ASCII2BIN(NovaTeclaKeyDown());
	while ( (qtd[2] < 0 || qtd[2] > 9) && qtd[2] != 0xF )
        qtd[2] = Key_ASCII2BIN(NovaTeclaKeyDown());
    if (qtd[2] == 0xF)
        goto INICIO_PROG_ALARM_QTD;
	displaydata(qtd[2] + 0x30);
	qtd[3] = Key_ASCII2BIN(NovaTeclaKeyDown());
	while ( (qtd[3] < 0 || qtd[3] > 9) && qtd[3] != 0xF )
        qtd[3] = Key_ASCII2BIN(NovaTeclaKeyDown());
    if (qtd[3] == 0xF)
        goto INICIO_PROG_ALARM_QTD;
	displaydata(qtd[3] + 0x30);
	tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	while (tecla != 0xE && tecla != 0xF)
        tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	if (tecla == 0xF)
        goto INICIO_PROG_ALARM_QTD;
	if (tecla == 0xE)
		qtd_real = qtd[0]*1000 + qtd[1]*100+qtd[2]*10+qtd[3];


	INICIO_PROG_ALARM_H:

	cleardisplay();
	printDisplay("HoraAl(00-23):");
	aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	while ( (aux[0] < 0 || aux[0] > 9) && aux[0] != 0xF )
        aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
    if (aux[0] == 0xF)
        goto INICIO_PROG_ALARM_H;

	displaydata(aux[0] + 0x30);
	aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	while ( (aux[1] < 0 || aux[1] > 9) && aux[1] != 0xF )
        aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
    if (aux[1] == 0xF)
        goto INICIO_PROG_ALARM_H;

	displaydata(aux[1] + 0x30);
	tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	while (tecla != 0xE && tecla != 0xF)
        tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	if (tecla == 0xF)
        goto INICIO_PROG_ALARM_H;
	if (tecla == 0xE)
        hoursAlarm = aux[0]*16 + aux[1];


	INICIO_PROG_ALARM_M:

	cleardisplay();
	printDisplay("MinAl(00-59): ");
	aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	while ( (aux[0] < 0 || aux[0] > 9) && aux[0] != 0xF )
        aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
    if (aux[0] == 0xF)
        goto INICIO_PROG_ALARM_M;

	displaydata(aux[0] + 0x30);
	aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	while ( (aux[1] < 0 || aux[1] > 9) && aux[1] != 0xF )
        aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
    if (aux[1] == 0xF)
        goto INICIO_PROG_ALARM_M;

	displaydata(aux[1] + 0x30);
	tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	while (tecla != 0xE && tecla != 0xF)
        tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	if (tecla == 0xF)
        goto INICIO_PROG_ALARM_M;
	if (tecla == 0xE)
        minAlarm = aux[0]*16 + aux[1];

    INICIO_PROG_ALARM_S:

	cleardisplay();
	printDisplay("SegAl(00-59): ");
	aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
	while ( (aux[0] < 0 || aux[0] > 9) && aux[0] != 0xF )
        aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());
    if (aux[0] == 0xF)
        goto INICIO_PROG_ALARM_S;

	displaydata(aux[0] + 0x30);
	aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
	while ( (aux[1] < 0 || aux[1] > 9) && aux[1] != 0xF )
        aux[1] = Key_ASCII2BIN(NovaTeclaKeyDown());
    if (aux[1] == 0xF)
        goto INICIO_PROG_ALARM_S;

	displaydata(aux[1] + 0x30);
	tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	while (tecla != 0xE && tecla != 0xF)
        tecla = Key_ASCII2BIN(NovaTeclaKeyDown());
	if (tecla == 0xF)
        goto INICIO_PROG_ALARM_S;
	if (tecla == 0xE)
        secAlarm = aux[0]*16 + aux[1];

	cleardisplay();
	printDisplay("Ativar alarme?");
	line(2);
	printDisplay("0=Sim/1=Não");
	aux[0] = Key_ASCII2BIN(NovaTeclaKeyDown());

	if (aux[0] == 0x01)
		regB &= 0xDF;
	else regB |= 0x20;

	regB &= 0x7F;
	IE = auxIE;
	cleardisplay();
	printDisplay("Pronto");
}

/**
* rotina para mostrar o valor do relogio no display
*/
void mostraDisplay(){
	cleardisplay();
	line(1);
	printDisplay(BCDtoStr(dateOfMounth));
	printDisplay("/");
	printDisplay(BCDtoStr(mounth));
	printDisplay("/");
	printDisplay(BCDtoStr(year));
	printDisplay(" ");

	switch (dayOfWeek){
		case 1:
			printDisplay("DOM");
			break;
		case 2:
			printDisplay("SEG");
			break;
		case 3:
			printDisplay("TER");
			break;
		case 4:
			printDisplay("QUA");
			break;
		case 5:
			printDisplay("QUI");
			break;
		case 6:
			printDisplay("SEX");
			break;
		case 7:
			printDisplay("SAB");
			break;
	}

	line(2);

	printDisplay(BCDtoStr(hours));
	printDisplay(":");
	printDisplay(BCDtoStr(minutes));
	printDisplay(":");
	printDisplay(BCDtoStr(seconds));
	printDisplay(" ");
}


unsigned int adc_read()
{
	return adc_data;
}

unsigned int get_temperature()
{
	unsigned int adc = adc_read();
	unsigned int result = adc*2;
	return result;
}

#pragma nooverlay
void imprimeTemp()
{
	char buffer[5];
	unsigned int temp = get_temperature();
	if (temp < 230) liga_aquecedor();
	else if (temp > 260) desliga_aquecedor();
	buffer[0] = temp/100 + 0x30;
	buffer[1] = (temp/10)%10 + 0x30;
	buffer[2] = 'o';
	buffer[3] = 'C';
	printDisplay(buffer);
	adc_data = 0x00;
}

void mostratemperatura(void){
	imprimeTemp();
}

/**
* Rotina do tratamento de interrupção externa.
* decodifica os caracteres para realização das rotinas de tempo real
****************************************************/
void int_EX0 (void) __interrupt 0 __using 2
{
	unsigned char AUX;
	unsigned int temp;
	AUX = regC; /* Retira caractere recebido do bufer */
	if ((AUX & 0x20) == 0x20) /*verifica se é interrupção de alarme*/
	{
		temp = get_temperature();
		adc_data = 0x00;
		if ((temp < 230 || temp > 260) && indicador == 0)
		{
			if (minAlarm % 0x10 == 9 && minAlarm != 0x59)
			{
				minAlarm &= 0xF0;
				minAlarm += 0x10;
			}
			else if (minAlarm == 0x59)
			{
				minAlarm = 0x00;
				if (hoursAlarm % 0x10 == 9)
				{
					hoursAlarm &= 0xF0;
					hoursAlarm += 0x10;
				}
				else if (hoursAlarm == 0x23) hoursAlarm = 0x00;
				else hoursAlarm += 0x01;
			}
			else minAlarm += 0x01;
		}
		else if (indicador == 0)
		{
			indicador = 1;
			liga_motor();
			qtd_quociente = qtd_real % 900;
			qtd_real /= 900;
			for (i=0;i<qtd_real;i++)
			{
				if (minAlarm % 0x10 == 9 && minAlarm != 0x59)
				{
					minAlarm &= 0xF0;
					minAlarm += 0x10;
				}
				else if (minAlarm == 0x59)
				{
					minAlarm = 0x00;
					if (hoursAlarm % 0x10 == 9)
					{
						hoursAlarm &= 0xF0;
						hoursAlarm += 0x10;
					}
					else if (hoursAlarm == 0x23) hoursAlarm = 0x00;
					else hoursAlarm += 0x01;
				}
				else minAlarm += 0x01;
			}

			qtd_quociente /= 15;
			for (i=0;i<qtd_quociente;i++)
			{
				if (secAlarm % 0x10 == 9 && secAlarm != 0x59)
				{
					secAlarm &= 0xF0;
					secAlarm += 0x10;
				}
				else if (secAlarm == 0x59)
				{
					secAlarm == 0x00;

					if (minAlarm % 0x10 == 9 && minAlarm != 0x59)
					{
						minAlarm &= 0xF0;
						minAlarm += 0x10;
					}
					else if (minAlarm == 0x59)
					{
						minAlarm = 0x00;
						if (hoursAlarm % 0x10 == 9)
						{
							hoursAlarm &= 0xF0;
							hoursAlarm += 0x10;
						}
						else if (hoursAlarm == 0x23) hoursAlarm = 0x00;
						else hoursAlarm += 0x01;
					}
					else minAlarm += 0x01;
				}
				else secAlarm+= 0x01;
			}
			indicador1++;
		}

		else if (indicador1 == 1)
		{
			desliga_motor();
			indicador = 0;
			indicador1 = 0;
		}
		printDisplay("ALARME!");
	}
	if ((AUX & 0x10) == 0x10) /*verifica se é interrupção de atualização*/
	{
		mostraDisplay();
		mostratemperatura();

	}
}


void main(void){

    char tecla;
	progrdisplay(); /* programa display */
    line(1);
	cleardisplay();
	IE = 0x81;

	adc_data = 0x00;
	initTempoReal();

	T0 = 1;
	T1 = 1;

    while (1) {
		cleardisplay();
		printDisplay("Escolha:");
		tecla = NovaTeclaKeyDown();
		  if (tecla == '0') prog();
          if (tecla == '1') progAlarm();
          if (tecla == '2') liga_motor();
          if (tecla == '3') desliga_motor();
          if (tecla == '4') liga_aquecedor();
          if (tecla == '5') desliga_aquecedor();
		  if (tecla == '7') mostraDisplay();
	};
}
