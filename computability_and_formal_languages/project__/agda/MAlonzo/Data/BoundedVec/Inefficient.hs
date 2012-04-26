{-# LANGUAGE EmptyDataDecls
           , ExistentialQuantification
           , ScopedTypeVariables
           , NoMonomorphismRestriction
  #-}
module MAlonzo.Data.BoundedVec.Inefficient where
import qualified Unsafe.Coerce
import qualified MAlonzo.Data.List
import qualified MAlonzo.Data.Nat
name4 = ("Data.BoundedVec.Inefficient.BoundedVec")
d4 a0 a1 = (())
 
data T4 a0 a1 a2 = C7 a0
                 | C11 a0 a1 a2
name7 = ("Data.BoundedVec.Inefficient.[]")
name11 = ("Data.BoundedVec.Inefficient._\8759_")
name14 = ("Data.BoundedVec.Inefficient.\8593")
d14 v0 v1 (C7 v2)
  = ((Unsafe.Coerce.unsafeCoerce)
       ((C7)
          ((Unsafe.Coerce.unsafeCoerce)
             ((MAlonzo.Data.Nat.C5) ((Unsafe.Coerce.unsafeCoerce) (v1))))))
d14 v0 v1 v2
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((d_1_14) ((Unsafe.Coerce.unsafeCoerce) (v0)))
           ((Unsafe.Coerce.unsafeCoerce) (v1)))
          ((Unsafe.Coerce.unsafeCoerce) (v2))))
  where d_1_14 v0 v1 (C11 v2 v3 v4)
          = ((Unsafe.Coerce.unsafeCoerce)
               ((((C11)
                    ((Unsafe.Coerce.unsafeCoerce)
                       ((MAlonzo.Data.Nat.C5) ((Unsafe.Coerce.unsafeCoerce) (v2)))))
                   ((Unsafe.Coerce.unsafeCoerce) (v3)))
                  ((Unsafe.Coerce.unsafeCoerce)
                     ((((d14) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))
                        ((Unsafe.Coerce.unsafeCoerce) (v4))))))
        d_1_14 v0 v1 v2
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Data.BoundedVec.Inefficient.\8593"))
name19 = ("Data.BoundedVec.Inefficient.fromList")
d19 v0 (MAlonzo.Data.List.C7)
  = ((Unsafe.Coerce.unsafeCoerce)
       ((C7)
          ((Unsafe.Coerce.unsafeCoerce)
             ((MAlonzo.Data.Nat.mazIntegerToNat)
                ((Unsafe.Coerce.unsafeCoerce) ((0) :: Integer))))))
d19 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       (((d_1_19) ((Unsafe.Coerce.unsafeCoerce) (v0)))
          ((Unsafe.Coerce.unsafeCoerce) (v1))))
  where d_1_19 v0 (MAlonzo.Data.List.C10 v1 v2)
          = ((Unsafe.Coerce.unsafeCoerce)
               ((((C11)
                    ((Unsafe.Coerce.unsafeCoerce)
                       ((((((((MAlonzo.Data.List.d93) ((Unsafe.Coerce.unsafeCoerce) (0)))
                               ((Unsafe.Coerce.unsafeCoerce) (0)))
                              ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (MAlonzo.Data.Nat.d2)))
                            ((Unsafe.Coerce.unsafeCoerce) (\ v3 -> (MAlonzo.Data.Nat.C5))))
                           ((Unsafe.Coerce.unsafeCoerce)
                              ((MAlonzo.Data.Nat.mazIntegerToNat)
                                 ((Unsafe.Coerce.unsafeCoerce) ((0) :: Integer)))))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))
                   ((Unsafe.Coerce.unsafeCoerce) (v1)))
                  ((Unsafe.Coerce.unsafeCoerce)
                     (((d19) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2))))))
        d_1_19 v0 v1
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Data.BoundedVec.Inefficient.fromList"))
name24 = ("Data.BoundedVec.Inefficient.toList")
d24 v0 v1 (C7 v2)
  = ((Unsafe.Coerce.unsafeCoerce) (MAlonzo.Data.List.C7))
d24 v0 v1 v2
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((d_1_24) ((Unsafe.Coerce.unsafeCoerce) (v0)))
           ((Unsafe.Coerce.unsafeCoerce) (v1)))
          ((Unsafe.Coerce.unsafeCoerce) (v2))))
  where d_1_24 v0 v1 (C11 v2 v3 v4)
          = ((Unsafe.Coerce.unsafeCoerce)
               (((MAlonzo.Data.List.C10) ((Unsafe.Coerce.unsafeCoerce) (v3)))
                  ((Unsafe.Coerce.unsafeCoerce)
                     ((((d24) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))
                        ((Unsafe.Coerce.unsafeCoerce) (v4))))))
        d_1_24 v0 v1 v2
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Data.BoundedVec.Inefficient.toList"))