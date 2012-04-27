{-# LANGUAGE EmptyDataDecls
           , ExistentialQuantification
           , ScopedTypeVariables
           , NoMonomorphismRestriction
  #-}
module MAlonzo.Relation.Binary.PropositionalEquality where
import qualified Unsafe.Coerce
import qualified MAlonzo.Data.Function
import qualified MAlonzo.Data.Function.Equality
import qualified MAlonzo.Data.Product
import qualified MAlonzo.Level
import qualified MAlonzo.Relation.Binary
import qualified MAlonzo.Relation.Binary.Consequences
import qualified MAlonzo.Relation.Binary.Core
import qualified MAlonzo.Relation.Binary.EqReasoning
import qualified MAlonzo.Relation.Binary.PropositionalEquality.Core
name13 = ("Relation.Binary.PropositionalEquality.subst\8322")
d13 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  (MAlonzo.Relation.Binary.Core.C240)
  (MAlonzo.Relation.Binary.Core.C240) v10
  = ((Unsafe.Coerce.unsafeCoerce) (v10))
d13 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Relation.Binary.PropositionalEquality.subst\8322"))
name23 = ("Relation.Binary.PropositionalEquality.cong")
d23 v0 v1 v2 v3 v4 v5 v6 (MAlonzo.Relation.Binary.Core.C240)
  = ((Unsafe.Coerce.unsafeCoerce)
       (MAlonzo.Relation.Binary.Core.C240))
d23 v0 v1 v2 v3 v4 v5 v6 v7
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Relation.Binary.PropositionalEquality.cong"))
name36 = ("Relation.Binary.PropositionalEquality.cong\8322")
d36 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  (MAlonzo.Relation.Binary.Core.C240)
  (MAlonzo.Relation.Binary.Core.C240)
  = ((Unsafe.Coerce.unsafeCoerce)
       (MAlonzo.Relation.Binary.Core.C240))
d36 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Relation.Binary.PropositionalEquality.cong\8322"))
name44
  = ("Relation.Binary.PropositionalEquality.proof-irrelevance")
d44 v0 v1 v2 v3 (MAlonzo.Relation.Binary.Core.C240)
  (MAlonzo.Relation.Binary.Core.C240)
  = ((Unsafe.Coerce.unsafeCoerce)
       (MAlonzo.Relation.Binary.Core.C240))
d44 v0 v1 v2 v3 v4 v5
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Relation.Binary.PropositionalEquality.proof-irrelevance"))
name46 = ("Relation.Binary.PropositionalEquality.setoid")
d46 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((MAlonzo.Relation.Binary.C56)
            ((Unsafe.Coerce.unsafeCoerce) (v1)))
           ((Unsafe.Coerce.unsafeCoerce)
              (((MAlonzo.Relation.Binary.Core.d236)
                  ((Unsafe.Coerce.unsafeCoerce) (v0)))
                 ((Unsafe.Coerce.unsafeCoerce) (v1)))))
          ((Unsafe.Coerce.unsafeCoerce)
             (((MAlonzo.Relation.Binary.PropositionalEquality.Core.d24)
                 ((Unsafe.Coerce.unsafeCoerce) (v0)))
                ((Unsafe.Coerce.unsafeCoerce) (v1))))))
name50 = ("Relation.Binary.PropositionalEquality.decSetoid")
d50 v0 v1 v2
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((MAlonzo.Relation.Binary.C92)
            ((Unsafe.Coerce.unsafeCoerce) (v1)))
           ((Unsafe.Coerce.unsafeCoerce)
              (((MAlonzo.Relation.Binary.Core.d236)
                  ((Unsafe.Coerce.unsafeCoerce) (v0)))
                 ((Unsafe.Coerce.unsafeCoerce) (v1)))))
          ((Unsafe.Coerce.unsafeCoerce)
             (((MAlonzo.Relation.Binary.C76)
                 ((Unsafe.Coerce.unsafeCoerce)
                    (((MAlonzo.Relation.Binary.PropositionalEquality.Core.d24)
                        ((Unsafe.Coerce.unsafeCoerce) (v0)))
                       ((Unsafe.Coerce.unsafeCoerce) (v1)))))
                ((Unsafe.Coerce.unsafeCoerce) (v2))))))
name54 = ("Relation.Binary.PropositionalEquality.isPreorder")
d54 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((MAlonzo.Relation.Binary.C8)
             ((Unsafe.Coerce.unsafeCoerce)
                (((MAlonzo.Relation.Binary.PropositionalEquality.Core.d24)
                    ((Unsafe.Coerce.unsafeCoerce) (v0)))
                   ((Unsafe.Coerce.unsafeCoerce) (v1)))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v2 ->
                  (\ v3 ->
                     (((MAlonzo.Data.Function.d35) ((Unsafe.Coerce.unsafeCoerce) (0)))
                        ((Unsafe.Coerce.unsafeCoerce)
                           (((((MAlonzo.Relation.Binary.Core.d236)
                                 ((Unsafe.Coerce.unsafeCoerce) (v0)))
                                ((Unsafe.Coerce.unsafeCoerce) (v1)))
                               ((Unsafe.Coerce.unsafeCoerce) (v2)))
                              ((Unsafe.Coerce.unsafeCoerce) (v3)))))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v2 ->
                 (\ v3 ->
                    (\ v4 ->
                       ((((((MAlonzo.Relation.Binary.PropositionalEquality.Core.d9)
                              ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))
                           ((Unsafe.Coerce.unsafeCoerce) (v3)))
                          ((Unsafe.Coerce.unsafeCoerce) (v4))))))))
          ((Unsafe.Coerce.unsafeCoerce)
             (((((MAlonzo.Relation.Binary.PropositionalEquality.Core.d20)
                   ((Unsafe.Coerce.unsafeCoerce) (v0)))
                  ((Unsafe.Coerce.unsafeCoerce) (0)))
                 ((Unsafe.Coerce.unsafeCoerce) (v1)))
                ((Unsafe.Coerce.unsafeCoerce)
                   (((MAlonzo.Relation.Binary.Core.d236)
                       ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))))
name56 = ("Relation.Binary.PropositionalEquality.preorder")
d56 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((MAlonzo.Relation.Binary.C32)
             ((Unsafe.Coerce.unsafeCoerce) (v1)))
            ((Unsafe.Coerce.unsafeCoerce)
               (((MAlonzo.Relation.Binary.Core.d236)
                   ((Unsafe.Coerce.unsafeCoerce) (v0)))
                  ((Unsafe.Coerce.unsafeCoerce) (v1)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (((MAlonzo.Relation.Binary.Core.d236)
                  ((Unsafe.Coerce.unsafeCoerce) (v0)))
                 ((Unsafe.Coerce.unsafeCoerce) (v1)))))
          ((Unsafe.Coerce.unsafeCoerce)
             (((d54) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                ((Unsafe.Coerce.unsafeCoerce) (v1))))))
name62 = ("Relation.Binary.PropositionalEquality._\8594-setoid_")
d62 v0 v1 v2 v3
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Data.Function.Equality.d141)
              ((Unsafe.Coerce.unsafeCoerce) (v0)))
             ((Unsafe.Coerce.unsafeCoerce) (v1)))
            ((Unsafe.Coerce.unsafeCoerce) (0)))
           ((Unsafe.Coerce.unsafeCoerce) (v2)))
          ((Unsafe.Coerce.unsafeCoerce)
             (\ v4 ->
                (((d46) ((Unsafe.Coerce.unsafeCoerce) (v1)))
                   ((Unsafe.Coerce.unsafeCoerce) (v3)))))))
name72 = ("Relation.Binary.PropositionalEquality._\8791_")
d72 v0 v1 v2 v3
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((MAlonzo.Relation.Binary.d63)
            ((Unsafe.Coerce.unsafeCoerce)
               (((MAlonzo.Level.d5) ((Unsafe.Coerce.unsafeCoerce) (v1)))
                  ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce) (v0)))
          ((Unsafe.Coerce.unsafeCoerce)
             (((((d62) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                  ((Unsafe.Coerce.unsafeCoerce) (v1)))
                 ((Unsafe.Coerce.unsafeCoerce) (v2)))
                ((Unsafe.Coerce.unsafeCoerce) (v3))))))
name80 = ("Relation.Binary.PropositionalEquality.\8594-to-\10230")
d80 v0 v1 v2 v3 v4 v5
  = ((Unsafe.Coerce.unsafeCoerce)
       (((MAlonzo.Data.Function.Equality.C9)
           ((Unsafe.Coerce.unsafeCoerce) (v5)))
          ((Unsafe.Coerce.unsafeCoerce)
             (\ v6 ->
                (\ v7 ->
                   (((((((((MAlonzo.Data.Function.d20)
                             ((Unsafe.Coerce.unsafeCoerce) (0)))
                            ((Unsafe.Coerce.unsafeCoerce) (0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))
                          ((Unsafe.Coerce.unsafeCoerce)
                             (((((MAlonzo.Relation.Binary.Core.d236)
                                   ((Unsafe.Coerce.unsafeCoerce) (v0)))
                                  ((Unsafe.Coerce.unsafeCoerce) (v3)))
                                 ((Unsafe.Coerce.unsafeCoerce) (v6)))
                                ((Unsafe.Coerce.unsafeCoerce) (v7)))))
                         ((Unsafe.Coerce.unsafeCoerce)
                            (\ v8 ->
                               (((((MAlonzo.Relation.Binary.Core.d236)
                                     ((Unsafe.Coerce.unsafeCoerce) (v1)))
                                    ((Unsafe.Coerce.unsafeCoerce)
                                       ((((MAlonzo.Relation.Binary.d62)
                                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                                           ((Unsafe.Coerce.unsafeCoerce) (v2)))
                                          ((Unsafe.Coerce.unsafeCoerce) (v4)))))
                                   ((Unsafe.Coerce.unsafeCoerce)
                                      ((v5) ((Unsafe.Coerce.unsafeCoerce) (v6)))))
                                  ((Unsafe.Coerce.unsafeCoerce)
                                     ((v5) ((Unsafe.Coerce.unsafeCoerce) (v7))))))))
                        ((Unsafe.Coerce.unsafeCoerce)
                           (\ v8 ->
                              (\ v9 ->
                                 ((((((MAlonzo.Relation.Binary.d63)
                                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                                       ((Unsafe.Coerce.unsafeCoerce) (v2)))
                                      ((Unsafe.Coerce.unsafeCoerce) (v4)))
                                     ((Unsafe.Coerce.unsafeCoerce)
                                        ((v5) ((Unsafe.Coerce.unsafeCoerce) (v6)))))
                                    ((Unsafe.Coerce.unsafeCoerce)
                                       ((v5) ((Unsafe.Coerce.unsafeCoerce) (v7)))))))))
                       ((Unsafe.Coerce.unsafeCoerce)
                          (\ v8 ->
                             ((((((MAlonzo.Relation.Binary.d67)
                                    ((Unsafe.Coerce.unsafeCoerce) (v1)))
                                   ((Unsafe.Coerce.unsafeCoerce) (v2)))
                                  ((Unsafe.Coerce.unsafeCoerce) (v4)))
                                 ((Unsafe.Coerce.unsafeCoerce)
                                    ((v5) ((Unsafe.Coerce.unsafeCoerce) (v6)))))
                                ((Unsafe.Coerce.unsafeCoerce)
                                   ((v5) ((Unsafe.Coerce.unsafeCoerce) (v7))))))))
                      ((Unsafe.Coerce.unsafeCoerce)
                         ((((((((d23) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                                 ((Unsafe.Coerce.unsafeCoerce) (v1)))
                                ((Unsafe.Coerce.unsafeCoerce) (v3)))
                               ((Unsafe.Coerce.unsafeCoerce)
                                  ((((MAlonzo.Relation.Binary.d62)
                                       ((Unsafe.Coerce.unsafeCoerce) (v1)))
                                      ((Unsafe.Coerce.unsafeCoerce) (v2)))
                                     ((Unsafe.Coerce.unsafeCoerce) (v4)))))
                              ((Unsafe.Coerce.unsafeCoerce) (v5)))
                             ((Unsafe.Coerce.unsafeCoerce) (v6)))
                            ((Unsafe.Coerce.unsafeCoerce) (v7))))))))))
name86 = ("Relation.Binary.PropositionalEquality.Inspect")
d86 a0 a1 a2 = (())
 
data T86 a0 a1 = C92 a0 a1
name92 = ("Relation.Binary.PropositionalEquality._with-\8801_")
name96 = ("Relation.Binary.PropositionalEquality.inspect")
d96 v0 v1 v2
  = ((Unsafe.Coerce.unsafeCoerce)
       (((C92) ((Unsafe.Coerce.unsafeCoerce) (v2)))
          ((Unsafe.Coerce.unsafeCoerce)
             (MAlonzo.Relation.Binary.Core.C240))))
name103
  = ("Relation.Binary.PropositionalEquality.\8801-Reasoning.Dummy._._._IsRelatedTo_")
d103 a0 a1 a2 a3 = (())
name104
  = ("Relation.Binary.PropositionalEquality.\8801-Reasoning.Dummy._._._\8718")
d104 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((MAlonzo.Relation.Binary.EqReasoning.d18)
            ((Unsafe.Coerce.unsafeCoerce) (v0)))
           ((Unsafe.Coerce.unsafeCoerce) (0)))
          ((Unsafe.Coerce.unsafeCoerce)
             (((d46) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                ((Unsafe.Coerce.unsafeCoerce) (v1))))))
name105
  = ("Relation.Binary.PropositionalEquality.\8801-Reasoning.Dummy._._._\8764\10216_\10217_")
d105 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((MAlonzo.Relation.Binary.EqReasoning.d19)
            ((Unsafe.Coerce.unsafeCoerce) (v0)))
           ((Unsafe.Coerce.unsafeCoerce) (0)))
          ((Unsafe.Coerce.unsafeCoerce)
             (((d46) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                ((Unsafe.Coerce.unsafeCoerce) (v1))))))
name106
  = ("Relation.Binary.PropositionalEquality.\8801-Reasoning.Dummy._._._\8776\10216_\10217_")
d106 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((MAlonzo.Relation.Binary.EqReasoning.d20)
            ((Unsafe.Coerce.unsafeCoerce) (v0)))
           ((Unsafe.Coerce.unsafeCoerce) (0)))
          ((Unsafe.Coerce.unsafeCoerce)
             (((d46) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                ((Unsafe.Coerce.unsafeCoerce) (v1))))))
name107
  = ("Relation.Binary.PropositionalEquality.\8801-Reasoning.Dummy._._.begin_")
d107 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((MAlonzo.Relation.Binary.EqReasoning.d21)
            ((Unsafe.Coerce.unsafeCoerce) (v0)))
           ((Unsafe.Coerce.unsafeCoerce) (0)))
          ((Unsafe.Coerce.unsafeCoerce)
             (((d46) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                ((Unsafe.Coerce.unsafeCoerce) (v1))))))
name108
  = ("Relation.Binary.PropositionalEquality.\8801-Reasoning.Dummy._._.relTo")