clearvars
close all
clc

x0=0; y0=0; %srodek kola
r=1; %promien kola
iteracje=10^3;
dl_bok = sqrt(3) * r;

prawda=0;
%sposob 1
for i=0:iteracje
%generowanie 2 losowych wartosci
theta1=2*pi*rand(1);
theta2=2*pi*rand(1);

%liczenie wspolrzednych 2 punktow cieciwy
x1=x0+r*cos(theta1);
y1=y0+r*sin(theta1);
x2=x0+r*cos(theta2);
y2=y0+r*sin(theta2);

cieciwa = sqrt((x2-x1)^2+(y2-y1)^2); %liczenie dlugosci cieciwy

if cieciwa > dl_bok %sprawdzenie warunku dla sposobu 1
    prawda = prawda + 1;
end
end

disp("Prawdpodobienstwo dla sposobu 1: " + prawda/iteracje);

%sposob 2
prawda=0;

for i=0:iteracje
%generowanie losowych wartosci
theta=2*pi*rand(1);
P=r*rand(1); %wartosci z przedzialu (0,r)
Q=sqrt(r^2 - P^2); %odleglosc do krawedzi okregu

%liczenie wspolrzednych 2 punktow cieciwy
x1=x0+P*cos(theta)+Q*sin(theta);
y1=y0+P*sin(theta)-Q*cos(theta);
x2=x0+P*cos(theta)-Q*sin(theta);
y2=y0+P*sin(theta)+Q*cos(theta);

cieciwa = sqrt((x2-x1)^2+(y2-y1)^2); %liczenie dlugosci cieciwy

if cieciwa > dl_bok %sprawdzenie warunku dla sposobu 2
    prawda = prawda + 1;
end
end

disp("Prawdpodobienstwo dla sposobu 2: " + prawda/iteracje);


