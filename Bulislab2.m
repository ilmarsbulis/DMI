%Uzdevums-1 2. lab.darbs Ilmars Bulis
%atrisinat vienadojumu a + exp(b*x^2-x) = 100 ; x = ?
syms a b x
solve(a + exp(b*x^2-x),x)
y=solve(a + exp(b*x^2-x),x)
pretty(y)

%Uzdevums-2 2. lab.darbs 
%f(x) = cos(2x) (5x + 8), F(x)-? x from [-4pi to 4pi]
