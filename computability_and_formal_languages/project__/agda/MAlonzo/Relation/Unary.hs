{-# LANGUAGE EmptyDataDecls
           , ExistentialQuantification
           , ScopedTypeVariables
           , NoMonomorphismRestriction
  #-}
module MAlonzo.Relation.Unary where
import qualified Unsafe.Coerce
import qualified MAlonzo.Data.Empty
import qualified MAlonzo.Data.Function
import qualified MAlonzo.Data.Product
import qualified MAlonzo.Data.Sum
import qualified MAlonzo.Data.Unit
import qualified MAlonzo.Level
import qualified MAlonzo.Relation.Nullary
import qualified MAlonzo.Relation.Nullary.Core
name4 = ("Relation.Unary.Pred")
d4 v0 v1 v2 = ((Unsafe.Coerce.unsafeCoerce) (()))
name11 = ("Relation.Unary.Dummy._\8712_")
d11 v0 v1 v2 v3 v4
  = ((Unsafe.Coerce.unsafeCoerce)
       ((v4) ((Unsafe.Coerce.unsafeCoerce) (v3))))
name15 = ("Relation.Unary.Dummy._\8713_")
d15 v0 v1 v2 v3 v4
  = ((Unsafe.Coerce.unsafeCoerce)
       (((MAlonzo.Relation.Nullary.Core.d4)
           ((Unsafe.Coerce.unsafeCoerce) (v2)))
          ((Unsafe.Coerce.unsafeCoerce)
             ((((((d11) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                   ((Unsafe.Coerce.unsafeCoerce) (v1)))
                  ((Unsafe.Coerce.unsafeCoerce) (v2)))
                 ((Unsafe.Coerce.unsafeCoerce) (v3)))
                ((Unsafe.Coerce.unsafeCoerce) (v4))))))
name18 = ("Relation.Unary.Dummy.\8709")
d18 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce) (\ v2 -> (MAlonzo.Data.Empty.d2)))
name21 = ("Relation.Unary.Dummy.Empty")
d21 v0 v1 v2 v3 = ((Unsafe.Coerce.unsafeCoerce) (()))
name24 = ("Relation.Unary.Dummy.\8709-Empty")
d24 v0 v1 _ _
  = ((error) ("MAlonzo Runtime Error: Impossible Clause Body"))
name26 = ("Relation.Unary.Dummy.U")
d26 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce) (\ v2 -> (MAlonzo.Data.Unit.d2)))
name29 = ("Relation.Unary.Dummy.Universal")
d29 v0 v1 v2 v3 = ((Unsafe.Coerce.unsafeCoerce) (()))
name32 = ("Relation.Unary.Dummy.U-Universal")
d32 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce) (\ v2 -> (MAlonzo.Data.Unit.C3)))
name35 = ("Relation.Unary.Dummy.\8705")
d35 v0 v1 v2 v3
  = ((Unsafe.Coerce.unsafeCoerce)
       (\ v4 ->
          ((((((d15) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                ((Unsafe.Coerce.unsafeCoerce) (v1)))
               ((Unsafe.Coerce.unsafeCoerce) (v2)))
              ((Unsafe.Coerce.unsafeCoerce) (v4)))
             ((Unsafe.Coerce.unsafeCoerce) (v3)))))
name38 = ("Relation.Unary.Dummy.\8705\8709-Universal")
d38 v0 v1 = ((Unsafe.Coerce.unsafeCoerce) (\ v2 -> (\ v3 -> (v3))))
name41 = ("Relation.Unary.Dummy.\8705U-Empty")
d41 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       (\ v2 ->
          (\ v3 ->
             ((v3) ((Unsafe.Coerce.unsafeCoerce) (MAlonzo.Data.Unit.C3))))))
name46 = ("Relation.Unary.Dummy._\8838_")
d46 v0 v1 v2 v3 v4 v5 = ((Unsafe.Coerce.unsafeCoerce) (()))
name52 = ("Relation.Unary.Dummy._\8838\8242_")
d52 v0 v1 v2 v3 v4 v5 = ((Unsafe.Coerce.unsafeCoerce) (()))
name58 = ("Relation.Unary.Dummy._\8839_")
d58 v0 v1 v2 v3 v4 v5
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((d46) ((Unsafe.Coerce.unsafeCoerce) (v0)))
              ((Unsafe.Coerce.unsafeCoerce) (v1)))
             ((Unsafe.Coerce.unsafeCoerce) (v3)))
            ((Unsafe.Coerce.unsafeCoerce) (v2)))
           ((Unsafe.Coerce.unsafeCoerce) (v5)))
          ((Unsafe.Coerce.unsafeCoerce) (v4))))
name63 = ("Relation.Unary.Dummy._\8839\8242_")
d63 v0 v1 v2 v3 v4 v5
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((d52) ((Unsafe.Coerce.unsafeCoerce) (v0)))
              ((Unsafe.Coerce.unsafeCoerce) (v1)))
             ((Unsafe.Coerce.unsafeCoerce) (v3)))
            ((Unsafe.Coerce.unsafeCoerce) (v2)))
           ((Unsafe.Coerce.unsafeCoerce) (v5)))
          ((Unsafe.Coerce.unsafeCoerce) (v4))))
name68 = ("Relation.Unary.Dummy.\8709-\8838")
d68 v0 v1 _ _ _ _
  = ((error) ("MAlonzo Runtime Error: Impossible Clause Body"))
name72 = ("Relation.Unary.Dummy.\8838-U")
d72 v0 v1 v2 v3 v4 v5
  = ((Unsafe.Coerce.unsafeCoerce) (MAlonzo.Data.Unit.C3))
name76 = ("Relation.Unary.Dummy._\8746_")
d76 v0 v1 v2 v3 v4 v5
  = ((Unsafe.Coerce.unsafeCoerce)
       (\ v6 ->
          (((((MAlonzo.Data.Sum.d6) ((Unsafe.Coerce.unsafeCoerce) (v2)))
               ((Unsafe.Coerce.unsafeCoerce) (v3)))
              ((Unsafe.Coerce.unsafeCoerce)
                 ((((((d11) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                       ((Unsafe.Coerce.unsafeCoerce) (v1)))
                      ((Unsafe.Coerce.unsafeCoerce) (v2)))
                     ((Unsafe.Coerce.unsafeCoerce) (v6)))
                    ((Unsafe.Coerce.unsafeCoerce) (v4)))))
             ((Unsafe.Coerce.unsafeCoerce)
                ((((((d11) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1)))
                     ((Unsafe.Coerce.unsafeCoerce) (v3)))
                    ((Unsafe.Coerce.unsafeCoerce) (v6)))
                   ((Unsafe.Coerce.unsafeCoerce) (v5)))))))
name82 = ("Relation.Unary.Dummy._\8745_")
d82 v0 v1 v2 v3 v4 v5
  = ((Unsafe.Coerce.unsafeCoerce)
       (\ v6 ->
          (((((MAlonzo.Data.Product.d38) ((Unsafe.Coerce.unsafeCoerce) (v2)))
               ((Unsafe.Coerce.unsafeCoerce) (v3)))
              ((Unsafe.Coerce.unsafeCoerce)
                 ((((((d11) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                       ((Unsafe.Coerce.unsafeCoerce) (v1)))
                      ((Unsafe.Coerce.unsafeCoerce) (v2)))
                     ((Unsafe.Coerce.unsafeCoerce) (v6)))
                    ((Unsafe.Coerce.unsafeCoerce) (v4)))))
             ((Unsafe.Coerce.unsafeCoerce)
                ((((((d11) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1)))
                     ((Unsafe.Coerce.unsafeCoerce) (v3)))
                    ((Unsafe.Coerce.unsafeCoerce) (v6)))
                   ((Unsafe.Coerce.unsafeCoerce) (v5)))))))
name92 = ("Relation.Unary._\10216\215\10217_")
d92 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((MAlonzo.Data.Product.d38) ((Unsafe.Coerce.unsafeCoerce) (v2)))
            ((Unsafe.Coerce.unsafeCoerce) (v3)))
           ((Unsafe.Coerce.unsafeCoerce)
              ((v6)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((((((MAlonzo.Data.Product.d67)
                           ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v4)))
                        ((Unsafe.Coerce.unsafeCoerce) (\ v9 -> (v5))))
                       ((Unsafe.Coerce.unsafeCoerce) (v8)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((v7)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((((((MAlonzo.Data.Product.d75)
                          ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v4)))
                       ((Unsafe.Coerce.unsafeCoerce) (\ v9 -> (v5))))
                      ((Unsafe.Coerce.unsafeCoerce) (v8))))))))
name101 = ("Relation.Unary._\10216\8846\10217_")
d101 v0 v1 v2 v3 v4 v5 v6 (MAlonzo.Data.Sum.C12 v7)
  = ((Unsafe.Coerce.unsafeCoerce)
       ((v5) ((Unsafe.Coerce.unsafeCoerce) (v7))))
d101 v0 v1 v2 v3 v4 v5 v6 v7
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((d_1_101) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                ((Unsafe.Coerce.unsafeCoerce) (v1)))
               ((Unsafe.Coerce.unsafeCoerce) (v2)))
              ((Unsafe.Coerce.unsafeCoerce) (v3)))
             ((Unsafe.Coerce.unsafeCoerce) (v4)))
            ((Unsafe.Coerce.unsafeCoerce) (v5)))
           ((Unsafe.Coerce.unsafeCoerce) (v6)))
          ((Unsafe.Coerce.unsafeCoerce) (v7))))
  where d_1_101 v0 v1 v2 v3 v4 v5 v6 (MAlonzo.Data.Sum.C14 v7)
          = ((Unsafe.Coerce.unsafeCoerce)
               ((v6) ((Unsafe.Coerce.unsafeCoerce) (v7))))
        d_1_101 v0 v1 v2 v3 v4 v5 v6 v7
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Relation.Unary._\10216\8846\10217_"))
name114 = ("Relation.Unary._\10216\8594\10217_")
d114 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((d46) ((Unsafe.Coerce.unsafeCoerce) (v0)))
              ((Unsafe.Coerce.unsafeCoerce) (v4)))
             ((Unsafe.Coerce.unsafeCoerce) (v2)))
            ((Unsafe.Coerce.unsafeCoerce) (v3)))
           ((Unsafe.Coerce.unsafeCoerce) (v6)))
          ((Unsafe.Coerce.unsafeCoerce)
             (((((((((MAlonzo.Data.Function.d20)
                       ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1)))
                     ((Unsafe.Coerce.unsafeCoerce)
                        ((MAlonzo.Level.C4) ((Unsafe.Coerce.unsafeCoerce) (v3)))))
                    ((Unsafe.Coerce.unsafeCoerce) (v4)))
                   ((Unsafe.Coerce.unsafeCoerce) (\ v9 -> (v5))))
                  ((Unsafe.Coerce.unsafeCoerce) (\ v9 -> (\ v10 -> (())))))
                 ((Unsafe.Coerce.unsafeCoerce) (\ v9 -> (v7))))
                ((Unsafe.Coerce.unsafeCoerce) (v8))))))