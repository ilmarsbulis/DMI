# _*_ coding: utf-8 _*_
from math import sin
#a0, a1, a2, a3, S0, S1, S2, S3 -> S
x = 1. * input("Lietotaj,ludzu, ievadi argumentu (x): ")
y = sin(x)
print "sin(%.2f)=%.2f"%(x,y)

a0 = (-1)**0*x**1/(1)
S = a0
S0 = a0
print "a0 = %.6f S0 = %.2f"%(a0,S)



a1 = (-1)**1*x**3/(1*2*3)
# S1 = a0 + a1
S = S + a1
print "a1 = %.6f S1 = %.2f"%(a1,S)

a2 = (-1)**2*x**5/(1*2*3*4*5)
S = S + a2
print "a2 = %.6f S2 = %.2f"%(a2,S)


a3 = (-1)**3*x**7/(1*2*3*4*5*6*7)
# S3 = a1 + a2 + a3
S = S + a3
print "a3 = %.6f S3 = %.2f"%(a3,S)

