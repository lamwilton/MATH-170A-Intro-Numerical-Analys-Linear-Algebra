n=4;
a=randn(n)
m=zeros(n,n);
for k=1:n-1
    if a(k,k)~= 0
        for i=k+1:n
            m(i,k)=a(i,k)/a(k,k);
            for j=k+1:n
                a(i,j)=a(i,j)-m(i,k)*a(k,j);
            end
        end
    end
end
for i=1:n
    m(i,i)=1;
end
for i=2:n
    for j=1:i-1
        a(i,j)=0;
    end
end
m
a
x=m*a
%a=[1 1 2; 2 2 3; 3 3 4]
%a=[2 1 -1 3; -2 0 0 0; 4 1 -2 6; -6 -1 2 -3];

            
