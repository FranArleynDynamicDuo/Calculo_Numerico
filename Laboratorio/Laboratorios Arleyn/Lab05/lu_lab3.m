
% Factorizacion LU

function[L,U] = lu_lab3(A) 

%Definición de las variables, n= tamaño de la matriz A; L= Matriz de ceros
%de tamaño n; U= Matriz de ceros de tamaño n; x= vector columna de ceros de
%tamaño n; d= vector columna de ceros de tamaño n
n=size(A,1);
L=zeros(n);
U=zeros(n);

%Paso 1: Toda la diagonal principal de la matriz U, se hace 1
for i=1:n
       U(i,i)=1;
 end

%Paso 2: El valor de L(1,1) es sustituido por A(1,1)
    L(1,1)=A(1,1);

%Condición: Se verifica que la multiplicacion del valor L(1,1) con U(1,1) 
%no sea igual a cero, en caso de serlo se detiene el prgrama 
if L(1,1)*U(1,1)==0
    disp [('factorización imposible')]
    return
end
%Paso 3: Se obtiene la primera fila de la matriz U y la primera columna de 
%la matriz L, partiendo de los valores calculados en los pasos 1 y 2; 
%siguiendo el procedimiento de la factorización LU, primero se opera sobre 
%la matriz U, dividiendo el valor de la matriz A que se desea factorizar, 
%por ejemplo A(1,2) entre L(1,1), para el segundo valor de la primera fila 
%de la matriz U, es decir U(1,2). Con el valor obtenido de U, se pasa 
%inmediatamente a calcular el segundo valor de la matriz L, dividiendo 
%el valor de la segunda fila y la primera columna de la matriz A, es decir 
%A(2,1), entre el valor de U(1,1) y se obtiene el valor L(2,1); este
%procedimiento se aplica hasta hallar todos los valores de la primera fila
%de U y todos los valores de la columna de L
for j=2:n
    U(1,j)=A(1,j)/L(1,1);
    L(j,1)=A(j,1)/U(1,1);
end

%Paso 4: calculo de los valores de las matrices U y L
for i=2:n-1
        %Paso 5: Calcula los valores de L de la diagonal principal
        L(i,i)=A(i,i)-L(i,1:i-1)*U(1:i-1,i);
    %Condición: Se verifica que la multiplicacion del valor L(i,i) con U(i,i) 
    %no sea igual a cero, en caso de serlo se detiene el prgrama 
    if L(i,i)*U(i,i)==0
        disp [('factorización imposible')]
        return
    end
    for j=i+1:n
        %Paso 6: Calcula los valores de cada fila de U, desde la fila 2 en 
        %adelante
        U(i,j)=(A(i,j)-(L(i,1:i-1)*U(1:i-1,j)))/L(i,i);
        %Paso 7: Calcula los valores de cada columna de L, desde la columna
        %2 en adelante, hasta n-1; es decir la penultima columna
        L(j,i)=(A(j,i)-(L(j,1:i-1)*U(1:i-1,i)))/U(i,i);
    end
    
end
    %Paso 8: Calcula los valores de la columna n de la matriz L
    L(n,n)=A(n,n)-(L(n,1:n-1)*U(1:n-1,n));

%Muestra el vector solucion desde x1 hasta xn

end 



