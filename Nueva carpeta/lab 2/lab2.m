%Pregunta 1


%a)
n = 25;
A= matriz_hilbert(n);
determinante_A = det(A)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%b)
%se construye el vector b
b=A*ones(25,1)

%la solucion del sistema ax=b es x=ones(n,1)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%c)

%Se calcula A multiplicada por su inversa, la cual no da una matriz
%identidad de tamaño n=25
ident =A*inv(A); 	

%se calcula la norma infinito de esta matriz menos la matriz identidad de
%tamano 25
ninf= norm(ident-eye(25),inf) 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%d)

%se calcula C
C= inv(inv(A));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%e)

C= det(A)*det(inv(A))

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%f)

k=cond(A,inf)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%g)

x=A\b		

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%h)

w=ones(25,1);	
n1=norm(b-(A*w),inf)	
n2=norm((x-w),inf)		


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Pregunta 2

H=matriz_hilbert(5);    
w=ones(5,1);         
%vector de lado asociado
b=H*w

%se calcula la matriz deltaH con una perturbacion
deltaH=zeros(5,5);
deltaH(5,1)=4.5e-6;

%a)
%condicion en norma infinita de H
condH=cond(H,inf);

%x es la solucion del sistema original
X = H\b; 

deltaX =(H+deltaH)\b-X;

v=norm(deltaX,inf)/norm(X,inf) - condH*(norm(deltaH,inf)/norm(H,inf));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%b)
%Se obtiene la norma de deltaX
n = norm(deltaX,inf)

