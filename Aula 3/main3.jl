f(x) = 5*sin(x^2) - (MathConstants.e)^(x/10)
error = 10^-5
 
function bisection(a,b)  
  x = (a+b)/2 
  while abs(f(x)) > error 
    if f(a)*f(x) > 0
      a = x  
    else
      b = x
      
    end
    x = (a+b)/2
  end
  return x
end

r = bisection(0,1)
println(r)
