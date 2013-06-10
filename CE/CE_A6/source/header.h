
#ifndef _HEADER_H_
#define _HEADER_H_
#define ARM


/*********** INCLUDES ************/
#include <stdio.h>  
#include <stdlib.h>
#include "lpc24xx.h"
#include "config.h"
#include "ConfigStick.h"
#include "portlcd.h"
#include "fio.h"
#include "delay.h"
#include "mp3dec.h"


/************ DEFINES ************/
#define BYTE_GROUP_SIZE		4		// bytes sent at once
#define BUFFER_SIZE		  512		// size of ring buffer 

#define SAMPLERATE		44100
#define CPUFREQ		 72000000

#define TRANSBUF_SIZE (MAX_NCHAN * MAX_NGRAN * MAX_NSAMP)

#define LED_UNDERFLOW_BIT	(1 << 1)

/************  TYPES  ************/
typedef enum {
 	FALSE = 0,
	TRUE  = 1
}boolean_t;

typedef struct {
  int16_t buffer[TRANSBUF_SIZE];
  int cnt;
  int rp;
} buffer_t;

/**********  VARIABLES  **********/
uint8_t  spi_buffer[MAINBUF_SIZE];                

buffer_t  buffer1;
buffer_t  buffer2;
buffer_t  *mp3OutPuffer;  
buffer_t  *isrInPuffer; 

 


/*********  PROTOTYPES  **********/
void init_all(void);      
void timer_init(void);
void irq_init(void);
void pwm_init(void);
void init_BUF(void);
void init_DAC(void);

void __attribute__ ((interrupt("IRQ"))) isr(void);




#endif //_HEADER_H_
                 

/************************************** EOF *********************************/
