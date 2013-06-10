

#define UDL_BLOCKLEN 256
#define UDL_FRAMELEN (UDL_BLOCKLEN+5)

#define UDL_EOF            -1
#define UDLERR_TIMEOUT     -2
#define UDLERR_NOACK       -3
#define UDLERR_CRC         -4
#define UDLERR_FILENAME    -5
#define UDLERR_FILEMODE    -6
#define UDLERR_EOF         -7
#define UDLERR_ZEROFILELEN -8



typedef struct Updownload {
    char buffer[UDL_FRAMELEN];
    int  mode;
    int  framecnt;
    int  pos;
    int  len;
    int  eof;
}Updownload;


int udl_open( Updownload* updownload, char* filename, int mode );
int udl_close( Updownload* updownload );
int udl_getc( Updownload* updownload );
int udl_putc( Updownload* updownload, int ch );
