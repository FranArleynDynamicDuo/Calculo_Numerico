function [ y ] = Newton( x,y )

    n = length(x);
    
    for i = 1:n-1
      for j=n:-1:i+1
        y(j) = (y(j) - y(j-1)) / (x(j) - x(j-i));
      end
    end
    
end

