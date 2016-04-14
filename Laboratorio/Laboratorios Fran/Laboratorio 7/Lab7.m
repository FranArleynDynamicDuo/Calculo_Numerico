%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                             Laboratorio 7                               %
%                            Calculo Numerico                             %
%                            Francisco Sucre                              %
%                               10-10717                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%% Laboratorio 6 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 
% 1. El archivo data.mat contiene los datos de un experimento de medićon 
% de la temperatura (grados celcius) de una part ́ıcula en distintos 
% instantes de tiempo (minutos). El vector xd representa el tiempo 
% (de 0 a 8 minutos) y yd las distintas temperaturas medidas. No se dispone
% de mediciones de temperatura en el tiempo de 4 a 6 minutos porque el 
% instrumento de medici ́on presentaba fallas dando resultados atıpicos, por
% lo que se procedio a excluir dichas medidas del grupo de datos. 
% Se desea estimar el valor de las temperaturas en este intervalo de tiempo
% usando m ́ınimos cuadrados.

% (a) Ajuste los datos contenidos en el archivo usando mınimos cuadrados. 
% Para ello, ajuste con modelos polinomicos de grado 5, 15 y 20. Para cada
% modelo calcule el error cuadratico medio total (ECMT).

Modelo5 = Minimos_Cuadrados( xd,yd,5 );

Error5 = 0;

for i = 1 : length(xd)
    Error5 = Error5 + (yd(i) - polyval(Modelo5,xd(i)))^2;
end

Modelo15 = Minimos_Cuadrados( xd,yd,15 );

Error15 = 0;

for i = 1 : length(xd)
    Error15 = Error15 + (yd(i) - polyval(Modelo15,xd(i)))^2;
end

Modelo20 = Minimos_Cuadrados( xd,yd,20 );

Error20 = 0;

for i = 1 : length(xd)
    Error20 = Error20 + (yd(i) - polyval(Modelo20,xd(i)))^2;
end

% (b) Realice un grafico para cada modelo de ajuste obtenido, en cada 
% grafico incluya los datos. Documente adecuadamente los graficos 
% (etiquetas en los ejes, t ́ıtulo, leyenda, etc.).

y1 = polyval(Modelo5,xd);
y2 = polyval(Modelo15,xd);
y3 = polyval(Modelo20,xd);

plot(xd,yd,'x'); %Polinomio original
hold on
plot(xd,y1,'y'); %Polinomio pol1, color amarillo
plot(xd,y2,'b'); %Polinomio pol2, color azul
plot(xd,y3,'r'); %Polinomio pol1, color rojo
title('Aproximaciones de la funcion');
legend('Original','Modelo 5','Modelo 15','Modelo 20');
xlabel('Tiempo(Minutos)');
ylabel('Temperatura Media');

% (c) Analice dichos modelos, explique si ajustan adecuadamente los datos,
% justifique adecuadamente.Seleccione el mejor modelo y uselo para predecir
% el valor de la temperatura en los tiempos 4.5, 5 y 5.5 minutos. 
% Debe reportar las distintas aproximaciones con 15 dıgitos en la parte
% decimal.

format LONG;

temp4_5 = polyval(Modelo15,4.5);
temp5 = polyval(Modelo15,5);
temp5_5 = polyval(Modelo15,5.5);

% (d) Usando el modelo obtenido en el punto anterior, calcule el tiempo en 
% [0, 8] para el cual la temperatura es de 36.612 grados. Debe reportar
% el resultado con 15 dıgitos en la parte decimal.

vector36 = zeros(1,length(Modelo15));
vector36(16) = 36.612;
Modelo15_36 = Modelo15 - vector36;
Tiempo36 = roots(Modelo15_36);
