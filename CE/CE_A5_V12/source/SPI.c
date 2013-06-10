#include "SPI.h"

void init_spi(void) {
    PCONP	 |= (1 << 21);							// power on SSP0
	PCLKSEL1 = (PCLKSEL1 & ~(1 << 11)) | (1 << 10);	// connect clk to SSP0 

	PINSEL0  = (PINSEL0 & ~(3 << 30))  | (1 << 31);
	PINSEL1  = (PINSEL1 & ~(0x3f));	// reset bit 5 downto 0 => 0
	//PINSEL1 |= (1 << 1);			// function => SSEL0 ===> toedlich, nicht auf 1 schalten!!!!111einseins
	PINSEL1 |= (1 << 3);			// function => MISO0
	PINSEL1 |= (1 << 5);			// function => MOSI0

    SSP0_CR0  = (7 << 0)			// (3:0) = "0111" => 8-bit transfer 
			  | (1 << 6)			// CPOL  = 1
			  | (1 << 7);			// CPHA  = 1
	
	SSP0_CR1  = (1 << 1);			// SSE   = 1 (activate interacting with other devices using serial bus)
	
	SSP0_CPSR =  4;					// Clock prescaler register = 4 (clock divider)
  	
	// Heitmann
	SCS |= 1;
	FIO0SET |= (1 << 16);
	FIO0DIR |= (1 << 16);
}

int get_device_ID(void) {
 	int id = 0, j;

	SSEL_ACTIVATE   	
	
	// send request for id
	SEND(OPC_REQ_ID)
    SEND_3_DUMMY
	
	for(j = 0; j < 4; j++) {
     	while(SR_RNE == 0) {}
		id = (id << BITS_PER_BYTE) | SSP0_DR;
	}

	SSEL_DEACTIVATE   	

	return id & 0x00FFFFFF;
}

int get_status_bytes(void) {
	int status = 0;

    SSEL_ACTIVATE
		
	SEND(OPC_READ_STATUS_REGS) 
	  	
	SEND_1_DUMMY

	while(SR_RNE == 0){} // wait 
    status = status					   | SSP0_DR;
        
	while(SR_RNE == 0){} // wait 
    status = (status << BITS_PER_BYTE) | SSP0_DR;

    SSEL_DEACTIVATE
	
	return status;	
}

void wait_while_busy(void) {
	int status = 0;

    SSEL_ACTIVATE
          
	do {
        status = 0;
		
		SEND(OPC_READ_STATUS_REGS)   	
		SEND_1_DUMMY

		while(SR_RNE == 0){} // wait 
        status = status					   | SSP0_DR;
        
		while(SR_RNE == 0){} // wait 
        status = (status << BITS_PER_BYTE) | SSP0_DR;

	} while ((status & 0x0001) == 1);  

    SSEL_DEACTIVATE
}

void set_write_enable(void) {

    SSEL_ACTIVATE

    SEND(OPC_WRITE_ENABLE)

    READ_DUMMY(1)

    SSEL_DEACTIVATE
}

void set_glob_unprotect(void) {

    SSEL_ACTIVATE

    SEND(OPC_WRITE_STATUS_REGS_B1)

    SEND_1_DUMMY

    READ_DUMMY(2)

    SSEL_DEACTIVATE
}

void erase_mem_block(int adress, int size_opc) {
    int h, m, l;

    h = (adress & 0xFF0000) >> BITS_PER_BYTE * 2;
    m = (adress & 0x00FF00) >> BITS_PER_BYTE * 1;
    l = (adress & 0x0000FF) >> BITS_PER_BYTE * 0;

    // enable write to unprotect
    set_write_enable();
    set_glob_unprotect();

    // enable write to erase
    set_write_enable();

    SSEL_ACTIVATE

    SEND(size_opc);

    // write high, middle and low byte of adress
	SEND(h);
	SEND(m);
	SEND(l);

	READ_DUMMY(4)

    SSEL_DEACTIVATE

    wait_while_busy();
}

void erase_chip() {
	// enable write to unprotect
    set_write_enable();
    set_glob_unprotect();

    // enable write to erase
    set_write_enable();

    SSEL_ACTIVATE

	SEND(OPC_CHIP_ERASE)

	READ_DUMMY(1)

	SSEL_DEACTIVATE
 
    wait_while_busy();   	
}

void start_block_at(int adress) {
	int h, m, l;

    h = (adress & 0x00FF0000) >> BITS_PER_BYTE * 2;
	m = (adress & 0x0000FF00) >> BITS_PER_BYTE * 1; 
	l = (adress & 0x000000FF) >> BITS_PER_BYTE * 0;

   	SSEL_DEACTIVATE

	wait_while_busy();
    set_write_enable();

	SSEL_ACTIVATE

    SEND(OPC_PAGE_PROGRAM)
	
	// write high, middle and low byte of adress    
	SEND(h); 
	SEND(m);    
	SEND(l);

	READ_DUMMY(4)
}    

void write(int adress, int size, unsigned char *buffer) {
	int j, h, m, l;

    h = (adress & 0x00FF0000) >> BITS_PER_BYTE * 2;
	m = (adress & 0x0000FF00) >> BITS_PER_BYTE * 1; 
	l = (adress & 0x000000FF) >> BITS_PER_BYTE * 0;
	
	set_write_enable();
	set_glob_unprotect();

	start_block_at(adress);
	
	for (j = 0; j < size; j++) {

    	if (((adress + j) % 256) == 0 && (adress + j) >= 0) {
         	start_block_at(adress + j);
		}

     	while (SR_TNF == 0) {} // wait

		SEND((buffer[j] & 0xFF)) // write 1 byte

		READ_DUMMY(1)
	}

	SSEL_DEACTIVATE

    wait_while_busy();
}

void read(int adress, int size, unsigned char *buffer) {
    int j, i, h, m, l;

    h = (adress & 0x00FF0000) >> BITS_PER_BYTE * 2;
	m = (adress & 0x0000FF00) >> BITS_PER_BYTE * 1;
	l = (adress & 0x000000FF) >> BITS_PER_BYTE * 0;

  	SSEL_ACTIVATE

	SEND(OPC_READ_ARRAY_F)
   	
	// send adress
	SEND(h)
	SEND(m)
	SEND(l)

    ////// fast read        ( 2 dummy bytes - 6 to read )
    SEND(0)     
    SEND(0)     
    READ_DUMMY(6)  
    
    for (j = 0; j < size;) {
        int diff = size - j;
        /**/
		if (diff > 7) {            
			SEND_1_DUMMY
			SEND_1_DUMMY
			SEND_1_DUMMY
			SEND_1_DUMMY 
			SEND_1_DUMMY 
			SEND_1_DUMMY 
			SEND_1_DUMMY 
			SEND_1_DUMMY                                  
 			READ_BYTE(buffer[j + 0])                            
 			READ_BYTE(buffer[j + 1])                            
 			READ_BYTE(buffer[j + 2])                            
 			READ_BYTE(buffer[j + 3])                            
 			READ_BYTE(buffer[j + 4])                            
 			READ_BYTE(buffer[j + 5])                            
 			READ_BYTE(buffer[j + 6])                            
 			READ_BYTE(buffer[j + 7]) 
			j += 8;
					
		} else if (diff > 6) {            
			SEND_1_DUMMY
			SEND_1_DUMMY
			SEND_1_DUMMY
			SEND_1_DUMMY 
			SEND_1_DUMMY 
			SEND_1_DUMMY 
			SEND_1_DUMMY                                       
 			READ_BYTE(buffer[j + 0])                            
 			READ_BYTE(buffer[j + 1])                            
 			READ_BYTE(buffer[j + 2])                            
 			READ_BYTE(buffer[j + 3])                            
 			READ_BYTE(buffer[j + 4])                            
 			READ_BYTE(buffer[j + 5])                            
 			READ_BYTE(buffer[j + 6]) 
			j += 7;
					
		} else if (diff > 5) {            
			SEND_1_DUMMY
			SEND_1_DUMMY
			SEND_1_DUMMY
			SEND_1_DUMMY 
			SEND_1_DUMMY 
			SEND_1_DUMMY                             
 			READ_BYTE(buffer[j + 0])                            
 			READ_BYTE(buffer[j + 1])                            
 			READ_BYTE(buffer[j + 2])                            
 			READ_BYTE(buffer[j + 3])                            
 			READ_BYTE(buffer[j + 4])                            
 			READ_BYTE(buffer[j + 5])   
			j += 6;
					
		} else if (diff > 4) {            
			SEND_1_DUMMY
			SEND_1_DUMMY
			SEND_1_DUMMY
			SEND_1_DUMMY 
			SEND_1_DUMMY                              
 			READ_BYTE(buffer[j + 0])                            
 			READ_BYTE(buffer[j + 1])                            
 			READ_BYTE(buffer[j + 2])                            
 			READ_BYTE(buffer[j + 3])                            
 			READ_BYTE(buffer[j + 4])
			j += 5;
					
		} else if (diff > 3) {            
			SEND_1_DUMMY
			SEND_1_DUMMY
			SEND_1_DUMMY
			SEND_1_DUMMY                                      
 			READ_BYTE(buffer[j + 0])                            
 			READ_BYTE(buffer[j + 1])                            
 			READ_BYTE(buffer[j + 2])                            
 			READ_BYTE(buffer[j + 3])
			j += 4;
					
		} else if (diff > 2) {           
			SEND_1_DUMMY
			SEND_1_DUMMY
			SEND_1_DUMMY                                          
 			READ_BYTE(buffer[j + 0])                            
 			READ_BYTE(buffer[j + 1])                            
 			READ_BYTE(buffer[j + 2])   
			j += 3;
		
		} else if (diff > 1) {
			SEND_1_DUMMY
			SEND_1_DUMMY                                         
 			READ_BYTE(buffer[j + 0])                            
 			READ_BYTE(buffer[j + 1])  
			j += 2;
		
		} else {
			SEND_1_DUMMY                                                     
 			READ_BYTE(buffer[j + 0])  
			j += 1;
		
		}                         
        /*     
		// send dummies
		for (i = 0; i < BYTE_GROUP_SIZE && i < diff; i++) {
          	SEND_1_DUMMY
		}
		// read bytes
        for (i = 0; i < BYTE_GROUP_SIZE && i < diff; i++) {
          	while (SR_RNE == 0) {}
			buffer[j+i] = SSP0_DR;         			
		}  
		j += i;
		*/ 
	}       

    SSEL_DEACTIVATE
}	
