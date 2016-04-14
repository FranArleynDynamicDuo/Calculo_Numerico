function[x]=sustregr(U,b)
[m,n]=size(U);
if m ~= n
error('Matriz no es cuadrada')
end
x=zeros(n,1);
for i = n  : - 1 : 1
x( i , 1 ) = ( b( i ) - ...
U( i , i + 1 : n ) * x( i + 1 : n , 1 ) ) / U( i , i ) ;
end