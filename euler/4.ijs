a =. 100 + i. 900 NB. all three digit numbers
a =. ,/ a */ a NB. a */ a is the multiplication table, and ,/ combines the first two axes of its operands
NB. convert each int to an array of digits, then do a */ (=|.) palindrome test
NB. a =. (10&#.^:_1) a

palindrome =. monad define
arr =. (10&#.^:_1) y
(*/ @: (= |.) @: arr) # y
)
