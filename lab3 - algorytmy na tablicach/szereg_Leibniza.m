clearvars
close all
clc

%suma szeregu leibiza
n = input("Podaj liczbe iteracji: "); %wczytanie liczby iteracji od użytkownika
A1 = (1:2:2*n);
A2 = (2:2:2*n);
A1 = 1./A1;
A2 = 1./A2;
A = sum(A1)-sum(A2);

B1 = (1:2:2*n);
B1 = 1./B1;
B = sum(B1);

C1 = (2:2:2*n);
C1 = 1./C1;
C = -sum(C1);

disp(A); %przyblizenie ln(2)
disp(B); %zmierza do + nieskonczonosci
disp(C); %zmierza do - nieskonczonosci

%zmiana kolejnosci skladnikow ln(2)
D1 = (1:2:2*n);
D2 = (2:2:2*n);
D1 = 1./D1;
D2 = 1./D2;

D3 = D1-D2;

disp("ln(2): " + sum(D3)); %przyblizenie ln(2)

%zmiana kolejnosci skladnikow 1/2 * ln(2)
E1 = (2:4:4*n);
E2 = (4:4:4*n);
E1 = 1./E1;
E2 = 1./E2;

E3 = sum(E1)-sum(E2);
disp("1/2 * ln(2): " + sum(E3)); %przyblizenie 1/2 * ln(2)

%zmiana kolejnosci skladnikow 3/2 * ln(2)
F1 = (1:4:4*n);
F2 = (3:4:4*n);
F3 = (2:2:2*n);
F1 = 1./F1;
F2 = 1./F2;
F3 = 1./F3;

F4 = sum(F1)+sum(F2)-sum(F3);
disp("3/2 * ln(2): " + sum(F4)); %przyblizenie 3/2 * ln(2)