clearvars
close all
clc
format long

%klasa
A = class4(3.65,365,5,200);
disp(A);

%struktura
B = struct('f0',3.65, 'B3',365,'R' ,5,'Q0',200, 'Q',0, 'w0',0, 'L',0,'C',0 , 'A0',0 , 'A',0);
B.Q = B.f0 / (B.B3 *0.001);
B.w0 = (2 * 3.1415 * B.f0) * 10^6;
B.L = ((B.R * 1000) / (B.w0 *10)) * 10^6;
B.C = ((1/B.w0^2)/(B.L*(10^-6)))*10^12;
B.A0 = 1/(1-B.Q/B.Q0);
B.A = B.A0 * B.Q *((7/B.f0)-(B.f0/7));
disp(B);