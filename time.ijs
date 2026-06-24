NB. Time utilities

Note "
<.@% performs integer division
)
seconds_to_hms =: monad define
hours =. 3600 <.@%~ y
left_over_seconds =. y - 3600 * hours
minutes =. 60 <.@%~ left_over_seconds
seconds =. left_over_seconds - 60 * minutes
hours , minutes , seconds
)

Note "
Example usage:
    seconds_to_hms 81909
22 45 9
)
seconds_to_hms =: monad define
hours , minutes, seconds =. left_over_seconds - 60 * minutes =. 60 <.@%~ left_over_seconds =. y - 3600 * hours =. 3600 <.@%~ y
)

testcases =. 81909 7200 0 6 120
expected =. (3 ,~ $ testcases) $ 22 45 9 2 0 0 0 0 0 0 0 6 0 2 0
expected -: seconds_to_hms"0 testcases