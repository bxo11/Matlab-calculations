function X=wyznacz_X(ksi,ex_no)
 
P=round(ex_no*ksi.p);
if sum(P)~=ex_no
    error('Suma pomiarow jest rozna od liczby eksperymentow');
end
X=[];
for i=1:length(P)
    X=[X,repmat(ksi.x(i),1,P(i))];
end
