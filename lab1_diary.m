%%merijuma datu apstrade
%l1.lab.darbs
%doti merijuma dati
%kurus mes noformesim ka datus
Um = [-1 0.3 1.5 2.5 3.2]

Um =

   -1.0000    0.3000    1.5000    2.5000    3.2000

Im = [1.1 2.2 2.1 3.2 4.7];
%pameginiet uzzimet grafiku
plot(Um,Im, 'o-')
%iznaca lauzta linija
%tapec meginasim 
%uzminet kada matematiska sakariba apraksta
%Im atkaribu no Ua
%%
%Pienemsim ka sakaribu apraksta
%2.kartas polinoms
% y = C(1)*x.^2+C(2)*x+C(3);
% polinoma koeficentus atradis
%Matlab funkcija POLYFIT
%sintakse ir sada:
%C = polyfit(x,y,N)
%kur N - ir polinoma karta
C = polyfit(Um,Im,2)

C =

    0.1716    0.3662    1.5034

format compact
%lai iegutu gludu liniju
%noformesu vel vienu ''x''
U = -1:0.01:3.2;
%tad rekinasu y
I = C(1)*U.^2+C(2)*U+C(3);
%zimesim grafiku
%merijumu dati bus ar ''o''
%pielaikotaais polinoms ar liniju
plot(Um,Im,'o',U,I)
%Lai iegutu labakus rezultatus panemsim
%3.kartas polinomu
C = polyfit(Um,Im,3)
C =
    0.1838   -0.4328    0.3391    2.0688
I = C(1)*U.^3+C(2)*U^2+C(3)*U+C(4);
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('mpower')" style="font-weight:bold"> ^ </a>
Inputs must be a scalar and a square matrix.
To compute elementwise POWER, use POWER (.^) instead.} 
I = C(1)*U.^3+C(2)*U.^2+C(3)*U+C(4);
C = polyfit(Um,Im,3)
C =
    0.1838   -0.4328    0.3391    2.0688
plot(Um,Im,'0',U,I)
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Error in color/linetype argument.} 
plot(Um,Im,'o',U,I)
%Tagad izmeginasim ari citas kartas 
%% Izmeginasim POLYVAL funkciju
% tas pats ieprieks
C = polyfit(Um,Im,3);
%I = C(1)*U.^3+C(2)*U.^2+C(3)*U+C(4);
I = polyval(C,U);
plot(Um,Im,'0',U,I)
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Error in color/linetype argument.} 

plot(Um,Im,'o',U,I)


%%Piebilde
%POLYFIT = POLYnomial FITing rekina koef
%POLYVAL = POLYnormal VALues rekina vertibas

%4. karta
C = polyfit(Um,Im,4);
I = polyval(C,U);
plot (Um,Im,'o',U,I)
% pie kartas vienadas ar punktu skait -1
%iznak polinomala interprolacija
%iet precizi caur punktiem
%ieprieksejus gadijumus sauca par
%polinomiala aproksimacija

%% ja ir karta ir pa
C = polyfit(Um,Im,10);
[Warning: Polynomial is not unique; degree >= number of data
points.] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('polyfit', '/usr/local/MATLAB/R2016b/toolbox/matlab/polyfun/polyfit.m', 70)" style="font-weight:bold">polyfit</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2016b/toolbox/matlab/polyfun/polyfit.m',70,0)">line 70</a>)] 
I = polyval(C,U);
Plot(Um,Im,'o',U,I)
{Undefined function 'Plot' for input arguments of type
'double'.} 
plot(Um,Im,'o',U,I)
%Ja sakariba ir lineara
C = polyfit(Um,Im,1);
C
C =
    0.7434    1.6936
I = polyval(C,U);
plot(Um,Im,'o',U,I)
%%Vairakas merijumu serijas
% piememsim ka mes mainam spriegumu
% bet stravu meram 5 reizes
Um = [-1 0.3 1.5 2.5 3.2];
Im = [1.1 2.2 2.1 3.2 4.7;
0.9 1.8 2.6 3.3 4.5;
         1.0 2.0 2.4 3.4 4.3;
Um = [-1 0.3 1.5 2.5 3.2];
 Um = [-1 0.3 1.5 2.5 3.2];
    ↑
{Error: The expression to the left of the equals sign is not a
valid target for an assignment.
} 
Im = [1.1 2.2 2.1 3.2 4.7;
         0.9 1.8 2.6 3.3 4.5;
         1.0 2.0 2.4 3.4 4.3;
         0.8 2.1 2.5 3.5 4.4;
         1.0 2.1 2.3 3.4 4.6];
%%ka matlabs zimes matricas
figure,plot(Um,Im,'0-')
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Error in color/linetype argument.} 
figure,plot(Um,Im,'o-')
%lai transponet matricas
figure,plot(Um,Im','o')
% sec matlabs zime M pa stabinam
% lai polyfit varetu aprekinat ir japanem
% videja vertiba
Ivid = mean(Im)
Ivid =
    0.9600    2.0400    2.3800    3.3600    4.5000
c = polyfit(Um,Ivid,4);
U = -1:0.01:3.2;
I = polyval(C,U);
%uzzimesim 
%ar aplisiem apzimesim merijumu datus 
%ar melnam zvaigznitem apzimeket videjo 
%ar liniju apzimejiet pielaikoto polinomo
plot(Um,'o',Ivid,'*k',U,'-')
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Data must be a single matrix Y or a list of pairs X,Y.} 
figure,plot((U,I,'o'),(Um,Im','*k','-'))
 figure,plot((U,I,'o'),(Um,Im','*k','-'))
               ↑
{Error: Expression or statement is incorrect--possibly
unbalanced (, {, or [.
} 
figure,plot(U,I,'o',Um,Im','*k','-')
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Invalid first data argument} 
figure,plot(U,I,'o',Um,Im','*k')
plot(Um,Ivid,'*k',Um,Im','o',U,I,'-')
%ka attelot videjo kvadratisko novirzi
Ivid_kv_novirze = std(Im);
errorbar(Um,Ivid,Ivid_kv_novirze)
%%
%% Datu iegusana no grafiski uzdotiem datiem
cd 

/home/user

ls
Desktop    Downloads   image2.JPG    VirtualBox VMs
Documents  image1.JPG  lab1_diary.m

%% Pienemsim ka mums ir grafiks JPG formata
% 1.ielasam JPG uz matlabu
A = imread('image1.JPG');
B = imread('image2.JPG');
% 2. uzzimesim
figure(1),image(A);
figure(2),image(B);
figure(2),image([0 14],[0 80],B);
% Yass ir uz otru pusi
figure(2),image([0 14],[80 0],B);
set(gca,'YDir','normal')
%%Tagad varam nolasit datus
shg
[x,y]=ginput(8)
x =
    3.7005
    4.1149
    4.6250
    5.2307
    5.8045
    6.7609
    7.8129
   11.6066
y =
   10.3619
   14.9216
   19.7213
   24.0410
   26.9209
   31.2406
   34.3604
   42.0399
diary off
