solve =. monad define
leftSum =.  0 , }: +/\ y
rightSum =. |. 0 , }: +/\ |. y
| leftSum - rightSum
)

testcases =. (10 4 8 3) ; (1)
expected =. (15 1 11 22) ; (0)

expected -: <@solve@> testcases
NB. Returns 0 for some reason. The second elements seem to be different even though
NB. they have the same shape and contents?