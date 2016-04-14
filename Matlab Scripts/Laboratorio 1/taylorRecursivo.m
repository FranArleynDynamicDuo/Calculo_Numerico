function tay = taylorRecursivo( x, k, m )

    if (k == m + 1)
        tay = (-1).^m;
    end;
    
    if (k < m +1)
        tay = (((taylorRecursivo(x,k+1,m) .* x.^2) ./ ((2 .* k) .* 2.*(k-1))) + (-1).^(k-1));
    end;
   
end

