-- This module introduces the basic structure of an Agda program.

{- Every Agda file contains a single top-level module. To make it possible to
   find the file corresponding to a particular module, the name of the file
   should correspond to the name of the module. In this case the module
   'Introduction.Basics' is defined in the file 'Introduction/Basics.agda'.
-}
module Basics where

open import IO.Primitive
open import Data.String

main : {A : Set}(IO A)
main = putStr "hi"