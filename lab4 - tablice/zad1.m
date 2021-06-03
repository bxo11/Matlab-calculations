clearvars
close all
clc

M = zeros(6,6);
x=3;
n=36+x;
Tab = zeros(1,n);
Tab(2) = 1;
for i=3:n 
   Tab(i) = Tab(i - 1) + Tab(i - 2); 
end


for i=1:6
  for j=1:6
   M(i,j)=Tab(x);
    x=x+1;
  end
end

disp(M);