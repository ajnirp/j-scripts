josephus =: monad define
b =. >: i. y
while. 1 < # b do. b =. 1 |. ((~: 1&{) b) # b end.
)

NB. On the J Software website they solved it like this:
NB. J=.1&|.&.#:
NB. Holy shit!
NB. (link: http://www.jsoftware.com/jwiki/Essays/Josephus%20Problem)