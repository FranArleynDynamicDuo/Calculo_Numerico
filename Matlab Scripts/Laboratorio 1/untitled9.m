% 1. Sea f (x) = (1 − cos(x))/x 2 . N ́otese que 0 ≤ f (x) ≤ 0.5.

disp(blanks(1));
disp('EJERCICIO 1');
disp(blanks(1));

% (a) Grafique la funci ́on en el intervalo [−3, 3].


disp('Parte a');
disp(blanks(1));

entrada1 = -3:0.1:3;
disp('x = ');
disp(entrada1);
y = funcion1(entrada1);
disp('y = ');
disp(y);
subplot(2,2,1:2);
plot(entrada1,y);


% (b) Evalue f (x) en el punto x = 1.2 × 10 −8 ¿Qu ́e observa? ¿Es confiable 
% este resultado? ¿Por que? Justifique su respuesta.

disp(blanks(1));
disp('Parte b');
disp(blanks(1));

entrada2 = 1.2 * (10 ^-8);
disp('x = ');
disp(entrada2);
y = (funcion1(entrada2));
disp('y = ');
disp(y);

% (c) Usando el hecho de que cos(x) = 1 − 2 sin 2 (x), la funcion puede ser 
% escrita como f (x) = 1/2 (sin(x/2)/(x/2))^2 evalue de nuevo en el punto
% x = 1.2 × 10^−8 usando la nueva representacion de f(x) ¿Que obtuvo?
% Analice el resultado y explique lo que sucede.

disp(blanks(1));
disp('Parte c');
disp(blanks(1));

y = funcion2(entrada2);
disp('y = ');
disp(y);

% 2. Escriba una funcion que aproxime el valor de cos(x) usando el 
% polinomio de Taylor de grado 2n centrado en 0, dado por 

% Los parametros de entrada deben ser x ∈ R y n un numero natural. 
% Implementela tal y como esta escrita.

disp(blanks(1));
disp('EJERCICIO 2');

% 1(a) Escriba otra funcion que aproxime el valor de cos(x) usando la 
% aproximacion anterior pero evaluando el polinomio de forma recursiva:

disp(blanks(1));
disp('Parte a');
disp(blanks(1));

% Muestre que y1 es el polinomio dado en (a).


% (b) Grafique estas funciones en el intervalo [8π, 14π] con n = 51, 
% discretizado con paso 0.01. Ajuste los ejes para visualizar correctamente
% el grafico de cada funcion. Documente el grafico.

entrada3 = 8 * pi : 0.01: 14 * pi;
n = 51;
z = coseno1(entrada3, n);
subplot(2,2,3);
plot(entrada3,z);
h = cosenoRecursivo(entrada3, n);
subplot(2,2,4);
plot(entrada3,h);

% (c) Obtenga distintas aproximaciones num ́ericas de los valores cos(2π),
% cos(8π) y cos(16π) para n = 51 con las funciones implementadas arriba. 
% Calcule los errores relativos para cada aproximacion.


% (d) Explique, justificando con lo visto en teorıa, a qu ́e se deben estos
% resultados, cual da mejor aproximacion y por que. Indique los distintos
% factores que influyen en la precision de los resultados con estas dos
% forma de aproximar la funci ́on cos(x). ¿Como se pueden mejorar estos
% resultados?

% (e) Modifique las funciones de manera que para aproximar el valor de 
% cos(x) evalue cos(x − 2π 2π) donde [y] es la parte entera de y. Repita
% los incisos c. y d. Explique si mejoran o empeoran los resultados.
% ¿A que se debe? Concluya.

%3. En estadıstica, la varianza de n datos: x 1 , x 2 , . . . , x n esta 
% definida como

disp(blanks(1));
disp('EJERCICIO 3');

% Calcular la varianza usando esta f ́ormula requiere recorrer los datos dos
% veces, una para calcular la media aritm ́etica x y otra para calcular la 
% suma de los cuadrados de los datos. Esto puede ser indeseable
% cuando se tiene una gran cantidad de datos, es decir, cuando n es muy
% grande. Una f ́ormula alternativa que usa aproximadamente la misma 
% cantidad de operaciones que (1), pero que requiere pasar una sola vez por
% los datos, es la siguiente:


% (a) Considere los los datos 10000000000, 10000000001, 10000000002.
% Calcule la varianza segun la ecuacion (1) y escriba el resultado.

disp(blanks(1));
disp('Parte a');
disp(blanks(1));

entrada4 = [10000000000 10000000001 10000000002];
[n,m] = size(entrada4);
techo = 0;
disp('x = ');
disp(entrada4);
disp('m = ');
disp(m);

f = varianza1(entrada4,m);
disp('varianza1 = ');
disp(f);

% (b) Calcule de nuevo la varianza, pero utilizando la ecuaci ́on (2). 
% ¿Obtuvo el mismo resultado?. De no ser ası, ¿a que se debe la 
% diferencia? ¿Cual es la varianza exacta para estos datos? Justifique
% sus respuestas.

disp(blanks(1));
disp('Parte b');
disp(blanks(1));

s = varianza2(entrada4,m);
disp('varianza2 = ');
disp(s);