close all
clearvars
clc

syms a b R;

%funkcja celu
f=a*sqrt(4*R^2-a^2);
%pochodna f.celu
f1=diff(f)==0;
%ograniczenia
assume(R>0);
assume(a>0);
assume(b>0);
%znalezienie optymalnego rozwiazania
extreme_points = solve(f1,'ReturnConditions',true);
a=extreme_points.a;
b=sqrt(4*R^2-a^2);
disp(a); %a
disp(b); %b