NB. http://www.reddit.com/r/dailyprogrammer/comments/24r50l/552014_161_easy_blackjack/
NB. y is number of decks
blackjack = 3 : '100 * (+/ % #) 21 = +/"1 (2 + i.13) {~ <. 13 | 2 ? y # 52'
NB. 2 draws from each one of y hands is 2 ? y # 52
NB. 13 | finds remainder of each cell of the above array wrt 13
NB> (2 + i.13) {~ indexes into one of 2 3 4 5 6 7 8 9 10 11 12 13 14 (Ten, Jack, Queen, King, Ace respectively)
NB. +/"1 sums up each row of the array
NB. = returns an array of 0s and 1s, with 1s for each time the sum was 21
NB. (+/ % #) finds the mean of this array, which is actually the percentage of 1s
NB. 100 * multiplies it to get a proper percentage value