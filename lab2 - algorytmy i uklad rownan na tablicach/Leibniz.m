clearvars
close all
clc

%Obliczenie liczby PI
%Leibniz 1-1/3+1/5-1/7 ...
P=0;
n = input("Podaj liczbe iteracji: "); %wczytanie liczby iteracji od uzytkownika

for i=0:n-1 %pętla wykonujaca się n razy
    if mod(i,2)==0 %warunek sprawdzający czy dana iteracja jest parzysta
        P = P + 1/(2*i+1); %dodawanie wyrazów parzystych do zmiennej P
    else
        P = P - 1/(2*i+1); %odejmowanie wyrazów parzystych od zmiennej P
    end
end

P = P * 4;
%działania przekształcające P na ostateczne przybliżenie PI
disp(P);