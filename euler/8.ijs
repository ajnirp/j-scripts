NB. 1!:44 '/path/to/directory/containing/8.ijs/and/8.txt'
data =. "."0 fread '8.txt'
solve =. {{ >./ y */\ data }}

testcases =. 4 13
expected =. 5832 23514624000

expected -: solve"0 testcases