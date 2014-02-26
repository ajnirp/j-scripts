Explanations
============

1-better.ijs
------------

Take i. 1000

Reshape it into a 2D array of dimensions 3 1000

The 3 is because we have three numbers 5 3 and 15

Each one of these operates on one of the 3 cells of the 3 x 1000 matrix '3 1000 $ i. 1000', let's call this matrix m

Then do 0 = to get all the indices where perfect division is occurring

Then do +./, this does a 'logical or' across the three elements of m

Finally, assign the above to a, then do a # i. 1000, then do +/ of that

Basically, a tells us the indices where we have a number that is either divisible by 3 or 5 or both

3.ijs
-----

q: returns an array of the prime divisors of the number in ascending order

{: returns the last element of an array

5.ijs
-----

Dyadic *. returns the LCM of x and y, and 1 + i.20 is 1 2 3 ... 19 20. Just put *. between the elements of the list.

7.ijs
-----

One thing to note is that p: 0 returns the first prime number. Not p: 1

10.ijs
------

Let p(n) be the function that returns the nth prime. p(n) obviously grows faster than n, so the 2 millionth prime is surely greater than 2 million.

p: i. 2mill = list of the first 2 mil primes -> a

2mil&> a = 1's wherever 2 mil is greater than the prime, 0's otherwise. Now use this list to index a.

13.ijs
------

Copy into a file, use find-and-replace to replace all newlines with a space, add a x: +/ before everything to sum up with extended precision

16.ijs
------

x: 2 ^ 1000 is 2 raised to 1000 with infinite precision. 

Then I do 10&#.^:_1 to get its digits

Then I sum them up with +/

29.ijs
------

2 + i. 99 is 2 to 100

a ^/ a is an 'exponentiation table', just like a 'multiplication table'

,/ unravels the above 2D array into a 1D array

~. is 'nub'. When given a 1D array it returns a 1D array of all the unique elements in the array

\# counts the return value of the nub

53.ijs
------

a =. 1 + i.100
x ! y is y choose x
a !/ a makes a 'choose table' analogous to */
,/ unravels it into a 1D array
1e6&< returns an array of 0s (less) and 1s (more)
+/ sums up the array, in effect counting the number of 1s, which is what we want

56.ijs
------

i. 100 produces 0 to 99

x: makes them infinite precision

from now on, no loss of precision!

a ^/ a is an 'exponentiation table'

,/ unravels the table into a 1D array

(10&#.^:_1) literally reverses the base operation. It takes a number in base 10 and converts it into an array of digits in base 10. So 1234 becomes 1 2 3 4

at this point, we have a 2D array. Let's step back and examine its shape:

   $ (10&#.^:_1) ,/ a ^/ a=.i.100
10000 198

So the longest power has 198 digits, so J padded everything with zeroes until each power is 198 digits. Cool. The 2D array itself is basically an array of 10000 entries, each entry is a 198-long array

So we add up each 198-long entry via +/"1. The "1 makes sure that the rank of each operand of +/ is 1. Normally, +/ would sum up (first entry's i-th + second entry's i-yj + ...) for i going from 0 to 198. The +/"1 takes care of that problem.

Finally, >./ finds the max of the array.

