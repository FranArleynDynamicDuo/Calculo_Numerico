function [y] = sustprog(L,b)
[m,n] = size(L);
if m ~= n
error('Matriz no es cuadrada')
end
y = zeros(n,1);
for i=1:n
	acum=0;
	for j=1:i-1
		acum=acum+(L(i,j)*y(j));
	end	
	y(i) = (b(i) - acum)/L(i,i);
end	
end

