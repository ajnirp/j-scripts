NB. The question is phrased ambiguously. By "first ten digits" they mean the
NB. ten most significant digits i.e. the ten leftmost digits. 
NB. Before running this script:
NB. 1!:44 '/path/to/folder/containing/13.ijs/and/13.txt/'

NB. If there are missing verb errors, run this:
NB. load 'files'

10 {. ": +/ x: ". > cutopen freads '13.txt'
