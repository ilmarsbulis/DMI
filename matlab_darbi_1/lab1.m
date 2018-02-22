diary lab1.m on
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('diary')" style="font-weight:bold">diary</a>
Too many input arguments.
} 
diary on
diary('lab1.m')
A = imread('grafix.png');
figure(1),image(A)
[x,y]-ginput(7)
{Undefined function or variable 'x'.
} 
B = imread('grafix.png');
C = imread('grap.png');
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('imread>get_full_filename', '/usr/local/MATLAB/R2016b/toolbox/matlab/imagesci/imread.p', 481)" style="font-weight:bold">imread>get_full_filename</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2016b/toolbox/matlab/imagesci/imread.p',481,0)">line 481</a>)
File "grap.png" does not exist.

Error in <a href="matlab:matlab.internal.language.introspective.errorDocCallback('imread', '/usr/local/MATLAB/R2016b/toolbox/matlab/imagesci/imread.p', 344)" style="font-weight:bold">imread</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2016b/toolbox/matlab/imagesci/imread.p',344,0)">line 344</a>)
    filename = get_full_filename(fid, errmsg, filename);
} 
figure(2),image([0 4.5],[0 350] ,C);
{Undefined function or variable 'C'.
} 
figure(2),image([0 4.5],[0 350] ,B);
figure(2),image([0 350],[0 4.5] ,B);
figure(2),image([0 350],[4.5 0] ,B);
set(gca, 'Ydir','normal')
shg
[x,y]=ginput(7)

x =

   96.4625
  119.5852
  136.3292
  152.2760
  175.3987
  201.7107
  283.8362


y =

    3.6620
    3.2161
    2.9324
    2.6891
    2.3919
    2.1216
    1.3920

C = polyfit(x,y,2)

C =

    0.0000   -0.0252    5.7434

format compact
C1 = polyfit(x,y,3)
C1 =
   -0.0000    0.0001   -0.0423    6.6633
U = 96:10:283;
C = polyfit(C,U);
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('polyfit', '/usr/local/MATLAB/R2016b/toolbox/matlab/polyfun/polyfit.m', 47)" style="font-weight:bold">polyfit</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2016b/toolbox/matlab/polyfun/polyfit.m',47,0)">line 47</a>)
X and Y vectors must be the same size.} 
U = -1:0.01:3.2;
C = polyfit(C,U);
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('polyfit', '/usr/local/MATLAB/R2016b/toolbox/matlab/polyfun/polyfit.m', 47)" style="font-weight:bold">polyfit</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2016b/toolbox/matlab/polyfun/polyfit.m',47,0)">line 47</a>)
X and Y vectors must be the same size.} 
C = polyfit(x,y,1)
C =
   -0.0118    4.5943
I = polyval(C,U);
plot(x,y,'o',U,I)
plot(x,y,'-',U,I)
plot(x,y,'o',U,I,'-')
plot(x,y,'-',U,I,'0')
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Error in color/linetype argument.} 
plot(x,y,'-',U,I,)
 plot(x,y,'-',U,I,)
                  ↑
{Error: Unbalanced or unexpected parenthesis or bracket.
} 
plot(x,y,'-',U,I)
diary off
