{-# LANGUAGE EmptyDataDecls
           , ExistentialQuantification
           , ScopedTypeVariables
           , NoMonomorphismRestriction
  #-}
module MAlonzo.Relation.Binary.PropositionalEquality.TrustMe where
import qualified Unsafe.Coerce
import qualified MAlonzo.Relation.Binary.Core
import qualified MAlonzo.Relation.Binary.PropositionalEquality
name7
  = ("Relation.Binary.PropositionalEquality.TrustMe.primTrustMe")
d7
  = (\ v0 -> (\ v1 -> (\ v2 -> (MAlonzo.Relation.Binary.Core.C240))))
name11 = ("Relation.Binary.PropositionalEquality.TrustMe.trustMe")
d11 v0 v1 v2
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((d7) ((Unsafe.Coerce.unsafeCoerce) (v0)))
           ((Unsafe.Coerce.unsafeCoerce) (v1)))
          ((Unsafe.Coerce.unsafeCoerce) (v2))))