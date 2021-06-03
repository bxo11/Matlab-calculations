clearvars
close all
clc

%przykład 1
syms x y z a c;
%zdefiniowanie funkcji
f1 = 2*x^4 +x^2-5;
f2 = a*x^6 +3*x^3 -c;
%obliczenie pochodnych
diff(f1)
diff(f2)

%przykład 2
syms x y z a c;
%zdefiniowanie funkcji
f1 = 1/x^2;
f2 = x/(1+x);
f3 = 1/sqrt(x);
%obliczenie pochodnych
diff(f1)
diff(f2)
diff(f3)