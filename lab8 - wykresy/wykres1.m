close all
clc

x=LINESCANpoufne{:,2};
y=LINESCANpoufne{:,3};
y2=LINESCANpoufne{:,4};
figure(1);

plot(x,y,'rd-');
xlabel('odległość');
ylabel('Fe');
title('Zadanie 1 - zawartośc żelaza');
