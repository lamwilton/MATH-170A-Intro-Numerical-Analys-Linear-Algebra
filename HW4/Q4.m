n=3;
ran=randn(n);
problem=transpose(ran)*ran
a=problem;
%Lu factorization
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

a=problem;
%Cholesky
 for i=1:size(a,1)
    for k=1:i-1
        a(i,i)=a(i,i)-a(k,i)^2;
    end
    if a(i,i)<=0 
        disp('not positive definite')
       return
    end
    a(i,i)=sqrt(a(i,i));
    for j=1+i:size(a,1)
       for k=1:i-1
           a(i,j)=a(i,j)-a(k,i)*a(k,j);
       end
       a(i,j)=a(i,j)/a(i,i);
    end
 end
  for i=2:size(a,1)
     for j=1:i-1
         a(i,j)=0;
     end
  end
%Finding S, its diagonal of R
s=zeros(n,n);
for i=1:size(a,1)
    s(i,i)=a(i,i);
end
%s=inv(m)*transpose(a)
a
m
d=s*s
check=m*d*transpose(m)
problem