About
-----

A collection of some of my J scripts.

To future me
------------

.deb files provided by J Software for versions 8 and above usually install the normal Unix way (so look for stuff in `/usr/share/j/8.01/...`). To run sentences like `install 'all'` you need to open j console as follows:

    sudo ijconsole

Explanations
------------

identity.ijs
------------

id1: To get an identity matrix of order 4, just take 1 followed by four zeroes and cycle it in a 4 by 4 shape.

id2: i. 4 is 0 1 2 3. Do an =/ on itself. Actually, any list will do, not just i. 4

id3: The key observation here is that i. 4 4 has diagonal elements which are all multiples of 4+1.