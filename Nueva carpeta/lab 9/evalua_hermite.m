function x = evalua_hermite(p,n)
	if (n==0)
        x = 1;
    elseif (n==1)
        x = 2*p;
    else
       x = 2*p*evalua_hermite(p, n-1)-2*(n-1)*evalua_hermite(p, n-2);
    end
 