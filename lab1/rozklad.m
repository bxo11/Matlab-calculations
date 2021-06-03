%napisz program ktory rozklada wprowadzona liczbe na czynniki pierwsze
clear
clc
%wyczyszczenie pamieci i konsoli

x = input("Podaj liczbe: "); %wprowadzenie do pamieci liczby od uzytkownika

i=2;
while x>1 %petla dzialajaca do momentu kiedy x jest wieksze od zera
    if mod(x,i)==0 %sprawdzenie czy reszta z dzielenia x przez i jest rowna 0
        disp(i); %wypisanie czynnika do konsoli
        x=x/i; %podzielenie liczby przez czynnik
    else
        i=i+1; %inkrementacja czynnika w przypadku braku podzielnosci zmiennej x przez i
    end
end
