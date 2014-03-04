remdup =. 3 : 'y #~ -. }: padded = 1 |. padded =. y , a. {~ >: a. i. {: y'

NB. pad y with an ascii character that is different from its last char
NB. otherwise the algo fails e.g. if we had simply done y , '0'
NB. then strings ending in 0 would lose the 0 at the end

NB. Remove _consecutive_ duplicates in a list