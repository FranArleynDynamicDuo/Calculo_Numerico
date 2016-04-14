%Edward Zambrano
%07-41677

%Pregunta 1

load('data.mat')

%a)
%Se obtienen los coeficientes del polinomio mediante la resolucion del
%sistema con la Matriz de Vandermonde
c1 = coefVand(x,y);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%b)

%Se obtienen los coeficientes del polinomio interpolante de Newton mediante
%la resolucion de un sistema de ecuaciones cuya matriz asociada es
%triangular inferior
c2 = coefNewton(x,y);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%c)
hold on
%Primero construimos el vector con los polinomios evaluados

%puntos a evaluar
puntos = 0:0.2:7;
eval_puntos1=zeros(length(puntos),1);        

%se evaluan los polinomios
for i=1:1:length(puntos)
    eval_puntos1(i) = evalHorn(c1,puntos(i),zeros(1,10)); 
end

eval_puntos2=zeros(length(puntos),1);  
for i=1:1:length(puntos)
    eval_puntos2(i) = evalHorn(c2,puntos(i),x); 
end

%Se grafican los puntos sobre un mismo lienzo.
%rojo: polinomio de Vandermonde
%negro: polinomio de Newton
%punto negros: data original

graf = plot(puntos,eval_puntos1);
%dado que la linea queda una encima de otra, se aumenta el grosor de la
%linea verde para que se aprecie mejor la sobreposicion
set(graf,'LineWidth',2,'color','r')
plot(puntos,eval_puntos2,'g');
plot(x,y,'black*');
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Pregunta 2

%se cargan los datos
load('datanw.mat');

%a)

 n=length(x);

 A = zeros(n,n);
    
 [coeficientes_dd matriz_coeficientes_dd]=diferencias_divididas(x,y,A); 

 eval_dd=evalHorn(coeficientes_dd,x,x);
 
 %si se comparan los valores de eval_dd y y, son iguales.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%b)
hold on
plot(x,y,'*');
plot(x,eval_dd,'r');
hold off

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%c)
hold on
tiempo_x=[-1;0;0.5;1;1.5];
%utilizo los coeficientes encontrados en 2-a
eval_x = evalHorn(coeficientes_dd,tiempo_x,x);
graf2 = plot(tiempo_x,eval_x);
set(graf2,'LineWidth',3,'color','b')

%ahora utilizo la funcion dada en el enunciado
eval_x2= zeros(length(eval_x),1);

 for i=1:length(tiempo_x)
       eval_x2(i) = exp((tiempo_x(i)^2)*(-1))* sin((pi*(tiempo_x(i)^3))/4);
 end

 plot(tiempo_x,eval_x2,'r')

 %se calcula que tan grande es el error
 error= norm(eval_x2-eval_x',inf)
 hold off  
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 
 %d)
 %los nuevos tiempos a agregar son -2.5, -1.7 y 2.5
 
 %No logre modificar de manera correcta el algoritmo de evalHorn de forma
 %que funcionara utilizando una matriz previamente calculada.
 hold on
 plot(x,y,'*');
 tiempo2_x = [-2.5;-1.7;-1;0;0.5;1;1.5;2.5];
 
eval_x = evalHorn(coeficientes_dd,tiempo2_x,x);
graf2 = plot(tiempo2_x,eval_x);
set(graf2,'LineWidth',2,'color','b')

%ahora utilizo la funcion dada en el enunciado
eval_x2= zeros(length(eval_x),1);

 for i=1:1:length(tiempo2_x)
       eval_x2(i) = exp((tiempo2_x(i)^2)*(-1))* sin((pi*(tiempo2_x(i)^3))/4);
 end

 %se calcula que tan grande es el error
 error2= norm(eval_x2-eval_x',inf)
 

 %%%%%%%%%%%%%%%%%%%%%%%%%%
 
 %e)
 plot(tiempo2_x',eval_x2,'r') 
 hold off 
 