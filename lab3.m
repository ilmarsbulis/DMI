function y = lab3_fun(t)
t = 0:0.01:8;

%t_const2 = 0:0.01:1;
t_const2_f = (t>=0)&(t<1); t_const2 = t(t_const2_f);
%t_sin = 1:0.01:2.5;
t_sin_f = (t>1)&(t<2.5); t_sin = t(t_sin_f);
%t_noise = 2.5:0.01:4.5;
t_noise_f = (t>2.5)&(t<4.5); t_noise = t(t_noise_f);
%t_const = 4.5:0.01:6.5;
t_const_f = (t>4.5)&(t<6.5); t_const = t(t_const_f);
%t_saw = 6.5:0.01:8;
t_saw_f = (t>6.5)&(t<=8); t_saw = t(t_saw_f);
%% Gabalveida signala montaza 
%% Sinusoida
% y_sin = A0+A*sin(2*pi*f*(t-delay))
A0=0; A = 2.5; T = (2.5*1)/3.5; f = 1/T; delay = 1;
y_sin = A0+A*sin(2*pi*f*(t_sin-delay));
%plot(t_sin,y_sin)
%% Lineari mainigs signals
%y_saw = k*(t_saw-delay)
%k = (yA-yB)/(tA*tB) - liknes slipuma loeficients
% delay lai noteiktu delay ir jaskatas krustpunkts 
% ar t asi (y=0)
yA = 2.5;
k = (2.5-(-2.5))/(6.5-8);
delay = 7.25;
y_saw = k*(t_saw-delay);
%plot(t_saw,y_saw)
%%Konstantes signals
%y_const = 2.5; %nepareizi jo elementu skaitam jabut vienadam
%y_const = [2.5 2.5 2.5 2.5 2.5 2.5 jauzraksta 201 reizi
y_const = zeros(1,201)+2.5; % viena rinda 201 kolona 
y_const = ones(1,201)*2.5;
% si piieja ari nav korrekta jo izmainisies elementu
%skait vektoram t_const, tad y_const neizmainisises
y_const = zeros(size(t_const))+2.5;
%plot(t_const,y_const)
%% nulu signals 
y_const2 = zeros(size(t_const2));
%plot(t_const2,y_const2)
%troksna signali
y_noise = 3*rand(size(t_noise))-1.5;
%plot(t_noise,y_noise)
%signalu apvienoshana 
%t = [t_const2,t_sin,t_noise,t_const,t_saw];
%y = [y_const2,y_sin,y_noise,y_const,y_saw];
plot(t,y)




