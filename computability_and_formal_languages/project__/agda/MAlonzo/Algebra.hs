{-# LANGUAGE EmptyDataDecls
           , ExistentialQuantification
           , ScopedTypeVariables
           , NoMonomorphismRestriction
  #-}
module MAlonzo.Algebra where
import qualified Unsafe.Coerce
import qualified MAlonzo.Algebra.FunctionProperties
import qualified MAlonzo.Algebra.Structures
import qualified MAlonzo.Data.Function
import qualified MAlonzo.Level
import qualified MAlonzo.Relation.Binary
name1 = ("Algebra.Semigroup")
d1 = (())
 
data T1 a0 a1 a2 a3 = C1 a0 a1 a2 a3
name6 = ("Algebra.Semigroup.Carrier")
d6 (C1 v0 _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d6 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Semigroup.Carrier"))
name7 = ("Algebra.Semigroup._\8776_")
d7 (C1 _ v0 _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d7 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Semigroup._\8776_"))
name8 = ("Algebra.Semigroup._\8729_")
d8 (C1 _ _ v0 _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d8 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Semigroup._\8729_"))
name9 = ("Algebra.Semigroup.isSemigroup")
d9 (C1 _ _ _ v0) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d9 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Semigroup.isSemigroup"))
name11 = ("Algebra.Semigroup._.assoc")
d11 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((MAlonzo.Algebra.Structures.d55)
             ((Unsafe.Coerce.unsafeCoerce)
                ((d6) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d7) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d8) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d9) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name12 = ("Algebra.Semigroup._.isEquivalence")
d12 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((MAlonzo.Algebra.Structures.d54)
             ((Unsafe.Coerce.unsafeCoerce)
                ((d6) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d7) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d8) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d9) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name13 = ("Algebra.Semigroup._._.refl")
d13 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((MAlonzo.Algebra.Structures.d58)
             ((Unsafe.Coerce.unsafeCoerce)
                ((d6) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d7) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d8) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d9) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name14 = ("Algebra.Semigroup._._.reflexive")
d14 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((MAlonzo.Algebra.Structures.d59)
             ((Unsafe.Coerce.unsafeCoerce)
                ((d6) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d7) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d8) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d9) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name15 = ("Algebra.Semigroup._._.sym")
d15 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((MAlonzo.Algebra.Structures.d60)
             ((Unsafe.Coerce.unsafeCoerce)
                ((d6) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d7) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d8) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d9) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name16 = ("Algebra.Semigroup._._.trans")
d16 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((MAlonzo.Algebra.Structures.d61)
             ((Unsafe.Coerce.unsafeCoerce)
                ((d6) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d7) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d8) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d9) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name17 = ("Algebra.Semigroup._.\8729-cong")
d17 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((MAlonzo.Algebra.Structures.d56)
             ((Unsafe.Coerce.unsafeCoerce)
                ((d6) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d7) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d8) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d9) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name18 = ("Algebra.Semigroup.setoid")
d18 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((MAlonzo.Relation.Binary.C56)
            ((Unsafe.Coerce.unsafeCoerce)
               ((d6) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d7) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d12) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name19 = ("Algebra.RawMonoid")
d19 = (())
 
data T19 a0 a1 a2 a3 = C19 a0 a1 a2 a3
name24 = ("Algebra.RawMonoid.Carrier")
d24 (C19 v0 _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d24 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.RawMonoid.Carrier"))
name25 = ("Algebra.RawMonoid._\8776_")
d25 (C19 _ v0 _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d25 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.RawMonoid._\8776_"))
name26 = ("Algebra.RawMonoid._\8729_")
d26 (C19 _ _ v0 _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d26 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.RawMonoid._\8729_"))
name27 = ("Algebra.RawMonoid.\949")
d27 (C19 _ _ _ v0) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d27 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.RawMonoid.\949"))
name28 = ("Algebra.Monoid")
d28 = (())
 
data T28 a0 a1 a2 a3 a4 = C28 a0 a1 a2 a3 a4
name34 = ("Algebra.Monoid.Carrier")
d34 (C28 v0 _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d34 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Monoid.Carrier"))
name35 = ("Algebra.Monoid._\8776_")
d35 (C28 _ v0 _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d35 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Monoid._\8776_"))
name36 = ("Algebra.Monoid._\8729_")
d36 (C28 _ _ v0 _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d36 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Monoid._\8729_"))
name37 = ("Algebra.Monoid.\949")
d37 (C28 _ _ _ v0 _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d37 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Monoid.\949"))
name38 = ("Algebra.Monoid.isMonoid")
d38 (C28 _ _ _ _ v0) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d38 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Monoid.isMonoid"))
name40 = ("Algebra.Monoid._._.assoc")
d40 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d118)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d34) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d35) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d36) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d37) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d38) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name41 = ("Algebra.Monoid._.identity")
d41 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d116)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d34) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d35) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d36) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d37) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d38) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name42 = ("Algebra.Monoid._._.isEquivalence")
d42 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d119)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d34) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d35) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d36) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d37) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d38) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name43 = ("Algebra.Monoid._.isSemigroup")
d43 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d115)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d34) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d35) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d36) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d37) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d38) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name44 = ("Algebra.Monoid._._._.refl")
d44 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d120)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d34) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d35) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d36) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d37) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d38) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name45 = ("Algebra.Monoid._._._.reflexive")
d45 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d121)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d34) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d35) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d36) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d37) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d38) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name46 = ("Algebra.Monoid._._._.sym")
d46 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d122)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d34) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d35) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d36) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d37) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d38) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name47 = ("Algebra.Monoid._._._.trans")
d47 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d123)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d34) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d35) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d36) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d37) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d38) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name48 = ("Algebra.Monoid._._.\8729-cong")
d48 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d124)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d34) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d35) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d36) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d37) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d38) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name49 = ("Algebra.Monoid.semigroup")
d49 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((C1)
             ((Unsafe.Coerce.unsafeCoerce)
                ((d34) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d35) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d36) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d43) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name51 = ("Algebra.Monoid._._\8729_")
d51 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d8)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d49) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name52 = ("Algebra.Monoid._._\8776_")
d52 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d7)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d49) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name53 = ("Algebra.Monoid._.Carrier")
d53 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d6)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d49) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name54 = ("Algebra.Monoid._._.assoc")
d54 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d11)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d49) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name55 = ("Algebra.Monoid._._.isEquivalence")
d55 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d12)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d49) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name56 = ("Algebra.Monoid._.isSemigroup")
d56 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d9)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d49) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name57 = ("Algebra.Monoid._._._.refl")
d57 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d13)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d49) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name58 = ("Algebra.Monoid._._._.reflexive")
d58 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d14)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d49) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name59 = ("Algebra.Monoid._.setoid")
d59 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d18)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d49) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name60 = ("Algebra.Monoid._._._.sym")
d60 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d15)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d49) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name61 = ("Algebra.Monoid._._._.trans")
d61 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d16)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d49) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name62 = ("Algebra.Monoid._._.\8729-cong")
d62 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d17)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d49) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name63 = ("Algebra.Monoid.rawMonoid")
d63 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((C19)
             ((Unsafe.Coerce.unsafeCoerce)
                ((d34) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d35) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d36) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d37) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name64 = ("Algebra.CommutativeMonoid")
d64 = (())
 
data T64 a0 a1 a2 a3 a4 = C64 a0 a1 a2 a3 a4
name70 = ("Algebra.CommutativeMonoid.Carrier")
d70 (C64 v0 _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d70 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.CommutativeMonoid.Carrier"))
name71 = ("Algebra.CommutativeMonoid._\8776_")
d71 (C64 _ v0 _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d71 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.CommutativeMonoid._\8776_"))
name72 = ("Algebra.CommutativeMonoid._\8729_")
d72 (C64 _ _ v0 _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d72 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.CommutativeMonoid._\8729_"))
name73 = ("Algebra.CommutativeMonoid.\949")
d73 (C64 _ _ _ v0 _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d73 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.CommutativeMonoid.\949"))
name74 = ("Algebra.CommutativeMonoid.isCommutativeMonoid")
d74 (C64 _ _ _ _ v0) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d74 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.CommutativeMonoid.isCommutativeMonoid"))
name76 = ("Algebra.CommutativeMonoid._._._.assoc")
d76 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d181)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d70) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d71) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d72) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d73) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d74) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name77 = ("Algebra.CommutativeMonoid._.comm")
d77 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d179)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d70) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d71) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d72) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d73) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d74) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name78 = ("Algebra.CommutativeMonoid._._.identity")
d78 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d182)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d70) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d71) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d72) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d73) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d74) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name79 = ("Algebra.CommutativeMonoid._._._.isEquivalence")
d79 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d183)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d70) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d71) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d72) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d73) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d74) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name80 = ("Algebra.CommutativeMonoid._.isMonoid")
d80 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d178)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d70) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d71) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d72) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d73) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d74) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name81 = ("Algebra.CommutativeMonoid._._.isSemigroup")
d81 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d184)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d70) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d71) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d72) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d73) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d74) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name82 = ("Algebra.CommutativeMonoid._._._._.refl")
d82 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d185)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d70) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d71) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d72) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d73) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d74) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name83 = ("Algebra.CommutativeMonoid._._._._.reflexive")
d83 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d186)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d70) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d71) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d72) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d73) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d74) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name84 = ("Algebra.CommutativeMonoid._._._._.sym")
d84 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d187)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d70) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d71) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d72) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d73) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d74) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name85 = ("Algebra.CommutativeMonoid._._._._.trans")
d85 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d188)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d70) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d71) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d72) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d73) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d74) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name86 = ("Algebra.CommutativeMonoid._._._.\8729-cong")
d86 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d189)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d70) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d71) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d72) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d73) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d74) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name87 = ("Algebra.CommutativeMonoid.monoid")
d87 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((C28)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d70) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d71) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d72) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d73) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d80) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name89 = ("Algebra.CommutativeMonoid._._\8729_")
d89 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d36)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d87) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name90 = ("Algebra.CommutativeMonoid._._\8776_")
d90 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d35)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d87) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name91 = ("Algebra.CommutativeMonoid._.Carrier")
d91 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d34)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d87) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name92 = ("Algebra.CommutativeMonoid._._._.assoc")
d92 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d40)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d87) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name93 = ("Algebra.CommutativeMonoid._._.identity")
d93 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d41)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d87) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name94 = ("Algebra.CommutativeMonoid._._._.isEquivalence")
d94 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d42)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d87) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name95 = ("Algebra.CommutativeMonoid._.isMonoid")
d95 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d38)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d87) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name96 = ("Algebra.CommutativeMonoid._._.isSemigroup")
d96 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d43)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d87) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name97 = ("Algebra.CommutativeMonoid._.rawMonoid")
d97 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d63)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d87) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name98 = ("Algebra.CommutativeMonoid._._._._.refl")
d98 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d44)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d87) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name99 = ("Algebra.CommutativeMonoid._._._._.reflexive")
d99 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d45)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d87) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name100 = ("Algebra.CommutativeMonoid._.semigroup")
d100 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d49)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d87) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name101 = ("Algebra.CommutativeMonoid._._.setoid")
d101 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d59)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d87) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name102 = ("Algebra.CommutativeMonoid._._._._.sym")
d102 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d46)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d87) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name103 = ("Algebra.CommutativeMonoid._._._._.trans")
d103 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d47)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d87) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name104 = ("Algebra.CommutativeMonoid._.\949")
d104 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d37)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d87) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name105 = ("Algebra.CommutativeMonoid._._._.\8729-cong")
d105 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d48)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d87) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name106 = ("Algebra.Group")
d106 = (())
 
data T106 a0 a1 a2 a3 a4 a5 = C106 a0 a1 a2 a3 a4 a5
name113 = ("Algebra.Group.Carrier")
d113 (C106 v0 _ _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d113 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Group.Carrier"))
name114 = ("Algebra.Group._\8776_")
d114 (C106 _ v0 _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d114 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Group._\8776_"))
name115 = ("Algebra.Group._\8729_")
d115 (C106 _ _ v0 _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d115 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Group._\8729_"))
name116 = ("Algebra.Group.\949")
d116 (C106 _ _ _ v0 _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d116 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Group.\949"))
name117 = ("Algebra.Group._\8315\185")
d117 (C106 _ _ _ _ v0 _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d117 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Group._\8315\185"))
name118 = ("Algebra.Group.isGroup")
d118 (C106 _ _ _ _ _ v0) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d118 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Group.isGroup"))
name120 = ("Algebra.Group._._-_")
d120 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d259)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d113) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d114) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d115) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d116) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d117) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d118) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name121 = ("Algebra.Group._._._.assoc")
d121 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d250)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d113) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d114) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d115) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d116) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d117) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d118) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name122 = ("Algebra.Group._._.identity")
d122 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d251)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d113) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d114) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d115) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d116) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d117) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d118) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name123 = ("Algebra.Group._.inverse")
d123 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d247)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d113) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d114) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d115) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d116) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d117) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d118) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name124 = ("Algebra.Group._._._.isEquivalence")
d124 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d252)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d113) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d114) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d115) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d116) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d117) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d118) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name125 = ("Algebra.Group._.isMonoid")
d125 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d246)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d113) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d114) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d115) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d116) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d117) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d118) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name126 = ("Algebra.Group._._.isSemigroup")
d126 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d253)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d113) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d114) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d115) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d116) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d117) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d118) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name127 = ("Algebra.Group._._._._.refl")
d127 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d254)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d113) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d114) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d115) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d116) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d117) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d118) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name128 = ("Algebra.Group._._._._.reflexive")
d128 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d255)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d113) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d114) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d115) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d116) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d117) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d118) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name129 = ("Algebra.Group._._._._.sym")
d129 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d256)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d113) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d114) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d115) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d116) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d117) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d118) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name130 = ("Algebra.Group._._._._.trans")
d130 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d257)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d113) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d114) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d115) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d116) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d117) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d118) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name131 = ("Algebra.Group._.\8315\185-cong")
d131 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d248)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d113) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d114) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d115) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d116) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d117) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d118) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name132 = ("Algebra.Group._._._.\8729-cong")
d132 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d258)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d113) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d114) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d115) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d116) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d117) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d118) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name133 = ("Algebra.Group.monoid")
d133 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((C28)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d113) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d114) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d115) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d116) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d125) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name135 = ("Algebra.Group._._\8729_")
d135 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d36)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d133) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name136 = ("Algebra.Group._._\8776_")
d136 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d35)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d133) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name137 = ("Algebra.Group._.Carrier")
d137 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d34)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d133) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name138 = ("Algebra.Group._._._.assoc")
d138 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d40)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d133) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name139 = ("Algebra.Group._._.identity")
d139 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d41)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d133) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name140 = ("Algebra.Group._._._.isEquivalence")
d140 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d42)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d133) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name141 = ("Algebra.Group._.isMonoid")
d141 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d38)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d133) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name142 = ("Algebra.Group._._.isSemigroup")
d142 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d43)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d133) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name143 = ("Algebra.Group._.rawMonoid")
d143 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d63)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d133) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name144 = ("Algebra.Group._._._._.refl")
d144 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d44)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d133) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name145 = ("Algebra.Group._._._._.reflexive")
d145 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d45)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d133) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name146 = ("Algebra.Group._.semigroup")
d146 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d49)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d133) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name147 = ("Algebra.Group._._.setoid")
d147 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d59)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d133) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name148 = ("Algebra.Group._._._._.sym")
d148 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d46)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d133) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name149 = ("Algebra.Group._._._._.trans")
d149 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d47)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d133) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name150 = ("Algebra.Group._.\949")
d150 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d37)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d133) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name151 = ("Algebra.Group._._._.\8729-cong")
d151 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d48)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d133) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name152 = ("Algebra.AbelianGroup")
d152 = (())
 
data T152 a0 a1 a2 a3 a4 a5 = C152 a0 a1 a2 a3 a4 a5
name159 = ("Algebra.AbelianGroup.Carrier")
d159 (C152 v0 _ _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d159 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.AbelianGroup.Carrier"))
name160 = ("Algebra.AbelianGroup._\8776_")
d160 (C152 _ v0 _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d160 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.AbelianGroup._\8776_"))
name161 = ("Algebra.AbelianGroup._\8729_")
d161 (C152 _ _ v0 _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d161 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.AbelianGroup._\8729_"))
name162 = ("Algebra.AbelianGroup.\949")
d162 (C152 _ _ _ v0 _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d162 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.AbelianGroup.\949"))
name163 = ("Algebra.AbelianGroup._\8315\185")
d163 (C152 _ _ _ _ v0 _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d163 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.AbelianGroup._\8315\185"))
name164 = ("Algebra.AbelianGroup.isAbelianGroup")
d164 (C152 _ _ _ _ _ v0) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d164 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.AbelianGroup.isAbelianGroup"))
name166 = ("Algebra.AbelianGroup._._._-_")
d166 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d320)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d159) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d160) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d161) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d162) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d163) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d164) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name167 = ("Algebra.AbelianGroup._._._._.assoc")
d167 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d321)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d159) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d160) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d161) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d162) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d163) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d164) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name168 = ("Algebra.AbelianGroup._.comm")
d168 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d318)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d159) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d160) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d161) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d162) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d163) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d164) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name169 = ("Algebra.AbelianGroup._._._.identity")
d169 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d322)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d159) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d160) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d161) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d162) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d163) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d164) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name170 = ("Algebra.AbelianGroup._._.inverse")
d170 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d323)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d159) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d160) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d161) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d162) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d163) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d164) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name171 = ("Algebra.AbelianGroup._.isCommutativeMonoid")
d171 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d333)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d159) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d160) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d161) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d162) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d163) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d164) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name172 = ("Algebra.AbelianGroup._._._._.isEquivalence")
d172 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d324)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d159) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d160) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d161) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d162) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d163) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d164) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name173 = ("Algebra.AbelianGroup._.isGroup")
d173 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d317)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d159) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d160) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d161) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d162) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d163) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d164) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name174 = ("Algebra.AbelianGroup._._.isMonoid")
d174 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d325)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d159) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d160) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d161) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d162) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d163) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d164) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name175 = ("Algebra.AbelianGroup._._._.isSemigroup")
d175 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d326)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d159) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d160) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d161) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d162) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d163) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d164) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name176 = ("Algebra.AbelianGroup._._._._._.refl")
d176 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d327)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d159) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d160) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d161) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d162) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d163) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d164) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name177 = ("Algebra.AbelianGroup._._._._._.reflexive")
d177 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d328)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d159) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d160) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d161) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d162) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d163) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d164) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name178 = ("Algebra.AbelianGroup._._._._._.sym")
d178 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d329)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d159) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d160) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d161) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d162) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d163) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d164) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name179 = ("Algebra.AbelianGroup._._._._._.trans")
d179 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d330)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d159) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d160) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d161) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d162) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d163) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d164) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name180 = ("Algebra.AbelianGroup._._.\8315\185-cong")
d180 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d331)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d159) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d160) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d161) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d162) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d163) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d164) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name181 = ("Algebra.AbelianGroup._._._._.\8729-cong")
d181 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d332)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d159) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d160) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d161) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d162) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d163) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d164) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name182 = ("Algebra.AbelianGroup.group")
d182 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((C106)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d159) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d160) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d161) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d162) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d163) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d173) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name184 = ("Algebra.AbelianGroup._._._-_")
d184 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d120)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d182) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name185 = ("Algebra.AbelianGroup._._\8315\185")
d185 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d117)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d182) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name186 = ("Algebra.AbelianGroup._._\8729_")
d186 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d115)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d182) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name187 = ("Algebra.AbelianGroup._._\8776_")
d187 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d114)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d182) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name188 = ("Algebra.AbelianGroup._.Carrier")
d188 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d113)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d182) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name189 = ("Algebra.AbelianGroup._._._._.assoc")
d189 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d121)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d182) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name190 = ("Algebra.AbelianGroup._._._.identity")
d190 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d122)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d182) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name191 = ("Algebra.AbelianGroup._._.inverse")
d191 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d123)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d182) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name192 = ("Algebra.AbelianGroup._._._._.isEquivalence")
d192 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d124)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d182) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name193 = ("Algebra.AbelianGroup._.isGroup")
d193 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d118)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d182) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name194 = ("Algebra.AbelianGroup._._.isMonoid")
d194 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d125)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d182) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name195 = ("Algebra.AbelianGroup._._._.isSemigroup")
d195 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d126)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d182) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name196 = ("Algebra.AbelianGroup._.monoid")
d196 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d133)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d182) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name197 = ("Algebra.AbelianGroup._._.rawMonoid")
d197 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d143)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d182) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name198 = ("Algebra.AbelianGroup._._._._._.refl")
d198 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d127)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d182) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name199 = ("Algebra.AbelianGroup._._._._._.reflexive")
d199 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d128)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d182) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name200 = ("Algebra.AbelianGroup._._.semigroup")
d200 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d146)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d182) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name201 = ("Algebra.AbelianGroup._._._.setoid")
d201 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d147)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d182) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name202 = ("Algebra.AbelianGroup._._._._._.sym")
d202 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d129)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d182) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name203 = ("Algebra.AbelianGroup._._._._._.trans")
d203 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d130)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d182) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name204 = ("Algebra.AbelianGroup._.\949")
d204 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d116)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d182) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name205 = ("Algebra.AbelianGroup._._.\8315\185-cong")
d205 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d131)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d182) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name206 = ("Algebra.AbelianGroup._._._._.\8729-cong")
d206 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d132)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d182) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name207 = ("Algebra.AbelianGroup.commutativeMonoid")
d207 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((C64)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d159) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d160) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d161) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d162) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d171) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name208 = ("Algebra.NearSemiring")
d208 = (())
 
data T208 a0 a1 a2 a3 a4 a5 = C208 a0 a1 a2 a3 a4 a5
name215 = ("Algebra.NearSemiring.Carrier")
d215 (C208 v0 _ _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d215 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.NearSemiring.Carrier"))
name216 = ("Algebra.NearSemiring._\8776_")
d216 (C208 _ v0 _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d216 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.NearSemiring._\8776_"))
name217 = ("Algebra.NearSemiring._+_")
d217 (C208 _ _ v0 _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d217 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.NearSemiring._+_"))
name218 = ("Algebra.NearSemiring._*_")
d218 (C208 _ _ _ v0 _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d218 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.NearSemiring._*_"))
name219 = ("Algebra.NearSemiring.0#")
d219 (C208 _ _ _ _ v0 _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d219 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.NearSemiring.0#"))
name220 = ("Algebra.NearSemiring.isNearSemiring")
d220 (C208 _ _ _ _ _ v0) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d220 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.NearSemiring.isNearSemiring"))
name222 = ("Algebra.NearSemiring._._.assoc")
d222 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d406)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d215) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d216) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d217) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d218) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d219) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d220) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name223 = ("Algebra.NearSemiring._._.\8729-cong")
d223 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d412)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d215) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d216) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d217) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d218) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d219) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d220) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name224 = ("Algebra.NearSemiring._.*-isSemigroup")
d224 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d392)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d215) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d216) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d217) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d218) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d219) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d220) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name225 = ("Algebra.NearSemiring._._._.assoc")
d225 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d396)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d215) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d216) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d217) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d218) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d219) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d220) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name226 = ("Algebra.NearSemiring._._._.\8729-cong")
d226 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d404)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d215) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d216) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d217) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d218) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d219) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d220) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name227 = ("Algebra.NearSemiring._._.identity")
d227 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d397)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d215) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d216) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d217) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d218) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d219) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d220) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name228 = ("Algebra.NearSemiring._.+-isMonoid")
d228 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d391)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d215) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d216) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d217) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d218) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d219) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d220) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name229 = ("Algebra.NearSemiring._._.isSemigroup")
d229 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d399)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d215) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d216) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d217) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d218) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d219) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d220) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name230 = ("Algebra.NearSemiring._.distrib\691")
d230 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d393)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d215) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d216) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d217) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d218) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d219) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d220) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name231 = ("Algebra.NearSemiring._._._.isEquivalence")
d231 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d398)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d215) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d216) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d217) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d218) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d219) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d220) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name232 = ("Algebra.NearSemiring._._._._.refl")
d232 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d400)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d215) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d216) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d217) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d218) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d219) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d220) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name233 = ("Algebra.NearSemiring._._._._.reflexive")
d233 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d401)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d215) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d216) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d217) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d218) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d219) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d220) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name234 = ("Algebra.NearSemiring._._._._.sym")
d234 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d402)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d215) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d216) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d217) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d218) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d219) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d220) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name235 = ("Algebra.NearSemiring._._._._.trans")
d235 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d403)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d215) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d216) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d217) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d218) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d219) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d220) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name236 = ("Algebra.NearSemiring._.zero\737")
d236 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d394)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d215) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d216) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d217) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d218) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d219) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d220) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name237 = ("Algebra.NearSemiring.+-monoid")
d237 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((C28)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d215) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d216) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d217) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d219) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d228) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name239 = ("Algebra.NearSemiring._._\8729_")
d239 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d36)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d237) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name240 = ("Algebra.NearSemiring._._\8776_")
d240 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d35)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d237) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name241 = ("Algebra.NearSemiring._.Carrier")
d241 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d34)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d237) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name242 = ("Algebra.NearSemiring._._._.assoc")
d242 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d40)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d237) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name243 = ("Algebra.NearSemiring._._.identity")
d243 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d41)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d237) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name244 = ("Algebra.NearSemiring._._._.isEquivalence")
d244 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d42)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d237) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name245 = ("Algebra.NearSemiring._.isMonoid")
d245 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d38)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d237) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name246 = ("Algebra.NearSemiring._._.isSemigroup")
d246 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d43)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d237) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name247 = ("Algebra.NearSemiring._.rawMonoid")
d247 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d63)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d237) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name248 = ("Algebra.NearSemiring._._._._.refl")
d248 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d44)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d237) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name249 = ("Algebra.NearSemiring._._._._.reflexive")
d249 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d45)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d237) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name250 = ("Algebra.NearSemiring._.semigroup")
d250 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d49)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d237) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name251 = ("Algebra.NearSemiring._._.setoid")
d251 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d59)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d237) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name252 = ("Algebra.NearSemiring._._._._.sym")
d252 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d46)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d237) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name253 = ("Algebra.NearSemiring._._._._.trans")
d253 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d47)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d237) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name254 = ("Algebra.NearSemiring._.\949")
d254 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d37)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d237) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name255 = ("Algebra.NearSemiring._._._.\8729-cong")
d255 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d48)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d237) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name256 = ("Algebra.NearSemiring.*-semigroup")
d256 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((C1)
             ((Unsafe.Coerce.unsafeCoerce)
                ((d215) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d216) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d218) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d224) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name257 = ("Algebra.SemiringWithoutOne")
d257 = (())
 
data T257 a0 a1 a2 a3 a4 a5 = C257 a0 a1 a2 a3 a4 a5
name264 = ("Algebra.SemiringWithoutOne.Carrier")
d264 (C257 v0 _ _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d264 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.SemiringWithoutOne.Carrier"))
name265 = ("Algebra.SemiringWithoutOne._\8776_")
d265 (C257 _ v0 _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d265 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.SemiringWithoutOne._\8776_"))
name266 = ("Algebra.SemiringWithoutOne._+_")
d266 (C257 _ _ v0 _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d266 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.SemiringWithoutOne._+_"))
name267 = ("Algebra.SemiringWithoutOne._*_")
d267 (C257 _ _ _ v0 _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d267 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.SemiringWithoutOne._*_"))
name268 = ("Algebra.SemiringWithoutOne.0#")
d268 (C257 _ _ _ _ v0 _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d268 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.SemiringWithoutOne.0#"))
name269 = ("Algebra.SemiringWithoutOne.isSemiringWithoutOne")
d269 (C257 _ _ _ _ _ v0) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d269 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.SemiringWithoutOne.isSemiringWithoutOne"))
name271 = ("Algebra.SemiringWithoutOne._._.assoc")
d271 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d487)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d264) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d265) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d266) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d267) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d268) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d269) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name272 = ("Algebra.SemiringWithoutOne._._.\8729-cong")
d272 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d493)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d264) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d265) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d266) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d267) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d268) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d269) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name273 = ("Algebra.SemiringWithoutOne._.*-isSemigroup")
d273 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d471)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d264) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d265) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d266) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d267) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d268) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d269) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name274 = ("Algebra.SemiringWithoutOne._._._._.assoc")
d274 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d475)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d264) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d265) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d266) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d267) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d268) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d269) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name275 = ("Algebra.SemiringWithoutOne._._.comm")
d275 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d476)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d264) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d265) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d266) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d267) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d268) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d269) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name276 = ("Algebra.SemiringWithoutOne._._._._.\8729-cong")
d276 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d485)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d264) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d265) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d266) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d267) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d268) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d269) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name277 = ("Algebra.SemiringWithoutOne._._._.identity")
d277 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d477)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d264) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d265) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d266) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d267) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d268) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d269) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name278 = ("Algebra.SemiringWithoutOne._.+-isCommutativeMonoid")
d278 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d470)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d264) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d265) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d266) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d267) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d268) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d269) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name279 = ("Algebra.SemiringWithoutOne._._.isMonoid")
d279 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d479)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d264) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d265) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d266) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d267) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d268) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d269) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name280 = ("Algebra.SemiringWithoutOne._._._.isSemigroup")
d280 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d480)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d264) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d265) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d266) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d267) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d268) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d269) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name281 = ("Algebra.SemiringWithoutOne._.distrib")
d281 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d472)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d264) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d265) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d266) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d267) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d268) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d269) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name282 = ("Algebra.SemiringWithoutOne._._._._.isEquivalence")
d282 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d478)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d264) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d265) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d266) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d267) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d268) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d269) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name283 = ("Algebra.SemiringWithoutOne._.isNearSemiring")
d283 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d494)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d264) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d265) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d266) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d267) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d268) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d269) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name284 = ("Algebra.SemiringWithoutOne._._._._._.refl")
d284 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d481)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d264) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d265) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d266) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d267) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d268) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d269) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name285 = ("Algebra.SemiringWithoutOne._._._._._.reflexive")
d285 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d482)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d264) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d265) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d266) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d267) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d268) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d269) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name286 = ("Algebra.SemiringWithoutOne._._._._._.sym")
d286 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d483)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d264) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d265) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d266) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d267) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d268) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d269) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name287 = ("Algebra.SemiringWithoutOne._._._._._.trans")
d287 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d484)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d264) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d265) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d266) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d267) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d268) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d269) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name288 = ("Algebra.SemiringWithoutOne._.zero")
d288 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d473)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d264) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d265) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d266) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d267) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d268) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d269) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name289 = ("Algebra.SemiringWithoutOne.nearSemiring")
d289 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((C208)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d264) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d265) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d266) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d267) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d268) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d283) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name291 = ("Algebra.SemiringWithoutOne._._*_")
d291 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d218)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d289) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name292 = ("Algebra.SemiringWithoutOne._._+_")
d292 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d217)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d289) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name293 = ("Algebra.SemiringWithoutOne._._\8776_")
d293 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d216)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d289) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name294 = ("Algebra.SemiringWithoutOne._._._.assoc")
d294 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d222)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d289) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name295 = ("Algebra.SemiringWithoutOne._._._.\8729-cong")
d295 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d223)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d289) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name296 = ("Algebra.SemiringWithoutOne._._.*-isSemigroup")
d296 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d224)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d289) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name297 = ("Algebra.SemiringWithoutOne._.*-semigroup")
d297 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d256)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d289) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name298 = ("Algebra.SemiringWithoutOne._._._._.assoc")
d298 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d225)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d289) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name299 = ("Algebra.SemiringWithoutOne._._._._.\8729-cong")
d299 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d226)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d289) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name300 = ("Algebra.SemiringWithoutOne._._._.identity")
d300 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d227)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d289) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name301 = ("Algebra.SemiringWithoutOne._._.+-isMonoid")
d301 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d228)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d289) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name302 = ("Algebra.SemiringWithoutOne._._._.isSemigroup")
d302 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d229)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d289) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name303 = ("Algebra.SemiringWithoutOne._.+-monoid")
d303 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d237)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d289) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name304 = ("Algebra.SemiringWithoutOne._._.rawMonoid")
d304 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d247)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d289) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name305 = ("Algebra.SemiringWithoutOne._._.semigroup")
d305 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d250)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d289) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name306 = ("Algebra.SemiringWithoutOne._.0#")
d306 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d219)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d289) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name307 = ("Algebra.SemiringWithoutOne._.Carrier")
d307 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d215)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d289) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name308 = ("Algebra.SemiringWithoutOne._._.distrib\691")
d308 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d230)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d289) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name309 = ("Algebra.SemiringWithoutOne._._._._.isEquivalence")
d309 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d231)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d289) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name310 = ("Algebra.SemiringWithoutOne._.isNearSemiring")
d310 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d220)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d289) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name311 = ("Algebra.SemiringWithoutOne._._._._._.refl")
d311 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d232)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d289) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name312 = ("Algebra.SemiringWithoutOne._._._._._.reflexive")
d312 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d233)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d289) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name313 = ("Algebra.SemiringWithoutOne._._._.setoid")
d313 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d251)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d289) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name314 = ("Algebra.SemiringWithoutOne._._._._._.sym")
d314 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d234)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d289) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name315 = ("Algebra.SemiringWithoutOne._._._._._.trans")
d315 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d235)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d289) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name316 = ("Algebra.SemiringWithoutOne._._.zero\737")
d316 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d236)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d289) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name317 = ("Algebra.SemiringWithoutOne.+-commutativeMonoid")
d317 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((C64)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d264) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d265) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d266) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d268) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d278) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name318 = ("Algebra.SemiringWithoutAnnihilatingZero")
d318 = (())
 
data T318 a0 a1 a2 a3 a4 a5 a6 = C318 a0 a1 a2 a3 a4 a5 a6
name326 = ("Algebra.SemiringWithoutAnnihilatingZero.Carrier")
d326 (C318 v0 _ _ _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d326 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.SemiringWithoutAnnihilatingZero.Carrier"))
name327 = ("Algebra.SemiringWithoutAnnihilatingZero._\8776_")
d327 (C318 _ v0 _ _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d327 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.SemiringWithoutAnnihilatingZero._\8776_"))
name328 = ("Algebra.SemiringWithoutAnnihilatingZero._+_")
d328 (C318 _ _ v0 _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d328 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.SemiringWithoutAnnihilatingZero._+_"))
name329 = ("Algebra.SemiringWithoutAnnihilatingZero._*_")
d329 (C318 _ _ _ v0 _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d329 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.SemiringWithoutAnnihilatingZero._*_"))
name330 = ("Algebra.SemiringWithoutAnnihilatingZero.0#")
d330 (C318 _ _ _ _ v0 _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d330 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.SemiringWithoutAnnihilatingZero.0#"))
name331 = ("Algebra.SemiringWithoutAnnihilatingZero.1#")
d331 (C318 _ _ _ _ _ v0 _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d331 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.SemiringWithoutAnnihilatingZero.1#"))
name332
  = ("Algebra.SemiringWithoutAnnihilatingZero.isSemiringWithoutAnnihilatingZero")
d332 (C318 _ _ _ _ _ _ v0) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d332 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.SemiringWithoutAnnihilatingZero.isSemiringWithoutAnnihilatingZero"))
name334 = ("Algebra.SemiringWithoutAnnihilatingZero._._._.assoc")
d334 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d569)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d326) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d327) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d328) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d329) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d330) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d331) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d332) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name335
  = ("Algebra.SemiringWithoutAnnihilatingZero._._._.\8729-cong")
d335 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d577)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d326) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d327) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d328) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d329) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d330) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d331) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d332) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name336 = ("Algebra.SemiringWithoutAnnihilatingZero._._.identity")
d336 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d570)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d326) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d327) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d328) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d329) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d330) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d331) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d332) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name337 = ("Algebra.SemiringWithoutAnnihilatingZero._.*-isMonoid")
d337 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d554)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d326) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d327) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d328) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d329) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d330) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d331) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d332) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name338
  = ("Algebra.SemiringWithoutAnnihilatingZero._._.isSemigroup")
d338 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d572)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d326) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d327) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d328) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d329) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d330) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d331) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d332) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name339 = ("Algebra.SemiringWithoutAnnihilatingZero._._._._.assoc")
d339 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d557)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d326) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d327) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d328) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d329) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d330) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d331) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d332) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name340 = ("Algebra.SemiringWithoutAnnihilatingZero._._.comm")
d340 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d558)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d326) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d327) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d328) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d329) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d330) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d331) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d332) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name341
  = ("Algebra.SemiringWithoutAnnihilatingZero._._._._.\8729-cong")
d341 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d567)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d326) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d327) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d328) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d329) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d330) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d331) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d332) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name342
  = ("Algebra.SemiringWithoutAnnihilatingZero._._._.identity")
d342 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d559)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d326) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d327) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d328) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d329) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d330) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d331) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d332) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name343
  = ("Algebra.SemiringWithoutAnnihilatingZero._.+-isCommutativeMonoid")
d343 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d553)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d326) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d327) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d328) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d329) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d330) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d331) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d332) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name344 = ("Algebra.SemiringWithoutAnnihilatingZero._._.isMonoid")
d344 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d561)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d326) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d327) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d328) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d329) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d330) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d331) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d332) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name345
  = ("Algebra.SemiringWithoutAnnihilatingZero._._._.isSemigroup")
d345 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d562)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d326) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d327) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d328) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d329) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d330) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d331) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d332) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name346 = ("Algebra.SemiringWithoutAnnihilatingZero._.distrib")
d346 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d555)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d326) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d327) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d328) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d329) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d330) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d331) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d332) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name347
  = ("Algebra.SemiringWithoutAnnihilatingZero._._._._.isEquivalence")
d347 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d560)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d326) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d327) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d328) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d329) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d330) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d331) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d332) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name348
  = ("Algebra.SemiringWithoutAnnihilatingZero._._._._._.refl")
d348 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d563)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d326) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d327) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d328) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d329) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d330) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d331) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d332) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name349
  = ("Algebra.SemiringWithoutAnnihilatingZero._._._._._.reflexive")
d349 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d564)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d326) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d327) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d328) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d329) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d330) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d331) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d332) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name350 = ("Algebra.SemiringWithoutAnnihilatingZero._._._._._.sym")
d350 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d565)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d326) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d327) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d328) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d329) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d330) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d331) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d332) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name351
  = ("Algebra.SemiringWithoutAnnihilatingZero._._._._._.trans")
d351 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d566)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d326) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d327) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d328) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d329) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d330) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d331) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d332) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name352
  = ("Algebra.SemiringWithoutAnnihilatingZero.+-commutativeMonoid")
d352 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((C64)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d326) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d327) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d328) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d330) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d343) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name354 = ("Algebra.SemiringWithoutAnnihilatingZero._._\8729_")
d354 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d72)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d352) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name355 = ("Algebra.SemiringWithoutAnnihilatingZero._._\8776_")
d355 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d71)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d352) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name356 = ("Algebra.SemiringWithoutAnnihilatingZero._.Carrier")
d356 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d70)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d352) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name357 = ("Algebra.SemiringWithoutAnnihilatingZero._._._._.assoc")
d357 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d76)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d352) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name358 = ("Algebra.SemiringWithoutAnnihilatingZero._._.comm")
d358 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d77)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d352) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name359
  = ("Algebra.SemiringWithoutAnnihilatingZero._._._.identity")
d359 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d78)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d352) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name360
  = ("Algebra.SemiringWithoutAnnihilatingZero._.isCommutativeMonoid")
d360 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d74)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d352) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name361
  = ("Algebra.SemiringWithoutAnnihilatingZero._._._._.isEquivalence")
d361 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d79)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d352) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name362 = ("Algebra.SemiringWithoutAnnihilatingZero._._.isMonoid")
d362 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d80)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d352) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name363
  = ("Algebra.SemiringWithoutAnnihilatingZero._._._.isSemigroup")
d363 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d81)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d352) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name364 = ("Algebra.SemiringWithoutAnnihilatingZero._.monoid")
d364 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d87)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d352) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name365 = ("Algebra.SemiringWithoutAnnihilatingZero._._.rawMonoid")
d365 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d97)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d352) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name366
  = ("Algebra.SemiringWithoutAnnihilatingZero._._._._._.refl")
d366 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d82)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d352) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name367
  = ("Algebra.SemiringWithoutAnnihilatingZero._._._._._.reflexive")
d367 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d83)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d352) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name368 = ("Algebra.SemiringWithoutAnnihilatingZero._._.semigroup")
d368 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d100)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d352) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name369 = ("Algebra.SemiringWithoutAnnihilatingZero._._._.setoid")
d369 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d101)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d352) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name370 = ("Algebra.SemiringWithoutAnnihilatingZero._._._._._.sym")
d370 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d84)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d352) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name371
  = ("Algebra.SemiringWithoutAnnihilatingZero._._._._._.trans")
d371 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d85)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d352) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name372 = ("Algebra.SemiringWithoutAnnihilatingZero._.\949")
d372 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d73)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d352) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name373
  = ("Algebra.SemiringWithoutAnnihilatingZero._._._._.\8729-cong")
d373 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d86)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d352) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name374 = ("Algebra.SemiringWithoutAnnihilatingZero.*-monoid")
d374 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((C28)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d326) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d327) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d329) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d331) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d337) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name376 = ("Algebra.SemiringWithoutAnnihilatingZero._._\8729_")
d376 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d36)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d374) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name377 = ("Algebra.SemiringWithoutAnnihilatingZero._._\8776_")
d377 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d35)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d374) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name378 = ("Algebra.SemiringWithoutAnnihilatingZero._.Carrier")
d378 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d34)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d374) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name379 = ("Algebra.SemiringWithoutAnnihilatingZero._._._.assoc")
d379 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d40)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d374) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name380 = ("Algebra.SemiringWithoutAnnihilatingZero._._.identity")
d380 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d41)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d374) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name381
  = ("Algebra.SemiringWithoutAnnihilatingZero._._._.isEquivalence")
d381 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d42)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d374) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name382 = ("Algebra.SemiringWithoutAnnihilatingZero._.isMonoid")
d382 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d38)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d374) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name383
  = ("Algebra.SemiringWithoutAnnihilatingZero._._.isSemigroup")
d383 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d43)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d374) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name384 = ("Algebra.SemiringWithoutAnnihilatingZero._.rawMonoid")
d384 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d63)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d374) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name385 = ("Algebra.SemiringWithoutAnnihilatingZero._._._._.refl")
d385 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d44)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d374) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name386
  = ("Algebra.SemiringWithoutAnnihilatingZero._._._._.reflexive")
d386 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d45)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d374) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name387 = ("Algebra.SemiringWithoutAnnihilatingZero._.semigroup")
d387 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d49)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d374) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name388 = ("Algebra.SemiringWithoutAnnihilatingZero._._.setoid")
d388 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d59)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d374) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name389 = ("Algebra.SemiringWithoutAnnihilatingZero._._._._.sym")
d389 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d46)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d374) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name390 = ("Algebra.SemiringWithoutAnnihilatingZero._._._._.trans")
d390 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d47)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d374) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name391 = ("Algebra.SemiringWithoutAnnihilatingZero._.\949")
d391 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d37)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d374) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name392
  = ("Algebra.SemiringWithoutAnnihilatingZero._._._.\8729-cong")
d392 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d48)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d374) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name393 = ("Algebra.Semiring")
d393 = (())
 
data T393 a0 a1 a2 a3 a4 a5 a6 = C393 a0 a1 a2 a3 a4 a5 a6
name401 = ("Algebra.Semiring.Carrier")
d401 (C393 v0 _ _ _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d401 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Semiring.Carrier"))
name402 = ("Algebra.Semiring._\8776_")
d402 (C393 _ v0 _ _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d402 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Semiring._\8776_"))
name403 = ("Algebra.Semiring._+_")
d403 (C393 _ _ v0 _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d403 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Semiring._+_"))
name404 = ("Algebra.Semiring._*_")
d404 (C393 _ _ _ v0 _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d404 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Semiring._*_"))
name405 = ("Algebra.Semiring.0#")
d405 (C393 _ _ _ _ v0 _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d405 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Semiring.0#"))
name406 = ("Algebra.Semiring.1#")
d406 (C393 _ _ _ _ _ v0 _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d406 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Semiring.1#"))
name407 = ("Algebra.Semiring.isSemiring")
d407 (C393 _ _ _ _ _ _ v0) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d407 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Semiring.isSemiring"))
name409 = ("Algebra.Semiring._._._._.assoc")
d409 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d638)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d401) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d402) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d403) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d404) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d405) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d406) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d407) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name410 = ("Algebra.Semiring._._._._.\8729-cong")
d410 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d639)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d401) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d402) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d403) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d404) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d405) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d406) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d407) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name411 = ("Algebra.Semiring._._._.identity")
d411 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d640)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d401) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d402) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d403) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d404) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d405) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d406) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d407) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name412 = ("Algebra.Semiring._._.*-isMonoid")
d412 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d641)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d401) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d402) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d403) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d404) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d405) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d406) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d407) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name413 = ("Algebra.Semiring._._._.isSemigroup")
d413 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d642)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d401) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d402) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d403) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d404) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d405) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d406) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d407) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name414 = ("Algebra.Semiring._._._._._.assoc")
d414 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d643)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d401) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d402) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d403) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d404) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d405) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d406) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d407) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name415 = ("Algebra.Semiring._._._.comm")
d415 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d644)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d401) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d402) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d403) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d404) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d405) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d406) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d407) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name416 = ("Algebra.Semiring._._._._._.\8729-cong")
d416 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d645)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d401) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d402) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d403) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d404) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d405) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d406) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d407) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name417 = ("Algebra.Semiring._._._._.identity")
d417 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d646)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d401) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d402) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d403) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d404) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d405) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d406) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d407) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name418 = ("Algebra.Semiring._._.+-isCommutativeMonoid")
d418 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d647)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d401) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d402) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d403) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d404) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d405) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d406) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d407) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name419 = ("Algebra.Semiring._._._.isMonoid")
d419 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d648)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d401) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d402) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d403) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d404) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d405) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d406) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d407) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name420 = ("Algebra.Semiring._._._._.isSemigroup")
d420 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d649)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d401) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d402) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d403) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d404) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d405) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d406) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d407) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name421 = ("Algebra.Semiring._._.distrib")
d421 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d650)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d401) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d402) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d403) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d404) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d405) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d406) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d407) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name422 = ("Algebra.Semiring._._._._._.isEquivalence")
d422 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d651)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d401) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d402) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d403) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d404) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d405) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d406) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d407) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name423 = ("Algebra.Semiring._._.isNearSemiring")
d423 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d670)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d401) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d402) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d403) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d404) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d405) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d406) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d407) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name424 = ("Algebra.Semiring._.isSemiringWithoutAnnihilatingZero")
d424 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d635)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d401) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d402) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d403) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d404) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d405) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d406) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d407) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name425 = ("Algebra.Semiring._.isSemiringWithoutOne")
d425 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d656)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d401) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d402) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d403) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d404) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d405) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d406) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d407) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name426 = ("Algebra.Semiring._._._._._._.refl")
d426 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d652)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d401) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d402) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d403) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d404) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d405) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d406) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d407) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name427 = ("Algebra.Semiring._._._._._._.reflexive")
d427 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d653)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d401) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d402) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d403) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d404) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d405) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d406) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d407) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name428 = ("Algebra.Semiring._._._._._._.sym")
d428 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d654)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d401) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d402) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d403) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d404) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d405) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d406) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d407) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name429 = ("Algebra.Semiring._._._._._._.trans")
d429 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d655)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d401) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d402) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d403) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d404) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d405) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d406) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d407) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name430 = ("Algebra.Semiring._.zero")
d430 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d636)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d401) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d402) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d403) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d404) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d405) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d406) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d407) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name431 = ("Algebra.Semiring.semiringWithoutAnnihilatingZero")
d431 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((C318)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d401) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d402) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d403) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d404) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d405) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d406) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d424) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name433 = ("Algebra.Semiring._._*_")
d433 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d329)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name434 = ("Algebra.Semiring._._+_")
d434 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d328)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name435 = ("Algebra.Semiring._._\8776_")
d435 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d327)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name436 = ("Algebra.Semiring._._._._.assoc")
d436 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d334)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name437 = ("Algebra.Semiring._._._._.\8729-cong")
d437 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d335)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name438 = ("Algebra.Semiring._._._.identity")
d438 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d336)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name439 = ("Algebra.Semiring._._.*-isMonoid")
d439 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d337)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name440 = ("Algebra.Semiring._._._.isSemigroup")
d440 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d338)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name441 = ("Algebra.Semiring._.*-monoid")
d441 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d374)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name442 = ("Algebra.Semiring._._.rawMonoid")
d442 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d384)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name443 = ("Algebra.Semiring._._.semigroup")
d443 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d387)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name444 = ("Algebra.Semiring._._._._._.assoc")
d444 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d339)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name445 = ("Algebra.Semiring._._._.comm")
d445 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d340)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name446 = ("Algebra.Semiring._.+-commutativeMonoid")
d446 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d352)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name447 = ("Algebra.Semiring._._._._._.\8729-cong")
d447 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d341)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name448 = ("Algebra.Semiring._._._._.identity")
d448 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d342)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name449 = ("Algebra.Semiring._._.+-isCommutativeMonoid")
d449 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d343)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name450 = ("Algebra.Semiring._._._.isMonoid")
d450 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d344)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name451 = ("Algebra.Semiring._._._._.isSemigroup")
d451 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d345)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name452 = ("Algebra.Semiring._._.monoid")
d452 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d364)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name453 = ("Algebra.Semiring._._._.rawMonoid")
d453 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d365)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name454 = ("Algebra.Semiring._._._.semigroup")
d454 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d368)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name455 = ("Algebra.Semiring._.0#")
d455 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d330)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name456 = ("Algebra.Semiring._.1#")
d456 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d331)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name457 = ("Algebra.Semiring._.Carrier")
d457 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d326)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name458 = ("Algebra.Semiring._._.distrib")
d458 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d346)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name459 = ("Algebra.Semiring._._._._._.isEquivalence")
d459 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d347)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name460 = ("Algebra.Semiring._.isSemiringWithoutAnnihilatingZero")
d460 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d332)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name461 = ("Algebra.Semiring._._._._._._.refl")
d461 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d348)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name462 = ("Algebra.Semiring._._._._._._.reflexive")
d462 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d349)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name463 = ("Algebra.Semiring._._._._.setoid")
d463 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d369)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name464 = ("Algebra.Semiring._._._._._._.sym")
d464 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d350)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name465 = ("Algebra.Semiring._._._._._._.trans")
d465 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d351)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d431) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name466 = ("Algebra.Semiring.semiringWithoutOne")
d466 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((C257)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d401) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d402) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d403) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d404) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d405) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d425) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name468 = ("Algebra.Semiring._._*_")
d468 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d267)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name469 = ("Algebra.Semiring._._+_")
d469 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d266)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name470 = ("Algebra.Semiring._._\8776_")
d470 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d265)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name471 = ("Algebra.Semiring._._._.assoc")
d471 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d271)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name472 = ("Algebra.Semiring._._._.\8729-cong")
d472 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d272)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name473 = ("Algebra.Semiring._._.*-isSemigroup")
d473 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d273)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name474 = ("Algebra.Semiring._._.*-semigroup")
d474 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d297)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name475 = ("Algebra.Semiring._._._._._.assoc")
d475 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d274)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name476 = ("Algebra.Semiring._._._.comm")
d476 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d275)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name477 = ("Algebra.Semiring._.+-commutativeMonoid")
d477 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d317)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name478 = ("Algebra.Semiring._._._._._.\8729-cong")
d478 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d276)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name479 = ("Algebra.Semiring._._._._.identity")
d479 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d277)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name480 = ("Algebra.Semiring._._.+-isCommutativeMonoid")
d480 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d278)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name481 = ("Algebra.Semiring._._._.isMonoid")
d481 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d279)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name482 = ("Algebra.Semiring._._._._.isSemigroup")
d482 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d280)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name483 = ("Algebra.Semiring._._.+-monoid")
d483 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d303)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name484 = ("Algebra.Semiring._._._.rawMonoid")
d484 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d304)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name485 = ("Algebra.Semiring._._._.semigroup")
d485 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d305)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name486 = ("Algebra.Semiring._.0#")
d486 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d268)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name487 = ("Algebra.Semiring._.Carrier")
d487 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d264)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name488 = ("Algebra.Semiring._._.distrib")
d488 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d281)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name489 = ("Algebra.Semiring._._._._._.isEquivalence")
d489 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d282)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name490 = ("Algebra.Semiring._._.isNearSemiring")
d490 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d283)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name491 = ("Algebra.Semiring._.isSemiringWithoutOne")
d491 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d269)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name492 = ("Algebra.Semiring._.nearSemiring")
d492 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d289)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name493 = ("Algebra.Semiring._._._._._._.refl")
d493 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d284)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name494 = ("Algebra.Semiring._._._._._._.reflexive")
d494 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d285)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name495 = ("Algebra.Semiring._._._._.setoid")
d495 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d313)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name496 = ("Algebra.Semiring._._._._._._.sym")
d496 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d286)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name497 = ("Algebra.Semiring._._._._._._.trans")
d497 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d287)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name498 = ("Algebra.Semiring._._.zero")
d498 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d288)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d466) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name499 = ("Algebra.CommutativeSemiringWithoutOne")
d499 = (())
 
data T499 a0 a1 a2 a3 a4 a5 = C499 a0 a1 a2 a3 a4 a5
name506 = ("Algebra.CommutativeSemiringWithoutOne.Carrier")
d506 (C499 v0 _ _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d506 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.CommutativeSemiringWithoutOne.Carrier"))
name507 = ("Algebra.CommutativeSemiringWithoutOne._\8776_")
d507 (C499 _ v0 _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d507 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.CommutativeSemiringWithoutOne._\8776_"))
name508 = ("Algebra.CommutativeSemiringWithoutOne._+_")
d508 (C499 _ _ v0 _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d508 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.CommutativeSemiringWithoutOne._+_"))
name509 = ("Algebra.CommutativeSemiringWithoutOne._*_")
d509 (C499 _ _ _ v0 _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d509 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.CommutativeSemiringWithoutOne._*_"))
name510 = ("Algebra.CommutativeSemiringWithoutOne.0#")
d510 (C499 _ _ _ _ v0 _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d510 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.CommutativeSemiringWithoutOne.0#"))
name511
  = ("Algebra.CommutativeSemiringWithoutOne.isCommutativeSemiringWithoutOne")
d511 (C499 _ _ _ _ _ v0) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d511 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.CommutativeSemiringWithoutOne.isCommutativeSemiringWithoutOne"))
name513 = ("Algebra.CommutativeSemiringWithoutOne._._._.assoc")
d513 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d734)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d506) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d507) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d508) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d509) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d510) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d511) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name514 = ("Algebra.CommutativeSemiringWithoutOne._.*-comm")
d514 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d732)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d506) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d507) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d508) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d509) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d510) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d511) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name515
  = ("Algebra.CommutativeSemiringWithoutOne._._._.\8729-cong")
d515 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d735)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d506) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d507) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d508) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d509) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d510) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d511) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name516
  = ("Algebra.CommutativeSemiringWithoutOne._._.*-isSemigroup")
d516 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d736)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d506) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d507) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d508) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d509) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d510) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d511) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name517 = ("Algebra.CommutativeSemiringWithoutOne._._._._._.assoc")
d517 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d737)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d506) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d507) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d508) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d509) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d510) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d511) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name518 = ("Algebra.CommutativeSemiringWithoutOne._._._.comm")
d518 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d738)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d506) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d507) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d508) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d509) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d510) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d511) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name519
  = ("Algebra.CommutativeSemiringWithoutOne._._._._._.\8729-cong")
d519 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d739)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d506) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d507) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d508) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d509) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d510) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d511) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name520
  = ("Algebra.CommutativeSemiringWithoutOne._._._._.identity")
d520 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d740)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d506) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d507) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d508) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d509) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d510) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d511) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name521
  = ("Algebra.CommutativeSemiringWithoutOne._._.+-isCommutativeMonoid")
d521 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d741)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d506) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d507) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d508) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d509) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d510) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d511) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name522 = ("Algebra.CommutativeSemiringWithoutOne._._._.isMonoid")
d522 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d742)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d506) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d507) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d508) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d509) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d510) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d511) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name523
  = ("Algebra.CommutativeSemiringWithoutOne._._._._.isSemigroup")
d523 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d743)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d506) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d507) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d508) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d509) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d510) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d511) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name524 = ("Algebra.CommutativeSemiringWithoutOne._._.distrib")
d524 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d744)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d506) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d507) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d508) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d509) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d510) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d511) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name525
  = ("Algebra.CommutativeSemiringWithoutOne._._._._._.isEquivalence")
d525 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d745)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d506) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d507) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d508) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d509) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d510) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d511) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name526
  = ("Algebra.CommutativeSemiringWithoutOne._._.isNearSemiring")
d526 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d746)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d506) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d507) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d508) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d509) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d510) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d511) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name527
  = ("Algebra.CommutativeSemiringWithoutOne._.isSemiringWithoutOne")
d527 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d731)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d506) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d507) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d508) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d509) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d510) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d511) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name528
  = ("Algebra.CommutativeSemiringWithoutOne._._._._._._.refl")
d528 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d747)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d506) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d507) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d508) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d509) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d510) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d511) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name529
  = ("Algebra.CommutativeSemiringWithoutOne._._._._._._.reflexive")
d529 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d748)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d506) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d507) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d508) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d509) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d510) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d511) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name530 = ("Algebra.CommutativeSemiringWithoutOne._._._._._._.sym")
d530 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d749)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d506) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d507) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d508) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d509) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d510) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d511) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name531
  = ("Algebra.CommutativeSemiringWithoutOne._._._._._._.trans")
d531 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d750)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d506) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d507) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d508) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d509) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d510) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d511) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name532 = ("Algebra.CommutativeSemiringWithoutOne._._.zero")
d532 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((MAlonzo.Algebra.Structures.d751)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d506) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d507) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d508) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d509) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d510) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d511) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name533
  = ("Algebra.CommutativeSemiringWithoutOne.semiringWithoutOne")
d533 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((C257)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d506) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d507) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d508) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d509) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d510) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d527) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name535 = ("Algebra.CommutativeSemiringWithoutOne._._*_")
d535 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d267)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name536 = ("Algebra.CommutativeSemiringWithoutOne._._+_")
d536 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d266)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name537 = ("Algebra.CommutativeSemiringWithoutOne._._\8776_")
d537 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d265)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name538 = ("Algebra.CommutativeSemiringWithoutOne._._._.assoc")
d538 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d271)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name539
  = ("Algebra.CommutativeSemiringWithoutOne._._._.\8729-cong")
d539 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d272)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name540
  = ("Algebra.CommutativeSemiringWithoutOne._._.*-isSemigroup")
d540 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d273)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name541 = ("Algebra.CommutativeSemiringWithoutOne._._.*-semigroup")
d541 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d297)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name542 = ("Algebra.CommutativeSemiringWithoutOne._._._._._.assoc")
d542 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d274)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name543 = ("Algebra.CommutativeSemiringWithoutOne._._._.comm")
d543 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d275)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name544
  = ("Algebra.CommutativeSemiringWithoutOne._.+-commutativeMonoid")
d544 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d317)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name545
  = ("Algebra.CommutativeSemiringWithoutOne._._._._._.\8729-cong")
d545 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d276)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name546
  = ("Algebra.CommutativeSemiringWithoutOne._._._._.identity")
d546 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d277)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name547
  = ("Algebra.CommutativeSemiringWithoutOne._._.+-isCommutativeMonoid")
d547 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d278)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name548 = ("Algebra.CommutativeSemiringWithoutOne._._._.isMonoid")
d548 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d279)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name549
  = ("Algebra.CommutativeSemiringWithoutOne._._._._.isSemigroup")
d549 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d280)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name550 = ("Algebra.CommutativeSemiringWithoutOne._._.+-monoid")
d550 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d303)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name551 = ("Algebra.CommutativeSemiringWithoutOne._._._.rawMonoid")
d551 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d304)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name552 = ("Algebra.CommutativeSemiringWithoutOne._._._.semigroup")
d552 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d305)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name553 = ("Algebra.CommutativeSemiringWithoutOne._.0#")
d553 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d268)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name554 = ("Algebra.CommutativeSemiringWithoutOne._.Carrier")
d554 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d264)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name555 = ("Algebra.CommutativeSemiringWithoutOne._._.distrib")
d555 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d281)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name556
  = ("Algebra.CommutativeSemiringWithoutOne._._._._._.isEquivalence")
d556 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d282)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name557
  = ("Algebra.CommutativeSemiringWithoutOne._._.isNearSemiring")
d557 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d283)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name558
  = ("Algebra.CommutativeSemiringWithoutOne._.isSemiringWithoutOne")
d558 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d269)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name559 = ("Algebra.CommutativeSemiringWithoutOne._.nearSemiring")
d559 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d289)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name560
  = ("Algebra.CommutativeSemiringWithoutOne._._._._._._.refl")
d560 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d284)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name561
  = ("Algebra.CommutativeSemiringWithoutOne._._._._._._.reflexive")
d561 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d285)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name562 = ("Algebra.CommutativeSemiringWithoutOne._._._._.setoid")
d562 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d313)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name563 = ("Algebra.CommutativeSemiringWithoutOne._._._._._._.sym")
d563 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d286)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name564
  = ("Algebra.CommutativeSemiringWithoutOne._._._._._._.trans")
d564 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d287)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name565 = ("Algebra.CommutativeSemiringWithoutOne._._.zero")
d565 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d288)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d533) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name566 = ("Algebra.CommutativeSemiring")
d566 = (())
 
data T566 a0 a1 a2 a3 a4 a5 a6 = C566 a0 a1 a2 a3 a4 a5 a6
name574 = ("Algebra.CommutativeSemiring.Carrier")
d574 (C566 v0 _ _ _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d574 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.CommutativeSemiring.Carrier"))
name575 = ("Algebra.CommutativeSemiring._\8776_")
d575 (C566 _ v0 _ _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d575 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.CommutativeSemiring._\8776_"))
name576 = ("Algebra.CommutativeSemiring._+_")
d576 (C566 _ _ v0 _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d576 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.CommutativeSemiring._+_"))
name577 = ("Algebra.CommutativeSemiring._*_")
d577 (C566 _ _ _ v0 _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d577 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.CommutativeSemiring._*_"))
name578 = ("Algebra.CommutativeSemiring.0#")
d578 (C566 _ _ _ _ v0 _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d578 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.CommutativeSemiring.0#"))
name579 = ("Algebra.CommutativeSemiring.1#")
d579 (C566 _ _ _ _ _ v0 _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d579 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.CommutativeSemiring.1#"))
name580 = ("Algebra.CommutativeSemiring.isCommutativeSemiring")
d580 (C566 _ _ _ _ _ _ v0) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d580 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.CommutativeSemiring.isCommutativeSemiring"))
name582 = ("Algebra.CommutativeSemiring._._._._._.assoc")
d582 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d812)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d574) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d575) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d576) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d577) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d578) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d579) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d580) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name583 = ("Algebra.CommutativeSemiring._.*-comm")
d583 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d810)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d574) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d575) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d576) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d577) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d578) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d579) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d580) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name584 = ("Algebra.CommutativeSemiring._._._._._.\8729-cong")
d584 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d813)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d574) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d575) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d576) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d577) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d578) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d579) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d580) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name585 = ("Algebra.CommutativeSemiring._._._._.identity")
d585 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d814)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d574) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d575) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d576) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d577) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d578) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d579) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d580) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name586 = ("Algebra.CommutativeSemiring._.*-isCommutativeMonoid")
d586 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d834)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d574) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d575) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d576) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d577) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d578) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d579) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d580) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name587 = ("Algebra.CommutativeSemiring._._._.*-isMonoid")
d587 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d815)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d574) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d575) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d576) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d577) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d578) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d579) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d580) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name588 = ("Algebra.CommutativeSemiring._._._._.isSemigroup")
d588 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d816)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d574) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d575) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d576) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d577) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d578) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d579) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d580) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name589 = ("Algebra.CommutativeSemiring._._._._._._.assoc")
d589 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d817)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d574) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d575) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d576) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d577) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d578) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d579) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d580) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name590 = ("Algebra.CommutativeSemiring._._._._.comm")
d590 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d818)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d574) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d575) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d576) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d577) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d578) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d579) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d580) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name591 = ("Algebra.CommutativeSemiring._._._._._._.\8729-cong")
d591 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d819)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d574) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d575) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d576) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d577) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d578) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d579) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d580) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name592 = ("Algebra.CommutativeSemiring._._._._._.identity")
d592 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d820)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d574) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d575) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d576) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d577) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d578) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d579) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d580) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name593
  = ("Algebra.CommutativeSemiring._._._.+-isCommutativeMonoid")
d593 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d821)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d574) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d575) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d576) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d577) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d578) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d579) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d580) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name594 = ("Algebra.CommutativeSemiring._._._._.isMonoid")
d594 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d822)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d574) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d575) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d576) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d577) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d578) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d579) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d580) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name595 = ("Algebra.CommutativeSemiring._._._._._.isSemigroup")
d595 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d823)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d574) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d575) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d576) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d577) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d578) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d579) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d580) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name596 = ("Algebra.CommutativeSemiring._._._.distrib")
d596 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d824)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d574) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d575) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d576) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d577) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d578) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d579) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d580) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name597
  = ("Algebra.CommutativeSemiring._.isCommutativeSemiringWithoutOne")
d597 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d835)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d574) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d575) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d576) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d577) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d578) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d579) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d580) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name598 = ("Algebra.CommutativeSemiring._._._._._._.isEquivalence")
d598 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d825)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d574) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d575) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d576) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d577) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d578) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d579) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d580) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name599 = ("Algebra.CommutativeSemiring._._._.isNearSemiring")
d599 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d826)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d574) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d575) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d576) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d577) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d578) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d579) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d580) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name600 = ("Algebra.CommutativeSemiring._.isSemiring")
d600 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d809)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d574) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d575) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d576) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d577) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d578) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d579) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d580) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name601
  = ("Algebra.CommutativeSemiring._._.isSemiringWithoutAnnihilatingZero")
d601 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d827)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d574) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d575) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d576) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d577) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d578) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d579) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d580) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name602 = ("Algebra.CommutativeSemiring._._.isSemiringWithoutOne")
d602 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d828)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d574) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d575) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d576) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d577) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d578) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d579) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d580) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name603 = ("Algebra.CommutativeSemiring._._._._._._._.refl")
d603 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d829)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d574) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d575) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d576) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d577) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d578) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d579) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d580) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name604 = ("Algebra.CommutativeSemiring._._._._._._._.reflexive")
d604 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d830)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d574) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d575) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d576) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d577) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d578) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d579) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d580) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name605 = ("Algebra.CommutativeSemiring._._._._._._._.sym")
d605 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d831)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d574) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d575) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d576) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d577) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d578) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d579) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d580) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name606 = ("Algebra.CommutativeSemiring._._._._._._._.trans")
d606 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d832)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d574) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d575) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d576) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d577) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d578) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d579) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d580) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name607 = ("Algebra.CommutativeSemiring._._.zero")
d607 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((MAlonzo.Algebra.Structures.d833)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d574) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d575) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d576) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d577) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d578) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d579) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d580) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name608 = ("Algebra.CommutativeSemiring.semiring")
d608 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((C393)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d574) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d575) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d576) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d577) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d578) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d579) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d600) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name610 = ("Algebra.CommutativeSemiring._._*_")
d610 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d404)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name611 = ("Algebra.CommutativeSemiring._._+_")
d611 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d403)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name612 = ("Algebra.CommutativeSemiring._._\8776_")
d612 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d402)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name613 = ("Algebra.CommutativeSemiring._._._._._.assoc")
d613 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d409)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name614 = ("Algebra.CommutativeSemiring._._._._._.\8729-cong")
d614 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d410)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name615 = ("Algebra.CommutativeSemiring._._._._.identity")
d615 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d411)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name616 = ("Algebra.CommutativeSemiring._._._.*-isMonoid")
d616 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d412)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name617 = ("Algebra.CommutativeSemiring._._._._.isSemigroup")
d617 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d413)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name618 = ("Algebra.CommutativeSemiring._._.*-monoid")
d618 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d441)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name619 = ("Algebra.CommutativeSemiring._._._.rawMonoid")
d619 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d442)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name620 = ("Algebra.CommutativeSemiring._._._.semigroup")
d620 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d443)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name621 = ("Algebra.CommutativeSemiring._._._._._._.assoc")
d621 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d414)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name622 = ("Algebra.CommutativeSemiring._._._._.comm")
d622 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d415)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name623 = ("Algebra.CommutativeSemiring._._.+-commutativeMonoid")
d623 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d446)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name624 = ("Algebra.CommutativeSemiring._._._._._._.\8729-cong")
d624 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d416)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name625 = ("Algebra.CommutativeSemiring._._._._._.identity")
d625 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d417)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name626
  = ("Algebra.CommutativeSemiring._._._.+-isCommutativeMonoid")
d626 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d418)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name627 = ("Algebra.CommutativeSemiring._._._._.isMonoid")
d627 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d419)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name628 = ("Algebra.CommutativeSemiring._._._._._.isSemigroup")
d628 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d420)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name629 = ("Algebra.CommutativeSemiring._._._.monoid")
d629 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d452)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name630 = ("Algebra.CommutativeSemiring._._._._.rawMonoid")
d630 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d453)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name631 = ("Algebra.CommutativeSemiring._._._._.semigroup")
d631 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d454)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name632 = ("Algebra.CommutativeSemiring._.0#")
d632 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d405)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name633 = ("Algebra.CommutativeSemiring._.1#")
d633 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d406)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name634 = ("Algebra.CommutativeSemiring._.Carrier")
d634 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d401)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name635 = ("Algebra.CommutativeSemiring._._._.distrib")
d635 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d421)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name636 = ("Algebra.CommutativeSemiring._._._._._._.isEquivalence")
d636 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d422)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name637 = ("Algebra.CommutativeSemiring._._._.isNearSemiring")
d637 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d423)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name638 = ("Algebra.CommutativeSemiring._.isSemiring")
d638 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d407)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name639
  = ("Algebra.CommutativeSemiring._._.isSemiringWithoutAnnihilatingZero")
d639 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d424)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name640 = ("Algebra.CommutativeSemiring._._.isSemiringWithoutOne")
d640 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d425)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name641 = ("Algebra.CommutativeSemiring._._.nearSemiring")
d641 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d492)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name642 = ("Algebra.CommutativeSemiring._._._._._._._.refl")
d642 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d426)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name643 = ("Algebra.CommutativeSemiring._._._._._._._.reflexive")
d643 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d427)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name644
  = ("Algebra.CommutativeSemiring._.semiringWithoutAnnihilatingZero")
d644 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d431)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name645 = ("Algebra.CommutativeSemiring._.semiringWithoutOne")
d645 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d466)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name646 = ("Algebra.CommutativeSemiring._._._._._.setoid")
d646 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d463)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name647 = ("Algebra.CommutativeSemiring._._._._._._._.sym")
d647 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d428)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name648 = ("Algebra.CommutativeSemiring._._._._._._._.trans")
d648 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d429)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name649 = ("Algebra.CommutativeSemiring._._.zero")
d649 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d430)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d608) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name650 = ("Algebra.CommutativeSemiring.*-commutativeMonoid")
d650 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((C64)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d574) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d575) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d577) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d579) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d586) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name651
  = ("Algebra.CommutativeSemiring.commutativeSemiringWithoutOne")
d651 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((C499)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d574) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d575) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d576) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d577) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d578) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d597) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name652 = ("Algebra.RawRing")
d652 = (())
 
data T652 a0 a1 a2 a3 a4 a5 = C652 a0 a1 a2 a3 a4 a5
name659 = ("Algebra.RawRing.Carrier")
d659 (C652 v0 _ _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d659 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.RawRing.Carrier"))
name660 = ("Algebra.RawRing._+_")
d660 (C652 _ v0 _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d660 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.RawRing._+_"))
name661 = ("Algebra.RawRing._*_")
d661 (C652 _ _ v0 _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d661 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.RawRing._*_"))
name662 = ("Algebra.RawRing.-_")
d662 (C652 _ _ _ v0 _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d662 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.RawRing.-_"))
name663 = ("Algebra.RawRing.0#")
d663 (C652 _ _ _ _ v0 _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d663 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.RawRing.0#"))
name664 = ("Algebra.RawRing.1#")
d664 (C652 _ _ _ _ _ v0) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d664 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.RawRing.1#"))
name665 = ("Algebra.Ring")
d665 = (())
 
data T665 a0 a1 a2 a3 a4 a5 a6 a7 = C665 a0 a1 a2 a3 a4 a5 a6 a7
name674 = ("Algebra.Ring.Carrier")
d674 (C665 v0 _ _ _ _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d674 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Ring.Carrier"))
name675 = ("Algebra.Ring._\8776_")
d675 (C665 _ v0 _ _ _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d675 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Ring._\8776_"))
name676 = ("Algebra.Ring._+_")
d676 (C665 _ _ v0 _ _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d676 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Ring._+_"))
name677 = ("Algebra.Ring._*_")
d677 (C665 _ _ _ v0 _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d677 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Ring._*_"))
name678 = ("Algebra.Ring.-_")
d678 (C665 _ _ _ _ v0 _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d678 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Ring.-_"))
name679 = ("Algebra.Ring.0#")
d679 (C665 _ _ _ _ _ v0 _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d679 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Ring.0#"))
name680 = ("Algebra.Ring.1#")
d680 (C665 _ _ _ _ _ _ v0 _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d680 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Ring.1#"))
name681 = ("Algebra.Ring.isRing")
d681 (C665 _ _ _ _ _ _ _ v0) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d681 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Ring.isRing"))
name683 = ("Algebra.Ring._._._._-_")
d683 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d900)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d675) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d677) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d678) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d680) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d681) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name684 = ("Algebra.Ring._._._.assoc")
d684 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d917)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d675) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d677) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d678) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d680) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d681) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name685 = ("Algebra.Ring._._._.\8729-cong")
d685 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d925)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d675) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d677) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d678) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d680) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d681) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name686 = ("Algebra.Ring._._.identity")
d686 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d918)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d675) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d677) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d678) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d680) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d681) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name687 = ("Algebra.Ring._.*-isMonoid")
d687 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d897)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d675) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d677) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d678) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d680) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d681) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name688 = ("Algebra.Ring._._.isSemigroup")
d688 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d920)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d675) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d677) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d678) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d680) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d681) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name689 = ("Algebra.Ring._._._._._.assoc")
d689 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d901)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d675) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d677) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d678) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d680) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d681) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name690 = ("Algebra.Ring._._.comm")
d690 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d902)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d675) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d677) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d678) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d680) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d681) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name691 = ("Algebra.Ring._._._._._.\8729-cong")
d691 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d915)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d675) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d677) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d678) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d680) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d681) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name692 = ("Algebra.Ring._._._._.identity")
d692 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d903)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d675) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d677) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d678) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d680) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d681) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name693 = ("Algebra.Ring._.+-isAbelianGroup")
d693 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d896)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d675) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d677) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d678) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d680) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d681) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name694 = ("Algebra.Ring._._.isCommutativeMonoid")
d694 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d905)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d675) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d677) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d678) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d680) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d681) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name695 = ("Algebra.Ring._._.isGroup")
d695 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d907)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d675) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d677) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d678) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d680) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d681) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name696 = ("Algebra.Ring._._._.isMonoid")
d696 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d908)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d675) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d677) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d678) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d680) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d681) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name697 = ("Algebra.Ring._._._._.isSemigroup")
d697 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d909)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d675) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d677) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d678) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d680) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d681) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name698 = ("Algebra.Ring._._._.\8315\185-cong")
d698 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d914)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d675) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d677) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d678) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d680) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d681) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name699 = ("Algebra.Ring._._._.inverse")
d699 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d904)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d675) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d677) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d678) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d680) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d681) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name700 = ("Algebra.Ring._.distrib")
d700 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d898)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d675) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d677) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d678) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d680) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d681) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name701 = ("Algebra.Ring._._._._._.isEquivalence")
d701 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d906)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d675) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d677) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d678) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d680) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d681) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name702 = ("Algebra.Ring._._._.isNearSemiring")
d702 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d957)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d675) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d677) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d678) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d680) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d681) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name703 = ("Algebra.Ring._.isSemiring")
d703 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d941)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d675) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d677) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d678) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d680) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d681) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name704 = ("Algebra.Ring._.isSemiringWithoutAnnihilatingZero")
d704 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d940)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d675) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d677) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d678) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d680) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d681) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name705 = ("Algebra.Ring._._.isSemiringWithoutOne")
d705 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d959)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d675) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d677) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d678) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d680) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d681) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name706 = ("Algebra.Ring._._._._._._.refl")
d706 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d910)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d675) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d677) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d678) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d680) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d681) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name707 = ("Algebra.Ring._._._._._._.reflexive")
d707 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d911)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d675) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d677) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d678) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d680) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d681) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name708 = ("Algebra.Ring._._._._._._.sym")
d708 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d912)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d675) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d677) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d678) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d680) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d681) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name709 = ("Algebra.Ring._._._._._._.trans")
d709 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d913)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d675) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d677) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d678) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d680) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d681) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name710 = ("Algebra.Ring._.zero")
d710 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d926)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d675) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d677) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d678) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d680) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d681) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name711 = ("Algebra.Ring.+-abelianGroup")
d711 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((C152)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d675) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (((d678) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                    ((Unsafe.Coerce.unsafeCoerce) (v1))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d693) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name712 = ("Algebra.Ring.semiring")
d712 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((C393)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d675) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d677) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d680) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d703) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name714 = ("Algebra.Ring._._*_")
d714 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d404)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name715 = ("Algebra.Ring._._+_")
d715 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d403)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name716 = ("Algebra.Ring._._\8776_")
d716 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d402)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name717 = ("Algebra.Ring._._._._._.assoc")
d717 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d409)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name718 = ("Algebra.Ring._._._._._.\8729-cong")
d718 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d410)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name719 = ("Algebra.Ring._._._._.identity")
d719 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d411)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name720 = ("Algebra.Ring._._._.*-isMonoid")
d720 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d412)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name721 = ("Algebra.Ring._._._._.isSemigroup")
d721 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d413)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name722 = ("Algebra.Ring._._.*-monoid")
d722 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d441)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name723 = ("Algebra.Ring._._._.rawMonoid")
d723 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d442)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name724 = ("Algebra.Ring._._._.semigroup")
d724 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d443)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name725 = ("Algebra.Ring._._._._._._.assoc")
d725 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d414)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name726 = ("Algebra.Ring._._._._.comm")
d726 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d415)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name727 = ("Algebra.Ring._._.+-commutativeMonoid")
d727 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d446)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name728 = ("Algebra.Ring._._._._._._.\8729-cong")
d728 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d416)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name729 = ("Algebra.Ring._._._._._.identity")
d729 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d417)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name730 = ("Algebra.Ring._._._.+-isCommutativeMonoid")
d730 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d418)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name731 = ("Algebra.Ring._._._._.isMonoid")
d731 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d419)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name732 = ("Algebra.Ring._._._._._.isSemigroup")
d732 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d420)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name733 = ("Algebra.Ring._._._.monoid")
d733 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d452)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name734 = ("Algebra.Ring._._._._.rawMonoid")
d734 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d453)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name735 = ("Algebra.Ring._._._._.semigroup")
d735 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d454)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name736 = ("Algebra.Ring._.0#")
d736 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d405)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name737 = ("Algebra.Ring._.1#")
d737 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d406)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name738 = ("Algebra.Ring._.Carrier")
d738 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d401)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name739 = ("Algebra.Ring._._._.distrib")
d739 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d421)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name740 = ("Algebra.Ring._._._._._._.isEquivalence")
d740 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d422)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name741 = ("Algebra.Ring._._._.isNearSemiring")
d741 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d423)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name742 = ("Algebra.Ring._.isSemiring")
d742 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d407)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name743 = ("Algebra.Ring._._.isSemiringWithoutAnnihilatingZero")
d743 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d424)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name744 = ("Algebra.Ring._._.isSemiringWithoutOne")
d744 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d425)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name745 = ("Algebra.Ring._._.nearSemiring")
d745 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d492)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name746 = ("Algebra.Ring._._._._._._._.refl")
d746 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d426)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name747 = ("Algebra.Ring._._._._._._._.reflexive")
d747 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d427)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name748 = ("Algebra.Ring._.semiringWithoutAnnihilatingZero")
d748 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d431)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name749 = ("Algebra.Ring._.semiringWithoutOne")
d749 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d466)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name750 = ("Algebra.Ring._._._._._.setoid")
d750 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d463)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name751 = ("Algebra.Ring._._._._._._._.sym")
d751 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d428)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name752 = ("Algebra.Ring._._._._._._._.trans")
d752 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d429)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name753 = ("Algebra.Ring._._.zero")
d753 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d430)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d712) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name755 = ("Algebra.Ring._._._._-_")
d755 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d166)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d711) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name756 = ("Algebra.Ring._._\8315\185")
d756 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d163)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d711) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name757 = ("Algebra.Ring._._\8729_")
d757 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d161)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d711) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name758 = ("Algebra.Ring._._\8776_")
d758 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d160)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d711) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name759 = ("Algebra.Ring._.Carrier")
d759 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d159)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d711) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name760 = ("Algebra.Ring._._._._._.assoc")
d760 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d167)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d711) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name761 = ("Algebra.Ring._._.comm")
d761 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d168)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d711) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name762 = ("Algebra.Ring._.commutativeMonoid")
d762 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d207)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d711) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name763 = ("Algebra.Ring._.group")
d763 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d182)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d711) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name764 = ("Algebra.Ring._._._._.identity")
d764 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d169)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d711) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name765 = ("Algebra.Ring._._._.inverse")
d765 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d170)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d711) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name766 = ("Algebra.Ring._.isAbelianGroup")
d766 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d164)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d711) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name767 = ("Algebra.Ring._._.isCommutativeMonoid")
d767 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d171)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d711) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name768 = ("Algebra.Ring._._._._._.isEquivalence")
d768 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d172)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d711) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name769 = ("Algebra.Ring._._.isGroup")
d769 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d173)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d711) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name770 = ("Algebra.Ring._._._.isMonoid")
d770 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d174)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d711) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name771 = ("Algebra.Ring._._._._.isSemigroup")
d771 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d175)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d711) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name772 = ("Algebra.Ring._._.monoid")
d772 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d196)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d711) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name773 = ("Algebra.Ring._._._.rawMonoid")
d773 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d197)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d711) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name774 = ("Algebra.Ring._._._._._._.refl")
d774 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d176)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d711) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name775 = ("Algebra.Ring._._._._._._.reflexive")
d775 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d177)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d711) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name776 = ("Algebra.Ring._._._.semigroup")
d776 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d200)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d711) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name777 = ("Algebra.Ring._._._._.setoid")
d777 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d201)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d711) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name778 = ("Algebra.Ring._._._._._._.sym")
d778 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d178)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d711) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name779 = ("Algebra.Ring._._._._._._.trans")
d779 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d179)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d711) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name780 = ("Algebra.Ring._.\949")
d780 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d162)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d711) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name781 = ("Algebra.Ring._._._.\8315\185-cong")
d781 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d180)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d711) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name782 = ("Algebra.Ring._._._._._.\8729-cong")
d782 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d181)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d711) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name783 = ("Algebra.Ring.rawRing")
d783 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((C652)
               ((Unsafe.Coerce.unsafeCoerce)
                  ((d674) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d676) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                ((d677) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d678) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d679) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d680) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name784 = ("Algebra.CommutativeRing")
d784 = (())
 
data T784 a0 a1 a2 a3 a4 a5 a6 a7 = C784 a0 a1 a2 a3 a4 a5 a6 a7
name793 = ("Algebra.CommutativeRing.Carrier")
d793 (C784 v0 _ _ _ _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d793 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.CommutativeRing.Carrier"))
name794 = ("Algebra.CommutativeRing._\8776_")
d794 (C784 _ v0 _ _ _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d794 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.CommutativeRing._\8776_"))
name795 = ("Algebra.CommutativeRing._+_")
d795 (C784 _ _ v0 _ _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d795 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.CommutativeRing._+_"))
name796 = ("Algebra.CommutativeRing._*_")
d796 (C784 _ _ _ v0 _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d796 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.CommutativeRing._*_"))
name797 = ("Algebra.CommutativeRing.-_")
d797 (C784 _ _ _ _ v0 _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d797 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.CommutativeRing.-_"))
name798 = ("Algebra.CommutativeRing.0#")
d798 (C784 _ _ _ _ _ v0 _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d798 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.CommutativeRing.0#"))
name799 = ("Algebra.CommutativeRing.1#")
d799 (C784 _ _ _ _ _ _ v0 _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d799 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.CommutativeRing.1#"))
name800 = ("Algebra.CommutativeRing.isCommutativeRing")
d800 (C784 _ _ _ _ _ _ _ v0) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d800 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.CommutativeRing.isCommutativeRing"))
name802 = ("Algebra.CommutativeRing._._._._._-_")
d802 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1027)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name803 = ("Algebra.CommutativeRing._._._._.assoc")
d803 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1028)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name804 = ("Algebra.CommutativeRing._.*-comm")
d804 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1025)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name805 = ("Algebra.CommutativeRing._._._._.\8729-cong")
d805 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1029)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name806 = ("Algebra.CommutativeRing._._._.identity")
d806 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1030)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name807 = ("Algebra.CommutativeRing._._.*-isMonoid")
d807 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1031)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name808 = ("Algebra.CommutativeRing._._._.isSemigroup")
d808 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1032)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name809 = ("Algebra.CommutativeRing._._._._._._.assoc")
d809 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1033)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name810 = ("Algebra.CommutativeRing._._._.comm")
d810 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1034)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name811 = ("Algebra.CommutativeRing._._._._._._.\8729-cong")
d811 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1035)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name812 = ("Algebra.CommutativeRing._._._._._.identity")
d812 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1036)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name813 = ("Algebra.CommutativeRing._._.+-isAbelianGroup")
d813 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1037)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name814 = ("Algebra.CommutativeRing._._._.isCommutativeMonoid")
d814 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1038)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name815 = ("Algebra.CommutativeRing._._._.isGroup")
d815 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1039)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name816 = ("Algebra.CommutativeRing._._._._.isMonoid")
d816 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1040)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name817 = ("Algebra.CommutativeRing._._._._._.isSemigroup")
d817 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1041)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name818 = ("Algebra.CommutativeRing._._._._.\8315\185-cong")
d818 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1042)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name819 = ("Algebra.CommutativeRing._._._._.inverse")
d819 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1043)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name820 = ("Algebra.CommutativeRing._._.distrib")
d820 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1044)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name821 = ("Algebra.CommutativeRing._.isCommutativeSemiring")
d821 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1055)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name822
  = ("Algebra.CommutativeRing._._.isCommutativeSemiringWithoutOne")
d822 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1072)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name823 = ("Algebra.CommutativeRing._._._._._._.isEquivalence")
d823 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1045)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name824 = ("Algebra.CommutativeRing._._._._.isNearSemiring")
d824 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1046)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name825 = ("Algebra.CommutativeRing._.isRing")
d825 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1024)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name826 = ("Algebra.CommutativeRing._._.isSemiring")
d826 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1047)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name827
  = ("Algebra.CommutativeRing._._.isSemiringWithoutAnnihilatingZero")
d827 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1048)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name828 = ("Algebra.CommutativeRing._._._.isSemiringWithoutOne")
d828 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1049)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name829 = ("Algebra.CommutativeRing._._._._._._._.refl")
d829 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1050)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name830 = ("Algebra.CommutativeRing._._._._._._._.reflexive")
d830 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1051)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name831 = ("Algebra.CommutativeRing._._._._._._._.sym")
d831 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1052)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name832 = ("Algebra.CommutativeRing._._._._._._._.trans")
d832 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1053)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name833 = ("Algebra.CommutativeRing._._.zero")
d833 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1054)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d800) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name834 = ("Algebra.CommutativeRing.ring")
d834 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((C665)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d797) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d825) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name835 = ("Algebra.CommutativeRing.commutativeSemiring")
d835 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((((C566)
                ((Unsafe.Coerce.unsafeCoerce)
                   ((d793) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d794) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d795) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d796) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d798) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d799) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d821) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name837 = ("Algebra.CommutativeRing._._*_")
d837 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d677)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name838 = ("Algebra.CommutativeRing._._+_")
d838 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d676)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name839 = ("Algebra.CommutativeRing._._._._._-_")
d839 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d683)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name840 = ("Algebra.CommutativeRing._._\8776_")
d840 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d675)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name841 = ("Algebra.CommutativeRing._._._._.assoc")
d841 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d684)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name842 = ("Algebra.CommutativeRing._._._._.\8729-cong")
d842 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d685)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name843 = ("Algebra.CommutativeRing._._._.identity")
d843 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d686)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name844 = ("Algebra.CommutativeRing._._.*-isMonoid")
d844 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d687)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name845 = ("Algebra.CommutativeRing._._._.isSemigroup")
d845 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d688)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name846 = ("Algebra.CommutativeRing._._._.*-monoid")
d846 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d722)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name847 = ("Algebra.CommutativeRing._._._._.rawMonoid")
d847 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d723)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name848 = ("Algebra.CommutativeRing._._._._.semigroup")
d848 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d724)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name849 = ("Algebra.CommutativeRing._.+-abelianGroup")
d849 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d711)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name850 = ("Algebra.CommutativeRing._._._._._._.assoc")
d850 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d689)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name851 = ("Algebra.CommutativeRing._._._.comm")
d851 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d690)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name852 = ("Algebra.CommutativeRing._._._.+-commutativeMonoid")
d852 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d727)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name853 = ("Algebra.CommutativeRing._._._._._._.\8729-cong")
d853 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d691)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name854 = ("Algebra.CommutativeRing._._.group")
d854 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d763)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name855 = ("Algebra.CommutativeRing._._._._._.identity")
d855 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d692)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name856 = ("Algebra.CommutativeRing._._.+-isAbelianGroup")
d856 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d693)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name857 = ("Algebra.CommutativeRing._._._.isCommutativeMonoid")
d857 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d694)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name858 = ("Algebra.CommutativeRing._._._.isGroup")
d858 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d695)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name859 = ("Algebra.CommutativeRing._._._._.isMonoid")
d859 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d696)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name860 = ("Algebra.CommutativeRing._._._._._.isSemigroup")
d860 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d697)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name861 = ("Algebra.CommutativeRing._._._._.monoid")
d861 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d733)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name862 = ("Algebra.CommutativeRing._._._._._.rawMonoid")
d862 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d734)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name863 = ("Algebra.CommutativeRing._._._._._.semigroup")
d863 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d735)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name864 = ("Algebra.CommutativeRing._.-_")
d864 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d678)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name865 = ("Algebra.CommutativeRing._._._._.\8315\185-cong")
d865 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d698)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name866 = ("Algebra.CommutativeRing._._._._.inverse")
d866 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d699)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name867 = ("Algebra.CommutativeRing._.0#")
d867 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d679)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name868 = ("Algebra.CommutativeRing._.1#")
d868 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d680)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name869 = ("Algebra.CommutativeRing._.Carrier")
d869 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d674)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name870 = ("Algebra.CommutativeRing._._.distrib")
d870 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d700)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name871 = ("Algebra.CommutativeRing._._._._._._.isEquivalence")
d871 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d701)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name872 = ("Algebra.CommutativeRing._._._._.isNearSemiring")
d872 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d702)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name873 = ("Algebra.CommutativeRing._.isRing")
d873 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d681)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name874 = ("Algebra.CommutativeRing._._.isSemiring")
d874 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d703)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name875
  = ("Algebra.CommutativeRing._._.isSemiringWithoutAnnihilatingZero")
d875 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d704)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name876 = ("Algebra.CommutativeRing._._._.isSemiringWithoutOne")
d876 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d705)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name877 = ("Algebra.CommutativeRing._._._.nearSemiring")
d877 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d745)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name878 = ("Algebra.CommutativeRing._.rawRing")
d878 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d783)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name879 = ("Algebra.CommutativeRing._._._._._._._.refl")
d879 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d706)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name880 = ("Algebra.CommutativeRing._._._._._._._.reflexive")
d880 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d707)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name881 = ("Algebra.CommutativeRing._.semiring")
d881 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d712)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name882
  = ("Algebra.CommutativeRing._._.semiringWithoutAnnihilatingZero")
d882 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d748)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name883 = ("Algebra.CommutativeRing._._.semiringWithoutOne")
d883 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d749)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name884 = ("Algebra.CommutativeRing._._._._._._.setoid")
d884 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d750)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name885 = ("Algebra.CommutativeRing._._._._._._._.sym")
d885 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d708)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name886 = ("Algebra.CommutativeRing._._._._._._._.trans")
d886 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d709)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name887 = ("Algebra.CommutativeRing._._.zero")
d887 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d710)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d834) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name889 = ("Algebra.CommutativeRing._._*_")
d889 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d577)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name890 = ("Algebra.CommutativeRing._._+_")
d890 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d576)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name891 = ("Algebra.CommutativeRing._._\8776_")
d891 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d575)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name892 = ("Algebra.CommutativeRing._._._._._._.assoc")
d892 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d582)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name893 = ("Algebra.CommutativeRing._._.*-comm")
d893 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d583)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name894 = ("Algebra.CommutativeRing._.*-commutativeMonoid")
d894 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d650)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name895 = ("Algebra.CommutativeRing._._._._._._.\8729-cong")
d895 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d584)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name896 = ("Algebra.CommutativeRing._._._._._.identity")
d896 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d585)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name897 = ("Algebra.CommutativeRing._._.*-isCommutativeMonoid")
d897 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d586)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name898 = ("Algebra.CommutativeRing._._._._.*-isMonoid")
d898 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d587)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name899 = ("Algebra.CommutativeRing._._._._._.isSemigroup")
d899 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d588)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name900 = ("Algebra.CommutativeRing._._._.*-monoid")
d900 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d618)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name901 = ("Algebra.CommutativeRing._._._._.rawMonoid")
d901 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d619)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name902 = ("Algebra.CommutativeRing._._._._.semigroup")
d902 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d620)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name903 = ("Algebra.CommutativeRing._._._._._._._.assoc")
d903 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d589)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name904 = ("Algebra.CommutativeRing._._._._._.comm")
d904 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d590)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name905 = ("Algebra.CommutativeRing._._._.+-commutativeMonoid")
d905 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d623)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name906 = ("Algebra.CommutativeRing._._._._._._._.\8729-cong")
d906 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d591)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name907 = ("Algebra.CommutativeRing._._._._._._.identity")
d907 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d592)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name908 = ("Algebra.CommutativeRing._._._._.+-isCommutativeMonoid")
d908 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d593)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name909 = ("Algebra.CommutativeRing._._._._._.isMonoid")
d909 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d594)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name910 = ("Algebra.CommutativeRing._._._._._._.isSemigroup")
d910 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d595)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name911 = ("Algebra.CommutativeRing._._._._.monoid")
d911 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d629)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name912 = ("Algebra.CommutativeRing._._._._._.rawMonoid")
d912 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d630)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name913 = ("Algebra.CommutativeRing._._._._._.semigroup")
d913 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d631)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name914 = ("Algebra.CommutativeRing._.0#")
d914 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d578)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name915 = ("Algebra.CommutativeRing._.1#")
d915 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d579)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name916 = ("Algebra.CommutativeRing._.Carrier")
d916 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d574)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name917
  = ("Algebra.CommutativeRing._.commutativeSemiringWithoutOne")
d917 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d651)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name918 = ("Algebra.CommutativeRing._._._._.distrib")
d918 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d596)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name919 = ("Algebra.CommutativeRing._.isCommutativeSemiring")
d919 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d580)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name920
  = ("Algebra.CommutativeRing._._.isCommutativeSemiringWithoutOne")
d920 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d597)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name921 = ("Algebra.CommutativeRing._._._._._._._.isEquivalence")
d921 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d598)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name922 = ("Algebra.CommutativeRing._._._._.isNearSemiring")
d922 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d599)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name923 = ("Algebra.CommutativeRing._._.isSemiring")
d923 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d600)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name924
  = ("Algebra.CommutativeRing._._._.isSemiringWithoutAnnihilatingZero")
d924 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d601)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name925 = ("Algebra.CommutativeRing._._._.isSemiringWithoutOne")
d925 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d602)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name926 = ("Algebra.CommutativeRing._._._.nearSemiring")
d926 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d641)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name927 = ("Algebra.CommutativeRing._._._._._._._._.refl")
d927 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d603)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name928 = ("Algebra.CommutativeRing._._._._._._._._.reflexive")
d928 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d604)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name929 = ("Algebra.CommutativeRing._.semiring")
d929 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d608)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name930
  = ("Algebra.CommutativeRing._._.semiringWithoutAnnihilatingZero")
d930 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d644)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name931 = ("Algebra.CommutativeRing._._.semiringWithoutOne")
d931 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d645)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name932 = ("Algebra.CommutativeRing._._._._._._.setoid")
d932 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d646)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name933 = ("Algebra.CommutativeRing._._._._._._._._.sym")
d933 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d605)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name934 = ("Algebra.CommutativeRing._._._._._._._._.trans")
d934 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d606)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name935 = ("Algebra.CommutativeRing._._._.zero")
d935 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d607)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d835) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name936 = ("Algebra.Lattice")
d936 = (())
 
data T936 a0 a1 a2 a3 a4 = C936 a0 a1 a2 a3 a4
name942 = ("Algebra.Lattice.Carrier")
d942 (C936 v0 _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d942 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Lattice.Carrier"))
name943 = ("Algebra.Lattice._\8776_")
d943 (C936 _ v0 _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d943 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Lattice._\8776_"))
name944 = ("Algebra.Lattice._\8744_")
d944 (C936 _ _ v0 _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d944 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Lattice._\8744_"))
name945 = ("Algebra.Lattice._\8743_")
d945 (C936 _ _ _ v0 _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d945 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Lattice._\8743_"))
name946 = ("Algebra.Lattice.isLattice")
d946 (C936 _ _ _ _ v0) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d946 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.Lattice.isLattice"))
name948 = ("Algebra.Lattice._.absorptive")
d948 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d1149)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d942) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d943) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d944) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d945) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d946) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name949 = ("Algebra.Lattice._.isEquivalence")
d949 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d1142)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d942) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d943) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d944) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d945) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d946) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name950 = ("Algebra.Lattice._._.refl")
d950 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d1151)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d942) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d943) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d944) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d945) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d946) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name951 = ("Algebra.Lattice._._.reflexive")
d951 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d1152)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d942) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d943) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d944) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d945) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d946) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name952 = ("Algebra.Lattice._._.sym")
d952 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d1153)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d942) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d943) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d944) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d945) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d946) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name953 = ("Algebra.Lattice._._.trans")
d953 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d1154)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d942) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d943) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d944) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d945) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d946) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name954 = ("Algebra.Lattice._.\8743-assoc")
d954 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d1147)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d942) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d943) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d944) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d945) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d946) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name955 = ("Algebra.Lattice._.\8743-comm")
d955 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d1146)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d942) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d943) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d944) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d945) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d946) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name956 = ("Algebra.Lattice._.\8743-cong")
d956 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d1148)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d942) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d943) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d944) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d945) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d946) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name957 = ("Algebra.Lattice._.\8744-assoc")
d957 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d1144)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d942) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d943) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d944) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d945) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d946) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name958 = ("Algebra.Lattice._.\8744-comm")
d958 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d1143)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d942) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d943) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d944) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d945) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d946) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name959 = ("Algebra.Lattice._.\8744-cong")
d959 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d1145)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d942) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d943) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d944) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d945) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d946) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name960 = ("Algebra.Lattice.setoid")
d960 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((MAlonzo.Relation.Binary.C56)
            ((Unsafe.Coerce.unsafeCoerce)
               ((d942) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d943) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d949) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name961 = ("Algebra.DistributiveLattice")
d961 = (())
 
data T961 a0 a1 a2 a3 a4 = C961 a0 a1 a2 a3 a4
name967 = ("Algebra.DistributiveLattice.Carrier")
d967 (C961 v0 _ _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d967 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.DistributiveLattice.Carrier"))
name968 = ("Algebra.DistributiveLattice._\8776_")
d968 (C961 _ v0 _ _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d968 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.DistributiveLattice._\8776_"))
name969 = ("Algebra.DistributiveLattice._\8744_")
d969 (C961 _ _ v0 _ _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d969 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.DistributiveLattice._\8744_"))
name970 = ("Algebra.DistributiveLattice._\8743_")
d970 (C961 _ _ _ v0 _) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d970 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.DistributiveLattice._\8743_"))
name971 = ("Algebra.DistributiveLattice.isDistributiveLattice")
d971 (C961 _ _ _ _ v0) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d971 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.DistributiveLattice.isDistributiveLattice"))
name973 = ("Algebra.DistributiveLattice._._.absorptive")
d973 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d1211)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d967) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d968) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d969) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d970) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d971) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name974 = ("Algebra.DistributiveLattice._._.isEquivalence")
d974 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d1212)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d967) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d968) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d969) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d970) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d971) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name975 = ("Algebra.DistributiveLattice._.isLattice")
d975 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d1208)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d967) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d968) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d969) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d970) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d971) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name976 = ("Algebra.DistributiveLattice._._._.refl")
d976 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d1213)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d967) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d968) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d969) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d970) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d971) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name977 = ("Algebra.DistributiveLattice._._._.reflexive")
d977 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d1214)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d967) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d968) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d969) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d970) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d971) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name978 = ("Algebra.DistributiveLattice._._._.sym")
d978 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d1215)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d967) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d968) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d969) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d970) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d971) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name979 = ("Algebra.DistributiveLattice._._._.trans")
d979 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d1216)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d967) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d968) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d969) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d970) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d971) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name980 = ("Algebra.DistributiveLattice._._.\8743-assoc")
d980 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d1217)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d967) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d968) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d969) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d970) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d971) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name981 = ("Algebra.DistributiveLattice._._.\8743-comm")
d981 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d1218)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d967) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d968) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d969) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d970) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d971) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name982 = ("Algebra.DistributiveLattice._._.\8743-cong")
d982 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d1219)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d967) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d968) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d969) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d970) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d971) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name983 = ("Algebra.DistributiveLattice._._.\8744-assoc")
d983 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d1220)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d967) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d968) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d969) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d970) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d971) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name984 = ("Algebra.DistributiveLattice._._.\8744-comm")
d984 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d1221)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d967) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d968) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d969) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d970) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d971) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name985 = ("Algebra.DistributiveLattice._._.\8744-cong")
d985 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d1222)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d967) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d968) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d969) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d970) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d971) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name986 = ("Algebra.DistributiveLattice._.\8744-\8743-distrib\691")
d986 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((MAlonzo.Algebra.Structures.d1209)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d967) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d968) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d969) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d970) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d971) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name987 = ("Algebra.DistributiveLattice.lattice")
d987 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((C936)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d967) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d968) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d969) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d970) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d975) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name989 = ("Algebra.DistributiveLattice._._\8743_")
d989 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d945)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d987) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name990 = ("Algebra.DistributiveLattice._._\8744_")
d990 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d944)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d987) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name991 = ("Algebra.DistributiveLattice._._\8776_")
d991 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d943)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d987) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name992 = ("Algebra.DistributiveLattice._.Carrier")
d992 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d942)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d987) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name993 = ("Algebra.DistributiveLattice._._.absorptive")
d993 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d948)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d987) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name994 = ("Algebra.DistributiveLattice._._.isEquivalence")
d994 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d949)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d987) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name995 = ("Algebra.DistributiveLattice._.isLattice")
d995 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d946)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d987) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name996 = ("Algebra.DistributiveLattice._._._.refl")
d996 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d950)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d987) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name997 = ("Algebra.DistributiveLattice._._._.reflexive")
d997 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d951)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d987) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name998 = ("Algebra.DistributiveLattice._.setoid")
d998 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d960)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d987) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name999 = ("Algebra.DistributiveLattice._._._.sym")
d999 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d952)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d987) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1000 = ("Algebra.DistributiveLattice._._._.trans")
d1000 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d953)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d987) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1001 = ("Algebra.DistributiveLattice._._.\8743-assoc")
d1001 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d954)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d987) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1002 = ("Algebra.DistributiveLattice._._.\8743-comm")
d1002 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d955)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d987) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1003 = ("Algebra.DistributiveLattice._._.\8743-cong")
d1003 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d956)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d987) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1004 = ("Algebra.DistributiveLattice._._.\8744-assoc")
d1004 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d957)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d987) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1005 = ("Algebra.DistributiveLattice._._.\8744-comm")
d1005 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d958)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d987) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1006 = ("Algebra.DistributiveLattice._._.\8744-cong")
d1006 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d959)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d987) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1007 = ("Algebra.BooleanAlgebra")
d1007 = (())
 
data T1007 a0 a1 a2 a3 a4 a5 a6 a7 = C1007 a0 a1 a2 a3 a4 a5 a6 a7
name1016 = ("Algebra.BooleanAlgebra.Carrier")
d1016 (C1007 v0 _ _ _ _ _ _ _)
  = ((Unsafe.Coerce.unsafeCoerce) (v0))
d1016 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.BooleanAlgebra.Carrier"))
name1017 = ("Algebra.BooleanAlgebra._\8776_")
d1017 (C1007 _ v0 _ _ _ _ _ _)
  = ((Unsafe.Coerce.unsafeCoerce) (v0))
d1017 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.BooleanAlgebra._\8776_"))
name1018 = ("Algebra.BooleanAlgebra._\8744_")
d1018 (C1007 _ _ v0 _ _ _ _ _)
  = ((Unsafe.Coerce.unsafeCoerce) (v0))
d1018 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.BooleanAlgebra._\8744_"))
name1019 = ("Algebra.BooleanAlgebra._\8743_")
d1019 (C1007 _ _ _ v0 _ _ _ _)
  = ((Unsafe.Coerce.unsafeCoerce) (v0))
d1019 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.BooleanAlgebra._\8743_"))
name1020 = ("Algebra.BooleanAlgebra.\172_")
d1020 (C1007 _ _ _ _ v0 _ _ _)
  = ((Unsafe.Coerce.unsafeCoerce) (v0))
d1020 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.BooleanAlgebra.\172_"))
name1021 = ("Algebra.BooleanAlgebra.\8868")
d1021 (C1007 _ _ _ _ _ v0 _ _)
  = ((Unsafe.Coerce.unsafeCoerce) (v0))
d1021 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.BooleanAlgebra.\8868"))
name1022 = ("Algebra.BooleanAlgebra.\8869")
d1022 (C1007 _ _ _ _ _ _ v0 _)
  = ((Unsafe.Coerce.unsafeCoerce) (v0))
d1022 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.BooleanAlgebra.\8869"))
name1023 = ("Algebra.BooleanAlgebra.isBooleanAlgebra")
d1023 (C1007 _ _ _ _ _ _ _ v0)
  = ((Unsafe.Coerce.unsafeCoerce) (v0))
d1023 v0
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Algebra.BooleanAlgebra.isBooleanAlgebra"))
name1025 = ("Algebra.BooleanAlgebra._._._.absorptive")
d1025 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1289)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d1016) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d1017) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d1018) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d1019) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d1020) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d1021) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d1022) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1023) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1026 = ("Algebra.BooleanAlgebra._.isDistributiveLattice")
d1026 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1284)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d1016) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d1017) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d1018) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d1019) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d1020) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d1021) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d1022) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1023) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1027 = ("Algebra.BooleanAlgebra._._._.isEquivalence")
d1027 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1290)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d1016) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d1017) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d1018) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d1019) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d1020) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d1021) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d1022) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1023) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1028 = ("Algebra.BooleanAlgebra._._.isLattice")
d1028 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1291)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d1016) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d1017) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d1018) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d1019) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d1020) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d1021) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d1022) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1023) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1029 = ("Algebra.BooleanAlgebra._._._._.refl")
d1029 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1292)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d1016) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d1017) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d1018) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d1019) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d1020) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d1021) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d1022) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1023) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1030 = ("Algebra.BooleanAlgebra._._._._.reflexive")
d1030 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1293)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d1016) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d1017) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d1018) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d1019) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d1020) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d1021) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d1022) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1023) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1031 = ("Algebra.BooleanAlgebra._._._._.sym")
d1031 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1294)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d1016) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d1017) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d1018) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d1019) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d1020) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d1021) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d1022) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1023) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1032 = ("Algebra.BooleanAlgebra._._._._.trans")
d1032 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1295)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d1016) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d1017) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d1018) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d1019) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d1020) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d1021) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d1022) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1023) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1033 = ("Algebra.BooleanAlgebra._.\172-cong")
d1033 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1287)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d1016) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d1017) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d1018) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d1019) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d1020) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d1021) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d1022) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1023) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1034 = ("Algebra.BooleanAlgebra._._._.\8743-assoc")
d1034 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1296)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d1016) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d1017) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d1018) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d1019) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d1020) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d1021) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d1022) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1023) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1035 = ("Algebra.BooleanAlgebra._._._.\8743-comm")
d1035 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1297)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d1016) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d1017) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d1018) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d1019) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d1020) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d1021) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d1022) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1023) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1036 = ("Algebra.BooleanAlgebra._.\8743-complement\691")
d1036 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1286)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d1016) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d1017) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d1018) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d1019) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d1020) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d1021) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d1022) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1023) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1037 = ("Algebra.BooleanAlgebra._._._.\8743-cong")
d1037 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1298)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d1016) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d1017) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d1018) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d1019) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d1020) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d1021) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d1022) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1023) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1038 = ("Algebra.BooleanAlgebra._._._.\8744-assoc")
d1038 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1299)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d1016) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d1017) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d1018) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d1019) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d1020) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d1021) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d1022) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1023) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1039 = ("Algebra.BooleanAlgebra._._._.\8744-comm")
d1039 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1300)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d1016) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d1017) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d1018) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d1019) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d1020) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d1021) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d1022) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1023) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1040 = ("Algebra.BooleanAlgebra._.\8744-complement\691")
d1040 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1285)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d1016) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d1017) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d1018) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d1019) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d1020) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d1021) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d1022) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1023) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1041 = ("Algebra.BooleanAlgebra._._._.\8744-cong")
d1041 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1301)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d1016) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d1017) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d1018) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d1019) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d1020) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d1021) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d1022) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1023) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1042 = ("Algebra.BooleanAlgebra._._.\8744-\8743-distrib\691")
d1042 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Algebra.Structures.d1302)
                 ((Unsafe.Coerce.unsafeCoerce)
                    ((d1016) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                ((Unsafe.Coerce.unsafeCoerce)
                   (\ v1 ->
                      (\ v2 ->
                         ((((d1017) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                             ((Unsafe.Coerce.unsafeCoerce) (v1)))
                            ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
               ((Unsafe.Coerce.unsafeCoerce)
                  (\ v1 ->
                     (\ v2 ->
                        ((((d1018) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                            ((Unsafe.Coerce.unsafeCoerce) (v1)))
                           ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
              ((Unsafe.Coerce.unsafeCoerce)
                 (\ v1 ->
                    (\ v2 ->
                       ((((d1019) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                           ((Unsafe.Coerce.unsafeCoerce) (v1)))
                          ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (((d1020) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                      ((Unsafe.Coerce.unsafeCoerce) (v1))))))
            ((Unsafe.Coerce.unsafeCoerce)
               ((d1021) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
           ((Unsafe.Coerce.unsafeCoerce)
              ((d1022) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1023) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1043 = ("Algebra.BooleanAlgebra.distributiveLattice")
d1043 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((((C961)
              ((Unsafe.Coerce.unsafeCoerce)
                 ((d1016) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v1 ->
                   (\ v2 ->
                      ((((d1017) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                          ((Unsafe.Coerce.unsafeCoerce) (v1)))
                         ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v1 ->
                  (\ v2 ->
                     ((((d1018) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v1 ->
                 (\ v2 ->
                    ((((d1019) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1)))
                       ((Unsafe.Coerce.unsafeCoerce) (v2)))))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1026) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1045 = ("Algebra.BooleanAlgebra._._\8743_")
d1045 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d970)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1043) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1046 = ("Algebra.BooleanAlgebra._._\8744_")
d1046 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d969)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1043) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1047 = ("Algebra.BooleanAlgebra._._\8776_")
d1047 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d968)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1043) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1048 = ("Algebra.BooleanAlgebra._.Carrier")
d1048 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d967)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1043) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1049 = ("Algebra.BooleanAlgebra._._._.absorptive")
d1049 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d973)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1043) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1050 = ("Algebra.BooleanAlgebra._.isDistributiveLattice")
d1050 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d971)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1043) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1051 = ("Algebra.BooleanAlgebra._._._.isEquivalence")
d1051 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d974)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1043) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1052 = ("Algebra.BooleanAlgebra._._.isLattice")
d1052 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d975)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1043) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1053 = ("Algebra.BooleanAlgebra._.lattice")
d1053 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d987)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1043) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1054 = ("Algebra.BooleanAlgebra._._._._.refl")
d1054 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d976)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1043) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1055 = ("Algebra.BooleanAlgebra._._._._.reflexive")
d1055 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d977)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1043) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1056 = ("Algebra.BooleanAlgebra._._.setoid")
d1056 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d998)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1043) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1057 = ("Algebra.BooleanAlgebra._._._._.sym")
d1057 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d978)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1043) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1058 = ("Algebra.BooleanAlgebra._._._._.trans")
d1058 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d979)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1043) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1059 = ("Algebra.BooleanAlgebra._._._.\8743-assoc")
d1059 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d980)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1043) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1060 = ("Algebra.BooleanAlgebra._._._.\8743-comm")
d1060 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d981)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1043) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1061 = ("Algebra.BooleanAlgebra._._._.\8743-cong")
d1061 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d982)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1043) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1062 = ("Algebra.BooleanAlgebra._._._.\8744-assoc")
d1062 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d983)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1043) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1063 = ("Algebra.BooleanAlgebra._._._.\8744-comm")
d1063 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d984)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1043) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1064 = ("Algebra.BooleanAlgebra._._._.\8744-cong")
d1064 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d985)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1043) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name1065 = ("Algebra.BooleanAlgebra._._.\8744-\8743-distrib\691")
d1065 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d986)
          ((Unsafe.Coerce.unsafeCoerce)
             ((d1043) ((Unsafe.Coerce.unsafeCoerce) (v0))))))