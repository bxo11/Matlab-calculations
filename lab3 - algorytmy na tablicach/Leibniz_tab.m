clearvars
close all
clc
format long g

n = input("Podaj liczbe iteracji: "); 
Tab = (1:2:2*n); %stworzenie tablicy (1, 3, 5, 7, ...)
Tab = 1./Tab; %odwrocenie wartosci w tablicy
A = sum(Tab(1:2:end)); %sumowanie nieparzystych elementow w tablicy
B = sum(Tab(2:2:end))*-1; %sumowanie parzystych elementow w tablicy i zmiana znaku

disp((A+B)*4); %uzyskanie przyblizenia PI