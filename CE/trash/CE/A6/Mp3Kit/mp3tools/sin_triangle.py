# -*- coding: utf-8 -*-

import math, struct

fsample = 44100.
fwave = 440.
amplitude = 25000
maxtime = 100

f=file( "sin_triangle.bin", "w" )

t=0
while t<maxtime:
  vsin = amplitude*math.sin( t * 2 * math.pi * fwave )
  vtriangle = (t*fwave) % 1.0
  if vtriangle < 0.25:
    vtriangle = vtriangle * 4 * amplitude
  elif vtriangle < 0.75:
    vtriangle = (0.5-vtriangle) * 4 * amplitude
  else:
    vtriangle = (vtriangle-1.0) * 4 * amplitude
  #print t, vtriangle, vsin
  s = struct.pack( "hh", vsin,vtriangle )
  f.write( s )
  t=t + 1/fsample

f.close()