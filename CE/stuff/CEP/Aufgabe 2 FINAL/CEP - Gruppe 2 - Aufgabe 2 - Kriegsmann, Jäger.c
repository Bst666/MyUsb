/*
    
    Author:   Fabian Jäger, Edo Kriegsmann
    Date:     04.12.2008
    Purpose:  Servo Ansteuerung über PWM
    Software: WINAVR
    Hardware: AT90CAN128
*/


#include <stdio.h>
#include <avr/io.h>
#include <avr/signal.h>
#include <avr/interrupt.h>
#include <string.h>
#include <avr/pgmspace.h>

#define ENDE_TASTE (PINC &_BV(PC4))

#define TASTE_1 (PINC &_BV(PC0))?1:0
#define TASTE_2 (PINC &_BV(PC1))?1:0
#define TASTE_3 (PINC &_BV(PC2))?1:0
#define TASTE_4 (PINC &_BV(PC3))?1:0

#define DREH_1 (PINA &_BV(PA6))?1:0
#define DREH_2 (PINA &_BV(PA7))?2:0

#define RECHTS 2
#define LINKS 1
#define MITTE 3

#define TEST 1
#define MANUELL 2
#define AUTO 3
#define DREH 4

#define CLS int i = 0; for(;i<30;i++) printf("\n");


/************************************************************
   Ausgabe eines Zeichens.
   Definition kompatibel zu den Streamfunktionen der avr-libc

   Notwendig: Bei Ausgabe von LF (0xa) muss zuvor CR (0xd)
              ausgegeben werden
*************************************************************/
int rs232put( char c, FILE* f ){
  /*! Hier soll die Ausgabe eines Zeichens erfolgen */
  /* Wait for empty transmit buffer *///;

	while ( !( UCSR0A & _BV(UDRE0)));
	/* Put data into buffer, sends the data */
	UDR0 = c;
	if(c == 0xa)
		rs232put(0xd,f);
 	return 0;
}


/************************************************************
   Eingabe eines Zeichens.
   Definition kompatibel zu den Streamfunktionen der avr-libc

   Notwendig: Umwandlung von CR (0xd) nach LF (0xa)
              Echo der eingegebenen Zeichen
*************************************************************/
int rs232get( FILE* f) {
  char c;
    //! Hier soll das Einlesen eines Zeichens erfolgen 
	uint8_t status;
	// Wait for data to be received 
	while ( ! (UCSR0A & _BV(RXC0)));
	// Get status, then data from buffer 
	status = UCSR0A;
	//data = UDR0;
	c=UDR0;
		
	rs232put(c,f);
	
	// If error, return false 
	//return !( status & ( _BV(FE0)|_BV(DOR0)|_BV(UPE0) ) );

	if(c == 0xd){
		c=0xa;
		rs232put(c,f);
	}

  return c;
}

/************************************************************
   Initialisierung der seriellen Schnittstelle
*************************************************************/
void rs232init( void ) {

  /*! Hier soll die Initialisierung der Schnittstelle erfolgen */

	/*UCSR0A
	UCSR0B
	*/
	UCSR0C=UCSR0C|0x6;
	UBRR0H=0;
	UBRR0L=25;
	UCSR0B=24;//3+4 setzen
	/* ist das gleiche wie 0x6
	UCSR0C=UCSR0C|_BV(UCSZ00);
	UCSR0C=UCSR0C|_BV(UCSZ01);
	*/	
  fdevopen( rs232put, rs232get );
}
/************************************************************
************************************************************
************************************************************/


volatile uint8_t richtung = 0;

//Hiermit geben wir den Winkel auf dem OCR aus
void servo_steuerung(uint8_t neuer_winkel) {
	//Überprüfen ob der winkel "im Rahmen" ist
	if(45 <= neuer_winkel && neuer_winkel <= 135) {
		//Match berechnen und setzen:
		//45° = match 1000   ||    90° = match 2000
		
		//Richtige Funktion nach Rechnung
		//OCR1A = ((neuer_winkel - 45) * 11 ) + 1000;
		
		//Funktion für richtige Anzeige
		OCR1A = 2000-((neuer_winkel - 45) * 11 );
	}
}


//Dieser Interrupt wird durch den Timer TCNT0 ausgelöst
ISR(TIMER0_COMP_vect){	
	// 8-Bit Timer wieder auf 0 setzen
	TCNT0 = 0;
	
	// Wenn eine Richtung gesetzt ist, in die passende Richtung drehen:
	switch (richtung){		
		case RECHTS:	if(OCR1A < 2000)
								OCR1A++;
						break;

		case LINKS:		if(OCR1A > 1000)
								OCR1A--;
						break;
	}
}



int main(void) {
 	
	int dreh_zustand = 0, dreh_grad = 0, dreh_zustand_alt = 0;
	int zustand, grad, fehler;
	uint8_t t0,t1,t2,t3;
	
	//Data DirectionRegister auf Ausgang setzen! 
	// letzte 4 Bit = TESTLEDs   *braune Kabel*
	DDRA = (DDRA | 0xF);
	// PB5 ist der Servoanschluss: OC1A
	DDRB = _BV(PB5);

	// Von 0-187 zählen (mit prescaler 256) 
	// bei 187 Interrupt auslösen. So wird jede 6ms OCR1A ++/--  => 15°/sec.
	OCR0A = 187;	

	// 8 bit timer 256 Prescaler => so passen 48.000 takte in den 8 bit timer
	TCCR0A = _BV(CS02);

	//Interrupt einschalten auslösen wenn zählervergleich erfolgreich
	TIMSK0 = _BV(OCIE0A);	
	
	// Pulsefrequez = 16 ms (Top Value)  =>  128k (Systemtakte) /8 (prescaler) = 16k
	ICR1 = 16000;

	//Servo bei Start auf 90Grad setzen
	OCR1A = 2000; 

	//WGM11,WGM12,WGM13 => FAST PWM 
	//CS11 = 8-Bit prescaler
	TCCR1A = _BV(COM1A1) | _BV(WGM11);
	TCCR1B = _BV(WGM12) | _BV(WGM13) | _BV(CS11) ;

	// Enable interrupts
	sei();	

	//Serielle schnittstelle initialisieren 	
	rs232init();
	
	while(1){


	//#############################################################
	//KONSOLENMENUE ZUR STEUERUNG DES SERVOS:
	CLS
	printf("\n\n\n HAUPTMENUE \n");
	printf(" 1) TEST    \n");
	printf(" 2) MANUELL \n");
	printf(" 3) AUTO    \n");
	printf(" 4) DREHGEBER    \n");
	
	//WARTEN BIS EIN MENUEPUNKT GEWÄHLT WURDE
	do{		
		t0=TASTE_1;
		t1=TASTE_2;
		t2=TASTE_3;	
		t3=TASTE_4;											
		if	   (t0) zustand = TEST;
		else if(t1) zustand = MANUELL;
		else if(t2) zustand = AUTO;
		else if(t3) zustand = DREH;		
	}while(!t0 && !t1 && !t2 && !t3);
	//#############################################################


	
	//HIER WIRD DER ZUSTAND AUSGEFÜHRT:
	switch(zustand){

		//#############################################################
		//TESTSTEUERUNG (t5 für ende)
		case TEST:		{  
						CLS
						printf(" ===> TEST   \n");					
						printf(" ===> (T1 =  45Grad)    \n");
						printf(" ===> (T2 =  90Grad)    \n");
						printf(" ===> (T3 = 135Grad)    \n");
						printf(" ===> (T5 = ende)    \n");
						while(TASTE_1);
							while( !ENDE_TASTE ){						
								//HIER WIRD DER SERVOMOTOR AUF DEN WERT GESTELLT!
								if(TASTE_1)      servo_steuerung(45);
								else if(TASTE_2) servo_steuerung(90);
								else if(TASTE_3) servo_steuerung(135);	
							} 
						break; 
						}
		//#############################################################



		//#############################################################
		//MANUELLE STEUERUNG (t5 für ende)
		case MANUELL:	{ 
						CLS
						printf(" ===> MANUELL  (T5 = ende)    \n");
							while( !ENDE_TASTE ){
						
							do{
								//EINGABE ÜBER DAS TERMINAL:
								printf("Servomotor Winkel (in 5er Schritten): ");
						     	scanf("%i",&grad);
								
								//Liegt die grad zahl im gültigen bereich?
								fehler = ((grad%5!=0) || (grad >135) || (grad <45))? 1:0;
								if(fehler) printf("FEHLER: 5er Schritte, Grad < 135 und >45 !)\n");

							}while( fehler &&  !ENDE_TASTE);

							//HIER WIRD DER SERVOMOTOR AUF DEN WERT GESTELLT!
							servo_steuerung(grad);		
							} 
						break; 
						}
		//#############################################################



		//#############################################################
		//AUTOMOTAISCHE STEUERUNG (t5 für ende)
		case AUTO:	{ 	
						CLS
						printf(" ===> AUTO  \n");
						printf(" ===> (T1 = LINKS)    \n");
						printf(" ===> (T2 = 90 Grad)    \n");
						printf(" ===> (T3 = RECHTS)    \n");
						printf(" ===> (T5 = ende)    \n\n");
						
						
						while(TASTE_3);
							while( !ENDE_TASTE ){	

								do{		
									t0=TASTE_1;
									t1=TASTE_2;
									t2=TASTE_3;	
									if	   (t0) zustand = LINKS;
									else if(t1) zustand = MITTE;
									else if(t2) zustand = RECHTS;
								}while(!t0 && !t1 && !t2 && !ENDE_TASTE);
									
								switch (zustand){
		
									case LINKS:		richtung = LINKS;																									
													while(TASTE_1);
													break;

									case MITTE:		servo_steuerung(90);
													break;


									case RECHTS: 	richtung = RECHTS;																									
													while(TASTE_3);
													break;
								}
								richtung = 0;
							} 
						break; 
						}
		//#############################################################



		//#############################################################
		//DREHGEBER STEUERUNG (t5 für ende)
			case DREH: 		{ 
							CLS
							printf(" ===> DREHGEBER  (T5 = ende)    \n\n");
							printf(" KALLIBRIERUNG (90g) mit Taste 1    \n\n");
							
							dreh_grad = 45;							

							while( !ENDE_TASTE ){
							
								if(TASTE_1){
									dreh_grad = 45;
									servo_steuerung(90);
								}

							dreh_zustand = DREH_1 + DREH_2;

							switch (dreh_zustand_alt){

								case 0:  	if(dreh_zustand == 2)  dreh_grad++;
										 	if(dreh_zustand == 1)  dreh_grad--;
										 	break;
								
								case 1:  	if(dreh_zustand == 0)  dreh_grad++;
										 	if(dreh_zustand == 3)  dreh_grad--;
										 	break;		
					
								case 2:		if(dreh_zustand == 3)  dreh_grad++;
										 	if(dreh_zustand == 0)  dreh_grad--;
										 	break;

								case 3:		if(dreh_zustand == 1)  dreh_grad++;
										 	if(dreh_zustand == 2)  dreh_grad--;
										 	break;
								}
								
								if(dreh_zustand_alt != dreh_zustand){
									dreh_zustand_alt = dreh_zustand;
									
									//printf("DREHGEBER: %d \n",dreh_grad);
									
									if(dreh_grad < 0) dreh_grad = 0;
									if(dreh_grad > 90) dreh_grad = 90;									

									servo_steuerung( 45 + dreh_grad );
								}
							} 
						break; 
						}
		//#############################################################

		}//ENDE SWITCH CASE	

	}//ENDE WHILE(1)
	return 0;

}//ENDE MAIN

