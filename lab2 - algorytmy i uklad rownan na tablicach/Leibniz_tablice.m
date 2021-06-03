clearvars
close all
clc
format long

n = input("Podaj liczbe iteracji: "); %wczytanie liczby iteracji od uzytkownika

P = zeros(1,n); %tablica zawierajaca kolejne elementy ciągu
result = zeros(1,n); %tablica zawierająca kolejne przybliżenia PI
%utworzenie tablic o n elementach i wypełnienie ich zerami

for i=0:n-1 %pętla wykonujaca się n razy
    if mod(i,2)==0 %warunek sprawdzający czy dana iteracja jest parzysta
        P(i+1) = 1/(2*i+1); %przypisanie do elementu i+1 w tablicy P odpowiedniej dodatniej wartosci ciagu
    else
        P(i+1) = -1/(2*i+1);%przypisanie do elementu i+1 w tablicy P odpowiedniej ujemnej wartosci ciagu
    end
    result(i+1) = sum(P); %sumowanie do tablicy result kolejnch przybliżeń PI
end

result = result * 4;
%działania przekształcające wartosci w tablicy result na ostateczne przybliżenia PI
disp(result);
plot(result);
%narysowanie wykresu przedstawiającego kolejne przybliżenia PI