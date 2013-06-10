*/
*	CEP Aufgabe 5
*	SPI zugriffe
*	von Heiko Rowedder,1979177
*	    Cornelius Allardt,1934458
*
*
*/


#ifndef MP3
#define MP3

#define INOUTSIZE (MAX_NGRAN*MAX_NCHAN*MAX_NSAMP)
#define FIRSTINSECONDOUT 0
//#define FIRSTOUTSECONDIN 1
#define MAIN_BUFSIZE 1940
#define NROUTBUF 2

#define PWMSELECT ((PINSEL4& ~(15)) | 5)
#define PWMCONTROLL (3<<9)
#define USESIZE 0
#define PWMON (1<<6)
#define FULLCLK (1<<12)
#define PWMSTART 9
#define FALSE 0
#define TRUE 1
#define PWMCOUNT 1631	// For Frequenzy 44.1KHz
#define IRQLINE (1<<8)


#define BASICVALUE (PWMCOUNT>>1) // maybe Hardcode 815 for extra speed
#define NEWVALUE(X) (BASICVALUE+(((X)*(BASICVALUE))>>15))

#define STARTADDR 0
//functions
/*
*	initialize PWM usage	
*	for Audio output
*	, memory usage
*	and MP3Decoder
*/
int initMP3(void);
int start_pwm(void);
int MP3PlayLoop(int addr);
int fill_input(int);
int fillbuffer(void);
void readInfo(void);



















#endif /*MP3*/
