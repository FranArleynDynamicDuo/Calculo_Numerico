%Edward Zambrano
%07-41677
% Pruebas, p = [1 2 -3 4 5]; q = [1 0 0]; r = [3 6 9 10 8 9 2 0]
%           azul            verde           rojo
% x = [1 10 20 56]
 %p = [0 1 2 3 4]; 
 %q = [2 4 6 11 18];

 %Se cargan los datos
load('data.mat');
n = length(x);
%Pregunta 1:

%a)
coeficientes = crea_polinomio(x,y,n);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%b)
y2 = evalua_polinomio(coeficientes,x);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%c) el error cuadratico medio se va a obtener sumando el cuadrado de 
%la diferencias obtenidas de restar y(vector original) y y2 (vector 
%obtenido de evaluar el polinomio conseguido mediante minimos cuadrados). 
% para luego dividirlo entre el numero de elementos y sacarle la raiz
% cuadrada.

error = abs(y2 - y);
for i=1:i:n
    error(i) = error(i)*error(i);
end

ECM = sqrt(sum(error)/n); 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%d)

pol1=crea_polinomio(x,y,10);
pol2=crea_polinomio(x,y,25);
pol3=crea_polinomio(x,y,50);
y1 = evalua_polinomio(pol1,x);
y2 = evalua_polinomio(pol2,x);
y3 = evalua_polinomio(pol3,x);
plot(x,y,'x'); %Polinomio original
hold on
plot(x,y1,'y'); %Polinomio pol1, color amarillo
plot(x,y2,'b'); %Polinomio pol2, color azul
plot(x,y3,'r'); %Polinomio pol1, color rojo
%Esta grafica se encuentra en la seccion 1-d del informe.

%se puede apreciar que pol3 (grado 50) es el que mas se aproxima

error1 = abs(y1 - y);
for i=1:i:n
    error1(i) = error1(i)*error1(i);
end

ECM1 = sqrt(sum(error1)/n); 

error2 =abs(y2 - y);
for i=1:i:n
    error2(i) = error2(i)*error2(i);
end

ECM2 = sqrt(sum(error2)/n); 

error3 = abs(y3 - y);
for i=1:i:n
    error3(i) = error3(i)*error3(i);
end

ECM3 = sqrt(sum(error3)/n); 

