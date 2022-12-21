prime =: 1&= @ # @ q:

circular =: monad define
d =. 10&#.^:_1 y
rots =. (i. # d) (|."0 _) d
*/ prime 10&#. rots
)

# (circular"0 # ]) (1e6&> # ]) p: i. 1e6
