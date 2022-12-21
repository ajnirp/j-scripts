prime =: 1&= @ # @ q:

circular =: monad define
d =. 10&#.^:_1 y
rots =. (i. # d) (|."0 _) d
*/ prime 10&#. rots
)

# (circular"0 # ]) (1e6&> # ]) p: i. 1e6

NB. rots generates all rotations of vector d
NB. It just builds a range equal in length to d
NB. then we apply |."0 _ to get a matrix of rotations
