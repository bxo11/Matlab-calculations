close all
clc

x=LINESCANpoufne{:,2};
y=LINESCANpoufne{:,3};
y2=LINESCANpoufne{:,4};
figure(1);

plot(x,y,'rd-');
xlabel('odległość');
ylabel('Zawartość procentowa');
title('Zadanie 2 - zawartośc żelaza i niklu');
hold on;
plot(x,y2,'c^:');
legend('Fe','NiKA');
