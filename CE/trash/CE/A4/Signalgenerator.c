#include <stdio.h>
#include "lpc24xx.h"
#include "config.h"
#include "ConfigStick.h"
#include "portlcd.h"
#include "fio.h"
#include "Signalgenerator.h"
#include "output.h"

#define LCD_SUPPORT
//#define DEBUG
int cnt[256];// for testing only
int frequenzy = F_LOW;
int amp= LOWAMP;
int offset = OFFSET;
int state = STOPPED;
int *sigtab = sintab;
int sigtab_read=0;
const int delta[2]={(INDEX*LOWFREQUENZ/BASEFREQUENZ),(INDEX*HIGHFREQUENZ/BASEFREQUENZ)};

void checkButtons(void){
	if ( S0 ) {
	    frequenzy = F_LOW;
		updateLCD();	
 	}//end Button 0

    if (S1){
 	    frequenzy = F_HIGH;
		updateLCD();		
    }// end Button 1

    if (S2){
 	    sigtab = sintab;
		updateLCD();
    }// end Button 2

    if (S3){
 	    sigtab = tritab;
		updateLCD();
    }// end Button 3

    if (S4){
 	    amp = HIGHAMP;
        updateLCD();
    }// end Button 4

    if (S5){
 	    amp = LOWAMP;
        updateLCD();
    }// end Button 5

    if (S6){
 	    state = RUNNING;
		updateLCD();		
    }// end Button 6

    if (S7){
 	    state = STOPPED;
 		updateLCD();		
    }// end Button 7	
}// end checkButtons


void updateLCD(void){
	#ifdef LCD_SUPPORT
    LCD_gotoxy(1,1);
    char* tmp;
    
    if(state == RUNNING){
        tmp = "running ";
    }else{
        tmp = "stopped ";
    }// end state    
    LCD_puts(tmp);

	if(frequenzy == F_LOW){
		tmp = "   440Hz";
	}else{
		tmp = "  5000Hz";
    }// end frequenzy
	LCD_puts(tmp);

	LCD_gotoxy(1,2);

	if(sigtab == sintab){
		tmp = "sin   ";
	}else{
		tmp = "tri   ";
	}// end sigtab
	LCD_puts(tmp);

	if(amp == HIGHAMP){
		tmp = "amp: 1,0V";
	}else{
		tmp = "amp: 0,5V";
	}// end amp
	LCD_puts(tmp);
	#endif	
}//end updateLCD

void nextRead(void){
	if(state==RUNNING){
		sigtab_read +=delta[frequenzy];
		if(sigtab_read>= INDEX){
			sigtab_read-=INDEX;
		}
	}
	
}

int nextValue(void){
	int val =((((sigtab[sigtab_read>>10]*amp)/SIGTABMAX)+offset)>>6);
	return val;
}

int main(void){
	
	int initvalues[BUFSIZE];
	int i,nextVal;
	
	int cnt_write=0;
	
	//init
	BaseStickConfig();
    updateLCD();     // show default values
    initTimer();
	initISR();
	//GPIO1_IODIR=255;
	///////////////////////////////////////////////
	// for Frequenzy Test
	PCONP |= (1<<6);                       // Enable PWM1
	PCLKSEL0 |= (1<<12);                   // Clock == CCLK (48 MHz)
	PINSEL4 |= (1<<0) | (1<<2) | (1<<4);   // P2.0 istPWM1.1, P2.1 istPWM1.2, P2.2 istPWM1.3
	PWM1_PR = 48000000/10000-1;             // Prescaler, PWM-Takt= 1 Hz
	PWM1_MCR = (1<<0) | (1<<1);            // Interrupt on PWMMR0, Reset on PWMMR0
	PWM1_PCR = //(1<<2) | (1<<3) |           // PWM1.2 double edge, PWM1.3 double edge,
			   (1<<9);// | (1<<10) | (1<<11); // PWM1.1 PWM1.2 PWM1.3 enabled
	PWM1_MR0 = 2;                          // PWM-Period
	PWM1_MR1 = 1;                          // PWM-Match 1
	//PWM1_MR2 = 2;                          // PWM-Match 2PWM1_MR3 = 3; // PWM-Match 3
	PWM1_LER = (1<<0) | (1<<1) |           // Latch Enable
	           (1<<2) | (1<<3);
	PWM1_TCR = (1<<0) | (1<<3);            // Counter Enable, PWM Enable

	//////////////////////////////////////////////
	
	for(i=0;i<BUFSIZE;i++){
		initvalues[i]=nextValue();
		nextRead();
		#ifdef DEBUG
			printf("initialisierung mit %d\n",initvalues[i]);
		#endif 
	}
	initFifo(initvalues,BUFSIZE);
	startTimer();
	while(1){
		//disableIRQ();
		cnt[cnt_write]++;	
		//checkButtons();
		//nextVal=nextValue();
		/*#ifdef DEBUG
			printf("nextValue = %d\n",nextVal);
		#endif*/
		if(push(nextVal)==1){  // jump to next index if Value could be stored in Fifo
			//nextRead();			 // else try again with same Value	
			#ifdef DEBUG
			printf("nextValue = %d cnt = %d\n",nextVal,cnt);
			#endif
 			cnt_write=(cnt_write+1)&255;	
		}
		//GPIO1_IOCLR=1;
	}
}




