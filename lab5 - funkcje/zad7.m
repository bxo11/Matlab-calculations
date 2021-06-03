clearvars
close all
clc

tab = [1 2 3 4 5];
res = argumenty_wyjsciowe_f7(tab);
if size(res,2)==size(tab,2)
    disp("Dlugosc zwroconego wektora jest rowna ilosci elementow wejsciowych");
else
    disp("Dlugosc zwroconego wektora nie jest rowna ilosci elementow wejsciowych");
end
disp(res);