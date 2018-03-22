function y = labd3_fun(t)
t = 0:0.01:5.5;
t_saw_f = (t>0)&(t<1); t_saw = t(t_saw_f);
t_const2_f = (t>=1)&(t<2.5); t_const2 = t(t_const2_f);
t_sin_f = (t>2.5)&(t<4); t_sin = t(t_sin_f);
t_const_f = (t>4)&(t<5); t_const = t(t_const_f);
t_noise_f = (t>5)&(t<=5.5); t_noise = t(t_noise_f);
%pirma no 0 lidz 1
yA = -0.5;
k = (-0.5-0)/(0-1);
delay = 1;
y_saw = k*(t_saw-delay);
%otra no 1 lidz 2.5
y_const2 = zeros(size(t_const2));
%sinusoida no 2.5 lidz 4
A0=0; A = 0.5; T = (0.5*1)/3.5; f = 1/T; delay = 2.5;
y_sin = A0+A*sin(2*pi*f*(t_sin-delay));
%4. konstante
y_const = zeros(1,101)+0.5; 
y_const = ones(1,101)*0.5;
%troksnis
y_noise = 3*rand(size(t_noise))-0.25;
t = [t_saw,t_const2,t_sin,t_const,t_noise];
y = [y_saw,y_const2,y_sin,y_const,y_noise];
plot(t,y)