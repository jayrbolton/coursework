{-# LANGUAGE EmptyDataDecls
           , ExistentialQuantification
           , ScopedTypeVariables
           , NoMonomorphismRestriction
  #-}
module MAlonzo.Data.List.NonEmpty where
import qualified Unsafe.Coerce
import qualified MAlonzo.Category.Monad
import qualified MAlonzo.Category.Monad.Indexed
import qualified MAlonzo.Data.Function
import qualified MAlonzo.Data.List
import qualified MAlonzo.Data.Nat
import qualified MAlonzo.Data.Product
import qualified MAlonzo.Data.Vec
import qualified MAlonzo.Level
import qualified MAlonzo.Relation.Binary.Core
import qualified MAlonzo.Relation.Binary.PropositionalEquality
name4 = ("Data.List.NonEmpty.List\8314")
d4 a0 = (())
 
data T4 a0 a1 = C7 a0
              | C10 a0 a1
name7 = ("Data.List.NonEmpty.[_]")
name10 = ("Data.List.NonEmpty._\8759_")
name12 = ("Data.List.NonEmpty.length_-1")
d12 v0 (C7 v1)
  = ((Unsafe.Coerce.unsafeCoerce)
       ((MAlonzo.Data.Nat.mazIntegerToNat)
          ((Unsafe.Coerce.unsafeCoerce) ((0) :: Integer))))
d12 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       (((d_1_12) ((Unsafe.Coerce.unsafeCoerce) (v0)))
          ((Unsafe.Coerce.unsafeCoerce) (v1))))
  where d_1_12 v0 (C10 v1 v2)
          = ((Unsafe.Coerce.unsafeCoerce)
               (((MAlonzo.Data.Nat.d60)
                   ((Unsafe.Coerce.unsafeCoerce)
                      ((MAlonzo.Data.Nat.mazIntegerToNat)
                         ((Unsafe.Coerce.unsafeCoerce) ((1) :: Integer)))))
                  ((Unsafe.Coerce.unsafeCoerce)
                     (((d12) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2))))))
        d_1_12 v0 v1
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Data.List.NonEmpty.length_-1"))
name18 = ("Data.List.NonEmpty.fromVec")
d18 (MAlonzo.Data.Nat.C3) v0 (MAlonzo.Data.Vec.C11 v1 v2 v3)
  = ((Unsafe.Coerce.unsafeCoerce)
       ((C7) ((Unsafe.Coerce.unsafeCoerce) (v2))))
d18 v0 v1 v2
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((d_1_18) ((Unsafe.Coerce.unsafeCoerce) (v0)))
           ((Unsafe.Coerce.unsafeCoerce) (v1)))
          ((Unsafe.Coerce.unsafeCoerce) (v2))))
  where d_1_18 (MAlonzo.Data.Nat.C5 v0) v1
          (MAlonzo.Data.Vec.C11 v2 v3 v4)
          = ((Unsafe.Coerce.unsafeCoerce)
               (((C10) ((Unsafe.Coerce.unsafeCoerce) (v3)))
                  ((Unsafe.Coerce.unsafeCoerce)
                     ((((d18) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v4))))))
        d_1_18 v0 v1 v2
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Data.List.NonEmpty.fromVec"))
name25 = ("Data.List.NonEmpty.toVec")
d25 v0 (C7 v1)
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((MAlonzo.Data.Vec.d59) ((Unsafe.Coerce.unsafeCoerce) (0)))
           ((Unsafe.Coerce.unsafeCoerce) (v0)))
          ((Unsafe.Coerce.unsafeCoerce) (v1))))
d25 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       (((d_1_25) ((Unsafe.Coerce.unsafeCoerce) (v0)))
          ((Unsafe.Coerce.unsafeCoerce) (v1))))
  where d_1_25 v0 (C10 v1 v2)
          = ((Unsafe.Coerce.unsafeCoerce)
               ((((MAlonzo.Data.Vec.C11)
                    ((Unsafe.Coerce.unsafeCoerce)
                       ((MAlonzo.Data.Nat.C5)
                          ((Unsafe.Coerce.unsafeCoerce)
                             (((d12) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                                ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
                   ((Unsafe.Coerce.unsafeCoerce) (v1)))
                  ((Unsafe.Coerce.unsafeCoerce)
                     (((d25) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2))))))
        d_1_25 v0 v1
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Data.List.NonEmpty.toVec"))
name33 = ("Data.List.NonEmpty.lift")
d33 v0 v1 v2 v3
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((d18)
            ((Unsafe.Coerce.unsafeCoerce)
               ((((((MAlonzo.Data.Product.d67) ((Unsafe.Coerce.unsafeCoerce) (0)))
                     ((Unsafe.Coerce.unsafeCoerce) (0)))
                    ((Unsafe.Coerce.unsafeCoerce) (MAlonzo.Data.Nat.d2)))
                   ((Unsafe.Coerce.unsafeCoerce)
                      (\ v4 ->
                         ((((MAlonzo.Data.Vec.d4) ((Unsafe.Coerce.unsafeCoerce) (0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce)
                               ((MAlonzo.Data.Nat.C5) ((Unsafe.Coerce.unsafeCoerce) (v4))))))))
                  ((Unsafe.Coerce.unsafeCoerce)
                     (((v2)
                         ((Unsafe.Coerce.unsafeCoerce)
                            (((d12) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                               ((Unsafe.Coerce.unsafeCoerce) (v3)))))
                        ((Unsafe.Coerce.unsafeCoerce)
                           (((d25) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                              ((Unsafe.Coerce.unsafeCoerce) (v3)))))))))
           ((Unsafe.Coerce.unsafeCoerce) (v1)))
          ((Unsafe.Coerce.unsafeCoerce)
             ((((((MAlonzo.Data.Product.d75) ((Unsafe.Coerce.unsafeCoerce) (0)))
                   ((Unsafe.Coerce.unsafeCoerce) (0)))
                  ((Unsafe.Coerce.unsafeCoerce) (MAlonzo.Data.Nat.d2)))
                 ((Unsafe.Coerce.unsafeCoerce)
                    (\ v4 ->
                       ((((MAlonzo.Data.Vec.d4) ((Unsafe.Coerce.unsafeCoerce) (0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce)
                             ((MAlonzo.Data.Nat.C5) ((Unsafe.Coerce.unsafeCoerce) (v4))))))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (((v2)
                       ((Unsafe.Coerce.unsafeCoerce)
                          (((d12) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v3)))))
                      ((Unsafe.Coerce.unsafeCoerce)
                         (((d25) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v3))))))))))
name37 = ("Data.List.NonEmpty.fromList")
d37 v0 v1 v2
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((d18)
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
           ((Unsafe.Coerce.unsafeCoerce) (v0)))
          ((Unsafe.Coerce.unsafeCoerce)
             ((((MAlonzo.Data.Vec.d245) ((Unsafe.Coerce.unsafeCoerce) (0)))
                 ((Unsafe.Coerce.unsafeCoerce) (v0)))
                ((Unsafe.Coerce.unsafeCoerce)
                   (((MAlonzo.Data.List.C10) ((Unsafe.Coerce.unsafeCoerce) (v1)))
                      ((Unsafe.Coerce.unsafeCoerce) (v2))))))))
name41 = ("Data.List.NonEmpty.toList")
d41 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Data.Function.d20)
                 ((Unsafe.Coerce.unsafeCoerce) (0)))
                ((Unsafe.Coerce.unsafeCoerce) (0)))
               ((Unsafe.Coerce.unsafeCoerce) (0)))
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d4) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   ((((MAlonzo.Data.Vec.d4) ((Unsafe.Coerce.unsafeCoerce) (0)))
                       ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce)
                         ((MAlonzo.Data.Nat.C5)
                            ((Unsafe.Coerce.unsafeCoerce)
                               (((d12) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                                  ((Unsafe.Coerce.unsafeCoerce) (v1))))))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     (((MAlonzo.Data.List.d4) ((Unsafe.Coerce.unsafeCoerce) (0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v0)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 ((((MAlonzo.Data.Vec.d239) ((Unsafe.Coerce.unsafeCoerce) (0)))
                     ((Unsafe.Coerce.unsafeCoerce)
                        ((MAlonzo.Data.Nat.C5)
                           ((Unsafe.Coerce.unsafeCoerce)
                              (((d12) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                                 ((Unsafe.Coerce.unsafeCoerce) (v1)))))))
                    ((Unsafe.Coerce.unsafeCoerce) (v0))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d25) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name43 = ("Data.List.NonEmpty.head")
d43 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Data.Function.d20)
                 ((Unsafe.Coerce.unsafeCoerce) (0)))
                ((Unsafe.Coerce.unsafeCoerce) (0)))
               ((Unsafe.Coerce.unsafeCoerce) (0)))
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d4) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   ((((MAlonzo.Data.Vec.d4) ((Unsafe.Coerce.unsafeCoerce) (0)))
                       ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce)
                         ((MAlonzo.Data.Nat.C5)
                            ((Unsafe.Coerce.unsafeCoerce)
                               (((d12) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                                  ((Unsafe.Coerce.unsafeCoerce) (v1))))))))))
            ((Unsafe.Coerce.unsafeCoerce) (\ v1 -> (\ v2 -> (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 ((((MAlonzo.Data.Vec.d48) ((Unsafe.Coerce.unsafeCoerce) (0)))
                     ((Unsafe.Coerce.unsafeCoerce)
                        (((d12) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))))
                    ((Unsafe.Coerce.unsafeCoerce) (v0))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d25) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name45 = ("Data.List.NonEmpty.tail")
d45 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Data.Function.d20)
                 ((Unsafe.Coerce.unsafeCoerce) (0)))
                ((Unsafe.Coerce.unsafeCoerce) (0)))
               ((Unsafe.Coerce.unsafeCoerce) (0)))
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d4) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   ((((MAlonzo.Data.Vec.d4) ((Unsafe.Coerce.unsafeCoerce) (0)))
                       ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce)
                         (((d12) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1))))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     (((MAlonzo.Data.List.d4) ((Unsafe.Coerce.unsafeCoerce) (0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v0)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 ((((MAlonzo.Data.Vec.d239) ((Unsafe.Coerce.unsafeCoerce) (0)))
                     ((Unsafe.Coerce.unsafeCoerce)
                        (((d12) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))))
                    ((Unsafe.Coerce.unsafeCoerce) (v0))))))
          ((Unsafe.Coerce.unsafeCoerce)
             (((((((((MAlonzo.Data.Function.d20)
                       ((Unsafe.Coerce.unsafeCoerce) (0)))
                      ((Unsafe.Coerce.unsafeCoerce) (0)))
                     ((Unsafe.Coerce.unsafeCoerce) (0)))
                    ((Unsafe.Coerce.unsafeCoerce)
                       ((d4) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                   ((Unsafe.Coerce.unsafeCoerce)
                      (\ v1 ->
                         ((((MAlonzo.Data.Vec.d4) ((Unsafe.Coerce.unsafeCoerce) (0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce)
                               ((MAlonzo.Data.Nat.C5)
                                  ((Unsafe.Coerce.unsafeCoerce)
                                     (((d12) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                                        ((Unsafe.Coerce.unsafeCoerce) (v1))))))))))
                  ((Unsafe.Coerce.unsafeCoerce)
                     (\ v1 ->
                        (\ v2 ->
                           ((((MAlonzo.Data.Vec.d4) ((Unsafe.Coerce.unsafeCoerce) (0)))
                               ((Unsafe.Coerce.unsafeCoerce) (v0)))
                              ((Unsafe.Coerce.unsafeCoerce)
                                 (((d12) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                                    ((Unsafe.Coerce.unsafeCoerce) (v1)))))))))
                 ((Unsafe.Coerce.unsafeCoerce)
                    (\ v1 ->
                       ((((MAlonzo.Data.Vec.d54) ((Unsafe.Coerce.unsafeCoerce) (0)))
                           ((Unsafe.Coerce.unsafeCoerce)
                              (((d12) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                                 ((Unsafe.Coerce.unsafeCoerce) (v1)))))
                          ((Unsafe.Coerce.unsafeCoerce) (v0))))))
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d25) ((Unsafe.Coerce.unsafeCoerce) (v0))))))))
name48 = ("Data.List.NonEmpty.map")
d48 v0 v1 v2
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((d33) ((Unsafe.Coerce.unsafeCoerce) (v0)))
           ((Unsafe.Coerce.unsafeCoerce) (v1)))
          ((Unsafe.Coerce.unsafeCoerce)
             (\ v3 ->
                (\ v4 ->
                   (((((((MAlonzo.Data.Product.d61)
                           ((Unsafe.Coerce.unsafeCoerce) (0)))
                          ((Unsafe.Coerce.unsafeCoerce) (0)))
                         ((Unsafe.Coerce.unsafeCoerce) (MAlonzo.Data.Nat.d2)))
                        ((Unsafe.Coerce.unsafeCoerce)
                           (\ v5 ->
                              ((((MAlonzo.Data.Vec.d4) ((Unsafe.Coerce.unsafeCoerce) (0)))
                                  ((Unsafe.Coerce.unsafeCoerce) (v1)))
                                 ((Unsafe.Coerce.unsafeCoerce)
                                    ((MAlonzo.Data.Nat.C5) ((Unsafe.Coerce.unsafeCoerce) (v5))))))))
                       ((Unsafe.Coerce.unsafeCoerce) (v3)))
                      ((Unsafe.Coerce.unsafeCoerce)
                         ((((((((MAlonzo.Data.Vec.d75) ((Unsafe.Coerce.unsafeCoerce) (0)))
                                 ((Unsafe.Coerce.unsafeCoerce) (0)))
                                ((Unsafe.Coerce.unsafeCoerce)
                                   ((MAlonzo.Data.Nat.C5) ((Unsafe.Coerce.unsafeCoerce) (v3)))))
                               ((Unsafe.Coerce.unsafeCoerce) (v0)))
                              ((Unsafe.Coerce.unsafeCoerce) (v1)))
                             ((Unsafe.Coerce.unsafeCoerce) (v2)))
                            ((Unsafe.Coerce.unsafeCoerce) (v4))))))))))
name53 = ("Data.List.NonEmpty.foldr")
d53 v0 v1 v2 v3 (C7 v4)
  = ((Unsafe.Coerce.unsafeCoerce)
       ((v3) ((Unsafe.Coerce.unsafeCoerce) (v4))))
d53 v0 v1 v2 v3 v4
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((d_1_53) ((Unsafe.Coerce.unsafeCoerce) (v0)))
             ((Unsafe.Coerce.unsafeCoerce) (v1)))
            ((Unsafe.Coerce.unsafeCoerce) (v2)))
           ((Unsafe.Coerce.unsafeCoerce) (v3)))
          ((Unsafe.Coerce.unsafeCoerce) (v4))))
  where d_1_53 v0 v1 v2 v3 (C10 v4 v5)
          = ((Unsafe.Coerce.unsafeCoerce)
               (((v2) ((Unsafe.Coerce.unsafeCoerce) (v4)))
                  ((Unsafe.Coerce.unsafeCoerce)
                     ((((((d53) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))
                         ((Unsafe.Coerce.unsafeCoerce) (v3)))
                        ((Unsafe.Coerce.unsafeCoerce) (v5))))))
        d_1_53 v0 v1 v2 v3 v4
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Data.List.NonEmpty.foldr"))
name63 = ("Data.List.NonEmpty.foldl")
d63 v0 v1 v2 v3 (C7 v4)
  = ((Unsafe.Coerce.unsafeCoerce)
       ((v3) ((Unsafe.Coerce.unsafeCoerce) (v4))))
d63 v0 v1 v2 v3 v4
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((d_1_63) ((Unsafe.Coerce.unsafeCoerce) (v0)))
             ((Unsafe.Coerce.unsafeCoerce) (v1)))
            ((Unsafe.Coerce.unsafeCoerce) (v2)))
           ((Unsafe.Coerce.unsafeCoerce) (v3)))
          ((Unsafe.Coerce.unsafeCoerce) (v4))))
  where d_1_63 v0 v1 v2 v3 (C10 v4 v5)
          = ((Unsafe.Coerce.unsafeCoerce)
               ((((((d63) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                     ((Unsafe.Coerce.unsafeCoerce) (v1)))
                    ((Unsafe.Coerce.unsafeCoerce) (v2)))
                   ((Unsafe.Coerce.unsafeCoerce)
                      ((v2)
                         ((Unsafe.Coerce.unsafeCoerce)
                            ((v3) ((Unsafe.Coerce.unsafeCoerce) (v4)))))))
                  ((Unsafe.Coerce.unsafeCoerce) (v5))))
        d_1_63 v0 v1 v2 v3 v4
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Data.List.NonEmpty.foldl"))
name72 = ("Data.List.NonEmpty._\8314++\8314_")
d72 v0 v1 v2
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((d53) ((Unsafe.Coerce.unsafeCoerce) (v0)))
             ((Unsafe.Coerce.unsafeCoerce)
                ((d4) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
            ((Unsafe.Coerce.unsafeCoerce) (C10)))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v3 ->
                 (((C10) ((Unsafe.Coerce.unsafeCoerce) (v3)))
                    ((Unsafe.Coerce.unsafeCoerce) (v2))))))
          ((Unsafe.Coerce.unsafeCoerce) (v1))))
name77 = ("Data.List.NonEmpty._\8314++_")
d77 v0 v1 v2
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((d53) ((Unsafe.Coerce.unsafeCoerce) (v0)))
             ((Unsafe.Coerce.unsafeCoerce)
                ((d4) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
            ((Unsafe.Coerce.unsafeCoerce) (C10)))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v3 ->
                 ((((d37) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                     ((Unsafe.Coerce.unsafeCoerce) (v3)))
                    ((Unsafe.Coerce.unsafeCoerce) (v2))))))
          ((Unsafe.Coerce.unsafeCoerce) (v1))))
name82 = ("Data.List.NonEmpty._++\8314_")
d82 v0 v1 v2
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Data.List.d93) ((Unsafe.Coerce.unsafeCoerce) (0)))
               ((Unsafe.Coerce.unsafeCoerce) (0)))
              ((Unsafe.Coerce.unsafeCoerce) (v0)))
             ((Unsafe.Coerce.unsafeCoerce)
                ((d4) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
            ((Unsafe.Coerce.unsafeCoerce) (C10)))
           ((Unsafe.Coerce.unsafeCoerce) (v2)))
          ((Unsafe.Coerce.unsafeCoerce) (v1))))
name86 = ("Data.List.NonEmpty.concat")
d86 v0 (C7 v1) = ((Unsafe.Coerce.unsafeCoerce) (v1))
d86 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       (((d_1_86) ((Unsafe.Coerce.unsafeCoerce) (v0)))
          ((Unsafe.Coerce.unsafeCoerce) (v1))))
  where d_1_86 v0 (C10 v1 v2)
          = ((Unsafe.Coerce.unsafeCoerce)
               ((((d72) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                   ((Unsafe.Coerce.unsafeCoerce) (v1)))
                  ((Unsafe.Coerce.unsafeCoerce)
                     (((d86) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2))))))
        d_1_86 v0 v1
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Data.List.NonEmpty.concat"))
name90 = ("Data.List.NonEmpty.monad")
d90
  = ((Unsafe.Coerce.unsafeCoerce)
       (((MAlonzo.Category.Monad.Indexed.C5)
           ((Unsafe.Coerce.unsafeCoerce) (\ v0 -> (\ v1 -> (C7)))))
          ((Unsafe.Coerce.unsafeCoerce)
             (\ v0 ->
                (\ v1 ->
                   (\ v2 ->
                      (\ v3 ->
                         (\ v4 ->
                            (\ v5 ->
                               (\ v6 ->
                                  (((d86) ((Unsafe.Coerce.unsafeCoerce) (v4)))
                                     ((Unsafe.Coerce.unsafeCoerce)
                                        (((((d48) ((Unsafe.Coerce.unsafeCoerce) (v3)))
                                             ((Unsafe.Coerce.unsafeCoerce)
                                                ((d4) ((Unsafe.Coerce.unsafeCoerce) (v4)))))
                                            ((Unsafe.Coerce.unsafeCoerce) (v6)))
                                           ((Unsafe.Coerce.unsafeCoerce) (v5)))))))))))))))
name94 = ("Data.List.NonEmpty.reverse")
d94 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((d33) ((Unsafe.Coerce.unsafeCoerce) (v0)))
           ((Unsafe.Coerce.unsafeCoerce) (v0)))
          ((Unsafe.Coerce.unsafeCoerce)
             (\ v1 ->
                (((((((((MAlonzo.Data.Function.d30)
                          ((Unsafe.Coerce.unsafeCoerce) (0)))
                         ((Unsafe.Coerce.unsafeCoerce) (0)))
                        ((Unsafe.Coerce.unsafeCoerce)
                           (((MAlonzo.Level.d5) ((Unsafe.Coerce.unsafeCoerce) (0)))
                              ((Unsafe.Coerce.unsafeCoerce) (0)))))
                       ((Unsafe.Coerce.unsafeCoerce)
                          ((((MAlonzo.Data.Vec.d4)
                               ((Unsafe.Coerce.unsafeCoerce)
                                  (((MAlonzo.Level.d5) ((Unsafe.Coerce.unsafeCoerce) (0)))
                                     ((Unsafe.Coerce.unsafeCoerce) (0)))))
                              ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce)
                                ((MAlonzo.Data.Nat.C5) ((Unsafe.Coerce.unsafeCoerce) (v1)))))))
                      ((Unsafe.Coerce.unsafeCoerce)
                         ((((MAlonzo.Data.Vec.d4)
                              ((Unsafe.Coerce.unsafeCoerce)
                                 (((MAlonzo.Level.d5) ((Unsafe.Coerce.unsafeCoerce) (0)))
                                    ((Unsafe.Coerce.unsafeCoerce) (0)))))
                             ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce)
                               ((MAlonzo.Data.Nat.C5) ((Unsafe.Coerce.unsafeCoerce) (v1)))))))
                     ((Unsafe.Coerce.unsafeCoerce)
                        (((((MAlonzo.Data.Product.d6) ((Unsafe.Coerce.unsafeCoerce) (0)))
                             ((Unsafe.Coerce.unsafeCoerce) (0)))
                            ((Unsafe.Coerce.unsafeCoerce) (MAlonzo.Data.Nat.d2)))
                           ((Unsafe.Coerce.unsafeCoerce)
                              (\ v2 ->
                                 ((((MAlonzo.Data.Vec.d4) ((Unsafe.Coerce.unsafeCoerce) (0)))
                                     ((Unsafe.Coerce.unsafeCoerce) (v0)))
                                    ((Unsafe.Coerce.unsafeCoerce)
                                       ((MAlonzo.Data.Nat.C5)
                                          ((Unsafe.Coerce.unsafeCoerce) (v2))))))))))
                    ((Unsafe.Coerce.unsafeCoerce)
                       ((((((MAlonzo.Data.Product.d61) ((Unsafe.Coerce.unsafeCoerce) (0)))
                             ((Unsafe.Coerce.unsafeCoerce) (0)))
                            ((Unsafe.Coerce.unsafeCoerce) (MAlonzo.Data.Nat.d2)))
                           ((Unsafe.Coerce.unsafeCoerce)
                              (\ v2 ->
                                 ((((MAlonzo.Data.Vec.d4) ((Unsafe.Coerce.unsafeCoerce) (0)))
                                     ((Unsafe.Coerce.unsafeCoerce) (v0)))
                                    ((Unsafe.Coerce.unsafeCoerce)
                                       ((MAlonzo.Data.Nat.C5)
                                          ((Unsafe.Coerce.unsafeCoerce) (v2))))))))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))))
                   ((Unsafe.Coerce.unsafeCoerce)
                      ((((MAlonzo.Data.Vec.d230)
                           ((Unsafe.Coerce.unsafeCoerce)
                              (((MAlonzo.Level.d5) ((Unsafe.Coerce.unsafeCoerce) (0)))
                                 ((Unsafe.Coerce.unsafeCoerce) (0)))))
                          ((Unsafe.Coerce.unsafeCoerce)
                             ((MAlonzo.Data.Nat.C5) ((Unsafe.Coerce.unsafeCoerce) (v1)))))
                         ((Unsafe.Coerce.unsafeCoerce) (v0)))))))))
name96 = ("Data.List.NonEmpty._\8759\691_")
d96 v0 v1 v2
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((d53) ((Unsafe.Coerce.unsafeCoerce) (v0)))
             ((Unsafe.Coerce.unsafeCoerce)
                ((d4) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
            ((Unsafe.Coerce.unsafeCoerce) (C10)))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v3 ->
                 (((C10) ((Unsafe.Coerce.unsafeCoerce) (v3)))
                    ((Unsafe.Coerce.unsafeCoerce)
                       ((C7) ((Unsafe.Coerce.unsafeCoerce) (v2))))))))
          ((Unsafe.Coerce.unsafeCoerce) (v1))))
name101 = ("Data.List.NonEmpty.SnocView")
d101 a0 a1 = (())
 
data T101 a0 a1 = C104 a0
                | C107 a0 a1
name104 = ("Data.List.NonEmpty.[_]")
name107 = ("Data.List.NonEmpty._\8759\691\8242_")
name110 = ("Data.List.NonEmpty.snocView")
d110 v0 (C7 v1)
  = ((Unsafe.Coerce.unsafeCoerce)
       ((C104) ((Unsafe.Coerce.unsafeCoerce) (v1))))
d110 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       (((d_1_110) ((Unsafe.Coerce.unsafeCoerce) (v0)))
          ((Unsafe.Coerce.unsafeCoerce) (v1))))
  where d_1_110 v0 (C10 v1 v2)
          = ((Unsafe.Coerce.unsafeCoerce)
               (((((d115) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v2)))
                   ((Unsafe.Coerce.unsafeCoerce)
                      (((d110) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))
                  ((Unsafe.Coerce.unsafeCoerce) (v1))))
        d_1_110 v0 v1
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Data.List.NonEmpty.snocView"))
name115 = ("Data.List.NonEmpty.with-114")
d115 v0 v1 (C104 v2) v3
  = ((Unsafe.Coerce.unsafeCoerce)
       (((C107)
           ((Unsafe.Coerce.unsafeCoerce)
              ((C7) ((Unsafe.Coerce.unsafeCoerce) (v3)))))
          ((Unsafe.Coerce.unsafeCoerce) (v2))))
d115 v0 v1 v2 v3
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((d_1_115) ((Unsafe.Coerce.unsafeCoerce) (v0)))
            ((Unsafe.Coerce.unsafeCoerce) (v1)))
           ((Unsafe.Coerce.unsafeCoerce) (v2)))
          ((Unsafe.Coerce.unsafeCoerce) (v3))))
  where d_1_115 v0 v1 (C107 v2 v3) v4
          = ((Unsafe.Coerce.unsafeCoerce)
               (((C107)
                   ((Unsafe.Coerce.unsafeCoerce)
                      (((C10) ((Unsafe.Coerce.unsafeCoerce) (v4)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))
                  ((Unsafe.Coerce.unsafeCoerce) (v3))))
        d_1_115 v0 v1 v2 v3
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Data.List.NonEmpty.with-114"))
name122 = ("Data.List.NonEmpty.last")
d122 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((d125) ((Unsafe.Coerce.unsafeCoerce) (v0)))
           ((Unsafe.Coerce.unsafeCoerce) (v1)))
          ((Unsafe.Coerce.unsafeCoerce)
             (((d110) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                ((Unsafe.Coerce.unsafeCoerce) (v1))))))
name125 = ("Data.List.NonEmpty.with-124")
d125 v0 v1 (C104 v2) = ((Unsafe.Coerce.unsafeCoerce) (v2))
d125 v0 v1 v2
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((d_1_125) ((Unsafe.Coerce.unsafeCoerce) (v0)))
           ((Unsafe.Coerce.unsafeCoerce) (v1)))
          ((Unsafe.Coerce.unsafeCoerce) (v2))))
  where d_1_125 v0 v1 (C107 v2 v3)
          = ((Unsafe.Coerce.unsafeCoerce) (v3))
        d_1_125 v0 v1 v2
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Data.List.NonEmpty.with-124"))
name138 = ("Data.List.NonEmpty.Examples.hd")
d138 v0 v1 v2 v3 v4 v5 v6 v7
  = ((Unsafe.Coerce.unsafeCoerce)
       (MAlonzo.Relation.Binary.Core.C240))
name139 = ("Data.List.NonEmpty.Examples.tl")
d139 v0 v1 v2 v3 v4 v5 v6 v7
  = ((Unsafe.Coerce.unsafeCoerce)
       (MAlonzo.Relation.Binary.Core.C240))
name140 = ("Data.List.NonEmpty.Examples.mp")
d140 v0 v1 v2 v3 v4 v5 v6 v7
  = ((Unsafe.Coerce.unsafeCoerce)
       (MAlonzo.Relation.Binary.Core.C240))
name141 = ("Data.List.NonEmpty.Examples.right")
d141 v0 v1 v2 v3 v4 v5 v6 v7
  = ((Unsafe.Coerce.unsafeCoerce)
       (MAlonzo.Relation.Binary.Core.C240))
name142 = ("Data.List.NonEmpty.Examples.left")
d142 v0 v1 v2 v3 v4 v5 v6 v7
  = ((Unsafe.Coerce.unsafeCoerce)
       (MAlonzo.Relation.Binary.Core.C240))
name143 = ("Data.List.NonEmpty.Examples.\8314app\8314")
d143 v0 v1 v2 v3 v4 v5 v6 v7
  = ((Unsafe.Coerce.unsafeCoerce)
       (MAlonzo.Relation.Binary.Core.C240))
name144 = ("Data.List.NonEmpty.Examples.\8314app")
d144 v0 v1 v2 v3 v4 v5 v6 v7
  = ((Unsafe.Coerce.unsafeCoerce)
       (MAlonzo.Relation.Binary.Core.C240))
name145 = ("Data.List.NonEmpty.Examples.app\8314")
d145 v0 v1 v2 v3 v4 v5 v6 v7
  = ((Unsafe.Coerce.unsafeCoerce)
       (MAlonzo.Relation.Binary.Core.C240))
name146 = ("Data.List.NonEmpty.Examples.conc")
d146 v0 v1 v2 v3 v4 v5 v6 v7
  = ((Unsafe.Coerce.unsafeCoerce)
       (MAlonzo.Relation.Binary.Core.C240))
name147 = ("Data.List.NonEmpty.Examples.rev")
d147 v0 v1 v2 v3 v4 v5 v6 v7
  = ((Unsafe.Coerce.unsafeCoerce)
       (MAlonzo.Relation.Binary.Core.C240))
name148 = ("Data.List.NonEmpty.Examples.snoc")
d148 v0 v1 v2 v3 v4 v5 v6 v7
  = ((Unsafe.Coerce.unsafeCoerce)
       (MAlonzo.Relation.Binary.Core.C240))