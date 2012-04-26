{-# LANGUAGE EmptyDataDecls
           , ExistentialQuantification
           , ScopedTypeVariables
           , NoMonomorphismRestriction
  #-}
module MAlonzo.Relation.Binary.PropositionalEquality.Core where
import qualified Unsafe.Coerce
import qualified MAlonzo.Level
import qualified MAlonzo.Relation.Binary.Consequences.Core
import qualified MAlonzo.Relation.Binary.Core
name6 = ("Relation.Binary.PropositionalEquality.Core.sym")
d6 v0 v1 v2 v3 (MAlonzo.Relation.Binary.Core.C240)
  = ((Unsafe.Coerce.unsafeCoerce)
       (MAlonzo.Relation.Binary.Core.C240))
d6 v0 v1 v2 v3 v4
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Relation.Binary.PropositionalEquality.Core.sym"))
name9 = ("Relation.Binary.PropositionalEquality.Core.trans")
d9 v0 v1 v2 v3 v4 (MAlonzo.Relation.Binary.Core.C240)
  (MAlonzo.Relation.Binary.Core.C240)
  = ((Unsafe.Coerce.unsafeCoerce)
       (MAlonzo.Relation.Binary.Core.C240))
d9 v0 v1 v2 v3 v4 v5 v6
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Relation.Binary.PropositionalEquality.Core.trans"))
name13 = ("Relation.Binary.PropositionalEquality.Core.subst")
d13 v0 v1 v2 v3 v4 v5 (MAlonzo.Relation.Binary.Core.C240) v6
  = ((Unsafe.Coerce.unsafeCoerce) (v6))
d13 v0 v1 v2 v3 v4 v5 v6 v7
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Relation.Binary.PropositionalEquality.Core.subst"))
name20 = ("Relation.Binary.PropositionalEquality.Core.resp\8322")
d20 v0 v1 v2 v3
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Relation.Binary.Consequences.Core.d10)
                ((Unsafe.Coerce.unsafeCoerce) (v0)))
               ((Unsafe.Coerce.unsafeCoerce) (0)))
              ((Unsafe.Coerce.unsafeCoerce) (v1)))
             ((Unsafe.Coerce.unsafeCoerce) (v2)))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v4 ->
                  (\ v5 ->
                     (((((MAlonzo.Relation.Binary.Core.d236)
                           ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))
                         ((Unsafe.Coerce.unsafeCoerce) (v4)))
                        ((Unsafe.Coerce.unsafeCoerce) (v5)))))))
           ((Unsafe.Coerce.unsafeCoerce) (v3)))
          ((Unsafe.Coerce.unsafeCoerce)
             ((((d13) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                 ((Unsafe.Coerce.unsafeCoerce) (v1)))
                ((Unsafe.Coerce.unsafeCoerce) (v2))))))
name24
  = ("Relation.Binary.PropositionalEquality.Core.isEquivalence")
d24 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((MAlonzo.Relation.Binary.Core.C250)
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v2 -> (MAlonzo.Relation.Binary.Core.C240))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v2 ->
                 (\ v3 ->
                    (((((d6) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))
                       ((Unsafe.Coerce.unsafeCoerce) (v3)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             (\ v2 ->
                (\ v3 ->
                   (\ v4 ->
                      ((((((d9) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))
                          ((Unsafe.Coerce.unsafeCoerce) (v3)))
                         ((Unsafe.Coerce.unsafeCoerce) (v4)))))))))