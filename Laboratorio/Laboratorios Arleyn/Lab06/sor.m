function[x,H]=sor(A,b,tol,n_iter,x0,w);
[m,n]=size(A);
[p,q]=size(b);
if m~=n || m~=p 
    error('Sistema no consistente')
end
d=zeros(n,n);
e=zeros(n,n);
f=zeros(n,n);
for i=1:n
    d(i,i)=A(i,i);
    for j=1:n
        if i<j
            e(i,j)=0;
            f(i,j)=-A(i,j);
        elseif i==j
                e(i,j)=0;
                f(i,j)=0;
        elseif i>j
            f(i,j)=0;
            e(i,j)=-A(i,j);
        end
    end
end;
M=d-(w*e);
N=w*f+((1-w)*d);
H=inv(M)*N;

x=M\(N*x0+(w*b));
for k=1:n_iter-1
    x_ant=x;
    x=M\(N*x_ant+(w*b));
    if norm(x-x_ant,inf) < tol
        return;
    end
end;