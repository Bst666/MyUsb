#include <stdint.h>
#include "hwconfig.h"

#include "psi.h"


int psiInit( void ){
	PSI_INIT;
	return 0;
}



int psiTransfer( int32_t outdata, int32_t* indata ){

    PSI_ENABLE_WRITE;
    PSI_REQ_SET;
    PSI_ACK_WAIT_SET;
    PSI_WRITE_DATA( outdata );
    PSI_REQ_CLR;
    PSI_ACK_WAIT_CLR;

    PSI_RESULT_WAIT_SET;

    PSI_ENABLE_READ;
    PSI_REQ_SET;
    PSI_ACK_WAIT_SET;
    PSI_READ_DATA( *indata );
    PSI_REQ_CLR;
    PSI_ACK_WAIT_CLR;

    return 0;
}

