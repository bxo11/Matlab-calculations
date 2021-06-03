close all
clc

x=LINESCANpoufne{:,2};
y=LINESCANpoufne{:,3};
y2=LINESCANpoufne{:,4};
y3=LINESCANpoufne{:,6};
temp = zeros(395,1);
for i=2:395
    temp(i)=temp(i-1)+1/395;
end
figure(1);

mesh(x,temp,meshgrid(y));
xlabel('odległość');
%ylabel('numer wykresu');
zlabel('Zawartość procentowa');
title('Zadanie 4 - zawartośc żelaza, niklu i chromu');
hold on;
mesh(x,temp+2,meshgrid(y2));
hold on;
mesh(x,temp+4,meshgrid(y3));
legend('0-1 Fe','2-3 NiKA','4-5 CrKA');
