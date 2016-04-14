%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                             Laboratorio 3                               %
%                            Calculo Numerico                             %
%                            Francisco Sucre                              %
%                               10-10717                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 
%%%%%%%%%%%%%%%%%%%%%%%%% Laboratorio 3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
%%%%%%%%%%%%%%%%%%%%%%%%%%% PARTE I %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
 
% a) Para n = 25, calcule el determinante de la matriz A . ¿Es A es
% invertible?.

    n = 25;
    A = zeros(n);
    b = zeros(n,1);

    for i = 1 : n
        
        for j = 1 : n

            A(i,j) = (1 + i)^(j-1);

        end

        b(i) = (((1 + i)^n) - 1)/i;

    end

    detVan = det(A);
 
% b) En este caso, ¿cual es la solucion exacta del sistema Ax = b?.

    xreal = A\b;
 
% c) Calcule AA −1 y compare con la identidad
 
    Comp_Iden = norm((A*inv(A)) - eye(n),inf);

% d ) Calcule C = (A^−1 )^−1 , ¿Qu ́e observa?.

    C = inv(inv(A));
 
% e) Calcule det(A)det(A −1 ). ¿Qu ́e obtuvo?. ¿Era lo esperado?.
 
    detInv = det(A)*det(inv(A));

% f ) Calcule el numero de condicion de la matriz A usando norma infinito.

    condA = norm(A,inf)*norm(inv(A),inf);
 
% g) Calcule la solucion del sistema Ax = b usando factorizacion LU sin
% pivoteo y sustitucion hacia adelante y hacia atras programado por Ud. en
% Matlab.

    xLU = ResolverLU(A,b);
 
% h) Calcule la solucion del sistema Ax = b (en Matlab x = A\b).

    xreal = A\b;
 
% i) Genere un vector w de unos de tamano 25. Determine b − Aw ∞ y x − w ∞ 
% para las soluciones encontradas en los incisos g) y h). ¿Que puede
% concluir de los resultados anteriores?.

    w = ones(n,1);
    Op1w = norm(b - A*w,inf);
    Op2w = norm(xLU - w,inf);
    Op3w = norm(xreal - w,inf);
    
 
%%%%%%%%%%%%%%%%%%%%%%%%%%% PARTE II %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
 
 
% a) Calcule la solucion exacta del sistema (5) en termino de e
% b) Escriba una funcion en Matlab donde se resuelva el sistema lineal 
% para los valores de indicados anteriormente usando para ello la
% factorizacion LU sin pivoteo programado por ud.
 
    k = (1:0.1:13);
    Error = zeros(length(k),1);
    e = 10.^-k;
    g = [2 * 10^-2;1];
    
    for i = 1 : length(k)
       
        S = [1/2 .* 10.^-2 .* e(i), 10^-2;-1,1];
        freal = S\g;
        fLU = ResolverLU(S,g);
        Error(i) = norm(freal - fLU,2);
        
    end

% c) Se define la funcion error como error(k) = x ∗ − x 2 donde x ∗ es la
% solucion de (5) obtenida mediante fatorizacion LU sin pivoteo y x es
% la solucion exacta calculada en a). Escriba un script en Matlab que
% grafique la funcion error(k) usando definida previamente. Describa
% y analice lo que se observa en el grafico

        plot(k,Error,'b');
        xlabel('Valores de k');
        ylabel('Error');
        title('Error De Ejercicio 2');