clearvars
close all
clc
format long g

%ciag fibocciego - liczba pomiedzy
w = input("Podaj wartosc: ");
Tab = zeros(1,100); %stworzenie tablicy 100 elementowej i wypelnienie jej zerami

i = 1;
temp = 0;

while temp < w %petla wykonujaca sie do momentu przekroczenia podanej wartosci w
Tab(i) = (1/sqrt(5))*(((1 + sqrt(5))/2)^i - ((1-sqrt(5))/2)^i); %wypelnianie tablicy wartosciami wedlug podanego wzoru
temp = Tab(i); %przypisanie aktualnej wartosci do zmiennej tymczasowej sluzacej do sprawdzenia wurnku petli while
i=i+1; %inkremetacja zmiennej okreslajacej liczbe iteracji
end

Tab(i + 1) = (1/sqrt(5))*(((1 + sqrt(5))/2)^i - ((1-sqrt(5))/2)^i); %obliczenie ostatniego wyrazu ciagu

disp(Tab(1:i-1)); %wyswietlenie czesci tablicy okreslonej przez zmienna n