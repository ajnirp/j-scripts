lower =. 26 {. 97 }. a.
upper =. 26 {. 65 }. a.
remove_spaces =. #~ ' '&i.
downcase =. 3 : '(y i.~ upper , a.) { lower , a.'
pangram =. 3 : 'lower -: a /: a =. ~. downcase remove_spaces y'

NB. from http://www.reddit.com/r/dailyprogrammer/comments/1pwl73/11413_challenge_139_easy_pangrams/