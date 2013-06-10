#ifndef _MACROS_H_
#define _MACROS_H_

#include "header.h"  

/************************** HELPERS ***************************/

#define BITS_PER_BYTE				8

/************************* REGISTER ***************************/
                           
#define SR_TFE						(SSP0_SR & (1 << 0))		// Transmit FIFO empty
#define SR_TNF						(SSP0_SR & (1 << 1))        // Transmit FIFO not full
#define SR_RNE						(SSP0_SR & (1 << 2))        // Receive  FIFO not empty  
#define SR_RFF						(SSP0_SR & (1 << 3))        // Receive  FIFO full
#define SR_BUSY						(SSP0_SR & (1 << 4))        // SPI is busy (while write/erase)

/************************* OP-CODES ***************************/

#define OPC_READ_ARRAY_F			0x1b						// fast
#define OPC_READ_ARRAY_M			0x0b						// middle
#define OPC_READ_ARRAY_S			0x03						// slow
             
#define OPC_BLOCK_ERASE_04_KB		0x20
#define OPC_BLOCK_ERASE_32_KB		0x52
#define OPC_BLOCK_ERASE_64_KB		0xd8

#define OPC_PAGE_PROGRAM			0x02
                        
#define OPC_WRITE_ENABLE      		0x06
#define OPC_WRITE_DISABLE			0x04

#define OPC_READ_STATUS_REGS		0x05
#define OPC_WRITE_STATUS_REGS_B1    0x01
#define OPC_RESET					0xf0
#define OPC_REQ_ID					0x9f

/************************ FUNCTIONS **************************/

#define SSEL_ACTIVATE				FIO0CLR = (1 << 16);
#define SSEL_DEACTIVATE				FIO0SET = (1 << 16);

#define SEND(A)						SSP0_DR = A;

#define SEND_1_DUMMY				SSP0_DR = 0x00;
                                 
#define SEND_2_DUMMY				SEND_1_DUMMY \
									SEND_1_DUMMY

#define SEND_3_DUMMY				SEND_2_DUMMY \
									SEND_1_DUMMY

#define READ_DUMMY(N)				{									\
										int XY;                         \
										for (XY = 0; XY < N; XY++) {	\
                                    		while (SR_RNE == 0) {}		\
											tmp = SSP0_DR;				\
										}                           	\
                                    }



#endif //_MACROS_H_

