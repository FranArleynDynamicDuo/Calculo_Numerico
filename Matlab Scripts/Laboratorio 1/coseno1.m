function cos = coseno1( x, m )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    cos = 1;

    for i = 1:m

        cos = cos + ((-1).^i) .* ((x .^(2*i)) ./ factorial(2.*i));

    end

end

