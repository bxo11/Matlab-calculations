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

x=3;
for i=1:6
  for j=1:6
   A(i,j)=Tab(x);
    x=x+1;
  end
end
disp(A);

%zad2
B = A([2,4,5],[1,3,5]);
disp(B);

%dodanie jako nowa kolumna
% temp = A(4:6,6);
% B = [B,temp];
% disp(B);

%zad3
%dodanie jako nowy wiersz
temp = A(4:6,6);
temp = rot90(temp);
B = [B;temp];
disp(B);

%zad4
C = sum(B(2:end,2)); 
disp(C);

%zad5
D = B*C;
disp(D);
B = fliplr(B);
[m,poz] = min(min(D));
disp(D(:,poz));
