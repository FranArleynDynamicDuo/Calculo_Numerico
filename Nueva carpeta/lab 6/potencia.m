%permite aproximar el valor absoluto del mayor valor propio de la matriz
%@param A: matriz a obtener el mayor valor propio en valor absoluto
%@param d: desplazamiento
%@param maxit: numero maximo de iteraciones
%@param tol: tolerancia
%@return autovalor: el autovalor deseado
%@return x: el autovector asociado al autovalor obtenido
function[autovalor,y] = potencia(A,d,maxit,tol)
    n = length(A);
    x=ones(length(A),1);
    
    for it=1:1:maxit
       y=x;
       x=(A - d * eye(n,n))*x;
       x=x/norm(x,inf);
            autovalor = (y(1)/x(1)) + d; 
       if (norm(y-x,Inf) < tol)
           break
       end
    end
     autovalor = (x'*A*x)/(x'*x);
 end
