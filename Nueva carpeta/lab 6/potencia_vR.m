%permite aproximar el valor absoluto del menor valor propio de la matriz
%@param A: matriz a obtener el mayor valor propio en valor absoluto
%@param d: desplazamiento
%@param maxit: numero maximo de iteraciones
%@param tol: tolerancia
%@return autovalor: el autovalor deseado
%@return x: el autovector asociado al autovalor obtenido
function[autovalor,x] = potencia_vR(A,d,maxit,tol)
x = ones(length(A),1);
n = length(A);
[L U]=descomposicionLU(A - d * eye(n,n));
    for it=1:1:maxit
        y = x;
        x=sustAdelante(L,x);
        x=sustAtras(U,x');
        x=x';
       autovalor = dot(A*x,x)/dot(x,x);
        x=x/norm(x,inf);
        if norm(y-x,inf) < tol
            break;
        end
    end