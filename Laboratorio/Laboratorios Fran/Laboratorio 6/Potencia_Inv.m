%permite aproximar el valor absoluto del menor valor propio de la matriz
%@param A: matriz a obtener el menor valor propio en valor absoluto
%@param d: desplazamiento
%@param maxit: numero maximo de iteraciones
%@param tol: tolerancia
%@return autovalor: el autovalor deseado
%@return x: el autovector asociado al autovalor obtenido

function[autovalor,x,it] = Potencia_Inv(A,maxit,tol,x)

[L,U]=  FactLU( A, true ,1 );

    for it = 1 : maxit
        y = x;
        x = SustitucionAdelante(L,y);
        x = SustitucionAtras(U,x);
        autovalor = norm(y,2)/norm(x,2);
        x = x/norm(x,2);
        if norm(y-x,2) < tol
            break;
        end
    end