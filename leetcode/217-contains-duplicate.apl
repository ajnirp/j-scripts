⍝ This works but is needlessly complicated
⍝ containsDuplicate ← ∨⌿ {1< ≢⍵} ⌸

⍝ ≠ returns a 1 if an element is the first occurrence of its value in the array
containsDuplicate ← ~⍤(∧⌿ ≠)

testcases ← 'abc' 'abca' (1 2 3 1) (⍳ 4) (1 1 1 3 3 4 3 2 4 2)
expected ← 0 1 1 0 1

expected ≡ containsDuplicate¨ testcases