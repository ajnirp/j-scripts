Note "
Enumerate from 1 up to the max value in the array, and then subtract the array
elements from that.
)
findRemoved =. -.~ >:@i.@:#

testcases =. (4 3 2 7 8 2 3 1) ; (1 1)
expected =. (5 6) ; (2)

expected -: findRemoved@> testcases