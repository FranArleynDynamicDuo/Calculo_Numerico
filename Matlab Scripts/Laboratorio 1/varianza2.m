function v = varianza2( x,m )

    v = 0;
    techo = 0;

    for j = 1:m
        
        techo = techo + x(j);
        
    end

    for i = 1:m

        v = v + (x(i) ^2);

    end
    
    v = v - (1/m) * (techo ^ 2);
    
    v = (1 / (m -1)) * v;


end

