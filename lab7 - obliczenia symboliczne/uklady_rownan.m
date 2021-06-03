clearvars
close all
clc

%przykład 1
syms x y z;
%zdefiniowanie równan
f1 = 3*x +4*y -z == 6;
f2 = 6*x -5*y +2*z == 8;
f3 = 9*x-4*y +z == 10;
%rozwiazanie ukladu równań
[x,y,z] = solve(f1,f2,f3)

%przykład 2
syms x y z;
%zdefiniowanie równan
f1 = 5*x +2*y == -1;
f2 = 3*x +3*z == 9;
f3 = 2*y-2*z == -4;
%rozwiazanie ukladu równań
[x,y,z] = solve(f1,f2,f3)

