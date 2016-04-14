function cos = cosenoRecursivo( x,m )

    cos = 1;
    
    for k = 2 : m
        cos = cos + taylorRecursivo(x,k,m);
    end;

end

