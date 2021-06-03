clearvars
close all
clc

%Obliczenie liczby PI
%Wallis P= (2*2*4*4*6*6 ...)/(1*3*3*5*5*7* ...)
P=1;
n = input("Podaj liczbe iteracji: "); %wczytanie liczby iteracji od użytkownika

for i=1:n %pętla wykonujaca się n razy
   l = i*i*4; %każdą pare elementów w liczniku o tej samej wartości można wyrazić w taki sposób
   m = l-1; %każda para elementów w mianowniku zawsze jest mniejsza o 1 od odpowiadającej pary w liczniku
   P = P * (l/m); %mnożenie nowego ułamka przez wartość w poprzedniej iteracji
   %każda iteracja odpowiada za 2 elementy z licznika i 2 z mianownika
end

P=P*2;
%działania przekształcające P na ostateczne przybliżenie PI
disp(P);