clearvars
close all
clc

n = input("Podaj liczbe iteracji: "); %wczytanie liczby iteracji od użytkownika
A = (1:1:n);

A = (A.^2)*4; %tablica iloczynu par w liczniku
B = A-1; %tablica iloczynu par w mianowniku (zawsze jest o 1 mniejsza od odpowiadajacej pary w liczniku)

C = A./B;
C = prod(C)*2;
%%działania przekształcające C na ostateczne przybliżenie PI
disp(C);
