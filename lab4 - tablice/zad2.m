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


