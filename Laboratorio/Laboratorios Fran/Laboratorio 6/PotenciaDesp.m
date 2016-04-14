%permite aproximar el valor absoluto del mayor valor propio de la matriz
%@param A: matriz a obtener el mayor valor propio en valor absoluto
%@param d: desplazamiento
%@param maxit: numero maximo de iteraciones
%@param tol: tolerancia
%@return autovalor: el autovalor deseado
%@return x: el autovector asociado al autovalor obtenido

function[autovalor,x,it] = PotenciaDesp(A,d,maxit,tol,x)

    n = length(A);
    
    for it = 1:1:maxit
        
       y = x;
       x = (A - d * eye(n,n)) * x;
       x = x/norm(x,2); 
       
       if (norm(y-x,2) < tol)
           break
       end
       
    end

    autovalor = ProductoInterno(A*x,x);
 end