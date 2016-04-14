% Luis Vieira
% 07-41651
% Funcion Para determinar la anidacion DE HORNER con Hermite (su derivada)
function [p] = HornerHerDer(a, x1, xo)


x = zeros(2*length(x1)-1,1);
n = length(x);
j = 1;
x(1) = x1(j);
for i=2:n

		if(mod(i,2)== 0)
		j = j +1;
		x(i) = x1(j);
		x(i+1) = x1(j);
		end
end

   n = length(a);
    b(n) = a(n);
    
    for j = n-1: -1: 1
        b(j) = a(j) + b(j+1)*(xo-x(j));
    end
    
    p = b(1);