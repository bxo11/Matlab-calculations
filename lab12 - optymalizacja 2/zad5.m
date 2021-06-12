close all
clearvars
clc

syms h R;

%funkcja celu
f=1/3*pi*(R^2-h^2)*h;
%pochodna f.celu
f1=diff(f)==0;
%ograniczenia
assume(h>0);
assume(R>0);
%znalezienie optymalnego rozwiazania
extreme_points = solve(f1,'ReturnConditions',true);
h=extreme_points.h;
disp(h) %wysokosc stozka
disp(1/3*pi*(R^2-h^2)*h) %objetosc

