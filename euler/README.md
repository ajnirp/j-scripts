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