isValidAnagram ← {⍺[⍋⍺] ≡ ⍵[⍋⍵]}

⍝ Over applies the function on the right monadically to both arguments, and then
⍝ applies the original dyadic function to the results.
⍝ In this case, it's the ascending sort function.
isValidAnagram ← ≡⍥{⍵[⍋⍵]}