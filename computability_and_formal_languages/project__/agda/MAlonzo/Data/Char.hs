{-# LANGUAGE EmptyDataDecls
           , ExistentialQuantification
           , ScopedTypeVariables
           , NoMonomorphismRestriction
  #-}
module MAlonzo.Data.Char where
import qualified Unsafe.Coerce
import qualified Data.Char
import qualified MAlonzo.Data.Bool
import qualified MAlonzo.Data.Nat
import qualified MAlonzo.Relation.Binary
import qualified MAlonzo.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Relation.Nullary
import qualified MAlonzo.Relation.Nullary.Core
name2 = ("Data.Char.Char")
d2
  = ((error)
       ("MAlonzo Runtime Error: postulate evaluated: Data.Char.Char"))
name3 = ("Data.Char.primCharToNat")
d3
  = ((\ x -> MAlonzo.Data.Nat.mazIntToNat ((fromEnum :: Char -> Int) x)))
name4 = ("Data.Char.primCharEquality")
d4
  = ((\ x y -> MAlonzo.Data.Bool.mazHBoolToBool (((==) :: Char -> Char -> Bool) ( x) ( y))))
name5 = ("Data.Char.toNat")
d5 = ((Unsafe.Coerce.unsafeCoerce) (d3))
name6 = ("Data.Char._==_")
d6 = ((Unsafe.Coerce.unsafeCoerce) (d4))
name7 = ("Data.Char._\8799_")
d7 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((d11) ((Unsafe.Coerce.unsafeCoerce) (v0)))
           ((Unsafe.Coerce.unsafeCoerce) (v1)))
          ((Unsafe.Coerce.unsafeCoerce)
             (((d6) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                ((Unsafe.Coerce.unsafeCoerce) (v1))))))
name11 = ("Data.Char.with-10")
d11 v0 v1 (True)
  = ((Unsafe.Coerce.unsafeCoerce)
       ((MAlonzo.Relation.Nullary.Core.C12)
          ((Unsafe.Coerce.unsafeCoerce)
             (((d16) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                ((Unsafe.Coerce.unsafeCoerce) (v1))))))
d11 v0 v1 v2
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((d_1_11) ((Unsafe.Coerce.unsafeCoerce) (v0)))
           ((Unsafe.Coerce.unsafeCoerce) (v1)))
          ((Unsafe.Coerce.unsafeCoerce) (v2))))
  where d_1_11 v0 v1 (False)
          = ((Unsafe.Coerce.unsafeCoerce)
               ((MAlonzo.Relation.Nullary.Core.C14)
                  ((Unsafe.Coerce.unsafeCoerce)
                     (((d21) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1))))))
        d_1_11 v0 v1 v2
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Data.Char.with-10"))
name16 = ("Data.Char._.trustMe")
d16
  = ((error)
       ("MAlonzo Runtime Error: postulate evaluated: Data.Char._.trustMe"))
name21 = ("Data.Char._.trustMe")
d21
  = ((error)
       ("MAlonzo Runtime Error: postulate evaluated: Data.Char._.trustMe"))
name22 = ("Data.Char.setoid")
d22
  = ((Unsafe.Coerce.unsafeCoerce)
       (((MAlonzo.Relation.Binary.PropositionalEquality.d46)
           ((Unsafe.Coerce.unsafeCoerce) (0)))
          ((Unsafe.Coerce.unsafeCoerce) (d2))))
name23 = ("Data.Char.decSetoid")
d23
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((MAlonzo.Relation.Binary.PropositionalEquality.d50)
            ((Unsafe.Coerce.unsafeCoerce) (0)))
           ((Unsafe.Coerce.unsafeCoerce) (d2)))
          ((Unsafe.Coerce.unsafeCoerce) (d7))))
mazCharToInteger
  = ((fromIntegral . Data.Char.ord :: Char -> Integer))