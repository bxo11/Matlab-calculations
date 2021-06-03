clearvars
close all
clc
format long g

n = input("Podaj liczbe iteracji: "); 
Tab = (1:1:n); %stworzenie tablicy (1, 2, 3, 4, ...)

Tab = 1./Tab;
Tab = Tab.^2;
%operacje na tablicy

output = sum(Tab);
output = sqrt(output*6);
%przeksztalcenie sumy wyrazow tablicy na przyblizenie liczby PI

disp(output);