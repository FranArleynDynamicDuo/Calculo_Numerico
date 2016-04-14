%Lab 1

%Pregunta 2
%a)

V = [ 10000000000 ;  10000000001 ; 10000000002 ];
%V = [  3 ; 3 ; 4 ; 5 ; 10 ];
var1 = varianza1(V);


%%%%%%%%%%%%%%%%%%%%%%%%%%%

%b)
var2 = varianza2(V);

%%%%%%%%%%%%%%%%%%%%%%%%%%%

%3)
n = length(V);
var3 = (funcionQrecursiva(V,n))/(n-1);


%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Pregunta 3

%a)
fx = '(1 - cos(i))/(i^2)'
c = 1;
x = [-3:0.1:3]';
y = zeros(length(x),1);
for i=-3:0.1:3
    y(c) = eval(fx);
    c = c + 1;
end
plot(x,y,'r');

%%%%%%%%%%%%%%%%%%%%%%%%%%%
%b)
i=1.2000e-08;
e = eval(fx);

%%%%%%%%%%%%%%%%%%%%%%%%%%
%c)
fx2 = '(1/2)*((sin(i/2))/(i/2))^2';
e2 = eval(fx2)


