n=1000;
for i=1:2
    A=randn(n);
    x=randn(n,1);
    t=cputime;
    for rep=1:100 % compute the product 100 times
        b=zeros(n,1);
        for j=1:n
            for i=1:n
                b(i)=b(i)+A(i,j)*x(j);
            end
        end       
    end
    matrixsize=n
    time=cputime-t
    t=cputime;
    
    for rep=1:100
        b=zeros(n,1);
        b=A*x;
    end
    time2=cputime-t
    n=2000;
end

