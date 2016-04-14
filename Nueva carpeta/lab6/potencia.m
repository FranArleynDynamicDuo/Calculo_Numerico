function[l]=potencia(a,varargin);
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
prod1=0;
prod2=0;
for i=1:maxit
    x_viejo=x;
    x=a*x_viejo;
    x=x./norm(x,inf);
    if (norm(x_viejo-x,inf)<tol) || (i==maxit)
        prod1=sum((a*x).*(x.')');
        prod2=sum(x.*(x.')');
        l=prod1/prod2;
        return;
    end;
end;