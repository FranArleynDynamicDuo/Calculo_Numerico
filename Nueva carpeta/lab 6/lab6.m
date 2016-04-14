%1)

%declaracion de las variables necesarias
A = [3 -1 -9 -6;-2 9 -6 0;-9 -1 0 10;-6 7 -3 -6 ];
B = [8 -3 -2 -3;-6 -7 -1 2;1 -7 4 -8;9 -5 1 -8 ];
C = A'*A;
    

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%2)

%Se dibujan los circulos para cada una de las matrices


dibuja_circulo(A);
pause();
dibuja_circulo(B);
pause();
dibuja_circulo(C);
pause();

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%3)

%Calculamos lo autovalores asociados a la matriz A
autovalores_A = eig(A);
autovalores_B = eig(B);
autovalores_C = eig(C)

       
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%4)

%Para facilitar la correcion del laboratorio, se unieron las respuestas de
%la pregunta 2 y 4 en la seccion 2.
        
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%5)

radio_espectral_A = max(abs(autovalores_A))
radio_espectral_B = max(abs(autovalores_B))
radio_espectral_C = max(abs(autovalores_C))
   

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%6)
maxit = 1000;
tol =  1.0000e-30;
d = 0;
%Para la matriz A no se puede aplicar el metodo de las potencias como se
%mostro anteriormente.

%Matriz B 
%
[B1 vB1 ] = potencia(B,d,maxit,tol);
[B2 vB2 ] = potencia_v(B,d,maxit,tol);

%Matriz C 
%
[C1 vC1 ] = potencia(C,d,maxit,tol);
[C2 vC2 ] = potencia_v(C,d,maxit,tol);
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%7)

%Para la matriz A no se puede aplicar el metodo de las potencias como se
%mostro anteriormente.

%Matriz B 
%
[may_B vmayB ] = potenciaR(B,d,maxit,tol);
[men_B vmenB ] = potencia_vR(B,d,maxit,tol);

%Matriz C 
%
[may_C vmayC ] = potenciaR(C,d,maxit,tol);
[men_C vmenC ] = potencia_vR(C,d,maxit,tol);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%8)

%para esta pregunta se hace lo mismo que en la seccion 6 pero modificando
%el desplazamiento para obtener los demas autovalores. Para saber cual es
%el desplazamiento que se debe utilizar, utilizamos los datos obtenidos en
%la pregunta 2

%Para la matriz A no se puede aplicar el metodo de las potencias como se
%mostro anteriormente.

%Matriz B 
% Para el autovalor 7.9830 utilizamos como d = -20
d = -20;
[B3 vB3 ] = potencia(B,d,maxit,tol);

%Para el autovalor -2.0887 utilizamos d=-5 y se utiliza el cociente de Rayleigh 
d = -5;
[B4 vB4 ] = potencia_vR(B,d,maxit,tol);

%Matriz C 
%

%Para el autovalor 56.9364  utilizamos como d = 50 y se utiliza el cociente
%de Rayleigh 
d = 50;
[C3 vC3 ] = potencia_vR(C,d,maxit,tol);
%Para el autovalor 203.2895 se utiliza d = 195 y se utiliza el cociente
%de Rayleigh 
d = 195;
[C4 vC4 ] = potencia_vR(C,d,maxit,tol);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Pregunta 9)

%Para demostrar esto, se tiene que demostrar que La matriz multiplicada por
%el autovector es igual al autovalor multiplicado por el autovector
%asociado. 
%Esto es lo mismo que decir que la norma infinito de la resta de ambos
%elementos es cero o un numero muy cercano a cero.

%Matriz B
norm(B*vB1- B1*vB1,inf)
norm(B*vB2- B2*vB2,inf)
norm(B*vB3- B3*vB3,inf)
norm(B*vB4- B4*vB4,inf)

%Matriz C
norm(C*vC1- C1*vC1,inf)
norm(C*vC2- C2*vC2,inf)
norm(C*vC3- C3*vC3,inf)
norm(C*vC4- C4*vC4,inf)
