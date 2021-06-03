clearvars
close all
clc

syms x op;
w = -5*x^6-4*x^3-2*x^2;
u = x^7 +5*x^3+2*x^2 +4;
g = x^3-x+3;

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
disp("Wektor współczynników u: ");
u1 = sym2poly(u) %utworzenie wektora współczynników
disp("Pochodna wielomianu u: ");
diff(u) %obliczenie pochodnej
disp("Całka wielomianu u: ");
int(u) %obliczenie całki niezonaczonej
disp("Miejsca zerowe u: ");
roots(u1) %obliczenie miejsc zerowych

%wektor g
disp("Wektor współczynników g: ");
g1 = sym2poly(g) %utworzenie wektora współczynników
disp("Pochodna wielomianu g: ");
diff(g) %obliczenie pochodnej
disp("Całka wielomianu g: ");
int(g) %obliczenie całki niezonaczonej
disp("Miejsca zerowe g: ");
roots(g1) %obliczenie miejsc zerowych

%obliczenie wartosci wielomianow dla x = [-100:2:100]
for i=-100:2:100
    x=i;
   disp("Wartość wielomianu w dla x = " +i+": " + eval(w));
   disp("Wartość wielomianu u dla x = " +i+": " + eval(u));
   disp("Wartość wielomianu g dla x = " +i+": " + eval(g));
end

%dzialanie na wielomianach
disp("Wynik działania na wielomianach:");
op = (w+u)*g
