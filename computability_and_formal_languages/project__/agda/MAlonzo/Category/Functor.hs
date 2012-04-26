{-# LANGUAGE EmptyDataDecls
           , ExistentialQuantification
           , ScopedTypeVariables
           , NoMonomorphismRestriction
  #-}
module MAlonzo.Category.Functor where
import qualified Unsafe.Coerce
import qualified MAlonzo.Data.Function
name3 = ("Category.Functor.RawFunctor")
d3 a0 = (())
 
newtype T3 a0 = C3 a0
name10 = ("Category.Functor.RawFunctor._<$>_")
d10 _ (C3 v0) = ((Unsafe.Coerce.unsafeCoerce) (v0))
d10 v0 v1
  = ((error)
       ("MAlonzo Runtime Error: incomplete pattern matching: Category.Functor.RawFunctor._<$>_"))
name13 = ("Category.Functor.RawFunctor._<$_")
d13 v0 v1 v2 v3 v4 v5
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((d10) ((Unsafe.Coerce.unsafeCoerce) (v0)))
              ((Unsafe.Coerce.unsafeCoerce) (v1)))
             ((Unsafe.Coerce.unsafeCoerce) (v3)))
            ((Unsafe.Coerce.unsafeCoerce) (v2)))
           ((Unsafe.Coerce.unsafeCoerce)
              ((((((MAlonzo.Data.Function.d41)
                     ((Unsafe.Coerce.unsafeCoerce) (0)))
                    ((Unsafe.Coerce.unsafeCoerce) (0)))
                   ((Unsafe.Coerce.unsafeCoerce) (v2)))
                  ((Unsafe.Coerce.unsafeCoerce) (v3)))
                 ((Unsafe.Coerce.unsafeCoerce) (v4)))))
          ((Unsafe.Coerce.unsafeCoerce) (v5))))