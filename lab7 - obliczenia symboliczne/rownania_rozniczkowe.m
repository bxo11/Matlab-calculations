clearvars
close all
clc

%przykład 1
syms x(t) y;
dx=diff(x);
y = dsolve(diff(x,2)+3*diff(x)+2*x==0, x(0)==0, dx(0)==2)
figure(1); %utworzenie nowego okienka na wykres
fplot(y)  %narysowanie wykresu

%przykład 2
syms x(t) y;
dx=diff(x);
y = dsolve(2*diff(x,2)+3*diff(x)+x==6, x(0)==1, dx(0)==-2)
figure(2); %utworzenie nowego okienka na wykres
fplot(y) %narysowanie wykresu

%przykład 3
syms x(t) y;
dx=diff(x);
y = dsolve(diff(x,2)+13*diff(x)+2*x==0, x(0)==1, dx(0)==0)
figure(3); %utworzenie nowego okienka na wykres
fplot(y) %narysowanie wykresu