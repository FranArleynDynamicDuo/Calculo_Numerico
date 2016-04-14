% Nombre: Arleyn Goncalves
% Carnet: 10-10290
% Laboratorio 10

% Pregunta 1.

    f = @(x)(sin(x.^2));
    g = @(x)(1./(1+(x.^2)));
    
    % PARA LA FUNCION (sin(x.^2))
    
        % Calculamos los vectores con los nodos y el vector b
    
            x7   = linspace(-3,3,7);
            b7   = f(x7);
            
            x13  = linspace(-3,3,13);
            b13  = f(x13);
            
            x26  = linspace(-3,3,26);
            b26  = f(x26);
            
            x63  = linspace(-3,3,63);
            b63  = f(x63);
            
            x126 = linspace(-3,3,126);
            b126 = f(x126);
            
            
    % PARA LA FUNCION (1./(1+(x.^2)
    
        % Calculamos los vectores con los nodos y el vector b
        
            x6  = linspace(-3,3,6);
            b6  = g(x6);
            
            x11 = linspace(-3,3,11);
            b11 = g(x11);
            
            x21 = linspace(-3,3,21);
            b21 = g(x21);
            
    % Aplicamos Newton para sin(x.^2)
        
        Newton7 = InterpolNewton(x7,b7);
        Newton13 = InterpolNewton(x13,b13);
        Newton26 = InterpolNewton(x26,b26);
        Newton63 = InterpolNewton(x63,b63);
        Newton126 = InterpolNewton(x126,b126);
        
    % Aplicamos spline para sin(x.^2)
    
        spline7   = spline(x7,[0 b7 0]);
        spline13  = spline(x13,[0 b13 0]);
        spline26  = spline(x26,[0 b26 0]);
        spline63  = spline(x63,[0 b63 0]);
        spline126 = spline(x126,[0 b126 0]);
        
    % Aplicamos Newton para (1./(1+(x.^2))
    
        Newton6  = InterpolNewton(x6,b6);
        Newton11 = InterpolNewton(x11,b11);
        Newton21 = InterpolNewton(x21,b21);

    % Aplicamos spline para (1./(1+(x.^2))
    
        spline6 = spline(x6,[0 b6 0]);
        spline11 = spline(x11,[0 b11 0]);
        spline21 = spline(x21,[0 b21 0]);
    
     % GRAFICAR
     
        Pto = linspace(-3,3,100);
        EvalF = f(Pto);
        EvalG = g(Pto);
     
        % Graficar sin(x.^2) con nodo 7
     
            subplot(4,2,1);
            hold on
            plot(Pto,EvalF,'xk');
            plot(Pto,Eval(x7,Newton7,Pto),'b');
            plot(Pto,ppval(spline7,Pto),'m');
            title('7 Nodos (sin(x^2))')
            xlabel('Puntos a Evaluar')
            ylabel('Funcion Evaluada')
            hold off
            
        % Graficar sin(x.^2) con nodo 13
     
            subplot(4,2,2);
            hold on
            plot(Pto,EvalF,'xk');
            plot(Pto,Eval(x13,Newton13,Pto),'b');
            plot(Pto,ppval(spline13,Pto),'m');
            title('13 Nodos (sin(x^2))')
            xlabel('Puntos a Evaluar')
            ylabel('Funcion Evaluada')
            hold off
            
        % Graficar sin(x.^2) con nodo 26
     
            subplot(4,2,3);
            hold on
            plot(Pto,EvalF,'xk');
            plot(Pto,Eval(x26,Newton26,Pto),'b');
            plot(Pto,ppval(spline26,Pto),'m');
            title('26 Nodos (sin(x^2))')
            xlabel('Puntos a Evaluar')
            ylabel('Funcion Evaluada')
            hold off
            
        % Graficar sin(x.^2) con nodo 63
     
            subplot(4,2,4);
            hold on
            plot(Pto,EvalF,'xk');
            plot(Pto,Eval(x63,Newton63,Pto),'b');
            plot(Pto,ppval(spline63,Pto),'m');
            title('63 Nodos (sin(x^2))')
            xlabel('Puntos a Evaluar')
            ylabel('Funcion Evaluada')
            hold off
            
        % Graficar sin(x.^2) con nodo 126
     
            subplot(4,2,5);
            hold on
            plot(Pto,EvalF,'xk');
            plot(Pto,Eval(x126,Newton126,Pto),'b');
            plot(Pto,ppval(spline126,Pto),'m');
            title('126 Nodos (sin(x^2))')
            xlabel('Puntos a Evaluar')
            ylabel('Funcion Evaluada')
            hold off
            
        % Graficar (1./(1+(x.^2)) con nodo 6
      
            subplot(4,2,6);
            hold on
            plot(Pto,EvalG,'xk');
            plot(Pto,Eval(x6,Newton6,Pto),'b');
            plot(Pto,ppval(spline6,Pto),'m');
            title('6 Nodos (1/(1+(x^2)))')
            xlabel('Puntos a Evaluar')
            ylabel('Funcion Evaluada')
            hold off
            
        % Graficar (1./(1+(x.^2)) con nodo 11
      
            subplot(4,2,7);
            hold on
            plot(Pto,EvalG,'xk');
            plot(Pto,Eval(x11,Newton11,Pto),'b');
            plot(Pto,ppval(spline11,Pto),'m');
            title('11 Nodos (1/(1+(x^2)))')
            xlabel('Puntos a Evaluar')
            ylabel('Funcion Evaluada')
            hold off
            
        % Graficar (1./(1+(x.^2)) con nodo 21
      
            subplot(4,2,8);
            hold on
            plot(Pto,EvalG,'xk');
            plot(Pto,Eval(x21,Newton21,Pto),'b');
            plot(Pto,ppval(spline21,Pto),'m');
            title('21 Nodos (1/(1+(x^2)))')
            xlabel('Puntos a Evaluar')
            ylabel('Funcion Evaluada')
            hold off
            
    % CALCULAMOS ERROR RELATIVO DE NEWTON Y ERROR RELATIVO DE SPLINE
    
    % PARA sin(x.^2)
    
        % Error sin(x.^2) con nodo 7
        
            Erro7_Newton = norm((Eval(x7,Newton7,Pto) - EvalF),inf)/norm(EvalF,inf);
            Erro7_Spline = norm(ppval(spline7,Pto) - EvalF,inf)/norm(EvalF,inf);
            
        % Error sin(x.^2) con nodo 13
        
            Erro13_Newton = norm((Eval(x13,Newton13,Pto) - EvalF),inf)/norm(EvalF,inf);
            Erro13_Spline = norm(ppval(spline13,Pto) - EvalF,inf)/norm(EvalF,inf);
            
        % Error sin(x.^2) con nodo 26
        
            Erro26_Newton = norm((Eval(x26,Newton26,Pto) - EvalF),inf)/norm(EvalF,inf);
            Erro26_Spline = norm(ppval(spline26,Pto) - EvalF,inf)/norm(EvalF,inf);
            
        % Error sin(x.^2) con nodo 63
        
            Erro63_Newton = norm((Eval(x63,Newton63,Pto) - EvalF),inf)/norm(EvalF,inf);
            Erro63_Spline = norm(ppval(spline63,Pto) - EvalF,inf)/norm(EvalF,inf);
            
        % Error sin(x.^2) con nodo 126
        
            Erro126_Newton = norm((Eval(x126,Newton126,Pto) - EvalF),inf)/norm(EvalF,inf);
            Erro126_Spline = norm(ppval(spline126,Pto) - EvalF,inf)/norm(EvalF,inf);
          
    % PARA 1./(1+(x.^2))
    
        % Error 1./(1+(x.^2)) con nodo 6
        
            Erro6_Newton = norm((Eval(x6,Newton6,Pto) - EvalG),inf)/norm(EvalG,inf);
            Erro6_Spline = norm(ppval(spline6,Pto) - EvalG,inf)/norm(EvalG,inf);
            
        % Error 1./(1+(x.^2)) con nodo 11
        
            Erro11_Newton = norm((Eval(x11,Newton11,Pto) - EvalG),inf)/norm(EvalG,inf);
            Erro11_Spline = norm(ppval(spline11,Pto) - EvalG,inf)/norm(EvalG,inf);

        % Error 1./(1+(x.^2)) con nodo 21
        
            Erro21_Newton = norm((Eval(x21,Newton21,Pto) - EvalG),inf)/norm(EvalG,inf);
            Erro21_Spline = norm(ppval(spline21,Pto) - EvalG,inf)/norm(EvalG,inf);
        

    