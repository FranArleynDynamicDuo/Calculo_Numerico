% Luis Vieira
% 07-41651
% Laboratorio 08
% Script para la pregunta 01

clear all
clc
format long

load('datanw.mat') 

%Coeficientes del polinomio
[C , M] = interp_newton(x,y);

display('Los coeficientes obtenidos son: ')
display(C)
figure(1)
% Grafico los puntos
plot(x,y,'g*')

hold on



% Grafico la interpolacion de Newton
p = (x(1): .0001: x(length(x)))';   % Vectores auxiliares para graficar
q = zeros(length(p),1);

for j = 1: length(q)
    q(j) = Horner(C, x, p(j));
end

plot(p,q,'g-')                    % Se grafica el polinomio en verde


% Coloco algunos detalles en la grafica
xlabel X
ylabel Y
grid on
title 'Ajuste Polinomico'
hold off

% Pregunta C
l = [ -1 ; 1; 0; 0.5; 1.5];

d = zeros(length(l),1);

for i=1:length(l)

    d(i,1) = exp(-(l(i,1)^2))*sin(pi*(l(i,1)^3)/4) ;
end

q = zeros(length(l),1);

for j = 1: length(l)
    q(j) = Horner(C, x, l(j));
end
display('El error absoluto es: ')
display(norm(d-q,inf)/norm(d,inf))


% Pregunta d

figure(2)
plot(x,y,'g*')
hold on
p = (-2.5: .0001:2.5)';   % Vectores auxiliares para graficar
q = zeros(length(p),1);

for j = 1: length(q)
    q(j) = Horner(C, x, p(j));
end

plot(p,q,'g-')



z =[2.48; 2.4 ; -2.48]; 
y2 =  zeros(length(z),1);

for i=1:length(z)

    y2(i,1) = exp(-(z(i,1)^2))*sin(pi*(z(i,1)^3)/4) ;
end
    
newX = zeros(length(x)+length(z),1);
newX(1:length(x),1) = x;
newX(length(x)+1:length(x)+length(z),1) = z;

newY =zeros(length(x)+length(z),1);
newY(1:length(x),1) = y;
newY(length(x)+1:length(x)+length(z),1) = y2;

newC = interp_newton2(newX,newY, M);

p = (-2.5: .0001: 2.5)'; 


q = zeros(length(p),1);
for j = 1: length(q)
    q(j) = Horner(newC, newX, p(j));
end

plot(z,y2,'b*')
plot(p,q,'b-')                    % Se grafica el polinomio en azul

xlabel X
ylabel Y
grid on
title 'Ajuste Polinomico'
hold off


%Analisis:
% Al agregar puntos adicionales se peude notar como el polinomio mejora
% para poder pasar por ese punto, se puede notar en la grafica cuando se
% hace zoom, los agrege en los borde porque notaba que la grafica tenia una
% curva extrana, ahora elegi estos puntos y los mostre en la grafica y
% confirme que con esos puntos el polinomio tenia una mejor aproximacion
%

