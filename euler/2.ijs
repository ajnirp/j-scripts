Note "
A modification of https://thatjdanisso.cool/j-fibonacci.
Takes as input (accumulated, prev_fib, curr_fib), and increases accumulated only
 if curr_fib is even. Either way, updates prev_fib and curr_fib.
)
step =. monad define
delta =. (curr , 0) {~ 2 | curr =. {: y
(delta + {. y) , curr , curr + 1 { y
)
{. (step^:(4000000 > {:))^:_ (0 1 2)

NB. Tersified
{.({{(((c,0){~2|c=.{:y)+{.y),c,(c=.{:y)+1{y}}^:(4000000>{:))^:_(0 1 2)

Note "
This is the special form (u^:v)^:_. The parentheses are important. v must be a
boolean function i.e. it returns either 0 or 1. The meaning of this form is to
apply u^:v infinitely until we reach a fixed point.

If at some point v outputs 0, then u^:v is just u^:0, the identity function.
Thus the effect of (u^:v)^:_ y is to apply u to y either once (if v y returns 1)
and keep going, or to stop (if v y is 0). This is exactly what we need here.
We want to keep applying the `step` function as long as {. y is less than 4e6.
)

Note "
Non-idiomatic.
solve =. {{ a =. 0 1 2 while. y > {: a do. a =. step a end. {. a }}
solve 4000000
)

Note "
The even Fibonacci numbers follow the recurrence
En = 4En-1 + En-2
Derivation: https://www.geeksforgeeks.org/dsa/nth-even-fibonacci-number/
)
step =. ({. + {:) , ({: , ({.@}. + 4&*@{:))
{. (step^:(4000000 > {.))^:_ (0 0 2)

NB. In just one line:
{.((({.+{:),({:,({.@}.+4*{:)))^:(4000000>{.))^:_(0 0 2)

NB. The 3rd, and shortest so far, approach:
step =. {: , ({. + 4*{:)
x: 4 %~ _2 + +/ (step^:(4000000 > {:))^:_ (0 2)

NB. In just one line:
x:4%~_2++/(({:,({.+4*{:))^:(4000000>{:))^:_(0 2)