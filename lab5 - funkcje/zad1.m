clearvars
close all
clc

tab = [1 2 4 8];
res = ciag_f1(tab);
disp(res);

tab = [3 9 27 81];
res = ciag_f1(tab);
disp(res);

tab = [5 5.5 6 6.5];
res = ciag_f1(tab);
disp(res);

tab = [4 -20 100 -500];
res = ciag_f1(tab);
disp(res);

tab = [11 8 5 2];
res = ciag_f1(tab);
disp(res);