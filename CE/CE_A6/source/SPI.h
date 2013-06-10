
#ifndef _SPI_H_
#define _SPI_H_


void init_spi(void);					                    // setup spi

int  get_device_ID(void);				                    // read device id

int  get_status_bytes(void);			                    // read the status bytes of the device

void wait_while_busy(void);				                    // wait until device is ready for next operation

void set_write_enable(void);			                    // set write enable

void set_glob_unprotect(void);			                    // disable globale protection of all memory

void erase_mem_block(int addr, int size_opc);				// erases at given adress block in memory

void erase_chip();	     									// erases the hole memory array

void write(int adress, int size, unsigned char *buffer);	// writes size bytes at adress from given buffer

void read(int adress, int size, unsigned char *buffer); 	// reads size bytes at adress into given buffer

#endif //_SPI_H_

