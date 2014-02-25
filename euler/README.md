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