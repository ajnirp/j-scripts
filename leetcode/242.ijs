sortNub =. /:~ @: ~.
isValidAnagram =. sortNub@:[ -: sortNub@:]

isValidAnagramTerse =. /:~@:~.@:[-:/:~@:~.@:]