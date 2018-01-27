# -*- coding: utf-8 -*-

from math import cos
import numpy as np
import matplotlib.pyplot as plt

def j1(x):
    k = 0
    a = (-1)*x/(0)
    S = a
    while k < 500:
        k = k + 1
        R = (-1)**k*x**2**k/((2*k)*(2*k))	
        a = a * R
        S = S + a
        F = (x*0.5)*S
        return F


a=0
b=20
delta_x = 0.5
x = np.arange(a,b,delta_x)
y = j1(x)
plt.plot(x,y)
plt.grid()
plt.show()



n = len(x)
y_prim = []
for i in range (n-1):
    y_prim.append((y[i+1]-y[i])/(x[i+1]-x[i]))
plt.plot(x[:n-1],y_prim)
plt.show()



n= len(x[:n-1])
y_prim2= []
for i in range (n-2):
    y_prim2.append((y_prim[i+1]-y_prim[i])/(x[i]-x[i-1]))
plt.plot(x[:n-2],y_prim2)
plt.show()
