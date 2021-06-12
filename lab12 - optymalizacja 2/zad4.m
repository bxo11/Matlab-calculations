close all
clearvars
clc

syms a S;

%funkcja celu
f=(a^2*sqrt(3))/4 * (S-2*a);
%pochodna f.celu
f1=diff(f)==0;
%ograniczenia
assume(a>0);
assume(S>0);
%znalezienie optymalnego rozwiazania
extreme_points = solve(f1,'ReturnConditions',true);
a=extreme_points.a;
disp(a) %a
disp(S-2*a) %h
disp(((a^2*sqrt(3))/4) * (S-2*a)) %V
