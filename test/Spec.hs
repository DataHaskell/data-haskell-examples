{-# LANGUAGE NoImplicitPrelude #-}
import Protolude
import Test.DocTest

main :: IO ()
main = doctest ["examples/examples.hs"]
