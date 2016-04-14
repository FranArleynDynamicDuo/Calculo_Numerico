%Lab 9

%Pregunta 1
clc
clear
tiempo  = [0 3 5 8 13];
distancia  = [0 225 383 623 993];
velocidad = [75 77 80 74 72];

coeficientes = pol_hermite(tiempo,distancia,velocidad);

%se toma el tiempo en intervalos de 1 desde el inicio hasta el final.
tiempo_ = 0:1:13;

data = zeros(length(coeficientes),1);


%funcion de matlab para obtener los coeficientes de la derivada de un
%polinomio
coeficientes_derivada = polyder(coeficientes);
%coeficientes de la derivada obtenidos mediante wolphram
%coeficientes_derivada = [0.008   -0.1533    1.4592   -7.6915   22.0324  -30.2859   14.3238   75];

data = zeros(length(coeficientes_derivada),1);

plot(tiempo_,evalHorn(coeficientes_derivada,tiempo_,data),'g');



%a)
data = zeros(length(coeficientes),1);
posicion_10s = evalHorn(coeficientes,10,data);
data = zeros(length(coeficientes_derivada),1);
velocidad_10s = evalHorn(coeficientes_derivada,10,data);

%b)
%Para calcular la primera vez que la rapidez rebasa los 80.6 pies/s, se
%resuelve el valor mas pequeño de t en la ecuacion 80.6 = H(9)(x)', esto da
%que t =  5.6488
primera_vez = evalHorn(coeficientes_derivada,5.6488,data);
 
%c)
%en la grafica se aprecia  que la velocidad maxima se sucede a los 12.4
%segundos aproximadamente a los 119.4 pies aproximadamente.


