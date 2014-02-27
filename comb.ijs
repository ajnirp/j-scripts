perm =: 3 : '(i. ! y) A. i. y'

NB. Generate all permutations of i. y

comb =: 4 : '~. a /:"1 a =. x {."1 perm y'

NB. Generate all size m combinations of i.n in sorted order. For example, the size 4 combinations of i.6 are:
 
NB.    4 comb 6
NB. 0 1 2 3
NB. 0 1 2 4
NB. 0 1 2 5
NB. 0 1 3 4
NB. 0 1 3 5
NB. 0 1 4 5
NB. 0 2 3 4
NB. 0 2 3 5
NB. 0 2 4 5
NB. 0 3 4 5
NB. 1 2 3 4
NB. 1 2 3 5
NB. 1 2 4 5
NB. 1 3 4 5
NB. 2 3 4 5

NB. http://www.jsoftware.com/jwiki/Essays/Combinations