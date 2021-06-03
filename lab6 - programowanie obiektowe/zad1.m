clearvars
close all
clc

%klasa
A = class1(10,3.3,25,9.1,0.7);
disp(A);

%struktura
R1=struct('omega',10);
R2=struct('omega',3.3);
ANS = struct('I1',0,'I2',0,'I',0);
E = 25;
Urz=9.1;
Uf=0.7;

ANS.I1 = E/R1.omega;
ANS.I2 = (E-Urz-Uf)/R2.omega;
ANS.I = ANS.I1 + ANS.I2;
disp(ANS);