# _*_ coding: utf-8 _*_
from math import sin
x = 1. * input("Lietotaj,ludzu, ievadi argumentu (x): ")
y = sin(x)
print "sin(%.2f)=%.2f"%(x,y)


k = 0
a = (-1)**0*x**1/(1)
S = a
print "a0 = %.6f S0 = %.2f"%(a,S)

while k <= 3: # 0<=3(1), 1<=3 (2), 2<=3 (30, 3<=3 (4)
    k = k + 1
    a = a * (-1) * x**2/((2*k)*(2*k+1))
    S = S + a
    print "a%d = %6.2f S%d = %6.2f"%(k,a,k,S)

print "Beigas"



'''
k = k + 1
a = a * (-1) * x**2/((2*k)*(2*k+1))
S = S + a
print "a%d = %6.2f S%d = %6.2f"%(k,a,k,S)

K = k + 1
a = a * (-1) * x**2/((2*k)*(2*k+1))
S = S + a
print "a%d = %6.2f S%d = %6.2f"%(k,a,k,S)


k = k + 1
a = a * (-1) * x**2/((2*k)*(2*k+1))
S = S + a
print "a%d = %6.2f S%d = %6.2f"%(k,a,k,S)
'''
