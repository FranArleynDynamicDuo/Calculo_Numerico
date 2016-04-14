function v = varianza1(x,m)

    v = 0;
    techo = 0;

    for j = 1:m
        
        techo = techo + x(j);
        
    end
    
    techo = techo * (1/m);

    for i = 1:m

        v = v + (x(i) - (techo))^2;

    end
    
    v = (1 / (m -1)) * v;


end

