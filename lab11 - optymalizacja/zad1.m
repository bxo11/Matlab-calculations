close all
clearvars
clc

syms r;

%rozwiazanie rownania
f=1/3*pi*r^2*sqrt(64-r^2);
f1=diff(f)==0;
fplot(f);
extreme_points = solve(f1);
extreme_values = subs(f, r, extreme_points);
[maxX, maxidx] = max(extreme_points);

%metoda optymalizacyjna
double(maxX)
f=@(r)-1/3*pi*r^2*sqrt(64-r^2);
x_opt=fminbnd(f,0,8);
