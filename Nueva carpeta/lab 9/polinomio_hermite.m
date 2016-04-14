%Crea un polinomio de Hermite de grado n
%@param n: grado del polinomio deseado
%@return hk: polinomio creado
function hk = polinomio_hermite(n)

if n==0 
    hk = 1;
elseif n==1
    hk = [2 0];
else
    
    hkm2 = zeros(1,n+1);
    hkm2(n+1) = 1;
    hkm1 = zeros(1,n+1);
    hkm1(n) = 2;

    for k=2:n
        
        hk = zeros(1,n+1);

        for e=n-k+1:2:n
            hk(e) = 2*(hkm1(e+1) - (k-1)*hkm2(e));
        end
        
        hk(n+1) = -2*(k-1)*hkm2(n+1);
        
        if k<n
            hkm2 = hkm1;
            hkm1 = hk;
        end
        
    end
    
end