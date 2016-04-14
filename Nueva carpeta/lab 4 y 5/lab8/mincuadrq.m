function[v,e]=mincuadrq(x,y,n);
temp=vander(x);
mat=temp(:,length(x)-n:length(x));
[Q,R]=qr(mat);
v=R\Q'*y';
e=norm(polyval(v,x)-y,2)/norm(y,2);
end

