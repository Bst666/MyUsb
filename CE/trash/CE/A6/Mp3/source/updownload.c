
#include <string.h>
#include "uart.h"

#include "updownload.h"


#define PUTCHAR uart0Putch
#define GETCHAR uart0Getch
#define TIMEOUT 1000000


static int calcrc(char* buf, int len);
static int udl_write( char* buf, int len );
static int udl_read( char* buf, int len );
static int udl_waitforResponse( void );
static void udl_discardchars( void );


int udl_open( Updownload* updownload, char* filename, int mode ){
    int n;
    int rc;

    n=strlen( filename );
    if( n > 256 ){
        return UDLERR_FILENAME;
    }
    memcpy( &updownload->buffer[3], filename, n );
    updownload->buffer[0] = 1;
    updownload->buffer[1] = mode==0? 0x10 : 0x20;
    updownload->buffer[2] = n-1;

    n = calcrc( updownload->buffer, UDL_FRAMELEN-2 );
    updownload->buffer[UDL_FRAMELEN-2] = n>>8;
    updownload->buffer[UDL_FRAMELEN-1] = n;

    udl_discardchars();
    
    rc = udl_write( "\x00\x1b[Z", 4 );
    if( rc < 0 ){
      udl_write( "\x01", 1 );
      return rc;  //timeout
    }
    rc = udl_write(updownload->buffer, UDL_FRAMELEN );
    if( rc < 0 ){
      udl_write( "\x01", 1 );
      return rc;  //timeout
    }

    rc = udl_waitforResponse();
    if( rc < 0 ){
      udl_write( "\x01", 1 );
      return rc; // no ack or timeout
    }

    updownload->pos      = 0;
    updownload->len      = 0;
    updownload->eof      = 0;
    updownload->mode     = mode;
    updownload->framecnt = 1;

    return 0;
}

int udl_close( Updownload* updownload ){
    int n;
    int rc;


    if( updownload->mode==0 ){
        //write mode
        if( updownload->pos==0 ){
          return UDLERR_ZEROFILELEN;
        }

        updownload->buffer[0] = 1;
        updownload->buffer[1] = 0x90 + (updownload->framecnt & 0xf);
        updownload->buffer[2] = updownload->pos-1;

        n = calcrc( updownload->buffer, UDL_FRAMELEN-2 );
        updownload->buffer[UDL_FRAMELEN-2] = n>>8;
        updownload->buffer[UDL_FRAMELEN-1] = n;
        rc = udl_write(updownload->buffer, UDL_FRAMELEN );
        if( rc < 0 ){
          return rc;  //timeout
        }
        rc = udl_waitforResponse();
        if( rc < 0 ){
          return rc; // no ack or timeout
        }
        updownload->eof = 1;
        return 0;
    } else {
        //read mode
        if( updownload->eof ){
          return 0;
        }

        //abbrechen
        udl_write( "\x01", 1 );
        updownload->eof = 0;
        return 0;
    }
    return 0;
}




int udl_getc( Updownload* updownload ){
    int rc;

    if( updownload->mode != 1 ){
        return UDLERR_FILEMODE;
    }

    if( updownload->pos >= updownload->len ){
        if( updownload->eof != 0 ){
            return UDL_EOF;  //eof
        }
        rc = udl_read( updownload->buffer, UDL_FRAMELEN );
        if( rc < 0 ){
            udl_write( "\x01", 1 );
            return rc;
        }
        rc = calcrc( updownload->buffer, UDL_FRAMELEN );
        if( rc != 0 ){
            udl_write( "\x01", 1 );
            return UDLERR_CRC;
        }

        udl_write( "\x06", 1 );
        updownload->len = (updownload->buffer[2] & 0xff) + 1;
        updownload->eof = (updownload->buffer[1] & 0x80) != 0;
        updownload->pos = 0;

    }
    return updownload->buffer[3+updownload->pos++] & 0xff;
}


int udl_putc( Updownload* updownload, int ch ){
    int rc;
    int n;

    if( updownload->mode != 0 ){
        return UDLERR_FILEMODE;
    }
    if( updownload->eof ){
        return UDLERR_EOF;
    }
    //Pruefung auf vollem Block muss am Anfang stehen,
    //da eventuell noch das EOF-Flag hinzugefuegt werden
    //muss (durch close).
    if( updownload->pos >= UDL_BLOCKLEN ){
        updownload->buffer[0] = 1;
        updownload->buffer[1] = 0x10 + (updownload->framecnt & 0xf);
        updownload->buffer[2] = UDL_BLOCKLEN-1;

        n = calcrc( updownload->buffer, UDL_FRAMELEN-2 );
        updownload->buffer[UDL_FRAMELEN-2] = n>>8;
        updownload->buffer[UDL_FRAMELEN-1] = n;
        rc = udl_write(updownload->buffer, UDL_FRAMELEN );
        if( rc < 0 ){
          return rc;  //timeout
        }
        rc = udl_waitforResponse();
        if( rc < 0 ){
          return rc; // no ack or timeout
        }

        updownload->pos     = 0;
        updownload->framecnt++;
    }
    updownload->buffer[3+updownload->pos++]  = ch;
    return 0;
}



static int calcrc(char* buf, int len) {
  int crc, i;
  int count = 0;

  crc = 0;
  while (count < len) {
    crc = crc ^ buf[count] << 8;
    //System.out.printf(" %04X", crc & 0xffff );
    for (i = 0; i < 8; ++i) {
      if ((crc & 0x8000) != 0) {
        crc = crc << 1 ^ 0x1021;
      } else {
        crc = crc << 1;
      }
    }
    count++;
  }
  return (crc & 0xFFFF);
}




static void udl_discardchars( void ){
    int rc;
    do {
        rc = GETCHAR( );
        if( rc < 0 ){
          return;
        }
    }while( 1 );

    return;
}


static int udl_getchar( void ){
    int rc;
    int i = TIMEOUT;
    do {
        rc = GETCHAR( );
        if( rc >= 0 ){
          return rc;
        }
        if( i-- <= 0 ){
          return UDLERR_TIMEOUT;
        }
    }while( 1 );

    return 0;
}


static int udl_putchar( int ch ){
    int rc;
    int i = TIMEOUT;
    do {
        rc = PUTCHAR( ch );
        if( rc >= 0 ){
          return 0;
        }
        if( i-- <= 0 ){
          return UDLERR_TIMEOUT;
        }
    }while( 1 );

    return 0;
}


static int udl_write( char* buf, int len ){
    int i;
    int rc = 0;

    for( i=0; i<len && rc>=0; i++ ){
        rc = udl_putchar( buf[i] );
    }
    return rc;
}



static int udl_read( char* buf, int len ){
    int i;
    int rc;

    for( i=0; i<len; i++ ){
        rc = udl_getchar( );
        if( rc < 0 ){
          return rc;
        }
        buf[i] = rc;
    }
    return 0;
}



static int udl_waitforResponse( void ){
    int rc;
    rc = udl_getchar();

    if( rc < 0 ) {
      return rc;          //timeout
    } else if( rc == 6 ){
      return 0;           //ACK
    } else {
      return UDLERR_NOACK;  //kein ACK
    }
}





