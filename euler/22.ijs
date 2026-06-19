letterSum =. {{ +/ _64 + a. i. y }}⌈
data =. '"' -.~ }: freads '../names.txt' NB. the }: is to chop off the final LF, which shows up on my Windows
+/ (>: i. # names) * letterSum@> names =. /:~ ',' cut data

NB. Roger Hui's solution, taken from the forums
NB. t=: 1!:1 <'../names.txt'
NB. x=: <;._1 ',',t-.'"'
NB. (>:@i.@# +/ .* +/@(_64&+)@(a.&i.)&>) /:~ x