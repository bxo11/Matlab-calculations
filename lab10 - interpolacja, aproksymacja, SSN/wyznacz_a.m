function a=wyznacz_a(v,N,X,Y,sigma)
 
M=zeros(N,N);
b=zeros(N,1);
m=length(X);
for i=1:m
    M=M+sigma(X(i))^-1*v(X(i))*v(X(i)).';
    b=b+sigma(X(i))^-1*Y(i)*v(X(i));
end
a=M\b;

