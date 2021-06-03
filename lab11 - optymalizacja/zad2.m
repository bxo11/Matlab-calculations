close all
clearvars
clc

syms r;

f=@(r)2*pi*r^2+2*pi*r*(300/r^2);
x_opt=fminbnd(f,0,100);

H=300/x_opt^2;
