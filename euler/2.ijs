NB. A modification of https://thatjdanisso.cool/j-fibonacci.
NB. Takes as input (accumulated, prev_fib, curr_fib),
NB. and increases accumulated only if curr_fib is even.
NB. Either way, updates prev_fib and curr_fib.
step =. monad define
delta =. (curr , 0) {~ 2 | curr =. {: y
(delta + {. y) , curr , curr + 1 { y
)

solve =. monad : 'a =. 0 1 2 while. y > {: a do. a =. step a end. {. a'
solve 4000000