function [out1] = napis_f5(str,c1,c2)
char_tab = convertStringsToChars(str); %
cond = false;
for i = 1 : length(char_tab) %petla po znakach napisu
    if char_tab(i)==c1 %jezeli pierwszy znak jest obecny w napisie to jest zamieniany na drugi znak
        char_tab(i)=c2;
        cond = true;
    end
end

if cond == false %warunek spelniony jezeli pierwszy znak nie wystepuje w napisie
for i = 1 : length(char_tab)%petla po znakach napisu
    if char_tab(i)==c2 %jezeli drugi znak jest obecny w napisie to zostanie usuniety
        char_tab(i)='';
        break;
    end
end
end

out1 = char_tab;
end

