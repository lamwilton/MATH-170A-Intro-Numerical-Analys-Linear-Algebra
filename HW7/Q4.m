m=4;
n=3;
v=randn(m,n)
a=v;
for k=1:n
    r(1:k-1,k)=v(:,1:k-1).'*v(:,k);
    v(:,k)=v(:,k)-v(:,1:k-1)*r(1:k-1,k);
    r(k,k)=norm(v(:,k));
    if r(k,k)~=0 
        v(:,k)=1/r(k,k)*v(:,k);
    end
end
v
R=v.'*a