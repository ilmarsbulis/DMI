
format compact
pi
ans =
    3.1416
%%izveidosim matricu
A = [13 45 23; 14 47 1; 7 21 7]
A =
    13    45    23
    14    47     1
     7    21     7
A = [13 45 23; 14 47 1; 7 21 7];
%% uzzimesim grafiku
% zimesim 2.kartas polinoms
% y=ax^2 + b + c
C=[0 3 7];
x = -6:2:6; % sakuma vertiba:solis:beiguma vertiba
y = C(1)*x^2+C(2)*x+C(3)
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('mpower')" style="font-weight:bold"> ^ </a>
Inputs must be a scalar and a square matrix.
To compute elementwise POWER, use POWER (.^) instead.} 
y = C(1)*x.^2+C(2)*x+C(3)
y =
   -11    -5     1     7    13    19    25
plot(x,y)% zime grafikus
%samazinasim soli
x2=6:0.01:6;
y = C(1)*x2.^2+C(2)*x2+C(3)
y =
    25
y = C(1)*x2.^2+C(2)*x2+C(3);
plot(x2,y2)
{Undefined function or variable 'y2'.} 
y2 = C(1)*x2.^2+C(2)*x2+C(3);
y = C(1)*x.^2+C(2)*x+C(3);
plot(x2,y2)
y2 = C(1)*x2.^2+C(2)*x2+C(3);
x2= 6:0.01:6;
x2= 6:01:6;
x2=-6:0.01:6;
plot(x2,y2)
%vi
a
{Undefined function or variable 'a'.} 
%vash\
shg
%vairaki grafiki uz vienas asim 
plot(x,y,x2,y2)
plot(x,y,x2,y2)
y2 = C(1)*x2.^2+C(2)*x2+C(3);
plot(x,y,x2,y2)
%linijas izskata maina 
plot(x,y)
plot(x,y,'0')
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Error in color/linetype argument.} 
plot(x,y,'o')
plot(x,y,'g')
plot(x,y,'g')
plot(x,y,';')
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Error in color/linetype argument.} 
plot(x,y,':')
plot help
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Invalid first data argument.} 
help plot
 <strong>plot</strong>   Linear plot. 
    <strong>plot</strong>(X,Y) plots vector Y versus vector X. If X or Y is a matrix,
    then the vector is plotted versus the rows or columns of the matrix,
    whichever line up.  If X is a scalar and Y is a vector, disconnected
    line objects are created and plotted as discrete points vertically at
    X.
 
    <strong>plot</strong>(Y) plots the columns of Y versus their index.
    If Y is complex, <strong>plot</strong>(Y) is equivalent to <strong>plot</strong>(real(Y),imag(Y)).
    In all other uses of <strong>plot</strong>, the imaginary part is ignored.
 
    Various line types, plot symbols and colors may be obtained with
    <strong>plot</strong>(X,Y,S) where S is a character string made from one element
    from any or all the following 3 columns:
 
           b     blue          .     point              -     solid
           g     green         o     circle             :     dotted
           r     red           x     x-mark             -.    dashdot 
           c     cyan          +     plus               --    dashed   
           m     magenta       *     star             (none)  no line
           y     yellow        s     square
           k     black         d     diamond
           w     white         v     triangle (down)
                               ^     triangle (up)
                               <     triangle (left)
                               >     triangle (right)
                               p     pentagram
                               h     hexagram
                          
    For example, <strong>plot</strong>(X,Y,'c+:') plots a cyan dotted line with a plus 
    at each data point; <strong>plot</strong>(X,Y,'bd') plots blue diamond at each data 
    point but does not draw any line.
 
    <strong>plot</strong>(X1,Y1,S1,X2,Y2,S2,X3,Y3,S3,...) combines the plots defined by
    the (X,Y,S) triples, where the X's and Y's are vectors or matrices 
    and the S's are strings.  
 
    For example, <strong>plot</strong>(X,Y,'y-',X,Y,'go') plots the data twice, with a
    solid yellow line interpolating green circles at the data points.
 
    The <strong>plot</strong> command, if no color is specified, makes automatic use of
    the colors specified by the axes ColorOrder property.  By default,
    <strong>plot</strong> cycles through the colors in the ColorOrder property.  For
    monochrome systems, <strong>plot</strong> cycles over the axes LineStyleOrder property.
 
    Note that RGB colors in the ColorOrder property may differ from
    similarly-named colors in the (X,Y,S) triples.  For example, the 
    second axes ColorOrder property is medium green with RGB [0 .5 0],
    while <strong>plot</strong>(X,Y,'g') plots a green line with RGB [0 1 0].
 
    If you do not specify a marker type, <strong>plot</strong> uses no marker. 
    If you do not specify a line style, <strong>plot</strong> uses a solid line.
 
    <strong>plot</strong>(AX,...) plots into the axes with handle AX.
 
    <strong>plot</strong> returns a column vector of handles to lineseries objects, one
    handle per plotted line. 
 
    The X,Y pairs, or X,Y,S triples, can be followed by 
    parameter/value pairs to specify additional properties 
    of the lines. For example, <strong>plot</strong>(X,Y,'LineWidth',2,'Color',[.6 0 0]) 
    will create a plot with a dark red line width of 2 points.
 
    Example
       x = -pi:pi/10:pi;
       y = tan(sin(x)) - sin(tan(x));
       plot(x,y,'--rs','LineWidth',2,...
                       'MarkerEdgeColor','k',...
                       'MarkerFaceColor','g',...
                       'MarkerSize',10)
 
    See also <a href="matlab:help plottools">plottools</a>, <a href="matlab:help semilogx">semilogx</a>, <a href="matlab:help semilogy">semilogy</a>, <a href="matlab:help loglog">loglog</a>, <a href="matlab:help plotyy">plotyy</a>, <a href="matlab:help plot3">plot3</a>, <a href="matlab:help grid">grid</a>,
    <a href="matlab:help title">title</a>, <a href="matlab:help xlabel">xlabel</a>, <a href="matlab:help ylabel">ylabel</a>, <a href="matlab:help axis">axis</a>, <a href="matlab:help axes">axes</a>, <a href="matlab:help hold">hold</a>, <a href="matlab:help legend">legend</a>, <a href="matlab:help subplot">subplot</a>, <a href="matlab:help scatter">scatter</a>.

    <a href="matlab:doc plot">Reference page for plot</a>
    <a href="matlab:matlab.internal.language.introspective.overloads.displayOverloads('plot')">Other functions named plot</a>

plot(x,y,'+')
plot(x,y,'m')
plot(x,y,'--')
%vairaki grafiki uz vienas asim(papildinashana)
plot(x,y'o',x2,y2)
 plot(x,y'o',x2,y2)
          ↑
{Error: Unexpected MATLAB expression.
} 
plot(x,y,'o',x2,y2)
citas grafiskas funkcijas 
{Undefined function or variable 'citas'.} 
%citas grafiskas funkcijas
stem(x,y)
stairs(x,y)
%% vairaki grafiki uz vienam asim 2ver.
t = 0:0.01:1;
f1=1;f2 = 1;
y1 = sin(2*pi*f1*t);
y2 = cos(2*pi*f2*t);
stairs(t,y1,'k')
hold on % iesaldet asis
stairs(t,y2,'r')
hold off % izslegt iesaldesanu
%uzraksti uz asim
xlabel('t,s')
ylavel('U,V')
{Undefined function or variable 'ylavel'.} 
ylabel('U,V')
grid
%grid-rutinas
title('Mans pirmais grafiks')
legend('sinusoida','kosinusoida')
gtext('teksts ko ieliksim ar peles palidzibu')
%datu nolasisana 
ginput(2)
ans =
    0.6307   -0.6856
    0.6307   -0.6856
% interaktiva grafika maina
mans_gradiks(t,y1,y2)
{Undefined function or variable 'mans_gradiks'.} 
mans_grafiks.m(t,y1,y2)
{Undefined variable "mans_grafiks" or class "mans_grafiks.m".} 
mans_grafiks.m(x1, ymatrix1)
{Undefined function or variable 'x1'.} 
%%lisazu figuras 
edit
lisazu
lisazu
lisazu2(2,3)
lisazu2(3,6)
help lisazu2
 si ir funkcija
 to izsauc tikai no
 komandlog
 ar komandu lisazu(2,3)
 ar run ta nestradas

lisazu3(3,6)
lisazu3(3,6)
{Operation terminated by user during <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu3', '/home/user/matlab_darbi_1/lisazu3.m', 15)" style="font-weight:bold">lisazu3</a> (<a href="matlab: opentoline('/home/user/matlab_darbi_1/lisazu3.m',15,0)">line 15</a>)} 
lisazu3(3,6)
diary off
