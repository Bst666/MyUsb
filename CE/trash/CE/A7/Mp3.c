/*
*	CEP Aufgabe 7
*	MP3-Player
*	von Heiko Rowedder,1979177
*	    Cornelius Allardt,1934458
*
*
*/


#define ARM


#include "SPI.h"
#include <inttypes.h>
#include "mp3dec.h"
#include "Mp3.h"
#include <stdlib.h>
#include <stdio.h>
#include "lpc24xx.h"
#include "config.h"
#include "ConfigStick.h"
#include "armVIC.h"
#include "hwconfig.h"
#include "psi.h"


//#define Debug
//Globals

int isrout = FIRSTINSECONDOUT;
int isrin = FIRSTINSECONDOUT;
int16_t output_buffer[NROUTBUF][INOUTSIZE];	
unsigned char decodebuffer[MAINBUF_SIZE];
HMP3Decoder decoder;
int bytesLeft,oldbytesLeft;
unsigned char* p_input;
int16_t* p_first=output_buffer[0];
int16_t* p_second=output_buffer[1];
MP3FrameInfo mp3Info;
int count=0;

//for debug only
//volatile int isrcount=0;
char isfull;
char isempty[2];
volatile int buff_cnt;
 

void toggleInput(void){
	isrin=isrin^1;
}

void toggleOutput(void){
	isrout=isrout^1;
}


void __attribute__ ((interrupt("IRQ"))) isrPwm(void) {
	PWM1_IR = 1;		    // aknowledge
	int32_t value_out;
	int32_t tmp1;
	int32_t tmp2;
	int isNegative = FALSE;	
	int isNegative2= FALSE;

	if(isempty[isrout]){
		FIO1SET=1<<8;
		
	}else{
		FIO1CLR=1<<8;
		//value_out = output_buffer[isrout][buff_cnt]>>6;
 		
		value_out = output_buffer[isrout][buff_cnt];
	    if(value_out<0){
			isNegative2=TRUE;		
			value_out*=value_out;
			value_out=(value_out)>>21;// 32k^2/32k >>15 >>6 für 10 bit Werte	
			psiTransfer(value_out,&tmp1);
			tmp1=-tmp1;
		}else{
			isNegative2=FALSE;
			value_out*=value_out;
			value_out=(value_out)>>21;
 			psiTransfer(value_out,&tmp1);	
		}
		
	/*	
 		value_out = output_buffer[isrout][buff_cnt];
	    if(value_out<0){
			isNegative2=TRUE;		
			value_out*=value_out;
			value_out=(value_out)>>21;// 32k^2/32k >>15 >>6 für 10 bit Werte	
			psiTransfer(value_out,&tmp2);
			tmp2=-tmp2;
		}else{
			isNegative2=FALSE;
			value_out*=value_out;
			tmp2=(value_out)>>21;
 			psiTransfer(value_out,&tmp1);	
		}	
		
		/*
		//if(value_out!=0){
			if(value_out < 0){
				isNegative=TRUE;
				value_out*=-1;
			}// if
			psiTransfer(value_out,&tmp1);
			if(isNegative){
				tmp1*=-1;
			isNegative=FALSE;
			}// 
		//}// if	
	 	value_out = output_buffer[isrout][buff_cnt]>>6;	
 		//if(value_out!=0){
			if(value_out < 0){
				isNegative=TRUE;
				value_out*=-1;
			}// if
	/*		psiTransfer(value_out,&tmp2);
			if(isNegative){
				tmp2*=-1;
				isNegative=FALSE;
			}// if
		//}// if */
	 	buff_cnt+=2;	
	}// T/2 +((x/2^14)*(T/2))
	PWM1_MR1 = NEWVALUE(tmp1);
	//PWM1_MR2 = NEWVALUE(tmp2);
	PWM1_LER  |= 7;		
	//PWM1_MR1 = tmp1>>6;
	//PWM1_MR2 = tmp2>>6;	
	if(buff_cnt >= INOUTSIZE){
		isempty[isrout]=TRUE;
 		isrout=isrout^1;
		buff_cnt=0;
	}
	
	VICVectAddr = 0;       // mark end of ISR  
}


void readInfo(void){
	MP3GetLastFrameInfo(decoder,&mp3Info);
	printf("bitrate = %d \n",mp3Info.bitrate);
	printf("nChans = %d \n",mp3Info.nChans);
	printf("samprate = %d \n",mp3Info.samprate);	
	printf("bitspersample = %d \n",mp3Info.bitsPerSample);
	printf("outputsamps = %d \n",mp3Info.outputSamps);	
	printf("layer = %d \n",mp3Info.layer);	
}

int initMP3(void){

	bytesLeft = MAINBUF_SIZE;
	int rc=0;

	initSPI();
	#ifdef Debug
		printf("SPI initialised\n");
	#endif /*debug*/	
	unprotect_all();
	#ifdef Debug
		printf("SPI Global unprotect\n");
	#endif /*debug*/	
	decoder = MP3InitDecoder();
	if(decoder == 0){
		printf("error @ initMp3, not enough memory for decoder\n");

		return -1;
	}
	#ifdef Debug
		printf("decoder initialised\n");
	#endif /*debug*/	
	

	isfull = FALSE;
	isempty[0] = TRUE;	
	isempty[1] = TRUE;	
	PCONP |= PWMON; // Enable PWM1PCLKSEL0	
	PINSEL4 = PWMSELECT;
	PCLKSEL0 |= FULLCLK;
	PWM1_PR	= 0;
	PWM1_MCR = 3;
	PWM1_MR0 = PWMCOUNT;
	PWM1_MR1 = 0;
	PWM1_MR2 = 0;
	PWM1_PCR |= PWMCONTROLL;
	PWM1_LER  |= 7;
	#ifdef Debug
		printf("PWM initialised\n");
	#endif /*debug*/
    VICIntSelect &= ~IRQLINE;
	VICIntEnable |= IRQLINE;	
	VICVectAddr8 = (int) isrPwm;
	VICVectPriority8 = 1;
	#ifdef Debug
		printf("ISR initialised\n");
	#endif /*debug*/	
	buff_cnt = 0;	
	fill_input(STARTADDR);
	#ifdef Debug
		printf("Input Buffer full\n");
	#endif /*debug*/
	psiInit();	
	p_input=decodebuffer;
	return rc;
}


// isr schreiben
int start_pwm(void){
	PWM1_TCR = PWMSTART; // Counter Enable, PWM Enable12312Match
	return 0;
}


int fill_input(int addr){
	readMem(addr,MAINBUF_SIZE,(char*)decodebuffer);
	return 0;
}



int MP3PlayLoop(int addr){

	int rc=0;
	bytesLeft = MAINBUF_SIZE;
	int addresse = addr;
	fill_input(addresse);	
	int offset=0;	
	#ifdef Debug
	int decodeaddr=0;
	#endif /*DEBUG*/

	rc = MP3FindSyncWord(decodebuffer,MAINBUF_SIZE);
	if(rc < 0){
		printf("Error at MP3FindSyncWord\n");
		return -1;
	}
	#ifdef Debug
		printf("SyncWord return %d bytes\n",rc);
	#endif /* Debug*/
	if(rc>0){
		addresse += rc;
			
		//start reading at new address
 		readMem(addresse,MAINBUF_SIZE,(char*)decodebuffer);
		#ifdef Debug
			decodeaddr+=rc;
			printf("new address = %d\n",addresse);
		#endif /*Debug*/		
		
	}	
	addresse += MAINBUF_SIZE;	
	while(1){
				
		//wait while no buffer empty
		while(!isempty[isrin]){FIO1SET = (1<<8);}
		FIO1CLR = (1<<8);			
		p_input=decodebuffer;
		
	 	#ifdef Debug
				printf("decoding at address = %d \n",decodeaddr);
		#endif /*Debug*/			
		rc = MP3Decode(decoder,&p_input,&bytesLeft,output_buffer[isrin],USESIZE );	
			
		if(rc < 0){
			printf("Error at Mp3Decode,Erno: %d\n",rc);
			return -2;
		}// if
		
		//rectifying();
		
 		#ifdef Debug
			printf("decode finished, bytesleft = %d\n",bytesLeft);	
		#endif /*Debug*/	
		disableIRQ();
		isempty[isrin] = FALSE;
		enableIRQ();
 		isrin=isrin^1;
		offset = MAINBUF_SIZE-bytesLeft;
		#ifdef Debug
			decodeaddr+=offset;
			printf("offset = %d\n",offset);	
		#endif /*Debug*/	
		int i;
		for(i=0; i < bytesLeft;i++){	
			decodebuffer[i] = p_input[i];
		}// for
		
		#ifdef Debug
			printf("loop finished, address = %d\n",addresse);	
		#endif /*Debug*/
 			
		p_input = &decodebuffer[bytesLeft];
 		readMem(addresse,offset,(char*)p_input);
 		addresse+=offset;	
		bytesLeft+=offset;
		
 		#ifdef Debug
			printf("reset bytesleft after reading Bytesleft= %d\n",bytesLeft);	
		#endif /*Debug*/	
	}// while
}// mp3loop

void rectifying(void){
	int i;
	int32_t in_value=0;
	int32_t out_value=0;
	int isNegative=FALSE;
	for(i=0;i<INOUTSIZE;i++){
		out_value=output_buffer[isrin][i]>>6;
		if(out_value!=0){
			if(out_value < 0){
				isNegative=TRUE;
				out_value*=-1;
			}// if
			psiTransfer(out_value,&in_value);
			if(isNegative){
				in_value*=-1;
				isNegative=FALSE;
			}// if
			output_buffer[isrin][i]=(short)in_value;
			//
		}// if	
	}// for
}// rectifying

