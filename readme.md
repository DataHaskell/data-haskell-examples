data-haskell-examples
=====================

[![Build
Status](https://travis-ci.org/DataHaskell/data-haskell-examples.png)](https://travis-ci.org/DataHaskell/data-haskell-examples)

data-haskell-examples
---------------------

A set of recommended Haskell libraries for data analysis together with example usage.

usage
-----

To build & run:

    stack install && data-haskell-examples

libraries
---

[vector](http://www.datahaskell.org/docs/library/vector.html) is an efficient implementation of Int-indexed arrays (both mutable and immutable), with a powerful loop optimisation framework.

[hmatrix](http://www.datahaskell.org/docs/library/hmatrix.html) is a linear algebra and matrix library, using the Data.Vector.Storable instance in the vector package under the hood.

examples
---

See [examples.hs](examples/examples.hs)
