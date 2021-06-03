clearvars
close all
clc
format long g

%ciag fibocciego - tablice
n = input("Podaj ilosc elementow ciagu Fibonacciego: ");
Tab = zeros(1,n); %stworzenie tablicy n - elementowej i wypelnienie jej zerami

if n > 1 %pierwszych 2 elementow nie da sie policzyc wedlug wzoru dlatego te wartosci podawane sa na sztywno
    Tab(2) = 1;
end
if n > 2 %dla n > 2 kolejne elementy liczone sa wedlug wzoru
    for i=3:n %pętla wykonujaca się n razy zaczynajaca sie od 3 elementu
       Tab(i) = Tab(i - 1) + Tab(i - 2); %obliczanie kolejnych elementow tablicy wedlug wzoru
    end
end

disp(Tab); %wyswieltenie zawartosci tablicy