{-# LANGUAGE EmptyDataDecls
           , ExistentialQuantification
           , ScopedTypeVariables
           , NoMonomorphismRestriction
  #-}
module MAlonzo.Data.Fin.Subset where
import qualified Unsafe.Coerce
import qualified MAlonzo.Data.Fin
import qualified MAlonzo.Data.Nat
import qualified MAlonzo.Data.Product
import qualified MAlonzo.Data.Vec
import qualified MAlonzo.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Relation.Nullary
import qualified MAlonzo.Relation.Nullary.Core
name3 = ("Data.Fin.Subset.Side")
d3 = (())
 
data T3 = C4
        | C5
name4 = ("Data.Fin.Subset.inside")
name5 = ("Data.Fin.Subset.outside")
name6 = ("Data.Fin.Subset.Subset")
d6
  = ((Unsafe.Coerce.unsafeCoerce)
       (((MAlonzo.Data.Vec.d4) ((Unsafe.Coerce.unsafeCoerce) (0)))
          ((Unsafe.Coerce.unsafeCoerce) (d3))))
name8 = ("Data.Fin.Subset._\8712_")
d8 v0 v1 v2
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Data.Vec.d31) ((Unsafe.Coerce.unsafeCoerce) (0)))
              ((Unsafe.Coerce.unsafeCoerce) (d3)))
             ((Unsafe.Coerce.unsafeCoerce) (v0)))
            ((Unsafe.Coerce.unsafeCoerce) (v2)))
           ((Unsafe.Coerce.unsafeCoerce) (v1)))
          ((Unsafe.Coerce.unsafeCoerce) (C4))))
name12 = ("Data.Fin.Subset._\8713_")
d12 v0 v1 v2
  = ((Unsafe.Coerce.unsafeCoerce)
       (((MAlonzo.Relation.Nullary.Core.d4)
           ((Unsafe.Coerce.unsafeCoerce) (0)))
          ((Unsafe.Coerce.unsafeCoerce)
             ((((d8) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                 ((Unsafe.Coerce.unsafeCoerce) (v1)))
                ((Unsafe.Coerce.unsafeCoerce) (v2))))))
name16 = ("Data.Fin.Subset._\8838_")
d16 v0 v1 v2 = ((Unsafe.Coerce.unsafeCoerce) (()))
name21 = ("Data.Fin.Subset._\8840_")
d21 v0 v1 v2
  = ((Unsafe.Coerce.unsafeCoerce)
       (((MAlonzo.Relation.Nullary.Core.d4)
           ((Unsafe.Coerce.unsafeCoerce) (0)))
          ((Unsafe.Coerce.unsafeCoerce)
             ((((d16) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                 ((Unsafe.Coerce.unsafeCoerce) (v1)))
                ((Unsafe.Coerce.unsafeCoerce) (v2))))))
name25 = ("Data.Fin.Subset.all")
d25 (MAlonzo.Data.Nat.C3) v0
  = ((Unsafe.Coerce.unsafeCoerce) (MAlonzo.Data.Vec.C7))
d25 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       (((d_1_25) ((Unsafe.Coerce.unsafeCoerce) (v0)))
          ((Unsafe.Coerce.unsafeCoerce) (v1))))
  where d_1_25 (MAlonzo.Data.Nat.C5 v0) v1
          = ((Unsafe.Coerce.unsafeCoerce)
               ((((MAlonzo.Data.Vec.C11) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                   ((Unsafe.Coerce.unsafeCoerce) (v1)))
                  ((Unsafe.Coerce.unsafeCoerce)
                     (((d25) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1))))))
        d_1_25 v0 v1
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Data.Fin.Subset.all"))
name30 = ("Data.Fin.Subset.Nonempty")
d30 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((MAlonzo.Data.Product.d17) ((Unsafe.Coerce.unsafeCoerce) (0)))
            ((Unsafe.Coerce.unsafeCoerce) (0)))
           ((Unsafe.Coerce.unsafeCoerce)
              ((MAlonzo.Data.Fin.d2) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             (\ v2 ->
                ((((d8) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v2)))
                   ((Unsafe.Coerce.unsafeCoerce) (v1)))))))
name35 = ("Data.Fin.Subset.Empty")
d35 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       (((MAlonzo.Relation.Nullary.Core.d4)
           ((Unsafe.Coerce.unsafeCoerce) (0)))
          ((Unsafe.Coerce.unsafeCoerce)
             (((d30) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                ((Unsafe.Coerce.unsafeCoerce) (v1))))))
name38 = ("Data.Fin.Subset.Lift")
d38 v0 v1 v2 = ((Unsafe.Coerce.unsafeCoerce) (()))