function [out1] = kolejne_potegi_f6(a,n)
tab = zeros(1,n); % tablica zer o wymiarze n
for i=1:n
    tab(i)=a^i; %wypelnianie tablicy kolejnymi potegami a
end
out1 = tab;
end

