function rysuj_aproks(f,v,N,X,sigma)
 
figure;
for i=1:9
    Y=f(X)+sigma(X)*randn(size(X));
    a=wyznacz_a(v,N,X,Y,sigma);
    g=@(x)a.'*v(x);
    subplot(3,3,i)
    fplot(f,[-1,1],'b')
    hold on;
    fplot(g,[-1,1],'r')
    set(gca,'FontSize',16,'YLim',[1,3]);
    if i==2
        title(['X=[',num2str(X),']'])
    end
end

