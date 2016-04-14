function[b]=esdiagdom(a)
format long;
[m,n]=size(a);
if m~=n
    error('Matriz no cuadrada');
end;
d=diag(a);
cont1=0;
b=1;
acum=0;
while (cont1<n) && (b==1),
    cont1=cont1+1;
    for cont2=1:n,
       acum=acum+abs(a(cont1,cont2))-abs(d(cont1,1));
    end,
if acum>abs(d(cont1,1)),
    b=0;
end,
end,