id1 =: 3 : '(y , y) $ 1, y # 0'
id2 =: i. =/ i.
id3 =: 3 : '0 = (>: y) | i. y , y'
id4 =. 3 : '(= |:) i. y , y'
NB. The above line can be written more compactly
NB. id4 =. (=|:)@:i.@:,]
NB. The rightmost fork is equivalent to y , y
NB. Then we apply i. to it and then apply the (=|:) hook to it

NB. Generate an identity matrix of order y, y > 0
NB. http://www.jsoftware.com/jwiki/Essays/Identity%20Matrix
