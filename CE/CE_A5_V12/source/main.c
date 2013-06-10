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
#include "updownload.h"
#include "macros.h"

int x;
#define BREAKPOINT x = 42;
#define TEST_BUFFER_SIZE 1024

unsigned char write_data[TEST_BUFFER_SIZE];
unsigned char  read_data[TEST_BUFFER_SIZE];

boolean_t running = TRUE;

void menu_id();
void menu_read();   
void menu_read_MB();
void menu_write();
void menu_write_MB();
void menu_erase();
void menu_erase_chip();
void menu_status();
void erase_input();

void init_data();

int main(void) {
	unsigned char *wd, *rd, input;
	wd = write_data;
    rd = read_data;

	BaseStickConfig();

	// initialize SPI
	init_spi();

	// initialize read/write arrays
	init_data();

	while (running) {
		
    	// print menu
		printf("\n\nMENU:\n");
		printf("[1] - Read  Manufacture ID\n");  
		printf("[2] - Read  Status\n");
		printf("[3] - Read  Memory\n");
		printf("[4] - Write Memory\n");  
		printf("[5] - Read  Memory MB\n");
		printf("[6] - Write Memory MB\n");
		printf("[7] - Erase Memory\n");
		printf("[8] - Erase Chip\n"); 
		printf("[0] - Exit\n");

		erase_input();      		
        scanf("%c", &input);
        
        switch (input) {
        	case '1':	// read ID
                menu_id();
				break;	   
        	case '2':	// read status
				menu_status();
				break;
        	case '3':	// read mem
                menu_read();
				break;	
        	case '4':	// write mem
                menu_write();
				break;	
        	case '5':	// read mem MB
                menu_read_MB();
				break;	
        	case '6':	// write mem MB
                menu_write_MB();
				break;
        	case '7':	// earse
				menu_erase();
				break;
        	case '8':	// earse chip
				menu_erase_chip();
				break;
			case '0':  	// exit
				printf("\nAdios Amigo!\n");
				//running = FALSE;
				break;         			
			default:
				// do nothing
				printf("fehler");
				break;				
		}

		BREAKPOINT
		      		
	}

	// idle
    while (1){}
}

void menu_id() {
   	int id = get_device_ID();
	printf("\n   --->   dev ID: %x\n", id);
}

void menu_read() {  

	char s_adr[20], s_size[20];
	int  adr, size, i, j;

	printf("\n   --->   Start Adresse: ");
	scanf("%s", s_adr);
	printf("\n   --->   Anzahl Bytes: ");
    scanf("%s", s_size);
    adr  = atoi(s_adr);
	size = atoi(s_size);
	
    if (size > TEST_BUFFER_SIZE) {
       	size = TEST_BUFFER_SIZE;
	}

	printf("\n   --->   start reading!\n");
    read(adr, size, read_data);
	printf("   --->   finished reading!\n");
	
	// print out content in read_data array
	printf("\n\nContent:\n");
	for (i = 0; i < size;) {
	     for (j = 0; j < 20 && (i + j) < size; j++) {
			 printf("%3x ", read_data[i + j]);         			 
		 }
		 printf("\n");
		 i += j; 
	}   
}

void menu_read_MB() { 
	char s_adr[20];
	int  adr, i, j;

	printf("\n   --->   Start Adresse: ");
	scanf("%s", s_adr);
    adr  = atoi(s_adr);

	printf("\n   --->   start reading!\n");
	for (i = 0; i < 1024; i++) {
		read(adr, 1024, read_data);
	}   	
	printf("   --->   finished reading!\n");
}

void menu_write() {
	char s_adr[20], s_size[20];
	int  adr, size;

	printf("\n   --->   Start Adresse: ");
	scanf("%s", s_adr);

	printf("\n   --->   Anzahl Bytes: ");
    scanf("%s", s_size);
	
    adr  = atoi(s_adr);
	size = atoi(s_size);

	printf("\n   --->   start writing!\n");
	write(adr, size, write_data);
	printf("   --->   finished writing!\n");   	
}

void menu_write_MB() {       
	char s_adr[20];
	int  adr, i;

	printf("\n   --->   Start Adresse: ");
	scanf("%s", s_adr);
	
    adr  = atoi(s_adr);

	printf("\n   --->   start writing!\n");
	for (i = 0; i < 1024; i++) {
		write(adr, 1024, write_data);
	}
	printf("   --->   finished writing!\n"); 
}

void menu_erase() {
	char s_adr[20], s_size[20];
	int  adr, size;

	printf("\n   --->   Start Adresse: ");
	scanf("%s", s_adr);

	printf("\n   --->   Blockgroesse (4, 32, 64 KB): ");
    scanf("%s", s_size);
	
    adr  = atoi(s_adr);
	if (s_size[0] == '6' && s_size[1] == '4') {
		size = OPC_BLOCK_ERASE_64_KB;
	} else if (s_size[0] == '3' && s_size[1] == '2') {
		size = OPC_BLOCK_ERASE_32_KB;
	} else {
     	size = OPC_BLOCK_ERASE_04_KB;
	}
       
	printf("\n   --->   start erasing!\n");
    erase_mem_block(adr, size);              
	printf("   --->   finished erasing!\n"); 
}

void menu_erase_chip() {       
	printf("\n   --->   start erasing chip!\n");
    erase_chip();              
	printf("   --->   finished erasing chip!\n"); 
}

void menu_status() {       
    int status = get_status_bytes();              
	printf("\n   --->   device status: %x !\n", status);
}

void erase_input(){
	char c;
	while ((c = getc(stdin)) != EOF){
       	if (c == '\n') {
		 	break;
		} 
	}
}

void init_data(){
    int i;
    for (i = 0; i < TEST_BUFFER_SIZE; i++) {
        if ((i % 4) == 0) {
            write_data[i] = 0x12;
        } else if ((i % 4) == 1) {
            write_data[i] = 0x34;
        } else if ((i % 4) == 2) {
            write_data[i] = 0x56;
        } else {
            write_data[i] = 0x78;
        }
    } 
    for (i = 0; i < TEST_BUFFER_SIZE; i++) {
        read_data[i]  = 0x0;
    }
}


/************************************** EOF *********************************/
