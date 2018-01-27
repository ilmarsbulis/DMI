#!/usr/bin/python
#-*- coding: utf-8 -*-

# Moduļu import.
from math import factorial
import numpy as np
import matplotlib.pyplot as plt

# Funkcijas definešāna.
def my_atan(x):
    S=0
    for i in range(500):
        a=(factorial(2*i))/(factorial(i)**2*2**(2*i)*(2*i+1))*((x**2/(1+x**2))**i)
        S=S+a
    s=x/np.sqrt(1+x**2)*S
    return s


# Zīmēšana
a=0
b=3*np.pi
x=np.arange(a,b,0.5)
y=my_atan(x)
plt.plot(x,y)
plt.grid()
#plt.show()

# Atvasinājums un tā zīmēšana.
n=len(x)
y_prim=[]
for i in range(n-1):
    y_prim.append((y[i+1]-y[i])/(x[i+1]-x[i]))
plt.plot(x[:n-1],y_prim)
plt.show()

# Otrās kārtas atvasinajums un ta zimešana.
m=len(y_prim)
y2_prim=[]
for i in range(m-1):
    y2_prim.append((y_prim[i+1]-y_prim[i])/(x[i+1]-x[i]))
plt.plot(x[:m-1],y2_prim)
#plt.show()
