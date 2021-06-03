close all
clc

x=LINESCANpoufne{:,2};
y=LINESCANpoufne{:,3};
y2=LINESCANpoufne{:,4};
y3=LINESCANpoufne{:,6};

figure(1);

plot3(x,zeros(395,1),y,'rd-');
xlabel('odległość');
ylabel('numer wykresu');
zlabel('Zawartość procentowa');
title('Zadanie 3 - zawartośc żelaza, niklu i chromu');
hold on;
plot3(x,ones(395,1),y2,'c^:');
hold on;
plot3(x,ones(395,1)*2,y3,'g--');
legend('Fe','NiKA','CrKA');
