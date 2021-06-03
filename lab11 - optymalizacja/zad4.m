close all
clearvars
clc

syms r;
V=500;

f=@(r)2*pi*r^2+2*pi*r*(V/(pi*r^2));
x_opt=fminbnd(f,0,100);

H=V/(pi*x_opt^2);