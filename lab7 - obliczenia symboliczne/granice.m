clearvars
close all
clc

%przykład 1
syms x h;
f1 = sin(x)/x;
limit(f1,0) %granica x->0

%przykład 2
f2 = 1/x;
limit(f2,x,0,'left') %granica lewo stronna x->0

%przykład 3
f3 = 1/x;
limit(f3,x,0,'right') %granica prawo stronna x->0

%przykład 4
f4 = (sin(x+h)-sin(x))/h;
limit(f4,h,0) %granica h->0

%przykład 5
f5 = (x^2 +2*x+1)/(x^3+1);
limit(f5,x,1) %granica x->1

%przykład 6
f6 = sqrt(x^2+5*x+5)+x;
limit(f6,x,Inf) %granica x->Inf
