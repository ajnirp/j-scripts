isValidPalindrome =. monad define
isEnglishLetter =. (97&<: *. 122&>:) +. (65&<: *. 90&>:)  NB. range check on the ordinal
stripped =. (#~ isEnglishLetter) a. i. y  NB. retain only english letters
lowercase =. a. {~ stripped + 32 * 97 > stripped
(-: |.) lowercase
)

NB. Tersified the above a little.
isValidPalindromeTerse =. {{(-:|.)a.{~(+(32&*@:(97&>)))(#~((97&<:*.122&>:)+.(65&<:*.90&>:)))a.i.y}}

testcases =. 'A man, a plan, a canal: Panama' ; 'race a car' ; ' ' ; '' ; '{'
expected =. 1 0 1 1 1

1 = ~. (expected -: isValidPalindrome@> testcases) , (expected -: isValidPalindromeTerse@> testcases)
