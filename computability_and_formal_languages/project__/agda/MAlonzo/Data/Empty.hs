{-# LANGUAGE EmptyDataDecls
           , ExistentialQuantification
           , ScopedTypeVariables
           , NoMonomorphismRestriction
  #-}
module MAlonzo.Data.Empty where
import qualified Unsafe.Coerce
import qualified MAlonzo.Level
name2 = ("Data.Empty.\8869")
d2 = (())
 
data T2
name5 = ("Data.Empty.\8869-elim")
d5 _ _ _
  = ((error) ("MAlonzo Runtime Error: Impossible Clause Body"))