function [out1] = czy_pierwsza_f3(x)

if x<=1 %sprawdzenie czy wprowdzona jest liczba ujemna lub rowna 1
    out1 = "Liczba mniejsza od 2";
    return;
end

for i=2:x-1 %petla wykonujaca sie x-1 razy
    if mod(x,i)==0 %sprawdzenie czy reszta z dzielenia x przez i jest rowna 0
       out1 = "Zlozona";
        return; %zakonczenie programu po znalezienie dzielnika
    end
end
out1 = "Pierwsza";

end

