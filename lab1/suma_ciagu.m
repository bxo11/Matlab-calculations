%oblicz sume tych wyrazow poczatkowych ciagu 1/n ktore sa wieksze od a(np 1/10)
clear
clc
%wyczyszczenie pamieci i konsoli

a = input("Podaj a: "); %wprowadzenie do pamieci liczby od uzytkownika

suma = 0;
i = 1;
%ustawienie poczatkowych zmiennych

while 1/i>=a %petla wykonujaca sie do momentu osiagniecia mniejszej wartosci niz a 
    suma = suma + 1/i; %sumowanie wyrazu ciagu
    i = i + 1; %inkremetacja licznika 
end

disp(suma);