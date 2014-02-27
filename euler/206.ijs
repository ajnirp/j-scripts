reverse_id =: 3 : '(y, y) $ 0, y # 1'

NB. possibilities for the blanks
blanks =. 0 ,"1 (reverse_id # i.) 10

non_blanks =. 0 ,~ >: i. 9
interleave