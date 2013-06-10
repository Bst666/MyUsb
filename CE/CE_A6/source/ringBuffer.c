#include "ringBuffer.h"

/* VARIABLES 
unsigned int in;
unsigned int out;
unsigned int size;
int *current_buffer;
int *buffer1;
int *buffer2;

void rb_init() {
    // allocate memory for buffer
    buffer1 = (int*) malloc(sizeof(int) * BUFFER_SIZE);
    buffer2 = (int*) malloc(sizeof(int) * BUFFER_SIZE);

    // set variables to default
	current_buffer = buffer1;
    in   = 0;
    out  = 0;
    size = 0;
}

void rb_cleanup() {
    // free allocated memory
    free(buffer1);
    buffer1 = NULL;
    free(buffer2);
    buffer2 = NULL;

    // set variables to default
    current_buffer = NULL;
    in   = 0;
    out  = 0;
    size = 0;
}

int rb_read() {
    // if ring buffer is empty => return
    if (size == 0) {
        return 0;
    }

    int index = out;
    out = (out + 1) % BUFFER_SIZE;

    size--;

    return buffer1[index];
}

void rb_write(int value) {
	disableIRQ();

    // if ring buffer is full => return
    if (size == BUFFER_SIZE) {
        return;
    }
    	
    int index = in;
    in = (in + 1) % BUFFER_SIZE;

    size++;

    buffer1[index] = value;

	enableIRQ();   	
}
   
boolean_t rb_isEmpty() {
    return (size == 0) ? TRUE : FALSE;
}

boolean_t rb_isFull() {
    return (size == (2 * BUFFER_SIZE)) ? TRUE : FALSE;
}       */

/************************************** EOF *********************************/
