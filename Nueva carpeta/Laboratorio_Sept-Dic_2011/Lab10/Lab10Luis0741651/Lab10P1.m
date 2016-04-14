% Luis Vieira
% 07-41651
% Laboratorio 10
% Script para la pregunta 01

clear all
clc

figure(1)

%Datos de la primera curva
% Los X
x1 = [ 1 ;2 ;5;6;7;8;10;13;17];
% Los Y
y1 = [ 3.0 ; 3.7 ; 3.9 ; 4.2 ;5.7 ;6.6 ;7.1 ;6.7 ;4.5];
% El rango de los X para ser graficados
xx1=  1:0.1:17 ;
% Derivadas de la tabla
yd1 = [1.0;-0.67];

%Datos de la segunda curva
% Los X
x2 = [17 ;20;23;24;25;27;27.7 ];
% Los Y
y2 = [4.5;7.0; 6.1; 5.6 ; 5.8 ; 5.2 ; 4.1];
% El rango de los X para ser graficados
xx2 = 17:0.1:27.7;
% Derivadas de la tabla
yd2= [ 3.0 ; -4.0];

%Datos de la tercera curva
% Los X
x3 = [27.7; 28; 29; 30];
% Los Y
y3 = [4.1; 4.3 ; 4.1 ;  3.0];
% El rango de los X para ser graficados
xx3 = 27.7:0.1:30;
% Derivadas de la tabla
yd3 = [0.33 ; -1.5];

% Aqui saco los valores de evaluar los xx en las funciones dadas
% anterioremente usando interpolacion por splines
% Concateno las derivadas con [ y1 y y2] y asi uso la informacion de las
% derivadas para saber la pronunciacion de la curva en los puntos de union
% de las curvas
yy1 = spline(x1,[yd1(1) ;y1; yd1(2)],xx1);
yy2 = spline(x2,[yd2(1) ;y2 ;yd2(2)],xx2);
yy3 = spline(x3,[yd3(1) ;y3; yd3(2)],xx3);

%Aqui grafico los puntos dados y los puntos necesarios para hacer la recta
plot(x1,y1,'o',xx1,yy1);
hold on
plot(x2,y2,'o',xx2,yy2);
plot(x3,y3,'o',xx3,yy3);

grid
axis([0 31 2.8 7.5])
title('Snoopy')
hold off
