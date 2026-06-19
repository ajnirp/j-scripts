Note ''
Generate a bitmask in which all elements are 1 except those whose index
modulo 3 equals 2. Apply it to the reverse-sorted array and sum the result.
)

bestCost =. {{ +/ (\:~ y) #~ 1 1 0 $~ $ y }}

testcases =.  (1 2 3); (6 5 7 9 2 2) ; (5 5)
expected =. 5 23 10

NB. If this is 1, all test cases passed.
*./ expected = bestCost@> testcases