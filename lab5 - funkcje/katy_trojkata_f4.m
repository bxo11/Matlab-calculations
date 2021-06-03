function [out1] = katy_trojkata_f4(wsp)

a = sqrt((wsp(2,1)-wsp(1,1))^2 + (wsp(2,2)-wsp(1,2))^2); %dlugosc boku AB
b = sqrt((wsp(3,1)-wsp(1,1))^2 + (wsp(3,2)-wsp(1,2))^2); %dlugosc boku AC
c = sqrt((wsp(3,1)-wsp(2,1))^2 + (wsp(3,2)-wsp(2,2))^2); %dlugosc boku CB
cos_ab = (a^2+b^2-c^2)/(2*a*b);
cos_ac = (a^2+c^2-b^2)/(2*a*c);
cos_cb = (c^2+b^2-a^2)/(2*c*b);
ab = acosd(cos_ab); %policzenie miary kata AB
ac = acosd(cos_ac); %policzenie miary kata AC
cb = acosd(cos_cb); %policzenie miary kata CB
out1 =[ab ac cb];
end

