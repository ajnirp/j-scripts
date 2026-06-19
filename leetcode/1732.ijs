NB. Find the prefix sums, prepend a zero, and find the maximum value.
maxAlt =. {{ >./ 0 , +/\ y }}

testcases =. (_5 1 5 0 _7) ; (_4 _3 _2 _1 4 3 2)
expected =. 1 0

NB. If this is 1, all test cases passed.
expected -: maxAlt@> testcases