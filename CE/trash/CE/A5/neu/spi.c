


#include <stdio.h>
#include "lpc24xx.h"
#include "config.h"
#include "ConfigStick.h"
#include "portlcd.h"
#include "fio.h"
#include "spi.h"


int isInit=false;

void initSPI(void){
	PCONP |= SSP0POWER;   //turns Power on for SSPO
	PCLKSEL1 |= SSP0CLK;  // set SSP0 clk = 48 MHz
	PINSEL1 = MISO;		  //SPI clk for ssp0
	PINSEL0 = SCK;		  //GPIO.15=SCK	 
	
	SSP0_CR0 = SSPCONTROL; //DataSizeSelect 8 bits/frame FrameFormatSPI
						   //ClockoutPolarity 1 ClockOutPhase 1 SerialClockPhase 0
	SSP0_CR1 = SSPCONTROL2;//LoopBackMode 0, SSP0 enable, SSP0 =BusMaster slave_out disable	
	SSP0_CPSR = SSPPCCLK;  //SSP clk = 2.4MHz	
	
	SCS |= RESERVED;	
	FIO0SET |= SLAVEPORT; //
	FIO0DIR |= SLAVEPORT; //SlaveSelect		
	 	
	isInit = true;		  //Init Successfull
}

int eraseBlock(int Blocksize,int addr){
			
/*Ablauf:
1.UnprotectSectors:
	•Write Enable 
	•Unprotect
2.EraseSectors:
	•Write Enable
	•EraseSectors
3.Warten:
	•Read Status Register und prüfe RDY/BSY
 */		
 	  //unprotect_sektor(addr);
      writeEN();
	  select_slave(); 	
	  SSP0_DR = Blocksize;
 	  read(1); 
 	  SSP0_DR = 0xff &(addr >> 16);
 	  read(1); 
	  SSP0_DR = 0xff &(addr >> 8);
	  read(1);
	  SSP0_DR = 0xff &(addr >> 0); 
	  read(1);
      
	 // SSP0_DR = READ_SREG;
	 // read(1);
	/*  int id = 0;	
	  int j;
	  for (j = 0;j < 2 ;j++){ 
		SSP0_DR = DUMMY;
		while( (SSP0_SR & (1<<2)) == 0 ){}
	
		    id = (id << 8)|SSP0_DR;
	  }*/
	  //printf("Sreg= %x\n",id);
	  deselect_slave();
 	  while(read_status() & 0x1){} 
	return 0;
}
void read (int a){
	int j,id;
    for( j=0; j<a; j++ ){
			while( (SSP0_SR & (1<<2)) == 0 ){}//ist was da ???
		id = SSP0_DR;
	}
}

void select_slave(void){
	FIO0CLR|=SLAVEPORT;
}

void deselect_slave(void){
	FIO0SET|=SLAVEPORT;
}

void unprotect_all(void){
	writeEN();
	select_slave();
	SSP0_DR = WRITE_SREG1;
	read(1);	
	SSP0_DR = DUMMY;
	read(1);
	deselect_slave();	
	readSreg();	
	
	
}

int read_status(void){
	  select_slave();
	  SSP0_DR = READ_SREG;
	  read(1);
	  	
	  int j;
	  int id = 0;
	  for (j = 0;j < 2 ;j++){ 
		SSP0_DR = DUMMY;
		while( (SSP0_SR & (1<<2)) == 0 ){}
		    id = (id << 8)|SSP0_DR;
 	    
	  }
	  deselect_slave();
	  return id;
}




void writeEN(void){
    select_slave();
	SSP0_DR = WRITE_EN;
	read(1);
	deselect_slave();	
}


void unprotect_sektor(int add){
	
	select_slave();
	SSP0_DR = WRITE_EN;
    read(1);	
	SSP0_DR = 0xFF&(add>>16);
	read(1);
	SSP0_DR = 0xFF&(add>> 8);
    read(1);	
	SSP0_DR = 0xFF&add;
	read(1);
	deselect_slave();
}


void readSreg(void){
      select_slave();
	  SSP0_DR = READ_SREG;
	  read(1);
	  	
	  int j;
	  int id = 0;
	  for (j = 0;j < 2 ;j++){ 
		SSP0_DR = DUMMY;
		while( (SSP0_SR & (1<<2)) == 0 ){}
		    id = (id << 8)|SSP0_DR;
 	    
	  }
	  printf("Sreg= %x\n",id);
	  deselect_slave();

}

int readId(void){

	if(!isInit){
		initSPI();
	}
		select_slave();
		SSP0_DR=READID;
		SSP0_DR=DUMMY;
		SSP0_DR=DUMMY;
		SSP0_DR=DUMMY;
 		
	    int id;
		id=0;
		int j;
		for( j=0; j<4; j++ ){
			while( (SSP0_SR & (1<<2)) == 0 ){
			}
				id = (id<<8) | SSP0_DR;
			}
		deselect_slave();
		printf( "id=%08X\n", id & 0xffffff ); //first byte unused
	
		
		
		return 0;

}
int menue(void){
	
	if(!isInit){
		initSPI();
	}	
	char num;
	int q = 0;
	printf("Press\n1 = readID\n2 = writeMem\n3 = readMem\n4 = eraseMem\n0 = quit\n");
	while(q == 0){
		num=getc(stdin);
		eraseInput();
	
		switch(num-'0'){
		
			case 1: {
						readId();break;
						}
			case 2: { 
 						int Blocksize;
						char num;
						int NoB;
						int addr = 0;
				        char data[10] ={0,1,2,3,4,5,6,7,8,9};
						printf("Please enter Addr  \n");
						scanf("%d",&addr);
						eraseInput();
						printf("Addr =%d \n",addr);
						printf("\nPress\n1 = 4KiB\n2 = 32KiB\n3 = 64KiB\n");
						num=getc(stdin);
						eraseInput();
                        printf("Number of Bytes =");
						scanf("%d",&NoB);
						eraseInput();
									switch(num-'0'){
									
										case 1: {
													Blocksize=BLOCKERASE_4;
													break;
													}
										case 2: {
													Blocksize=BLOCKERASE_32;
 													break;	
													}
										case 3: { 
													Blocksize=BLOCKERASE_64;
													break;
													}
										default: {
													
													printf("Comand not found\n");
													break;
											}
									}	
												
						
						 writeMem(addr,data,Blocksize,NoB);
						 break;
						}
			case 3: { 
						int addr = 0;
						int NoB = 0;
						printf("Addr = ");
						addr=getc(stdin);
						eraseInput();
						printf("Number of Bytes =");
						NoB=getc(stdin);
						readMem(addr,NoB-'0');
						break;
						}
			case 4: {
			 			int Blocksize;
						char num;
						int addr = 0;
				
						printf("Please enter Addr  \n");
						scanf("%d",&addr);
						printf("Addr =%d \n",addr);
						printf("\nPress\n1 = 4KiB\n2 = 32KiB\n3 = 64KiB\n");
						eraseInput();
						scanf("%c",&num);
						eraseInput();
 						printf("Blockgroessennr. = %d  \n",num-'0');	
									switch(num-'0'){
									
										case 1: {
													Blocksize=BLOCKERASE_4;
													eraseBlock(Blocksize,addr);
													break;
													}
										case 2: {
													Blocksize=BLOCKERASE_32;
													eraseBlock(Blocksize,addr);
 													break;	
													}
										case 3: { 
													Blocksize=BLOCKERASE_64;
													eraseBlock(Blocksize,addr);
													break;
													}
								
										default: {
													
													printf("Comand not found\n");
													break;
											}
									}	
												
						break;
							
						}
						
			case 0: {
						q = 1;
						break;
					}
	
			case 10:{//nix
							break;
						}
	
			default: {
						printf("Comand not found\n");
						break;
				}
		}
	}
	return 0;
}

void readMem(int addr,int NoB){
	if(!isInit){
			initSPI();
		}
	
	select_slave();
	SSP0_DR = READARRAYID;
	read(1);	
	SSP0_DR = 0xff &(addr >> 16);
    read(1);	
	SSP0_DR = 0xff &(addr >> 8);
    read(1);	
	SSP0_DR = 0xff &(addr >> 0);
	read(1); 
	SSP0_DR=DUMMY;
	read(1);
    	
	int j;
	int id = 0;
    printf("vor for\n");	
	for( j=0; j<NoB; j++ ){
			
			SSP0_DR=DUMMY;
			while( (SSP0_SR & (1<<2)) == 0 ){}
			id = (id<<8) | SSP0_DR;
 			printf("Nach while %d id = %x\n",j,id);		
		}
	printf("nach for\n");	

	deselect_slave();
	printf( "id=%08X\n", id & 0xffffff ); //first byte unused
	

}
void writeMem(int addr,char data[],int Blocksize,int NoB){
 
	
	//printf(" %d\n",data[0]);	
	//eraseBlock( Blocksize,addr);
	
	writeEN();
	select_slave();
    SSP0_DR = PROGRAMM; 
    read(1);
    SSP0_DR = 0xff &(addr >> 16);
    read(1);	
	SSP0_DR = 0xff &(addr >> 8);
    read(1);	
	SSP0_DR = 0xff &(addr >> 0);
	read(1); 
    int id,j;
    for( j=0; j<NoB; j++ ){
		SSP0_DR  = data[j];
		while( (SSP0_SR & (1<<2)) == 0 ){}
		id=SSP0_DR;
	}

	deselect_slave();
}


void eraseInput(void){
/* Eat till (& including) the next newline */
	 int c;
	 while ( ( c = getc(stdin) ) != EOF){
		if (c == '\n'){
		   break;
		}
    }

}













