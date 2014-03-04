About
-----

A collection of some of my J scripts.

To future me
------------

.deb files provided by J Software for versions 8 and above usually install the normal Unix way (so look for stuff in `/usr/share/j/8.01/...`). To run sentences like `install 'all'` you need to open j console as follows:

    sudo ijconsole

Explanations
------------

gray.ijs
--------

Start with

    0
    1

next takes such a pattern and produces the next level, which in the above case is

   0 0
   0 1
   1 0
   1 1

Just append 0 to each cell, then reverse the pattern and append 1 to each cell. Then join to the two with `,`

identity.ijs
------------

id1: To get an identity matrix of order 4, just take 1 followed by four zeroes and cycle it in a 4 by 4 shape.

id2: i. 4 is 0 1 2 3. Do an =/ on itself. Actually, any list will do, not just i. 4

id3: The key observation here is that i. 4 4 has diagonal elements which are all multiples of 4+1.

josephus.ijs
------------

I'm literally just simulating the problem. Kill the 2nd guy from the left, then rotate the list one to the left. Then repeat. Stop when the length of the list is 1.

remdup.ijs
----------

Grab the last char with {: y

Get the next char by finding the index of the last char (a. i. {: y) and then adding one to that (>: a. i. {: y), then indexing into a. (a. {~ >: a. i. {: y)

Pad y with this, then rotate backward by 1 and check where equality isn't occurring. Drop the last item of this list of 1s and 0s, since we don't care about matching the first char with the padding char.

The resulting list of 1s and 0s is the parts we need to preserve from y. So we index with y #~ (...stuff we did earlier...)