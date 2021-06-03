%napisz program ktory sprawdza czy wprowadzona liczba jest liczba piersza
clear
clc
%wyczyszczenie pamieci i konsoli

x = input("Podaj liczbe: ");%wprowadzenie do pamieci liczby od uzytkownika

if x<=2 %sprawdzenie czy wprowdzona jest liczba ujemna lub rowna 1 albo 2
    disp("Liczba mniejsza od 3");
    return;
end

for i=2:x-1 %petla wykonujaca sie x-1 razy
    if mod(x,i)==0 %sprawdzenie czy reszta z dzielenia x przez i jest rowna 0
        disp("Nie pierwsza");
        return; %zakonczenie programu po znalezienie dzielnika
    end
end

disp("Pierwsza");
