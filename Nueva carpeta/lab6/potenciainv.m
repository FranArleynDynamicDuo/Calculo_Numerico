function[l]=potenciainv(a,varargin);
if nargin==4;
    x=varargin{1};
    maxit=varargin{2};
    tol=varargin{3};
elseif nargin==3
    tol=1e-12;
elseif nargin==2
    tol=1e-12;
    maxit=100;
elseif nargin==1
    tol=1e-12;
    maxit=100;
    x=rand(3,1);
end
for i=1:maxit
    x_viejo=x;
    [L,U]=fact_lu(a,eps);
    z=sustprog(L,x_viejo);
    x=sustregr(U,z)
    if (norm(x_viejo-x,inf)<tol) || (i==maxit)
        prod1=sum(x.*(x_viejo.')');
        prod2=sum(x_viejo.*(x_viejo.')');
        l=prod1/prod2;
        return;
    end;
end;