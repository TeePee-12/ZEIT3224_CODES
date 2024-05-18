# -*- coding: utf-8 -*-
"""
Created on Fri Mar 24 16:47:11 2023

@author: Thomas
"""

import cmath

v=cmath.rect(300,90)

r=80+60j

I=v/r

I
Out[35]: (0.5338173157709959+2.9521245016738447j)

cmath.polar(I)
Out[36]: (2.9999999999999996, 1.391904590692505)

v
Out[37]: (-134.42208483875103+268.19899908016737j)

cmath.polar(v)
Out[38]: (300.0, 2.035405699485789)

v=cmath.rect(300,1.5707)

v
Out[40]: (0.028898038424300145+299.9999986081723j)

I=v/r

I
Out[42]: (1.8002311759564282+2.3998266006348326j)

cmath.polar(I)
Out[43]: (3.0, 0.9271988912067156)

P=(v**2)/r

P
Out[45]: (-719.8959537006092+540.1387005626337j)

abs(P)
Out[46]: 900.0000000000001

zl=80+60j

a=1/4

a
Out[49]: 0.25

zl
Out[50]: (80+60j)



zl*(a**2)
Out[51]: (5+3.75j)

zeq=0.05+1.1j

zeq
Out[53]: (0.05+1.1j)

vp
Traceback (most recent call last):

  File "<ipython-input-54-968f0b1f6822>", line 1, in <module>
    vp

NameError: name 'vp' is not defined


vp=110

vl=vp*((zl*(a**2))/)
  File "<ipython-input-56-97a49dd30455>", line 1
    vl=vp*((zl*(a**2))/)
                       ^
SyntaxError: invalid syntax


vp=110

zleq=zl*(a**2)

vl=vp*(zleq/(zleq+zeq))

vl
Out[60]: (97.46302906680265-11.919938806731258j)

VR=(vp-vl)/vl

VR=VR*100

VR
Out[63]: (11.200000000000005+13.599999999999998j)

VR=(vp-vl)/vl

VR
Out[65]: (0.11200000000000004+0.13599999999999998j)

VR=((abs(vp)-abs(vl))/abs(vp))

VR
Out[67]: 0.10737053970243228

Is=5*a**2

Is
Out[69]: 0.3125

Is*(req+xeq)
Traceback (most recent call last):

  File "<ipython-input-70-2588046556a6>", line 1, in <module>
    Is*(req+xeq)

NameError: name 'req' is not defined


zeq
Out[71]: (0.05+1.1j)

Is*zeq
Out[72]: (0.015625+0.34375j)

Is
Out[73]: 0.3125

abs(Is*zeq)
Out[74]: 0.34410493039914436
