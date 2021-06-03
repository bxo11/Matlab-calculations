function [out1] = suma_z_przedzialu_f2(val)
if mod(val,2)==0 %sprawdzenie czy poczatkowa liczba jest parzysta
    out1 = sum(val:2:2*val); % sumowanie parzystych wartosci

else 
     out1 = sum(val:2:2*val-1); % sumowanie nieparzystych wartosci
end

end

