# _*_ coding: utf-8 _*_
from math import sin
#a0, a1, a2, a3 -> a
x = 1. * input("Lietotaj,ludzu, ievadi argumentu (x): ")
y = sin(x)
print "sin(%.2f)=%.2f"%(x,y)

#a0 = (-1)**0*x**1/(1)
a = (-1)**0*x**1/(1)
#S = a0
S = a
print "a0 = %.6f S0 = %.2f"%(a,S)



#a1 = (-1)**1*x**3/(1*2*3)
#a1 = a0 * (-1) * x**2/(2*3)
a = a * (-1) * x**2/(2*3)
S = S + a
print "a1 = %.6f S1 = %.2f"%(a,S)

#a2 = (-1)**2*x**5/(1*2*3*4*5)
a = a * (-1) * x**2/(4*5)
#S = S + a2
S = S + a
print "a2 = %.6f S2 = %.2f"%(a,S)


#a3 = (-1)**3*x**7/(1*2*3*4*5*6*7)
#a3 = a2 * (-1) * x**2/(6*7)
a = a * (-1) * x**2/(6*7)
#S = S + a3
S = S + a
print "a3 = %.6f S3 = %.2f"%(a,S)

