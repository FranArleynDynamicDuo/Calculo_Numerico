%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                             Laboratorio 4                               %
%                            Calculo Numerico                             %
%                            Francisco Sucre                              %
%                               10-10717                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%% Laboratorio 4 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 1. Escriba funciones de Matlab para el algoritmo de factorizacion 
% LU y el algoritmo de factorizacion de Cholesky.

% 2. Genere una matriz Y de tamano 250 × 250 con entradas aleatorias
% en el intervalo [−5, 5]. Considere las matrices

clc;
n = 250;
Y = (5  * rand(n) .* sign(randn(n)));

% B = YY';

B = Y * Y';

% A = B + (ε − min(λ B ))I
% donde ε > 0, min(λ B ) es el mınimo autovalor de B e I es la 
% matriz identidad. 

autovalores = eig(B);
minimoValor = min(autovalores);

% Sea b = Ae donde e es el vector de tamano 250 con entradas 
% ei = (−1)^i .

b = zeros(n,1);

for i = 1 : n
   
    b(i) = -1^i;
    
end

% (a) Verifique que A es una matriz sim ́etrica positiva definida.

% (b) Resuelva el sistema de ecuaciones Ax = b para ε = 10 −12 , 
% 10 −8 , 10 −4 usando la Factorizaci ́on LU y Factorizacion de Cholesky.

%%%%%%%%%%%%%%%%%%%%%%%%%% Matriz 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('MATRIZ 1')
disp('   ');
epsilon = 10^-12;
A1 = B + ((epsilon - minimoValor) * eye(n));

autovalores = eig(A1);
minimo = min(autovalores);

if isequal(A1,A1')
    disp('Es Simetrica');
end

if (minimo > 0)
    disp('Es definida positiva');
    
else
    disp('No es definida positiva');
end

xreal1 = A1\b;
TiempoInicio = tic;
xCho1 = ResolverCholesky(A1,b); 
TiempoCholesky1 = toc(TiempoInicio);
disp('TiempoCholesky1 = ');
disp(TiempoCholesky1);
ErrorChoAbs1 = abs(norm(xreal1,inf) - norm(xCho1,inf));
disp('ErrorChoAbs1 =');
disp(ErrorChoAbs1);

TiempoInicio = tic;
xLU1 = ResolverLU(A1,b,true,1);
TiempoLU1 = toc(TiempoInicio);
disp('TiempoLU1 = ');
disp(TiempoLU1);
ErrorLUAbs1 = abs(norm(xreal1,inf) - norm(xLU1,inf));
disp('ErrorLUAbs1 =');
disp(ErrorLUAbs1);

disp('Cond(A1) = ');
condicion1 = cond(A1);
disp(condicion1);


disp('    ');

%%%%%%%%%%%%%%%%%%%%%%%%%% Matriz 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('MATRIZ 2')
disp('   ');
epsilon = 10^-8;
A2 = B + ((epsilon - minimoValor) * eye(n));

autovalores = eig(A2);
minimo = min(autovalores);

if isequal(A2,A2')
    disp('Es Simetrica');
end

if (minimo > 0)
    disp('Es definida positiva');
    
else
    disp('No es definida positiva');
end

xreal2 = A2\b;
TiempoInicio = tic;
xCho2 = ResolverCholesky(A2,b);
TiempoCholesky2 = toc(TiempoInicio);
disp('TiempoCholesky2 = ');
disp(TiempoCholesky2);
ErrorChoAbs2 = abs(norm(xreal1,inf) - norm(xCho2,inf));
disp('ErrorChoAbs2 =');
disp(ErrorChoAbs2);


TiempoInicio = tic;
xLU2 = ResolverLU(A2,b,true,1);
TiempoLU2 = toc(TiempoInicio);
disp('TiempoLU2 = ');
disp(TiempoLU2);
ErrorLUAbs2 = abs(norm(xreal1,inf) - norm(xLU2,inf));
disp('ErrorLUAbs2 =');
disp(ErrorLUAbs2);


disp('Cond(A) = ');
condicion2 = cond(A2);
disp(condicion2);
disp('    ');

%%%%%%%%%%%%%%%%%%%%%%%%%% Matriz 3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

disp('MATRIZ 3')
disp('   ');
epsilon = 10^-4;
A3 = B + ((epsilon - minimoValor) * eye(n));

autovalores = eig(A3);
minimo = min(autovalores);

if isequal(A3,A3')
    disp('Es Simetrica');
end

if (minimo > 0)
    disp('Es definida positiva');
    
else
    disp('No es definida positiva');
end

xreal3 = A1\b;
TiempoInicio = tic;
xCho3 = ResolverCholesky(A3,b);
TiempoCholesky3 = toc(TiempoInicio);
disp('TiempoCholesky3 = ');
disp(TiempoCholesky3);
ErrorChoAbs3 = abs(norm(xreal1,inf) - norm(xCho3,inf));
disp('ErrorChoAbs3 =');
disp(ErrorChoAbs3);

TiempoInicio = tic;
xLU3 = ResolverLU(A3,b,true,1);
TiempoLU3 = toc(TiempoInicio);
disp('TiempoLU3 = ');
disp(TiempoLU3);
ErrorLUAbs3 = abs(norm(xreal3,inf) - norm(xLU3,inf));
disp('ErrorLUAbs3 =');
disp(ErrorLUAbs3);



disp('Cond(A) = ');
condicion3 = cond(A3);
disp(condicion3);
disp('    ');

%%%%%%%%%%%%%%%%%%%%%%%%% Laboratorio 4 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%