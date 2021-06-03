function [out1] = ciag_f1(tab)
s = size(tab);
if s(2) < 4 %sprawdzenie minimalnego rozmiaru tablicy
    disp("zbyt mala tablica")
    out1 = NaN;
    return
end

if tab(2)-tab(1)==tab(4)-tab(3) %sprawdzenie czy ciag jest arytmetyczny
    out1 = tab(2)-tab(1);
    disp("ciag arytmetyczny");
end

if tab(2)/tab(1)==tab(4)/tab(3) %sprawdzenie czy ciag jest geometryczny
    out1 = tab(2)/tab(1);
    disp("ciag gemetryczny");
end

end

