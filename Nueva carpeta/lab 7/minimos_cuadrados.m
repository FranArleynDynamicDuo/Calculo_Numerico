function [ coeficientes ] = minimos_cuadrados(x, y, grado)
%creado utilizando el algoritmo explicado en 
%http://bit.ly/3ZeuYV
tam_x= length(x);

sumatoria = sum(y);
V(1)=sumatoria;
aux=0;

%Se construye M
for i=1:grado+1
   for j=1:grado+1
        sumatoria=0;
        for k=1:tam_x
            pot=1;
            for p=1:aux
                pot=pot*x(k);
            end
            sumatoria=sumatoria+pot;
        end
        M(i,j)=sumatoria;
        M(1,1)=tam_x;
        aux=aux+1;
   end 
   aux=i;
end

% Se construye V
aux=1;
for j=2:grado+1
    sumatoria=0;
    for i=1:tam_x
        pr=1;
        pot=1;
        for p=1:aux
            pot=pot*x(i);
        end
        pr=pot*y(i);
        sumatoria=sumatoria+pr;
    end
    aux=aux+1;
    V(j)=sumatoria;
end

%Se obtienen los coeficientes
[L U]=descomposicionLU(M);
Y=sustAdelante(L,V);
coeficientes=sustAtras(U,Y);