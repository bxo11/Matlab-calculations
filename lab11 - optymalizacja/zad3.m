close all
clearvars
clc

syms x;

f=@(x)2*4*x*x*70+2*x*(1/x^2)*50+2*4*x*(1/x^2)*50;
x_opt=fminbnd(f,0,100);
x2_opt = x_opt*4;
H=1/x_opt^2;
