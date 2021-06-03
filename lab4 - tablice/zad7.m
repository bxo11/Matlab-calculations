clearvars
close all
clc

A = zeros(6,6);
n=36+3;
Tab = zeros(1,n);
Tab(2) = 1;
for i=3:n 
   Tab(i) = Tab(i - 1) + Tab(i - 2); 
end
%Utworzenie tablicy zawierajacej wyrazo ciagu Fibonacciego

x=3; % rozpoczynamy od 3 elementu ciągu
for i=1:6
  for j=1:6
   A(i,j)=Tab(x); %przypisanie wartosci tablicy do macierzy 6x6
    x=x+1;
  end
end
disp(A);

%zad2
B = A([2,4,5],[1,3,5]); %utworzenie nowej macierzy wybierajac wartosci lezace w podanych miejscach (przeciecia wierszy i kolumn)
disp(B);

%dodanie jako nowa kolumna
% temp = A(4:6,6);
% B = [B,temp];
% disp(B);

%zad3
%dodanie jako nowy wiersz
temp = A(4:6,6); %wybranie 3 ostatnich elementow z ostatniej kolumny
temp = rot90(temp); %zamiana kolumny na wiersz
B = [B;temp]; %polaczenie dwoch macierzy
disp(B);

%zad4
C = sum(B(2:end,2)); %sumowanie 3 ostatnich wartosci lezacych w 2 kolumnie
disp(C);

%zad5
D = B*C; %wymnozenie macierzy przez stala wartosc
disp(D);
B = fliplr(B); %zamiana elementow w macierzy
[m,poz] = min(min(D)); %wyszukanie minimalnej wartosci i polozenia elementu macierzy
disp(D(:,poz)); %wypisanie na konsoli kolumne zawierajaca element minimalny

%zad6
disp(D);
D = sort(D,'ascend'); %sortowanie rosnace po kolumnach
disp(D);
disp(B);
B = sort(B,2,'descend'); %sortowanie malejace po wierszach
disp(B);

%zad7
disp(A);
last = A(:,end);
A = [last,A(:,1:end-1)]; %przeniesienie ostatniej kolumnu na poczatek
last = A(end,:);
A=[last;A(1:end-1,:)]; %przeniesienie ostatniego wiersza na poczatek
disp(A);
AA = A(1:3,1:3); %utworzrenie nowej macierzy 3x3 z wybranych elemrntow macierzy A
disp(AA);