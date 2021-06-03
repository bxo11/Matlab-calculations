close all
clc

Nb=LINESCANpoufne{1:20,8};
C=LINESCANpoufne{1:20,10};
N=LINESCANpoufne{1:20,9};
temp = [Nb,C,N];

figure(1);
subplot(1,3,1);
bar(Nb);
subplot(1,3,2);
bar(C);
subplot(1,3,3);
bar(N);

figure(2);
bar3(temp);
