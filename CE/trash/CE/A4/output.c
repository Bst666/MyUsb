#include <stdio.h>
#include "lpc24xx.h"
#include "config.h"
#include "ConfigStick.h"
#include "portlcd.h"
#include "fio.h"
#include "output.h"

//FIFO
volatile int fifo_read=1;
int fifo_write=0;
int fifo_nwrite=1;
int fifo[BUFSIZE];


int initFifo(int values[],int size){
	//DISABLE_IRQ;
	int i;
	if(size <= BUFSIZE){
		for(i=0;i<size;i++){
			fifo[i]=values[i];
			fifo_write=(fifo_write+1)&FIFO_OF_PROT;
		}
		return 1;
	}
	return 0;
	//ENABLE_IRQ;
}

//Fifo push
int push(int value){
	if(fifo_nwrite == fifo_read){
		return 0;
	}else{
		fifo[fifo_write]=value;
	    fifo_write=(fifo_write+1)&FIFO_OF_PROT;
		fifo_nwrite=(fifo_nwrite+1)&FIFO_OF_PROT;
		return 1;
	}
}

void setLED(){
	GPIO1_IOSET =3;	
}


//Fifo pop  ISR
void __attribute__ ((interrupt("IRQ"))) isrTimer(void) {

  
    TIMER2_IR = 1<<0;                                // Acknowledge isr switch off MR0-IRQ 
	//setLED();												
    if ( fifo_read != fifo_write ){    
		//int tmp = fifo[fifo_read];                
        DACR = fifo[fifo_read]<<6;						    // hand over to DAC
		fifo_read = (fifo_read + 1) & FIFO_OF_PROT;     // if fifo_read reaches the end it starts at 0 again
    }
			
    VICVectAddr = 0;                                    // mark end of ISR  

}//end isr_timer 

void initISR(void){
    VICIntSelect  &=  ~(0<<TIMER2IRLINE);    // Timer2 assigned to IRQ
	VICVectPriority26  =  1;           // does not really matters(only one irq source 
	VICVectAddr26  =  (int)isrTimer;    // points to the ISR-function
    VICIntEnable =  (1<<TIMER2IRLINE);      // enable interrupt for Timer2 IRQ	
}//end initISR



//Timer
void initTimer(void){
	PCONP |=(1<<22);     //Power on for Timer2
	PCLKSEL1|=(1<<12);   //set timer2 clk =48Mhz  
	TIMER2_TCR =0x02;    //timer reset
	TIMER2_PR = 0;       // no prescaller;
    TIMER2_MR0 =1087;    //0--1087 = 1088 steps
	                     //48MHz/1088 = 44.118KHz
	TIMER2_IR =0xFF;     //reset all interrupts
	TIMER2_MCR = 3;      //do not stop timer on match
	PCLKSEL0|=(1<<22);	 //Set DAC CLK=48Mhz
	PINSEL1 |= (1<<21);	 //Set DAC = AOut 	
	//starting Timer later
}//end initTimer

void startTimer(void){
	TIMER2_TCR=0x1; // starts Timer
}//end startTimer




