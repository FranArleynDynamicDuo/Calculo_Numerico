% Ejercicio 1: Como los pivotes se colocan a drede en valores elevados, el
% sistema de Eliminacion de Gauss no tendra problemas con los pivotes. El
% sistema LU no fallará pues no tendrá problemas con los pivotes al escalar 
% la matriz para hallar los factores.

n=1000;
M=4999;
A=gallery('minij',n)-diag(1:n)+(M*eye(n));
b=(1:n);
b=b';
c=(n:-1:1);
c=c';
tic
  disp('Solucion mediante GAUSS')
  xr=elimgauss(A,b,eps);
  yr=elimgauss(A,c,eps);
  egauss_1=norm(b-A*xr,2)
  egauss_2=norm(c-A*yr,2)
t1=toc
tic
  disp('Solucion mediante LU')
  [L1,U1]=fact_lu(A,eps);
  u=sustprog(L1,b);
  x=sustregr(U1,u);
  v=sustprog(L1,c);
  y=sustregr(U1,v);
  eLU_1=norm(b-A*x,2)
  eLU_2=norm(c-A*y,2)
t2=toc

% El método de Gauss en matrices grandes toma mas tiempo que el de LU. 
% Las precisiones son similares, pero en matrices grandes es mejor utilizar LU
