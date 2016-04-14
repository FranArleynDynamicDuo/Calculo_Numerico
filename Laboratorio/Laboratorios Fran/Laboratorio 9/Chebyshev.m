function [ p_Chebyshev ] = Chebyshev( a,b,m )

    p_Chebyshev = zeros(1,m);

    for i = 1 : m
        
        p_Chebyshev(i) = (a + b)/2 + (((b - a)/2) * cos(((2*(i) - 1)*pi)/(2 * m)));

    end

end

