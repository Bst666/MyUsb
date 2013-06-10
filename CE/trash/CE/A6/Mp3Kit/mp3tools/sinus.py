
import math, struct

fsample = 44100.
fwave = 440.

f=file( "sinus.wav", "w" )

t=0
while t<10:
  v = 25000*math.sin( t * 2 * math.pi * fwave )
  s = struct.pack( "hh", v,v )
  f.write( s )
  t=t + 1/fsample

f.close()