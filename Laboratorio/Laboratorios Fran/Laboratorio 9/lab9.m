%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                             Laboratorio 9                               %
%                            Calculo Numerico                             %
%                            Francisco Sucre                              %
%                               10-10717                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%% Laboratorio 9 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% 1. Considere la siguiente funci ́on:
% 
    f = @(x) (x.*sin(x))./((x.^2) + 1);

% Aproxime esta funcion como se le indica acontinuacion:
 
% (a) Obtenga el polinomio de interpolaci ́on en la forma de Newton en
% diferencias divididas tomando 30 puntos (repita con 50) equidistantes el
% intervalo [−4π, 4π] y f evaluada en dichos puntos.


    x30 = linspace(-4*pi,4*pi,30);
    f30 = f(x30);
    coefNewton30 = Newton(x30,f30);
    RespNewton30 = EvaluarNewton(coefNewton30,x30,x30);
    x50 = linspace(-4*pi,4*pi,50);
    f50 = f(x50);
    coefNewton50 = Newton(x50,f50);
    RespNewton50 = EvaluarNewton(coefNewton50,x50,x50);

% (c) Repita lo anterior seleccionando los nodos de interpolacion
% de Chebyshev.

    c30 = Chebyshev(-4*pi,4*pi,30);
    coefChebNewton30 = Newton(c30,f30);
    RespChevNewton30 = EvaluarNewton(coefChebNewton30,c30,c30);
    
    c50 = Chebyshev(-4*pi,4*pi,50);
    coefChebNewton50 = Newton(c50,f50);
    RespChevNewton50 = EvaluarNewton(coefChebNewton50,c50,c50);

% (d) Grafique f (x) y los distintos polinomios de interpolacion y los
% nodos tomados.

        puntoEvaluar = linspace(-4*pi,4*pi,1000);
        chebyshevEval = Chebyshev(-4*pi,4*pi,1000);
        
        RespNewtonEval30 = EvaluarNewton(coefNewton30,x30,puntoEvaluar);
        RespNewtonChebEval30 = EvaluarNewton(coefChebNewton30,c30,chebyshevEval);
        
        RespNewtonEval50 = EvaluarNewton(coefNewton50,x50,puntoEvaluar);
        RespNewtonChebEval50 = EvaluarNewton(coefChebNewton50,c50,chebyshevEval);
        
        subplot(2,1,1)
        hold on
        plot(x30,f30,'x');
        plot(puntoEvaluar,RespNewtonEval30,'b');
        plot(puntoEvaluar,RespNewtonChebEval30,'r');
        legend('Funcion real','Inter. Newton','Inter. Newton Con Chebyshev');
        xlabel('Valores de un vector');
        ylabel('f(x)');
        
        title('Esparcido en 30 puntos');
        hold off
 

        subplot(2,1,2)
        hold on
        plot(x50,f50,'x');
        plot(puntoEvaluar,RespNewtonEval50,'b');
        plot(puntoEvaluar,RespNewtonChebEval50,'r');
        legend('Funcion real','Inter. Newton','Inter. Newton Con Chebyshev');
        xlabel('Valores de un vector');
        ylabel('f(x)');
        title('Esparcido en 50 puntos');
        hold off

