*/
*	CEP Aufgabe 5
*	SPI zugriffe
*	von Heiko Rowedder,1979177
*	    Cornelius Allardt,1934458
*
*
*/


#include <stdio.h>
#include "lpc24xx.h"
#include "config.h"
#include "ConfigStick.h"
#include "portlcd.h"
#include "fio.h"
#include "spi.h"
#include "updownload.h"
#include <stdlib.h>


//#define Debug

int isInit=false;
Updownload udl;
char * buff;

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
    FIO0DIR = TI_FIO0DIR;  //Setzen der Richtungsbits
    FIO1DIR = TI_FIO1DIR;		
	FIO0SET |= SLAVEPORT; //
	FIO0DIR |= SLAVEPORT; //SlaveSelect		
	isInit = true;		  //Init Successfull
	buff = (char*) malloc(256);
}

void wait_recieve(void){
	while( (SSP0_SR & (1<<2)) == 0 ){}
}

void erase_all(void){
	writeEN();
	select_slave();
	SSP0_DR = CHIPERASE;
	read(1);
	deselect_slave();
	waitforFinish();

}

void waitforFinish(void){
	int tmp;
	int sr=1;
	select_slave();		
	SSP0_DR=READ_SREG;
	wait_recieve();
	tmp = SSP0_DR;

	while((sr&1)==1){
		SSP0_DR=DUMMY;
		SSP0_DR=DUMMY;
		wait_recieve();	
		sr = SSP0_DR;
		wait_recieve();
		sr=sr<<8|SSP0_DR;
	}
	deselect_slave();
	#ifdef Debug
	printf("wait finish\n");
	#endif /*debug*/
}



int eraseBlock(int Blocksize,int addr){
	writeEN();
	select_slave();
	SSP0_DR=Blocksize;
	SSP0_DR =(addr>>16)& ADDR_MASK;
	SSP0_DR =(addr>>8)& ADDR_MASK;
	SSP0_DR =(addr)& ADDR_MASK;	
	read(4);
	deselect_slave();
	waitforFinish();
	return 0;
}


void read (int a){
	int j,id;
    for( j=0; j<a; j++ ){
		wait_recieve();
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
	SSP0_DR = DUMMY;
	read(2);
	deselect_slave();	
	readSreg();	
}


void writeEN(void){
    select_slave();
	SSP0_DR = WRITE_EN;
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
 	int id=0;
	int j;
	for( j=0; j<4; j++ ){
		while( (SSP0_SR & (1<<2)) == 0 ){}
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
	printf("Press\n1 = readID\n2 = writeMem\n3 = readMem\n4 = eraseMem\n5 = download\n0 = quit\n");
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
						scanf("%d",&addr);
						eraseInput();
						printf("Number of Bytes =");
						scanf("%d",&NoB);
						readMem(addr,NoB,buff );
						eraseInput();
						break;
						}
			case 4: {
			 			int Blocksize;
						int num;
						int addr = 0;
				
						printf("Please enter Addr  \n");
						scanf("%d",&addr);
						printf("Addr =%d \n",addr);
						printf("\nPress\n1 = 4KiB\n2 = 32KiB\n3 = 64KiB\n");
						eraseInput();
						scanf("%d",&num);
						eraseInput();
 						printf("Blockgroessennr. = %d  \n",num);
						eraseInput();	
						switch(num){
					
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
						
			case 5: {
						download_spi();
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


int download_spi(void){ 
/*
Starten der Übertragung.
mode = 0: Upload (Datei wird vom TI-Board auf den PC übertragen).
mode = 1: Download (Datei wird vom PC auf das TI-Board übertragen).
filename ist der Pfad der Datei auf dem PC. Es sollte der absolute Pfad 
angegeben werden. Es ist darauf zu achten, dass 
Backslashes im Pfad wie auch sonst unter C üblich mit zwei "\\" eingegeben werden müssen! 
*/
	//char * pfad = ABSPFAD;
	char buffer[MAXUPLOAD];
	int getc_cnt = 0;
	int rc=0;
	int eof=0;
	int startaddr = 0;
	int countbytes=0;
	
	//init_delay	( 0 );
	erase_all();		
	rc = udl_open( &udl, ABSPFAD "Test.mp3", 1 );
	if(rc < 0){
		printf("ERROR at udl_open %d\n",rc);
        return  -1;
	}	

	
	while(eof==0 && startaddr+MAXUPLOAD<MAXADDR){	
		
		do{
			rc = udl_getc(&udl);
			countbytes++;
			if(rc < UDL_EOF){
				printf("ERROR at udl_getc ERno.= %d , %d bytes read\n",rc,countbytes);
				rc = udl_close( &udl );
				if(rc < 0){
					printf("ERROR at udl_close %d\n",rc);
	 				return -3;	
				}
				return -2;
			}else if(rc==UDL_EOF){
				eof=1;
			}else{
				buffer[getc_cnt]=(char)rc;
 				getc_cnt++;	
			}		
		}while(getc_cnt < MAXUPLOAD &&  eof == 0);

			
		writeMem(startaddr,buffer,MAXUPLOAD,getc_cnt);
		startaddr += getc_cnt; // startaddresse erhöhen um anzahl geschriebener Zeichen
		getc_cnt = 0;
	}		

	rc = udl_close( &udl );
	if(rc < 0){
		printf("ERROR at udl_close %d\n",rc);
 		return -3;	
	}
	return 0;
}





void readMem(int addr,int NoB,char * buff){
	if(!isInit){
		initSPI();
	}
	
	select_slave();
	#ifdef Debug
	printf("addr = %x, NoB = %d \n",addr, NoB);
	printf("%x\n",(0xff0000 &addr) >> 16);	
	printf("%x\n",(0xff00 &addr) >> 8); 
	printf("%x\n",(0xff &addr));	 
	#endif /*Debug*/
	SSP0_DR = READARRAYID;
	SSP0_DR = ADDR_MASK &(addr >> 16);
    SSP0_DR = ADDR_MASK &(addr >> 8);
    SSP0_DR = ADDR_MASK &(addr >> 0);
	SSP0_DR=DUMMY;
	read(5);
    	
	int j;
    
	for( j=0; j<NoB; j++ ){
			SSP0_DR=DUMMY;
			while( (SSP0_SR & (1<<2)) == 0 ){}
			buff[j] = SSP0_DR;
 		}
	deselect_slave();
}

void writeMem(int addr,char data[],int Blocksize,int NoB){
 
	//eraseBlock( Blocksize,addr);
	#ifdef Debug
	printf("addr= %x, NoB=%d \n",addr, NoB);
	int i;
	for(i=0;i<10;i++){
		printf("%d ",data[i]);
	}
	printf("\n");
	#endif /*debug*/
	//send_opcode(WRITE_EN);
	
	writeEN();
	select_slave();
	SSP0_DR=PROGRAMM;
	SSP0_DR=(addr>>16)& ADDR_MASK;
	SSP0_DR=(addr>>8)& ADDR_MASK;
	SSP0_DR=(addr)& ADDR_MASK;	
	//send_opcodeAddress(PROGRAMM,addr);
	read(4);
	int id,j;
    for( j=0; j<NoB; j++ ){
		SSP0_DR  = data[j];
		while( (SSP0_SR & (1<<2)) == 0 ){}
		id=SSP0_DR;
	}
	deselect_slave();
	waitforFinish();
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













