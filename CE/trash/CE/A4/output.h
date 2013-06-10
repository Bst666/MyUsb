
#define BUFSIZE 16   // must be 2 pow n value for FIFO_OF_PROT to work 
#define FIFO_OF_PROT (BUFSIZE-1)
#define TIMER2IRLINE 26

//functions
//Timer
void initTimer(void);
void startTimer(void);
//Fifo
int initFifo(int values[],int size);
void initISR(void);
void __attribute__ ((interrupt("IRQ"))) isrTimer(void);
int push(int value);

