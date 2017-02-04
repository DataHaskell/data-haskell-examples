import Protolude
import Data.Vector as V
import Numeric.LinearAlgebra as H

main :: IO ()
main = do
    -- vector examples
    let x = V.fromList [0..5]

    print $ V.length x -- 6
    print $ V.null x -- False

    -- indexing
    print $ x V.! 1 -- 1
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

    -- hmatrix examples
    -- Creating matrices
    let x = (2><2) [0..3] :: Matrix Double

    -- [ 0.0, 1.0
    -- , 2.0, 3.0 ]
    let y = fromLists [[0, 1], [2, 3]] :: Matrix Double

    -- Random matrices
    r <- randn 2 3
    -- [ 0.7764496757867578,    1.246311658930589,    -0.684233085372455
    -- , -2.540045307941425, -0.20975584071908912, -9.039537343065803e-3 ]

    -- Matrix multiplication
    print $ x H.<> y -- [ 2.0,  3.0 
                   -- , 6.0, 11.0 ]

    -- Transpose
    print $ tr x -- [ 0.0, 2.0 
                 -- , 1.0, 3.0 ]

    -- Matrix slicing
    print $ r ?? (H.All, Take 2) -- [ 0.7764496757867578,    1.246311658930589
                               -- , -2.540045307941425, -0.20975584071908912 ]

    -- Mapping over matrices
    print $ cmap ((+ 2) . (*2)) x -- [ 2.0, 4.0
                                  -- , 6.0, 8.0 ]

    -- Flatten
    print $ flatten x -- [0.0, 1.0, 2.0, 3.0]
