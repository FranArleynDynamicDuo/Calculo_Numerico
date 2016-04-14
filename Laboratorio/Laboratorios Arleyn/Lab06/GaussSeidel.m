% Metodo de Gauss Seidel 

function [X] = GaussSeidel(A,b,tol,maxiter,x0)

%Declaracion de variables
    real = A\b;
    error = norm(real-x0,inf)/norm(real,inf);
    ite = 1;

%matrices utilizadas para la iteracion
    D = diag(diag(A));
    L = -tril(A,-1);
    U = -triu(A,1);
    P = (D-L)\U;
    S = (D -L)\b;

%Inicio del ciclo
    while (error > tol && ite < maxiter)
        X = (P*x0) + S;
        error = norm(X - x0,inf)/ norm(X,inf);
        ite = ite + 1;
        x0 = X;
    end
end
