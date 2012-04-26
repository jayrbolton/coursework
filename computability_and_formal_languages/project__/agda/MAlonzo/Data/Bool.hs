{-# LANGUAGE EmptyDataDecls
           , ExistentialQuantification
           , ScopedTypeVariables
           , NoMonomorphismRestriction
  #-}
module MAlonzo.Data.Bool where
import qualified Unsafe.Coerce
import qualified MAlonzo.Data.Empty
import qualified MAlonzo.Data.Function
import qualified MAlonzo.Data.Unit
import qualified MAlonzo.Level
import qualified MAlonzo.Relation.Binary
import qualified MAlonzo.Relation.Binary.Core
import qualified MAlonzo.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Relation.Nullary
import qualified MAlonzo.Relation.Nullary.Core
name2 = ("Data.Bool.Bool")
d2 = (())
 
check3 :: Bool
check3 = (True)
 
check4 :: Bool
check4 = (False)
 
cover2 :: Bool -> ()
cover2 x
  = (case (x) of
         True -> (())
         False -> (()))
name3 = ("Data.Bool.true")
name4 = ("Data.Bool.false")
name5 = ("Data.Bool.not")
d5 (True) = ((Unsafe.Coerce.unsafeCoerce) (False))
d5 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d_1_5) ((Unsafe.Coerce.unsafeCoerce) (v0))))
  where d_1_5 (False) = ((Unsafe.Coerce.unsafeCoerce) (True))
        d_1_5 v0
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Data.Bool.not"))
name6 = ("Data.Bool.T")
d6 (True) = ((Unsafe.Coerce.unsafeCoerce) (MAlonzo.Data.Unit.d2))
d6 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d_1_6) ((Unsafe.Coerce.unsafeCoerce) (v0))))
  where d_1_6 (False)
          = ((Unsafe.Coerce.unsafeCoerce) (MAlonzo.Data.Empty.d2))
        d_1_6 v0
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Data.Bool.T"))
name9 = ("Data.Bool.if_then_else_")
d9 v0 v1 (True) v2 v3 = ((Unsafe.Coerce.unsafeCoerce) (v2))
d9 v0 v1 v2 v3 v4
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((d_1_9) ((Unsafe.Coerce.unsafeCoerce) (v0)))
             ((Unsafe.Coerce.unsafeCoerce) (v1)))
            ((Unsafe.Coerce.unsafeCoerce) (v2)))
           ((Unsafe.Coerce.unsafeCoerce) (v3)))
          ((Unsafe.Coerce.unsafeCoerce) (v4))))
  where d_1_9 v0 v1 (False) v2 v3
          = ((Unsafe.Coerce.unsafeCoerce) (v3))
        d_1_9 v0 v1 v2 v3 v4
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Data.Bool.if_then_else_"))
name14 = ("Data.Bool._\8743_")
d14 (True) v0 = ((Unsafe.Coerce.unsafeCoerce) (v0))
d14 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       (((d_1_14) ((Unsafe.Coerce.unsafeCoerce) (v0)))
          ((Unsafe.Coerce.unsafeCoerce) (v1))))
  where d_1_14 (False) v0 = ((Unsafe.Coerce.unsafeCoerce) (False))
        d_1_14 v0 v1
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Data.Bool._\8743_"))
name17 = ("Data.Bool._\8744_")
d17 (True) v0 = ((Unsafe.Coerce.unsafeCoerce) (True))
d17 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       (((d_1_17) ((Unsafe.Coerce.unsafeCoerce) (v0)))
          ((Unsafe.Coerce.unsafeCoerce) (v1))))
  where d_1_17 (False) v0 = ((Unsafe.Coerce.unsafeCoerce) (v0))
        d_1_17 v0 v1
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Data.Bool._\8744_"))
name20 = ("Data.Bool._xor_")
d20 (True) v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d5) ((Unsafe.Coerce.unsafeCoerce) (v0))))
d20 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       (((d_1_20) ((Unsafe.Coerce.unsafeCoerce) (v0)))
          ((Unsafe.Coerce.unsafeCoerce) (v1))))
  where d_1_20 (False) v0 = ((Unsafe.Coerce.unsafeCoerce) (v0))
        d_1_20 v0 v1
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Data.Bool._xor_"))
name23 = ("Data.Bool._\8799_")
d23 (True) (True)
  = ((Unsafe.Coerce.unsafeCoerce)
       ((MAlonzo.Relation.Nullary.Core.C12)
          ((Unsafe.Coerce.unsafeCoerce)
             (MAlonzo.Relation.Binary.Core.C240))))
d23 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       (((d_1_23) ((Unsafe.Coerce.unsafeCoerce) (v0)))
          ((Unsafe.Coerce.unsafeCoerce) (v1))))
  where d_1_23 (False) (False)
          = ((Unsafe.Coerce.unsafeCoerce)
               ((MAlonzo.Relation.Nullary.Core.C12)
                  ((Unsafe.Coerce.unsafeCoerce)
                     (MAlonzo.Relation.Binary.Core.C240))))
        d_1_23 v0 v1
          = ((Unsafe.Coerce.unsafeCoerce)
               (((d_2_23) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                  ((Unsafe.Coerce.unsafeCoerce) (v1))))
        d_2_23 (True) (False)
          = ((Unsafe.Coerce.unsafeCoerce)
               ((MAlonzo.Relation.Nullary.Core.C14)
                  ((Unsafe.Coerce.unsafeCoerce) (d132))))
        d_2_23 v0 v1
          = ((Unsafe.Coerce.unsafeCoerce)
               (((d_3_23) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                  ((Unsafe.Coerce.unsafeCoerce) (v1))))
        d_3_23 (False) (True)
          = ((Unsafe.Coerce.unsafeCoerce)
               ((MAlonzo.Relation.Nullary.Core.C14)
                  ((Unsafe.Coerce.unsafeCoerce) (d136))))
        d_3_23 v0 v1
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Data.Bool._\8799_"))
name24 = ("Data.Bool.decSetoid")
d24
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((MAlonzo.Relation.Binary.PropositionalEquality.d50)
            ((Unsafe.Coerce.unsafeCoerce) (0)))
           ((Unsafe.Coerce.unsafeCoerce) (d2)))
          ((Unsafe.Coerce.unsafeCoerce) (d23))))
name132 = ("Data.Bool.absurd")
d132 _
  = ((error) ("MAlonzo Runtime Error: Impossible Clause Body"))
name136 = ("Data.Bool.absurd")
d136 _
  = ((error) ("MAlonzo Runtime Error: Impossible Clause Body"))
mazBoolToHBool = (id)
mazHBoolToBool = (id)