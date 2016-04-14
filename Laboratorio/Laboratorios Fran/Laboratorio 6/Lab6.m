%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                             Laboratorio 6                               %
%                            Calculo Numerico                             %
%                            Francisco Sucre                              %
%                               10-10717                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%% Laboratorio 6 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 1. Grafique los discos de Gershgorin y los autovalores (use el comando de 
% Matlab eig) de las siguientes matrices:

A = [(-1+1i) 0 (1/4); (1/4) 1 (1/4); 1 1 3];
F = [1 3 -2; -1 -2 3; 1 1 2];
[n,m] = size(A);

%%%%%%%%%%%%%%% GRAFICA DE A %%%%%%%%%%%%%%%

subplot(3,1,1);
Dibuja_Circulo(A,' A');

%%%%%%%%%%%%%%% GRAFICA DE F %%%%%%%%%%%%%%%

subplot(3,1,2);
Dibuja_Circulo(F,' F');

% Documente los graficos

% 2. Implemente como funciones en Matlab los metodos de la potencia y 
% potencia Inversa, directos y desplazados. Las entradas deben ser la
% matriz, el valor aproximado del autovalor y el vector inicial x0 . 

% Las salidas deben ser el autovalor obtenido, el autovector asociado y el 
% numero de iteraciones realizadas.

%Tome como criterios de paradas alcanzar 1000 iteraciones o alcanzar una
% toleracia de 10 −6

tol = 10^(-6);
maxit = 1000;
x0 = ones(n,1);


% 3. Calcule los autovalores de mayor y menor magnitud de las matrices de
% la pregunta 1, tome el vector de unos como iterado inicial. En cada caso 
% indique el autovalor encontrado y las iteraciones realizadas.

% Use el comando de Matlab eig para comparar sus resultados. 
% Comente sobre los resultados obtenidos.

% En que casos no convergen los metodos? a que se debe? contradice esto
% lo visto en teorıa?

%%%%%%%%%%%%%%% CALCULOS CON A %%%%%%%%%%%%%%%

[AutoMaxA,AutoVectorMaxA,IterMaxA] = Potencia(A,maxit,tol,x0);
[AutoMinA,AutoVectorMinA,IterMinA] = Potencia_Inv(A,maxit,tol,x0);
AutovaloresRealesA = eig(A);

%%%%%%%%%%%%%%% CALCULOS CON F %%%%%%%%%%%%%%%

[AutoMaxF,AutoVectorMaxF,IterMaxF] = Potencia(F,maxit,tol,x0);
[AutoMinF,AutoVectorMinF,IterMinF] = Potencia_Inv(F,maxit,tol,x0);
AutovaloresRealesF = eig(F);

% 4. Considere la matriz

% Use el Metodo de la Potencia para calcular el autovalor de mayor 
% magnitud de A y su autovector asociado para ε = 1, 10 −2 , 10 −8 . 
% En cada caso indique el autovalor encontrado, las iteraciones realizadas
% y el error relativo. Comente sobre la exactitud y la estabilidad del 
% metodo en base a los resultados obtenidos. A que se deben estos 
% resultados?

%%%%%%%%%%%%%%% CALCULOS CON EPSILON = 1 %%%%%%%%%%%%%%%

epsilon = 1;
S1 = [1 1 0;0 1 epsilon;0 epsilon 1];
[AutoMaxS1,AutoVectorMaxS1,IterMaxS1] = Potencia(S1,maxit,tol,x0);
AutovaloresRealesS1 = eig(S1);

%%%%%%%%%%%%%%% CALCULOS CON EPSILON = 10^(-2) %%%%%%%%%%%%%%%

epsilon = 10^(-2);
S2 = [1 1 0;0 1 epsilon;0 epsilon 1];
[AutoMaxS2,AutoVectorMaxS2,IterMaxS2] = Potencia(S2,maxit,tol,x0);
AutovaloresRealesS2 = eig(S2);

%%%%%%%%%%%%%%% CALCULOS CON EPISLON = 10^(-8) %%%%%%%%%%%%%%%

epsilon = 10^(-8);
S3 = [1 1 0;0 1 epsilon;0 epsilon 1];
[AutoMaxS3,AutoVectorMaxS3,IterMaxS3] = Potencia(S3,maxit,tol,x0);
AutovaloresRealesS3 = eig(S3);

% 5. Calcule todos los autovalores y autovectores de la matriz

G = [-149 -50 -154;537 180 546; -27 -9 -25];
subplot(3,1,3);
Dibuja_Circulo(G,' G');
AutovaloresRealesG = eig(G);

[n,m] = size(G);
AutovaloresManualesG = zeros(n,1);
VectoresManualesG = zeros(n,1,n);
IteracionesG = zeros(n,1);

[AutovaloresManualesG(n), VectorManualG(:,:,n), IteracionesG(n) ] = Potencia(G,maxit,tol,x0);
[AutovaloresManualesG(1),VectorManualG(:,:,1),IteracionesG(1) ] = Potencia_Inv(A,maxit,tol,x0);
desp = 1;

for i = 2 : n
   
    
    [Autovalor, Vector, Iter] = PotenciaDesp(G,desp,maxit,tol,x0);
    
    if Autovalor == AutovaloresManualesG(1)
        
        i = i -1;
        desp = desp + 1;
       
        
    elseif (Autovalor == AutovaloresManualesG(n))
        
        break;
        
    else
        
        AutovaloresManualesG(i) = Autovalor;
        VectorManualG(:,:,i) = Vector;
        IteracionesG(i) = Iter;
        
    end
    
end

clear Vector;
clear Iteraciones;
clear Autovalor;
clear tol;
clear maxit;
clear n;
clear m;
clear i;
clear desp;
clear ans;
clear x0;
clear iter;
clear epsilon;