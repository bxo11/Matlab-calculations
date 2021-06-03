clearvars
close all
clc

syms x op;
w = 4*x^3 + 3*x^2 -3;
u = 2*x^5 -3*x^3-5*x^2+2;

%wwktor w
disp("Wektor współczynników w: ");
w1 = sym2poly(w) %utworzenie wektora współczynników
disp("Pochodna wielomianu w: ");
diff(w) %obliczenie pochodnej
disp("Całka wielomianu w: ");
int(w) %obliczenie całki niezonaczonej
disp("Miejsca zerowe w: ");
roots(w1) %obliczenie miejsc zerowych

%wektor u
disp("Wektor współczynników w: ");
u1 = sym2poly(u) %utworzenie wektora współczynników
disp("Pochodna wielomianu u: ");
diff(u) %obliczenie pochodnej
disp("Całka wielomianu u: ");
int(u) %obliczenie całki niezonaczonej
disp("Miejsca zerowe u: ");
roots(u1) %obliczenie miejsc zerowych

%obliczenie wartosci wielomianow dla x = [-100:2:100]
result_w =0;
result_u =0;
for i=-100:2:100
    x=i;
   disp("Wartość wielomianu w dla x = " +i+": "+ eval(w));
   disp("Wartość wielomianu u dla x = " +i+": " + eval(u));
end

%dzialanie na wielomianach
disp("Wynik działania na wielomianach:");
op = w-u
