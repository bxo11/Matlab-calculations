close all
clearvars
clc

%funkcja
figure(1);
x=linspace(-1,1,10);
y=linspace(-1,1,10);
[X,Y]=meshgrid(x,y);
z=X.^4-3*X.^2*Y.^2+2/3*X.^3+3*Y.^2-2;
surf(x,y,z);

%interpolacja
figure(2);
[xi,yi]=meshgrid(-1:0.05:1,-1:0.05:1);
zi=interp2(x,y,z,xi,yi,'spline');
surf(xi,yi,zi);

%aproksymacja
figure(3);
f=@(X)X(1,:).^4-3.*X(1,:).^2.*X(2,:).^2+2/3.*X(1,:).^3+3.*X(2,:).^2-2;
N=20;
x=linspace(-1,1,N);
y=linspace(-1,1,N);
 
X=[repmat(x,1,length(y)); reshape(repmat(y,length(x),1),1,[])];
Y=f(X);
 
sp=tpaps(X,Y,1);
disp(sp);
p=0.5;
sp=tpaps(X,Y,p);
fnplt(sp);
view(-30,60);
set(gca,'ZLim',[-4,4],'FontSize',24);
title(['p=',num2str(p)]);


%ssn
figure(4);
f=@(X)X(1,:).^4-3.*X(1,:).^2.*X(2,:).^2+2/3.*X(1,:).^3+3.*X(2,:).^2-2;
N=20;  % N=10; N=20;
x=linspace(-1,1,N);
y=linspace(-1,1,N);
 
X=[repmat(x,1,length(y)); reshape(repmat(y,length(x),1),1,[])];
Y=f(X);
 
SSN=fitnet([5,5]);
SSN=train(SSN,X,Y);
view(SSN);
Y_SSN=sim(SSN,X);
Y_SSN=reshape(Y_SSN,N,N);
surf(x,y,Y_SSN);
view(-30,60);
set(gcf,'Color',[1 1 1]);
set(gca,'FontSize',32);
xlabel('x');ylabel('y');zlabel('z');
title(['N=' num2str(N)]);



