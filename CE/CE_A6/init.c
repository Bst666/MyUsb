#include "header.h"
                    

void init_all(void) {
	// initialize Stick
	BaseStickConfig(); 
	
	// Heitmann
	SCS |= 1;              //Umschalten von Port0 und Port1 auf Fast GPIO
    FIO0DIR = (1 << 16);  //Setzen der Richtungsbits
    FIO1DIR = (1 << 16) | 0xFF;        // Unteren 8 bit=> out (also wir duerfen dort schreiben)
 
	// initialize Buffer
	init_BUF();     	
	
	// initialize rest   
	timer_init();
	irq_init();
	pwm_init(); 	
}

void timer_init() {
    PCONP |= (1<<22);       // TIMER 2 einschalten, Seite 65
    PCLKSEL1 |= (1<<12);    // set clk to , Seite 59
    TIMER2_TCR = 0x02;      // reset timer
    TIMER2_PR = 0;          // set prescaler
    TIMER2_IR = 0xff;       // reset all interrupts
    TIMER2_MCR = 3<<0;      // interrupt on MR0, reset on MR0, 
                            // do not stop timer on match
	TIMER2_MR0 = (CPUFREQ / SAMPLERATE) - 1; // match value
    TIMER2_TCR = 0x01;      // start timer
}

void irq_init() {
    VICIntSelect &= ~(1<<26);   // TIMER2 IRQ auswaehlen, ACHTUNG IRQ; Seite 118
    VICVectAddr26 = (int)isr;   // TIMER2 loest isr aus
    VICVectPriority26 = 5;      // TIMER2 isr prio
    VICIntEnable |= 1<<26;      // TIMER2 IRQ aktivieren
}

void pwm_init() {
	PCONP |= (1<<6);                          // Enable PWM1
    PCLKSEL0 |= (1<<12);                      // Clock == CCLK (48 MHz)
    PINSEL4 |= (1<<0) | (1<<2);      // P2.0 istPWM1.1, P2.1 istPWM1.2, P2.2 istPWM1.3
    PWM1_PR = 0;               // Prescaler, PWM-Takt= 1 Hz
    PWM1_MCR = (1<<0) | (1<<1);               // Interrupt on PWMMR0, Reset on PWMMR0
    PWM1_PCR = (1<<9) | (1<<10); // PWM1.1 PWM1.2 PWM1.3 enabled
    PWM1_MR0 = (CPUFREQ / SAMPLERATE) - 1;    // PWM-Period
    PWM1_MR1 = 0;                             // PWM-Match 1   (rechts ohr)
	PWM1_MR2 = 0;                             // PWM-Match 2   (linkes ohr)	
    PWM1_LER = (1<<0) | (1<<1);               // Latch Enable
    PWM1_TCR = (1<<0) | (1<<3);               // Counter Enable, PWM Enable
}

void init_BUF(void){   
	buffer1.cnt = 0;   
	buffer2.cnt = 0;
    mp3OutPuffer = &buffer1;
	isrInPuffer  = &buffer1;
}

//Digital/Analog-Wandler und Ausgang aktivieren 
void init_DAC(void){
	PCLKSEL0 |= 1<<22;			// CLK setzen, Seite 58 - 60
	PINSEL1  |= 1<<21;			// AOUT vom DAC einstellen(when [21:20] == 10), Seite 180 
}    

/************************************** EOF *********************************/
