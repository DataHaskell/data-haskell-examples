data-haskell-examples
=====================

[![Build
Status](https://travis-ci.org/tonyday567/data-haskell-examples.png)](https://travis-ci.org/tonyday567/data-haskell-examples)

data-haskell-examples
---------------------

A set of recommended Haskell libraries for data analysis and example usage.

usage
-----

To build & run:

    stack install && data-haskell-examples

libraries
---

[vector](http://www.datahaskell.org/docs/library/vector.html) is an efficient implementation of Int-indexed arrays (both mutable and immutable), with a powerful loop optimisation framework.


examples
---

``` {.sourceCode .literate .haskell}
import Protolude
import Data.Vector as V

main :: IO ()
main = do
    -- vector examples
    let x = V.fromList [0..5]

    print $ V.length x -- 6
    print $ V.null x -- False

    -- indexing
    print $ x ! 1 -- 1
    print $ V.head x -- 0
    print $ last x -- 5

    -- Slicing
    print $ slice 2 3 x -- [2, 3, 4]
    print $ V.splitAt 2 x -- ([0, 1], [2, 3, 4, 5])

    -- Prepending and Appending
    print $ cons (-1) x -- [-1, 0, 1, 2, 3, 4, 5]
    print $ snoc x 6 -- [0, 1, 2, 3, 4, 5, 6]

    -- Concatenation
    print $ x V.++ x -- [0, 1, 2, 3, 4, 5, 0, 1, 2, 3, 4, 5]
    print $ V.concat [x, x] -- [0, 1, 2, 3, 4, 5, 0, 1, 2, 3, 4, 5]

    -- Update
    print $ x // [(0, 1), (2, 6)] -- [1, 1, 6, 3, 4, 5]
    print $ V.map (+2) x -- [2, 3, 4, 5, 6, 7]
```
