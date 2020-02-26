a=[2 0 0 0; -1 2 0 0; 3 1 -1 0; 4 1 -3 3];
b=[2 3 2 9];
for i=1:size(a,1)
    for j=1:i-1
        b(i)=b(i)-a(i,j)*b(j);
    end
    b(i)=b(i)/a(i,i);
end
b