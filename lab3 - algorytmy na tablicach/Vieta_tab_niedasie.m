clearvars
close all
clc
format long 

n = input("Podaj liczbe elementow: "); 
A = zeros(1,n);
A(2:end)=2;
B = (1:1:n);
A(2:end) = sqrt(2 + sum(A(1:(1:n)))); 

% out = prod(Tab);
% out = 1/out;
disp(A);
