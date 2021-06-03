clearvars
close all
clc

%Obliczenie liczby PI
%Euler P = 1 + 1/2^2 + 1/3^ ...
P=0;
n = input("Podaj liczbe iteracji: "); %wczytanie liczby iteracji od użytkownika

for i=0:n-1 %pętla wykonujaca się n razy
    P = P + 1/((i+1)^2); %sumowanie kolejnych wyrazów
end

P = P*6;
P = sqrt(P);
%działania przekształcające P na ostateczne przybliżenie PI
disp(P);