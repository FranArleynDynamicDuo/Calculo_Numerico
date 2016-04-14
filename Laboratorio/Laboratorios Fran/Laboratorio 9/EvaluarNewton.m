function [ p ] = EvaluarNewton(coef,datos,punto)

    n = length(coef);
    p = coef(n);
    for i = n - 1 :-1 : 1
      p = p.*(punto - datos(i)) + coef(i);
    end
end
    
