close all
clearvars
clc

syms h R;

f=((pi*R^2)/3)*(h^3/(h^2-R^2));
f1=diff(f)==0;
assume(R>0);
assume(h>0);
extreme_points = solve(f1,'ReturnConditions',true);
subs(f,extreme_points.h)
