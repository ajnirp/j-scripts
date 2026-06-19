letterSum =. {{ +/ _64 + a. i. y }}⌈
data =. '"' -.~ }: freads '../names.txt' NB. the }: is to chop off the final LF, which shows up on my Windows
+/ (>: i. # names) * letterSum@> names =. /:~ ',' cut data