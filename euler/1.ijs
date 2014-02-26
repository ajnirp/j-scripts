NB. Naive method:
NB. a=.+/(0=3|i.1000)#i.1000
NB. b=.+/(0=5|i.1000)#i.1000
NB. c=.+/(0=15|i.1000)#i.1000
NB. a+b-c

a =. +./ 0 = 5 3 15 | 3 1000 $ i. 1000
+/ a # i. 1000

NB. (0..999).select{|x|x%3==0||x%5==0}.inject :+ in Ruby. Huh.