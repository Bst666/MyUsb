#ifndef SPI

#define SPI
#define true 1
#define false 0
#define SSP0POWER 1<<21
#define SSP0CLK 1<<10
#define MISO  (((PINSEL1 & ~(15<<2)))|(10<<2))
#define SSPCONTROL 199 //(11000111)
#define SSPCONTROL2 2 //(00000010)
#define SCK (((PINSEL0 & ~(3<<30)))|(10<<30))
#define SLAVEPORT (1<<16)
#define SSPPCCLK 20
#define RESERVED 1

//OPCODE Defines
#define READID 0x9f
#define WRITE_EN 0x06
#define WRITE_DEN 0x04
#define UNPROTECT_SEC 0x39
#define BLOCKERASE_4 0x20
#define BLOCKERASE_32 0x52
#define BLOCKERASE_64 0xD8
#define WRITE_SREG1 0x01
#define READARRAYID 0x0B //oder 0x1B
#define READ_SREG 0x05
#define PROGRAMM 0x02

#define DUMMY 0



//functions
void select_slave(void);
void unprotect_sektor(int add);
void deselect_slave(void);
int readId(void);
void initSPI(void);
int menue(void);
int eraseBlock(int ,int);
void read (int);
void unprotect_all(void);
void readMem(int ,int);
void eraseInput(void);
void readSreg(void);
void writeEN(void);
void writeMem(int ,char [],int ,int );
int read_status(void);
#endif //SPI
