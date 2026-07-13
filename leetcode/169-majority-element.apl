⍝ https://leetcode.com/problems/majority-element/

majorityElement ← {
    freqs ← ⍉ {⍺,≢⍵} ⌸ ⍵
    ⍝ ⊃⍒ is an idiom to find the index of the max element (first of grade down)
    ⍝ Here, we find the element in the first row at the index at which the second
    ⍝ row has the largest value.
    freqs[1 ; ⊃⍒freqs[2;]
}