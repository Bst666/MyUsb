#include "SPI.h"

void init_spi(void) {

	  
    PCONP	 |= (1 << 21);			// power on SSP0
	PCLKSEL1 = (PCLKSEL1 & ~(1 << 11)) | (1 << 10);	// connect clk to SSP0 

	PINSEL0  = (PINSEL0 & ~(3 << 30))  | (1 << 31);
	PINSEL1  = (PINSEL1 & ~(0x3f));	// reset bit 5 downto 0 => 0
	PINSEL1 |= (1 << 1);			// function => SSEL0
	PINSEL1 |= (1 << 3);			// function => MISO0
	PINSEL1 |= (1 << 5);			// function => MOSI0

    SSP0_CR0  = (7 << 0)			// (3:0) = "0111" => 8-bit transfer 
			  | (1 << 6)			// CPOL  = 1
			  | (1 << 7);			// CPHA  = 1
	
	SSP0_CR1  = (1 << 1);   // SSE   = 1 (activate interacting with other devices using serial bus)
	
	SSP0_CPSR =  20;			// Clock prescaler register = 4 (clock divider)
  	
	// Heitmann
	SCS |= 1;
	FIO0SET |= (1 << 16);
	FIO0DIR |= (1 << 16); 
}

int get_device_ID(void) {
 	int j, id = 0;

	SSEL_ACTIVATE   	
	
	// send request for id
	SEND(OPC_REQ_ID)
 	
    SEND_2_DUMMY
	SEND_2_DUMMY  	

	for (j = 0; j < 4; j++) {
     	while(SR_RNE == 0) {}
		id = (id << BITS_PER_BYTE) | SSP0_DR;
	}

	SSEL_DEACTIVATE   	

	return id;
}

void wait_while_busy(void) { ///////////////////MA
	int tmp, status = 0;

    SSEL_ACTIVATE
          
	do {
		SEND(OPC_READ_STATUS_REGS)   	
		SEND_1_DUMMY

		while(SR_RNE == 0){} // wait 
        status = status					   | SSP0_DR;
        
		while(SR_RNE == 0){} // wait 
        status = (status << BITS_PER_BYTE) | SSP0_DR;

	} while ((status & 0x0001) == 1);  

    SSEL_DEACTIVATE
	
	/*int tmp, status = 0;

    SSEL_ACTIVATE

	SEND(OPC_READ_STATUS_REGS)

	READ_DUMMY(1)

	do {
		SEND_2_DUMMY

		while(SR_RNE == 0){} // wait 
        status = status | SSP0_DR;
        
		while(SR_RNE == 0){} // wait 
        status = status | (SSP0_DR << BITS_PER_BYTE);

	} while ((status & 0x0001) == 1);  

    SSEL_DEACTIVATE */
}

void set_write_enable(void) {
	int tmp;

    SSEL_ACTIVATE

    SEND(OPC_WRITE_ENABLE)

    READ_DUMMY(1)

    SSEL_DEACTIVATE
}

void set_glob_unprotect(void) {
	int tmp;

    SSEL_ACTIVATE

    SEND(OPC_WRITE_STATUS_REGS_B1)

    SEND_1_DUMMY

    READ_DUMMY(2)

    SSEL_DEACTIVATE
}

void erase_mem_block(int adress) {
    int j, h, m, l, tmp;

    h = (adress & 0xFF0000) >> BITS_PER_BYTE * 2;
    m = (adress & 0x00FF00) >> BITS_PER_BYTE * 1;
    l = (adress & 0x0000FF) >> BITS_PER_BYTE * 0;

    // enable write to unprotect
    set_write_enable();
    set_glob_unprotect();

    // enable write to erase
    set_write_enable();

    SSEL_ACTIVATE

    SEND(OPC_BLOCK_ERASE_64_KB);

    // write high, middle and low byte of adress
	SEND(h);
	SEND(m);
	SEND(l);

    for (j = 0; j < 4; j++) {
        READ_DUMMY(1)
    }

    SSEL_DEACTIVATE

    wait_while_busy();
}    

void write(int adress, char *buffer) {
	int j, h, m, l, tmp;

    h = (adress & 0x00FF0000) >> BITS_PER_BYTE * 2;
	m = (adress & 0x0000FF00) >> BITS_PER_BYTE * 1; 
	l = (adress & 0x000000FF) >> BITS_PER_BYTE * 0;
	
	set_write_enable();
	set_glob_unprotect();

	set_write_enable();
	
	SSEL_ACTIVATE

    SEND(OPC_PAGE_PROGRAM)
	
	// write high, middle and low byte adress    
	SEND(l); 
	SEND(m);    
	SEND(h);                                  

	READ_DUMMY(4)
	
	for (j = 0; j < 256; j++) {
     	while (SR_TNF == 0) {} // wait

		SEND((buffer[j] & 0xFF)) // write 1 byte

		READ_DUMMY(1)
	}
	
	//READ_DUMMY(4)

	SSEL_DEACTIVATE

    wait_while_busy();
}

void read(int adress, char *buffer) {
    int j, h, m, l, tmp;

    h = (adress & 0x00FF0000) << BITS_PER_BYTE * 2;
	m = (adress & 0x0000FF00) << BITS_PER_BYTE * 1;
	l = (adress & 0x000000FF) << BITS_PER_BYTE * 0;

  	SSEL_ACTIVATE

	SEND(OPC_READ_ARRAY_S)
   	
	// send adress
	SEND(h)
	SEND(m)
	SEND(l)
	SEND(0)   	

    READ_DUMMY(5)

    for (j = 0; j < 256; j++) {

		SEND_1_DUMMY

 		while (SR_RNE == 0) {} // wait

        // read dummy
		buffer[j] = SSP0_DR;
	}

    SSEL_DEACTIVATE
}	
