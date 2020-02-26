n=7;
A=randn(n)
[Q,R]=qr(A)
Q'*Q
norm(eye(n)-Q'*Q)
norm(A-Q*R)