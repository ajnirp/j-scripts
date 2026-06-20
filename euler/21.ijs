sumDivisors =. {{ +/ list #~ 0 = (list =. >: i. <: y) | y }}
amicable =. {{ (y = sumDivisors x) * x = sumDivisors y }}
amicableIfLarger =. {{ (0 ` (x amicable y)) @. (x > y) }}
amicableIfLarger =. dyad define
if. x > y do.
  result =. x amicable y
else.
  result =. 0
end.
result
)
nums amicableIfLarger / nums =. >: i. 10000

NB. doesn't work. Takes too long. Gotta optimize.