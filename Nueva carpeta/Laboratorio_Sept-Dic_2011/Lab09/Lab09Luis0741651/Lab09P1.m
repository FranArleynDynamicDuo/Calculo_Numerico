% Luis Vieira
% 07-41651
% Laboratorio 09
% Script para la pregunta 01

clear all
clc

tiempo  = [0 3 5 8 13];
distancia  = [0 225 383 623 993];
velocidad = [75 77 80 74 72];


coeficientes = (hermite(tiempo,distancia,velocidad));

% Grafico la interpolacion de Hermite d/t
p = (tiempo(1): .1: tiempo(length(tiempo)))';   % Vectores auxiliares para graficar


data = zeros(length(coeficientes),1);

q = HornerHer(coeficientes,p,data);

figure(1)
% Grafico los puntos
plot(tiempo,distancia,'g*')
hold on
plot(p,q,'g-')     
xlabel('Tiempo')
ylabel('Distancia')
hold off


figure(2)
% Grafico los puntos
plot(tiempo,velocidad,'r*')

hold on
coeficientes_derivada = polyder(coeficientes);
data = zeros(length(coeficientes_derivada),1);
q = HornerHer(coeficientes_derivada,p,data);

plot(p,q,'r-')  
xlabel('Tiempo')
ylabel('Velocidad')
hold off

% Pregunta a
display('La posicion del carro a los 10 sg es:')
data = zeros(length(coeficientes),1);
newDis = HornerHer(coeficientes,10,data);
newDis
display('La velocidad del carro a los 10 sg es:')
data = zeros(length(coeficientes_derivada),1);
coeficientes_derivada = polyder(coeficientes);
newVec = HornerHer(coeficientes_derivada,10,data);
newVec

% Pregunta b
% 55millas/h = 80,66667 ft/s
maxVel = 80.66667;
coeficientes_derivada = polyder(coeficientes);
coeficientes_derivada(length(coeficientes_derivada)) = coeficientes_derivada(length(coeficientes_derivada)) - maxVel;
display('El tiempo en 55 millas/h es: ')
primertiempo = (roots(coeficientes_derivada))



% Pregunta c
coeficientes_derivada = polyder(coeficientes);
coeficientes_segunda_derivada = polyder(coeficientes_derivada);
maxtiempo = (roots((coeficientes_segunda_derivada)));

data = zeros(length(coeficientes_segunda_derivada),1);
j = 1;
for i=1:length(maxtiempo)

    a = HornerHer(coeficientes_segunda_derivada,maxtiempo(i),data);
    if(a < 0)
       vectormenor(j) = maxtiempo(i);
       j = j+1;
    end
end
vectormenor
data = zeros(length(coeficientes_derivada),1);
maxVel = 0;
for i =1:length(vectormenor)
    auxVel =  HornerHer(coeficientes_derivada,vectormenor(i),data);
    if(auxVel>maxVel)
        maxVel = auxVel;
    end
end
display('EL carro alcanza una velocidad maxima de :')
maxVel

