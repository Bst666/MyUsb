/* Compiler:  	GNU
 *
 * Date:      	15. 12. 2012
 * Author:    	Imed Bahrini
 *				Edris Taieb
 *				Florian Schlosser
 *
 *          	HAW-Hamburg
 *              Labor für technische Informatik
 *            	Berliner Tor  7
 *            	D-20099 Hamburg
 ********************************************************************
 * Description:
 *
 * - main program
 ********************************************************************
 * History:
 *
 *     Initial revision 
 ********************************************************************/

#include "header.h"
#include "SPI.h"
#include "macros.h" 

void mp3PlayLoop();   
HMP3Decoder mp3Dec;
boolean_t running = TRUE;

int main(void) {
//	uint8_t *db_spi_buffer = spi_buffer;
    
	// initialize stick, buffers, timers etc...
    init_all();

	// initialize SPI
    init_spi();

    printf("\n\n\n");   
                          
    // initialize MP3Dec
	mp3Dec = MP3InitDecoder(); 
 
	printf("\t-Init Done!\n");   	

    int id = get_device_ID();
	printf("ID: %x\n", id);
    
	// MP3PlayLoop
	mp3PlayLoop();

	// free MP3Dec
    MP3FreeDecoder(mp3Dec);
     
	// idle
    while (TRUE){}
}
       
void mp3PlayLoop(){
	buffer_t *b1 = &buffer1;
	buffer_t *b2 = &buffer2;	                       
//	//uint8_t *db_spi_buffer = spi_buffer;

	int read_spi_adr = 0;
	int *bla = read_spi_adr;   	
	int rc;
	int sync_pos;
    unsigned char *tmp_buffer;
    int bytes_left;
	
	// only for testing
	int *rsa = &read_spi_adr;
	          
	// fill buffer from spi
	read(read_spi_adr, MAINBUF_SIZE, spi_buffer);
    sync_pos = MP3FindSyncWord(spi_buffer, MAINBUF_SIZE);
	read_spi_adr += sync_pos;
	read(read_spi_adr, MAINBUF_SIZE, spi_buffer); // jetzt hole daten vom sync wort an

    while (running) {
     	if (mp3OutPuffer->cnt == 0) {
          	sync_pos = MP3FindSyncWord(spi_buffer, MAINBUF_SIZE);  // suche den index fuer das naechste sync wort
            bytes_left = MAINBUF_SIZE - sync_pos; // wieviele bytes ab anfang der rahmens noch im buffer
            tmp_buffer = &spi_buffer[sync_pos];  // hole anfang des rahmens

			// decodiere 
            rc = MP3Decode(mp3Dec, 
						   &tmp_buffer, 
						   &bytes_left, 
						   (short *) mp3OutPuffer->buffer, 
						   0);
            if (rc < 0) {
             	switch(rc) {
                   	case ERR_MP3_INDATA_UNDERFLOW:
						printf("ERR_MP3_INDATA_UNDERFLOW\n");
						break;
					case ERR_MP3_MAINDATA_UNDERFLOW:
						printf("ERR_MP3_MAINDATA_UNDERFLOW\n");
						return;
						break;
					case ERR_MP3_FREE_BITRATE_SYNC:
						printf("ERR_MP3_FREE_BITRATE_SYNC\n");
						return;
						break;
					default:
						printf("ERR_UNKNOWN %d\n", rc);
						//return;
						break;
				}

				// skip rest of this turn
				continue;
			}// if

            mp3OutPuffer->cnt = MAINBUF_SIZE;
            if (mp3OutPuffer == &buffer1) {
            	mp3OutPuffer = &buffer2;
			} else {
                mp3OutPuffer = &buffer1;
			}
			
			read_spi_adr += (MAINBUF_SIZE - bytes_left);
			read(read_spi_adr, MAINBUF_SIZE, spi_buffer);
		}// if	
	}// while
}// function

void __attribute__ ((interrupt("IRQ"))) isr(void) {
    TIMER2_IR = 0xFF;   

	// isrInPuffer leer?	
	if (isrInPuffer->cnt == 0){
		// UNDERFLOW LED an
	    FIO1SET = LED_UNDERFLOW_BIT;
		goto ISR_ENDE;
	}
	
	// UNDERFLOW LED aus
	FIO1CLR = ~LED_UNDERFLOW_BIT;
	
	// Lese Sample aus IsrInPuffer Puffer.
	int valueMR1 = isrInPuffer->buffer[isrInPuffer->cnt];			// ++
	int valueMR2 = isrInPuffer->buffer[isrInPuffer->cnt + 1];		// ++
	isrInPuffer->cnt += 2;											// weghauen

	// Berechne neue PWM-Werte und gebe sie aus.
	PWM1_MR1 = ((valueMR1 + 32768) * 816) >> 15;
	PWM1_MR2 = ((valueMR2 + 32768) * 816) >> 15;
    PWM1_LER = (1<<1) | (1<<2);	// Latch Enable	

	// Alle Daten aus IsrInPuffer verarbeitet?
	if (isrInPuffer->cnt >= TRANSBUF_SIZE){
		isrInPuffer->cnt = 0;	
		
		// buffer wechseln	
		if (isrInPuffer == &buffer1) {
			isrInPuffer = &buffer2;
		} else { 
			isrInPuffer = &buffer1;
		}
	}
	
ISR_ENDE:	        
	VICVectAddr = 0;   	
}

/************************************** EOF *********************************/
