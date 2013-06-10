# -*- coding: utf-8 -*-
MAX=30000.
A=1/32768.
B=1-MAX*A

import math, os
import sys,struct

def f0(xorg):
  return xorg

def f1(xorg):
  if xorg>=0:
    x = xorg
    s = 1
  else:
    x = -xorg
    s = -1
  return (x*x*A + x*B) * s


def f2(xorg):
  if xorg>=0:
    x = xorg
    s = 1
  else:
    x = -xorg
    s = -1
  return   ( (-B+math.sqrt(B*B+4*A*x))/2/A ) * s




def plot():
  fi=file( "play.gpl", "w" )
  fi.write("""
  set grid
  plot "play.dat" using 1:2 with line title "Verzerr-Kennlinie", "play.dat" using 1:3 with line title "Entzerr-Kennlinie"
  """);
  fi.close()

  fi=file( "play.dat", "w" )
  x=-MAX
  while x<=MAX:
    fi.write( "%f %f %f\n" % ( x, f1(x), f2(x) ) )
    x+=2*MAX/100
  fi.close()


  os.system( "gnuplot -persist play.gpl" )

def zerr(infilename, outfilename, maxsamples, fkt):
  cnt=0
  fi=file( infilename )
  fo=file(outfilename,"w")
  while cnt<maxsamples:
    next=maxsamples-cnt
    if next > 125000:
      next = 125000
    d=fi.read(next*4)
    if not d:
      break

    n = len(d)/2
    cnt += n
    print "%5.1f MByte %d" % (cnt/1024./1024*2, len(d))

    d=struct.unpack("%dh"%(n,), d )

    #print cnt, len(d)
    result = [0]*n
    for i in range(n):
      result[i] = int(fkt(d[i]))
      if result[i] > 32767:
        print result[i]
        result[i] = 32767
      elif result[i]<-32768:
        print result[i]
        result[i]=-32768

    #print cnt, len(d)

    d=struct.pack("%dh"%(n,), *result )
    fo.write( d )
  fo.close()
  fi.close()

  return


def main():
  if len(sys.argv)==2 and sys.argv[1] == 'plot':
    plot()
  elif len(sys.argv)==5 and sys.argv[1] == 'transfer':
    zerr(sys.argv[2], sys.argv[3], int(sys.argv[4]), f0)
  elif len(sys.argv)==5 and sys.argv[1] == 'verzerr':
    zerr(sys.argv[2], sys.argv[3], int(sys.argv[4]), f1)
  elif len(sys.argv)==5 and sys.argv[1] == 'entzerr':
    zerr(sys.argv[2], sys.argv[3], int(sys.argv[4]), f2)
  else:
    print "Benutzung:"
    print "  Kennlinie anzeigen:"
    print "    %s plot" % sys.argv[0]
    print "  Uebertragen:"
    print "    %s transfer <indatei> <outdatei> <MaxAnzahlSamples>" % sys.argv[0]
    print "  Verzerren:"
    print "    %s verzerr <indatei> <outdatei> <MaxAnzahlSamples>" % sys.argv[0]
    print "  Entzerren:"
    print "    %s entzerr <indatei> <outdatei> <MaxAnzahlSamples>" % sys.argv[0]


main()
