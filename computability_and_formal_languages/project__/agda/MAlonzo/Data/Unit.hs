{-# LANGUAGE EmptyDataDecls
           , ExistentialQuantification
           , ScopedTypeVariables
           , NoMonomorphismRestriction
  #-}
module MAlonzo.Data.Unit where
import qualified Unsafe.Coerce
import qualified MAlonzo.Data.Sum
import qualified MAlonzo.Relation.Binary
import qualified MAlonzo.Relation.Binary.Core
import qualified MAlonzo.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Relation.Binary.PropositionalEquality.Core
import qualified MAlonzo.Relation.Nullary
import qualified MAlonzo.Relation.Nullary.Core
name2 = ("Data.Unit.\8868")
d2 = (())
 
data T2 = C3
name3 = ("Data.Unit.tt")
name6 = ("Data.Unit._\8804_")
d6 a0 a1 = (())
 
data T6 = C6
name9 = ("Data.Unit._\8799_")
d9 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       ((MAlonzo.Relation.Nullary.Core.C12)
          ((Unsafe.Coerce.unsafeCoerce)
             (MAlonzo.Relation.Binary.Core.C240))))
name10 = ("Data.Unit._\8804?_")
d10 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       ((MAlonzo.Relation.Nullary.Core.C12)
          ((Unsafe.Coerce.unsafeCoerce) (C6))))
name11 = ("Data.Unit.total")
d11 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       ((MAlonzo.Data.Sum.C12) ((Unsafe.Coerce.unsafeCoerce) (C6))))
name12 = ("Data.Unit.preorder")
d12
  = ((Unsafe.Coerce.unsafeCoerce)
       (((MAlonzo.Relation.Binary.PropositionalEquality.d56)
           ((Unsafe.Coerce.unsafeCoerce) (0)))
          ((Unsafe.Coerce.unsafeCoerce) (d2))))
name13 = ("Data.Unit.setoid")
d13
  = ((Unsafe.Coerce.unsafeCoerce)
       (((MAlonzo.Relation.Binary.PropositionalEquality.d46)
           ((Unsafe.Coerce.unsafeCoerce) (0)))
          ((Unsafe.Coerce.unsafeCoerce) (d2))))
name14 = ("Data.Unit.decTotalOrder")
d14
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((MAlonzo.Relation.Binary.C345)
             ((Unsafe.Coerce.unsafeCoerce) (d2)))
            ((Unsafe.Coerce.unsafeCoerce)
               (((MAlonzo.Relation.Binary.Core.d236)
                   ((Unsafe.Coerce.unsafeCoerce) (0)))
                  ((Unsafe.Coerce.unsafeCoerce) (d2)))))
           ((Unsafe.Coerce.unsafeCoerce) (d6)))
          ((Unsafe.Coerce.unsafeCoerce)
             ((((MAlonzo.Relation.Binary.C306)
                  ((Unsafe.Coerce.unsafeCoerce)
                     (((MAlonzo.Relation.Binary.C230)
                         ((Unsafe.Coerce.unsafeCoerce)
                            (((MAlonzo.Relation.Binary.C125)
                                ((Unsafe.Coerce.unsafeCoerce)
                                   (((((MAlonzo.Relation.Binary.C8)
                                         ((Unsafe.Coerce.unsafeCoerce)
                                            (((MAlonzo.Relation.Binary.PropositionalEquality.Core.d24)
                                                ((Unsafe.Coerce.unsafeCoerce) (0)))
                                               ((Unsafe.Coerce.unsafeCoerce) (d2)))))
                                        ((Unsafe.Coerce.unsafeCoerce)
                                           (\ v0 -> (\ v1 -> (\ v2 -> (C6))))))
                                       ((Unsafe.Coerce.unsafeCoerce)
                                          (\ v0 -> (\ v1 -> (\ v2 -> (\ v3 -> (\ v4 -> (C6))))))))
                                      ((Unsafe.Coerce.unsafeCoerce)
                                         (((((MAlonzo.Relation.Binary.PropositionalEquality.Core.d20)
                                               ((Unsafe.Coerce.unsafeCoerce) (0)))
                                              ((Unsafe.Coerce.unsafeCoerce) (0)))
                                             ((Unsafe.Coerce.unsafeCoerce) (d2)))
                                            ((Unsafe.Coerce.unsafeCoerce) (d6)))))))
                               ((Unsafe.Coerce.unsafeCoerce)
                                  (\ v0 ->
                                     (\ v1 ->
                                        (((d17) ((Unsafe.Coerce.unsafeCoerce) (C3)))
                                           ((Unsafe.Coerce.unsafeCoerce) (C3)))))))))
                        ((Unsafe.Coerce.unsafeCoerce) (d11)))))
                 ((Unsafe.Coerce.unsafeCoerce) (d9)))
                ((Unsafe.Coerce.unsafeCoerce) (d10))))))
name17 = ("Data.Unit._.antisym")
d17 v0 v1 v2 v3
  = ((Unsafe.Coerce.unsafeCoerce)
       (MAlonzo.Relation.Binary.Core.C240))
name21 = ("Data.Unit.decSetoid")
d21
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((MAlonzo.Relation.Binary.d399)
             ((Unsafe.Coerce.unsafeCoerce) (0)))
            ((Unsafe.Coerce.unsafeCoerce) (0)))
           ((Unsafe.Coerce.unsafeCoerce) (0)))
          ((Unsafe.Coerce.unsafeCoerce) (d14))))
name22 = ("Data.Unit.poset")
d22
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((MAlonzo.Relation.Binary.d387)
             ((Unsafe.Coerce.unsafeCoerce) (0)))
            ((Unsafe.Coerce.unsafeCoerce) (0)))
           ((Unsafe.Coerce.unsafeCoerce) (0)))
          ((Unsafe.Coerce.unsafeCoerce) (d14))))