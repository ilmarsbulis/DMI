# _*_ coding: utf-8 _*_
from math import sin


def mans_sinuss(x):
    k = 0
    a = (-1)**0*x**1/(1)
    S = a
    print "a0 = %.6f S0 = %.2f"%(a,S)

    while k <= 3: # 0<=3(1), 1<=3 (2), 2<=3 (30, 3<=3 (4)
        k = k + 1
        R = (-1) * x**2/((2*k)*(2*k+1))
        a = a * R
        S = S + a
        print "Izdruka no g.f a%d = %6.2f S%d = %6.2f"%(k,a,k,S)
    return S
    print "Izdruka no galv. f. Beigas"
    

x = 1. * input("Izdruka no galvenas funkc Lietotaj,ludzu, ievadi argumentu (x): ")
y = sin(x)
print "standarta sin(%.2f)=%.2f"%(x,y)
yy = mans_sinuss(x)'
