clearvars
close all
clc
format long

%rozwiązanie układu równań z wykorzystaniem tablic

A = [2,6;2,6.000001];
B = [8;8.000001];
disp(inv(A)*B);
%różnica w otrzymywanych rozwiązaniach przy niewielkiej zmianie wartosci
%elementu w tablicy B może być spowodowanana:
%tracenie dokładności przy zaokrąglaniu
A = [2,6;2,5.999999];
B = [8;8.000002];
disp(A\B);

%rozwiązanie układu równań metoda wyznaczników
A = [2,6,8;2,6.000001,8.000001];
W = A(1,1) * A(2,2) - A(2,1) * A(1,2);
Wx = A(1,3) * A(2,2) - A(2,3) * A(1,2);
Wy = A(1,1) * A(2,3) - A(2,1) * A(1,3);

disp(Wx/W);
disp(Wy/W);

A = [2,6,8;2,5.999999,8.000002];
W = A(1,1) * A(2,2) - A(2,1) * A(1,2);
Wx = A(1,3) * A(2,2) - A(2,3) * A(1,2);
Wy = A(1,1) * A(2,3) - A(2,1) * A(1,3);

disp(Wx/W);
disp(Wy/W);

