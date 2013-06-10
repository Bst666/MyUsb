#ifndef _SPI_H_
#define _SPI_H_

#include "header.h"
#include "macros.h"

void init_spi(void);					// setup spi

int  get_device_ID(void);				// read device id

void wait_while_busy(void);				// wait until write/erase has finished

void set_write_enable(void);			// set write enable

void set_glob_unprotect(void);			// disable globale protection of all memory

void erase_mem_block(int addr);			// erases at given adress block in memory

void write(int adress, char *buffer);	// writes 256 bytes to slave

void read(int adress, char *buffer);		// reads 256 bytes from slave


#endif //_SPI_H_

