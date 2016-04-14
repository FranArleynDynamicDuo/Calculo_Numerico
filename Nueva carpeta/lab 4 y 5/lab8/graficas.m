x=linspace(-1,+1,13);
xh=linspace(-1,+1,100);
y=abs(x);
grado2=mincuadrq(x,y,2);
e2=norm(xh-polyval(grado2,xh),2)
grado3=mincuadrq(x,y,3);
e3=norm(xh-polyval(grado3,xh),2)
grado6=mincuadrq(x,y,6);
e6=norm(xh-polyval(grado6,xh),2)
grado7=mincuadrq(x,y,7);
e7=norm(xh-polyval(grado7,xh),2)
grado10=mincuadrq(x,y,10);
e10=norm(xh-polyval(grado10,xh),2)
interpolacion=lagrange(x',y');
eLagrange=norm(xh-polyval(interpolacion,xh),2)
plot(x,y,'*k')
hold on
plot(xh,polyval(grado2,xh),'-r')
plot(xh,polyval(grado3,xh),'-g')
plot(xh,polyval(grado6,xh),'-b')
plot(xh,polyval(grado7,xh),'-c')
plot(xh,polyval(grado10,xh),'-m')
plot(xh,polyval(interpolacion,xh),'-y')
legend('puntos','grado 2','grado 3','grado 6','grado 7','grado 10','lagrange')
grid
hold off
axis([-1,1,0,1])

absol=abs(-2.56)
aprox=polyval(interpolacion,-2.56)