clearvars
close all
clc

%klasa
A = class3(12,1,180,80);
disp(A);

%struktura
B = struct( 'Urzn',12,'Pdm',1,'tetaMax',180,'a_tetaMax',80,'a_Pdm',0,'b_IrzMax1',0,'b_IrzMax2',0,'c_Rth',0);
B.a_Pdm = B.Pdm*((B.tetaMax - B.a_tetaMax)/(B.tetaMax - 25));
B.b_IrzMax1 = B.Pdm/B.Urzn * 1000;
B.b_IrzMax2 = B.a_Pdm/B.Urzn * 1000;
B.c_Rth = (B.tetaMax - 25)/B.Pdm;
disp(B);