function [ c ] = CoefNewton( x,y )

n = length(x);
A = zeros(n,n);

A(1,1) = 1;

  for i = 2 : n
      A(i,1) = 1;
      for j = 2 : i;
          A(i,j) = A(i, j-1)*(x(i) - x(j - 1));
      end
  end

c = SustitucionAdelante(A,y);
c = c';
c = c(length(c):-1:1);

end

