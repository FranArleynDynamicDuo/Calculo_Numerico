function coef = Eval(x,y,t)
n = length(y);
coef = y(n)*ones(size(t));
for i = n-1:-1:1
  coef = coef.*(t-x(i)) + y(i);
end
