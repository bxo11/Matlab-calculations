clearvars
close all
clc
format long

%Obliczenie liczby PI
%Viete P = sqrt(2)/2 + sqrt(2+sqrt(2))/2 + ...
P=1;
n = input("Podaj liczbe iteracji: "); %wczytanie liczby iteracji od użytkownika

A = 0;
for i=1:n %pętla wykonujaca się n razy
   A = sqrt(2 + A); %obliczenie licznika zgodnie z wzorem
   P = P * (A/2); %obliczenie przybliżenia dla obecnej iteracji
   disp(A);
end
%bardzo dobre przybliżenie PI wystęuje już przy 7 iteracjach

P = P /2;
P = 1/P;
%działania przekształcające P na ostateczne przybliżenie PI
disp(P);