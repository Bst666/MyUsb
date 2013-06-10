
#include "lpc24xx.h"

/*
 * Name         LPC     Security   Direction Controlled by
 * PSI_DATA0    P0.5    IOB1.0     lpc inout    P2.3
 * PSI_DATA1    P1.10   IOB1.1     lpc inout     "
 * PSI_DATA2    P0.13   IOB1.2     lpc inout     "
 * PSI_DATA3    P0.14   IOB1.3     lpc inout     "
 * PSI_DATA4    P0.19   IOB1.4     lpc inout     "
 * PSI_DATA5    P0.20   IOB1.5     lpc inout     "
 * PSI_DATA6    P0.21   IOB1.6     lpc inout     "
 * PSI_DATA7    P0.22   IOB1.7     lpc inout     "
 * PSI_DATA8    P0.29   IOB2.0     lpc inout    P2.4
 * PSI_DATA9    P0.30   IOB2.1     lpc inout     " 
 * 
 * PSI_ADR0     P1.15   IOB4.0     lpc out      P2.8
 * PSI_ADR1     P1.14   IOB4.1     lpc out       "
 * PSI_ADR2     P1.13   IOB4.2     lpc out       "
 * 
 * PSI_REQ      P1.12   IOB4.3     lpc out       "
 * PSI_RW       P1.11   IOB4.4     lpc out       "
 * 
 * PSI_ACK      P1.0    IOB3.0     lpc in       P2.5
 * PSI_RESULT   P1.1    IOB3.1     lpc in        "
 * 
 * PSI_RDY_FPGA P2.13              lpc out
 * 
 * PSI_UNUSED           IOB5                    P2.9
 */

#define DATAPINS_PORT0 (P0_5 | P0_13 | P0_14 | P0_19 | P0_20 | P0_21 | P0_22 | P0_29 | P0_30 )
#define DATAPINS_PORT1 (P1_10 )

// Einstellungen Datenrichtung Ports:
#define INOUT_DIR_PORT0 DATAPINS_PORT0
#define INOUT_DIR_PORT1 DATAPINS_PORT1

#define OUT_DIR_PORT1 (P1_15 | P1_14 | P1_13 | P1_12 | P1_11 )
#define OUT_DIR_PORT2 (P2_3  | P2_4 | P2_8 | P2_5 | P2_13 | P2_9 )

// P1_2 bis P1_7 werden nicht benoetig, muessen aber auf Eingang geschaltet werden, da sie sonst gegen IOB3 arbeiten!
#define IN_DIR_PORT1 (P1_0 | P1_1 | P1_2 | P1_3 | P1_4 | P1_5 | P1_6 | P1_7 )


#define PSI_PINSEL0 ( (3<<(5*2))     |(3<<(13*2))    |(3<<(14*2))   )
#define PSI_PINSEL1 ( (3<<(19*2-32)) |(3<<(20*2-32)) |(3<<(21*2-32)) |(3<<(22*2-32))|(3<<(29*2-32))|(3<<(30*2-32))  )
#define PSI_PINSEL2 ( (3<<(10*2))    |(3<<(15*2))    |(3<<(14*2))    |(3<<(13*2))   |(3<<(12*2))   |(3<<(11*2))   |(3<<(0*2))  |(3<<(1*2))   )
#define PSI_PINSEL4 ( (3<<(3*2))     |(3<<(4*2))     |(3<<(8*2))     |(3<<(5*2))    |(3<<(13*2))    )




//Steuerleitungen

//Ready
#define PSI_CLR_RDY_PIN       FIO2CLR = P2_13
#define PSI_SET_RDY_PIN       FIO2SET = P2_13


//Steuerung der Datenrichtungen der IOBs
#define PSI_IOB1_TR_CLR   FIO2CLR = P2_3
#define PSI_IOB1_TR_SET   FIO2SET = P2_3

#define PSI_IOB2_TR_CLR   FIO2CLR = P2_4
#define PSI_IOB2_TR_SET   FIO2SET = P2_4

#define PSI_IOB3_TR_CLR   FIO2CLR = P2_5
#define PSI_IOB3_TR_SET   FIO2SET = P2_5

#define PSI_IOB4_TR_CLR   FIO2CLR = P2_8
#define PSI_IOB4_TR_SET   FIO2SET = P2_8

#define PSI_IOB5_TR_CLR   FIO2CLR = P2_9
#define PSI_IOB5_TR_SET   FIO2SET = P2_9


//Abfragen von Statusleitungen
#define PSI_ACK_WAIT_CLR      while( (FIO1PIN & P1_0) != 0){}
#define PSI_ACK_WAIT_SET      while( (FIO1PIN & P1_0) == 0){}

#define PSI_RESULT_WAIT_SET   while( (FIO1PIN & P1_1) == 0){}

//Setzen der Steuerleitungen
#define PSI_REQ_CLR           FIO1CLR = P1_12
#define PSI_REQ_SET           FIO1SET = P1_12

#define PSI_RW_CLR            FIO1CLR = P1_11
#define PSI_RW_SET            FIO1SET = P1_11

#define PSI_ENABLE_READ       FIO0DIR &= ~DATAPINS_PORT0;  /*Daten auf Eingang  */       \
                              FIO1DIR &= ~DATAPINS_PORT1;  /*Daten auf Eingang  */       \
                              PSI_IOB1_TR_SET;              /*IOB1 auf A to B   */       \
                              PSI_IOB2_TR_SET;              /*IOB2 auf A to B   */       \
                              PSI_RW_SET;                   /*RW auf Lesen      */

#define PSI_ENABLE_WRITE      PSI_RW_CLR;                   /*RW auf Schreiben   */       \
                              PSI_IOB1_TR_CLR;              /*IOB1 auf B to A    */       \
                              PSI_IOB2_TR_CLR;              /*IOB2 auf B to A    */       \
                              FIO0DIR |= DATAPINS_PORT0;   /*Daten auf Ausgang   */       \
                              FIO1DIR |= DATAPINS_PORT1;   /*Daten auf Ausgang   */       
                              


//Daten Ein- und Ausgabe
#define PSI_WRITE_DATA( d )   FIO0MASK = ~DATAPINS_PORT0;                                                                  \
                              FIO0PIN  = (d & (3<<8))<<(29-8) | (d & (0xf<<4))<<(19-4) | (d & 0xc)<<11 | (d & 1)<<5;            \
                              FIO0MASK = 0;                                                                                     \
                              FIO1MASK = ~DATAPINS_PORT1;                                                                  \
                              FIO1PIN  = (d & 2)<<9;                                                                            \
                              FIO1MASK = 0;


#define PSI_READ_DATA( d )    {int x = FIO0PIN; d = (  ( (x&(1<<30))?-512:0) )        |        \
                                                       ( (x >> (29-8) ) & (0x1<<8) )  |        \
                                                       ( ( x >> (19-4) ) & (0xf<<4) ) |        \
                                                       ( ( x >> (13-2) ) & (0x3<<2) ) |        \
                                                       ( ( x >> (5-0) ) & (0x1<<0) )  |        \
                                                       ( ( FIO1PIN >> (10-1) ) & (0x1<<1) );}


#define PSI_INIT              PINSEL0 = PINSEL0 & ~PSI_PINSEL0;                          \
                              PINSEL1 = PINSEL1 & ~PSI_PINSEL1;                          \
                              PINSEL2 = PINSEL2 & ~PSI_PINSEL2;                          \
                              PINSEL4 = PINSEL4 & ~PSI_PINSEL4;                          \
                                                                                         \
                              FIO0DIR &= ~DATAPINS_PORT0;                                \
                                                                                         \
                              FIO1DIR &= ~DATAPINS_PORT1;                                \
                              FIO1DIR &= ~IN_DIR_PORT1;                                  \
                              FIO1DIR |= OUT_DIR_PORT1;                                  \
                                                                                         \
                              FIO2DIR |= OUT_DIR_PORT2;                                  \
                                                                                         \
                              PSI_IOB1_TR_SET;       /* IOB1 auf A to B */               \
                              PSI_IOB2_TR_SET;       /* IOB1 auf A to B */               \
                              PSI_IOB3_TR_SET;       /* IOB1 auf B to A */               \
                              PSI_IOB4_TR_CLR;       /* IOB1 auf A to B */               \
                              PSI_IOB5_TR_CLR;       /* IOB1 auf B to A */               \
                              PSI_SET_RDY_PIN;



#define P0_5  (1<<5)
#define P0_13 (1<<13)
#define P0_14 (1<<14)
#define P0_19 (1<<19)
#define P0_20 (1<<20)
#define P0_21 (1<<21)
#define P0_22 (1<<22)
#define P0_29 (1<<29)
#define P0_30 (1<<30)
#define P1_10 (1<<10)
#define P1_15 (1<<15)
#define P1_14 (1<<14)
#define P1_13 (1<<13)
#define P1_12 (1<<12)
#define P1_11 (1<<11)
#define P2_3  (1<<3)
#define P2_4  (1<<4)
#define P2_8  (1<<8)
#define P2_5  (1<<5)
#define P2_13 (1<<13)
#define P2_9  (1<<9)
#define P1_0  (1<<0)
#define P1_1  (1<<1)
#define P1_2  (1<<2)
#define P1_3  (1<<3)
#define P1_4  (1<<4)
#define P1_5  (1<<5)
#define P1_6  (1<<6)
#define P1_7  (1<<7)
