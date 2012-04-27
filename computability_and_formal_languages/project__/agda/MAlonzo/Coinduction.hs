{-# LANGUAGE EmptyDataDecls
           , ExistentialQuantification
           , ScopedTypeVariables
           , NoMonomorphismRestriction
  #-}
module MAlonzo.Coinduction where
import qualified Unsafe.Coerce
import qualified MAlonzo.Level
name3 = ("Coinduction.\8734")
d3 a0 a1 = (())
 
data T3 a0 = C7 a0
name7 = ("Coinduction.\9839_")
name10 = ("Coinduction.\9837")
d10 v0 v1 (C7 v2) = ((Unsafe.Coerce.unsafeCoerce) (v2))
d10 v0 v1 v2
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Coinduction.\9837"))