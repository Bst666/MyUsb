/* Compiler:  	GNU
 *
 * Date:      	5. 7. 2008
 * Author:    	Alfred Lohmann
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
#include <stdio.h>
#define CPUFREQ 72000000
#include "lpc24xx.h"
#include "config.h"
#include "ConfigStick.h"
#include "portlcd.h"
#include "fio.h"
#include "Mp3.h"
#include "spi.h"

int startaddr=0;

void menueText(void){
	int input;
	int rc;
	printf("Bitte Auswahl treffen:\n");
	printf("0:Download Z:\\CEP\\Test.mp3 \n");
	printf("1: Play downloaded Mp3 \n");
	printf("2: Read Mp3 Info \n");	
	scanf("%d",&input);
	eraseInput();	
	switch(input){
		case 0: printf("Downloading \n ");
				rc=download_spi();
		
				if(rc<=-1){
					printf("Error@ download Test.mp3 \n");
				}
				if(rc==0){
					printf("File downloaded \n");
				}
				break;

		case 1: printf("Playing Mp3 \n");
		 	    start_pwm();
			    rc=MP3PlayLoop(startaddr);	
			    if(rc!=0){
				   printf("Error@ Playing Mp3 \n ");
			    }
				break;

		case 2: readInfo();
				break;

		default:printf("Unknown command");
				break;
	}// switch(input)
}// menueText




int main (void)
{
    //-- initialize the LPC-Stick, enable UART0, UART2 and CAN
    //--
    BaseStickConfig();
	//SCS |= 1;              //Umschalten von Port0 und Port1 auf Fast GPIO
    //FIO0DIR = TI_FIO0DIR;  //Setzen der Richtungsbits
    //FIO1DIR = TI_FIO1DIR;	
	

    printf("Hallo TI_Labor \n");
    
#ifdef LCD_SUPPORT     
    LCD_puts ( "Hallo TI_Labor" );
#endif
  
  
  // ek: alle Methoden ab hier von uns selbst
  	startaddr=initMP3();
    //-- your code goes here 
    //--
	readId();
	
    while (1)
    {
		menueText();	
    }
}

/************************************** EOF *********************************/
