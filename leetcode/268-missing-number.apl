⍝ https://leetcode.com/problems/missing-number/?envType=problem-list-v2

missingNumber ← {⍵ ~⍨ 0,⍳≢⍵}
testcases ← (3 0 1) (0 1) (9 6 4 2 3 5 7 0 1) (1 ⍴ 0)
expected ← 2 2 8 1

expected ≡ missingNumber¨ testcases

⍝ For some reason, if the last element of testcases is just (0), then expected ends up being 2 2 8
⍝ Apparently this problem is not exlcusive to the last element. The problem is 0 is interpreted as
⍝ a scalar as opposed to a 1-element list.