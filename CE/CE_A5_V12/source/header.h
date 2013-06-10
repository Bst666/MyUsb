#ifndef _HEADER_H_
#define _HEADER_H_


/*********** INCLUDES ************/
#include <stdio.h>
#include "lpc24xx.h"
#include "config.h"
#include "ConfigStick.h"
#include "portlcd.h"
#include "fio.h"
#include "delay.h"


/************ DEFINES ************/
#define BYTE_GROUP_SIZE 4      // bytes sent at once


/************  TYPES  ************/
typedef enum {
 	FALSE = 0,
	TRUE  = 1
}boolean_t;


#endif //_HEADER_H_
