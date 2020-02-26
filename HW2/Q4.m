a=[3 2 1 0; 0 1 2 3; 0 0 -2 1; 0 0 0 4];
b=[-10 10 1 12];
for i=size(a,1):-1:1
    for j=size(a,1):-1:i+1
        b(i)=b(i)-a(i,j)*b(j);
    end
    b(i)=b(i)/a(i,i);
end
b