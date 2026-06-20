containsDuplicate =. # ~: #@:~.  NB. length of array != the length of its nub.

testcases =. (1 2 3 1) ; (>: i. 4) ; (1 1 1 3 3 4 3 2 4 2)
expected =. 1 0 1

expected -: containsDuplicate@> testcases