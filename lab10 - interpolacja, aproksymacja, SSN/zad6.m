close all
clearvars
clc

figure;
v=@(x)[1;9*x.^2];
N=2;
sigma=@(x)0.15;
ksi0.x=2*rand(1,N)-1;
ksi0.p=ones(1,N)/N;
epsilon=1e-3;
Nmax=50;
 
[ksi_opt,M_opt,fi_opt]=algorytm_WF(v,N,sigma,ksi0,epsilon,Nmax);
fplot(fi_opt,[-1,1]);
display(ksi_opt);



f=@(x)polyval([2,0,1.5],x);
v=@(x)[1;9*x.^2];
sigma=@(x)0.15;
N=2;
ex_no=2;
 
ksi.x=[-0.8,1];
ksi.p=[0.5,0.5];
X=wyznacz_X(ksi,ex_no);
rysuj_aproks(f,v,N,X,sigma);
 
epsilon=1e-3;
Nmax=50;
ksi0.x=2*rand(1,N)-1;
ksi0.p=ones(1,N)/N;
ksi_opt=algorytm_WF(v,N,sigma,ksi0,epsilon,Nmax);
X_opt=wyznacz_X(ksi_opt,ex_no);
rysuj_aproks(f,v,N,X_opt,sigma);

