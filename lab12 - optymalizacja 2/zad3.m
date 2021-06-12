close all
clearvars
clc

syms x;

y=@(x)2-(1/2)*x^2;
a = 4;
b = sqrt((-x-x)^2 + (y(-x) - y(x))^2);
%funkcja celu
f=1/2*(a+b)*y(x);
%ograniczenia
assume(x>0)
%pochodna f.celu
f1=diff(f)==0;
%znalezienie optymalnego rozwiazania
extreme_points = solve(f1,'ReturnConditions',true);
x=extreme_points.x;
b=sqrt((-x-x)^2 + (y(-x) - y(x))^2);
disp(1/2*(a+b)*y(x)) %pole
disp(x) %C.x
disp(y(x)) %C.y
