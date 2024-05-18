# -*- coding: utf-8 -*-
"""
Created on Mon Mar 13 08:25:10 2023

@author: Thomas
"""


import cmath

#Load Current Q2
V_Load = 40*cmath.exp(0j)
Z_Load = 28.6+28j

I_Load = V_Load/Z_Load
print("I_Load ", I_Load)

#Voltage Regulation Q3
Z_xl = 114.4+112j
Z_xp = 1.2+0.5j
V_p = V_nl = 220

V_fl = V_p*(Z_xl/(Z_xl+Z_xp))
print("V_fl ", V_fl)
print("Voltage Regulation: = {:.3f}% ".format(((abs(V_nl)-abs(V_fl))/abs(V_fl))*100))
