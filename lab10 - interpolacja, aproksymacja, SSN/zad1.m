close all
clearvars
clc

h=[25 50 70 100 150 200 250 500];
m=[1.26 1.325 1.33 1.34 1.32 1.321 1.322 1.37];

%interpolacja
figure;
hh = 1:1:500;
mm = interp1(h,m,hh);
plot(h,m,'rd');
hold on;
plot(hh,mm);

%funkcje sklejane
figure;
s=spline(h,m);
mm=ppval(s,hh);
plot(h,m,'rd');
hold on;
plot(hh,mm);

%aproksymacja
figure;
p1=polyfit(h,m,1);
p2=polyfit(h,m,2);
p3=polyfit(h,m,3);
p4=polyfit(h,m,4);

mm1=polyval(p1,hh);
mm2=polyval(p2,hh);
mm3=polyval(p3,hh);
mm4=polyval(p4,hh);

plot(h,m,'rd');
hold on;
plot(hh,mm1,hh,mm2,hh,mm3,hh,mm4);

%aproksymacja funkcja logarytmiczna
figure;
plot(h,m,'rd');
hold on;

f0=fittype('a*log(b*x)');
disp(f0)
f=fit(h',m',f0);
disp(f);

mmf=f(hh);
plot(hh,mmf);