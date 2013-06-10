/* Compiler:  	GNU
 *
 * Date:      	23. 11. 2012
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
#include "updownload.h"

int x;
#define BREAKPOINT x = 42;
#define TEST_BUFFER_SIZE 1000

char write_data[TEST_BUFFER_SIZE];
char  read_data[TEST_BUFFER_SIZE];

boolean_t running = TRUE;

void init_data(){
 	int i;
	for (i = 0; i < TEST_BUFFER_SIZE; i++) {
     	write_data[i] = 0xA5;
	}  
	for (i = 0; i < TEST_BUFFER_SIZE; i++) {
     	read_data[i] = 0x0;
	}
}

int main(void) {
	char *wd, *rd;
	wd = write_data;
    rd = read_data;

	BaseStickConfig();

    printf("\n\n\n\n\n\n\n\n\n\n\n\n");

	// initialize SPI
	init_spi();

	init_data();

	// read device ID from SPI       
	int id = get_device_ID();
    printf("dev ID: %x\n", id);
    
	BREAKPOINT   	
	
    //write(10, write_data);

    BREAKPOINT
	
    //erase_mem_block(100);

	BREAKPOINT
 
    read(1312, read_data);

	BREAKPOINT
	
	while (running) {
	
	}  	

    while (1){}
}

/************************************** EOF *********************************/
