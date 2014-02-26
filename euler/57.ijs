step =. 3 : '>: % x: >: y'
iter =. 3 : '(step^:y) 1'
split_terms =. 2 x: iter >: i. 1000
NB. the above has shape 1000 2