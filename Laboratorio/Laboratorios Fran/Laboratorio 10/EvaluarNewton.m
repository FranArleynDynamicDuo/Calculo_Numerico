function val = EvaluarNewton(x,coef,t)

n = length(coef);
val = coef(n)*ones(size(t));
for i = n-1:-1:1
  val = val.*(t-x(i)) + coef(i);
  
end
