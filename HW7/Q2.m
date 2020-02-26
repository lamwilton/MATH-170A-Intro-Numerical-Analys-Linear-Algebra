A=[0 0 1;1 0 0;0 1 0];
B=A;
m=size(A,1);
a=zeros(m);
for k=1:m-1
    x=A(:,k);
    beta=max(x);
    n=size(x,1);
    I=eye(n);
    xsum=0;
    if beta == 0 
        gamma = 0;
    else
        x(1:n)=x(1:n)/beta;
        for i = 1:n
           % x(i)=x(i)/beta;
            xsum=xsum+(x(i))^2;
        end
        tau=sqrt(xsum);
        if x(1) < 0 
            tau=-tau;
        end
        x(1)=tau+x(1);
        gamma=x(1)/tau;
        x(2:n)=x(2:n)/x(1);
        x(1)=1;
        tau=tau*beta;
        A(k:n,k)=x;     
    end
    Q(:,:,k)=I-gamma*x*(x.')
    A(k:m,k+1:m)=Q(k)*A(k:m,k+1:m);
    A(k,k)=-tau;
    A
end
qr(B)