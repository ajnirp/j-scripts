solve ← {(⍎ chars) × +⌿ ⍎¨ chars ← s /⍨ '0' ≠ s ← ⍕ ⍵}
solve 10203004
solve 1000
⍝ Doesn't work for zero. Try ⎕VFI instead of ⍎. It's supposedly faster and nicer