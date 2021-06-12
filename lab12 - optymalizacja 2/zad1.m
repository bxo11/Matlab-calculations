close all
clearvars
clc

%funkcja celu
f=@(x)-(x(1)*x(2)*(100- x(1)-x(2)));
x0 = [1,1];

%ograniczenia
A = [];
b =[];
Aeq =[];
beq =[];
lb = [0 0];
ub = [];
%znalezienie optymalnego rozwiazania
x_opt=fmincon(f,x0,A,b,Aeq,beq,lb,ub)
f(x_opt)
