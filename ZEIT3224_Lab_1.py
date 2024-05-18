# -*- coding: utf-8 -*-
"""
Created on Fri Mar  3 16:31:52 2023

@author: Thomas
"""
##Convert rads to degrees: rad* 180/pi = degrees
#%%Question 1
import math
import cmath
import matplotlib.pyplot as plt
import numpy as np


#CHANGE THESE VARIABLES
V_SUPP = 120 #Input Side Voltage
Freq = 50 #Input side supply voltage
R = 280
L = 0.6
C = 10e-9

#Secondary Transformer Voltage Calcs
Vph = V_SUPP/5

#Impedance calcs
ZL = complex(0, 2*math.pi*Freq*L)
ZC = complex(0, 1/(2*math.pi*Freq*C))

#Red Phase (Resistor)
vr = cmath.rect(Vph, 0)
Ir = vr/R
Sr = (Vph*Vph)/R
Pr = Sr.real
Qr = Sr.imag
print("Red Phase Current: "+str(cmath.polar(Ir)))
print("Red Phase S: "+str(Sr))
print("Red Phase P: "+str(Pr))
print("Red Phase Q: "+str(Qr))

#Yellow Phase (Inductor)
vy = cmath.rect(Vph, (2*math.pi)/3)
Iy = vy/ZL
Sy = (Vph*Vph)/ZL
Py = Sy.real
Qy = Sy.imag
print("Yellow Phase Current: "+str(cmath.polar(Iy)))
print("Yellow Phase S: "+str(Sy))
print("Yellow Phase P: "+str(Py))
print("Yellow Phase Q: "+str(Qy))

#Blue Phase (Capacitor)
vb = cmath.rect(Vph, (4*math.pi)/3)
Ib = vb/ZC
Sb = (Vph*Vph)/ZC
Pb = Sb.real
Qb = Sb.imag
print("Blue Phase Current: "+str(cmath.polar(Ib)))
print("Blue Phase S: "+str(Sb))
print("Blue Phase P: "+str(Pb))
print("Blue Phase Q: "+str(Qb))


fig = plt.figure()
ax = fig.add_subplot(111, polar=True)

# Plot a line from the origin to the data point
ax.plot([0, cmath.phase(vr)], [0, abs(vr)], color='red', linewidth=2, label='vr[V]')
ax.plot([0, cmath.phase(Ir)], [0, abs(Ir)*1000], '--', color='black', linewidth=2, label='Ir[mA]')
ax.plot([0, cmath.phase(vy)], [0, abs(vy)], color='yellow', linewidth=2, label='vy[V]')
ax.plot([0, cmath.phase(Iy)], [0, abs(Iy)*1000], '--', color='yellow', linewidth=2, label='Iy[mA]')
ax.plot([0, cmath.phase(vb)], [0, abs(vb)], color='blue', linewidth=2, label='vb[V]')
ax.plot([0, cmath.phase(Ib)], [0, abs(Ib)*1000000], '--', color='blue', linewidth=2, label='Ib[e-7 A]')


ax.legend(bbox_to_anchor=(0,0,1,1), bbox_transform=fig.transFigure)
# Add a legend and show the plot
plt.title("ZEIT3220 Lab 1 Prelab Problem Phasor Diagram")
plt.show()



