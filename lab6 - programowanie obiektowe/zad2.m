clearvars
close all
clc

%klasa
A = class2(51.3,7.66,50,200,10);
disp(A);

%struktura
B = struct('R1',51.3,'R2',7.66,'E1',50, 'E2',200,'E0',10,'R0',0,'gamma',0);
B.gamma = log(B.R1/B.R2)/log(B.E2/B.E1);
B.R0 = B.R1*(B.E1/B.E0)^B.gamma;
disp(B);