function [ y ] = SustitucionAdelante(L,b )

  [m,n] = size(L);
  y = zeros(n,1);
  for i=1:n
      temp = 0;
      for j=1:i-1
          temp = temp + L(i,j)*y(j);
      end
      y(i) = (b(i) - temp)/L(i,i);
  end	
end
