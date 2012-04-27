{-# LANGUAGE EmptyDataDecls
           , ExistentialQuantification
           , ScopedTypeVariables
           , NoMonomorphismRestriction
  #-}
module MAlonzo.Level where
import qualified Unsafe.Coerce
name1 = ("Level.Level")
d1 = (())
 
data T1 a0 = C2
           | C4 a0
name2 = ("Level.zero")
name4 = ("Level.suc")
name5 = ("Level._\8852_")
d5 (C2) v0 = ((Unsafe.Coerce.unsafeCoerce) (v0))
d5 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       (((d_1_5) ((Unsafe.Coerce.unsafeCoerce) (v0)))
          ((Unsafe.Coerce.unsafeCoerce) (v1))))
  where d_1_5 (C4 v0) (C2)
          = ((Unsafe.Coerce.unsafeCoerce)
               ((C4) ((Unsafe.Coerce.unsafeCoerce) (v0))))
        d_1_5 v0 v1
          = ((Unsafe.Coerce.unsafeCoerce)
               (((d_2_5) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                  ((Unsafe.Coerce.unsafeCoerce) (v1))))
        d_2_5 (C4 v0) (C4 v1)
          = ((Unsafe.Coerce.unsafeCoerce)
               ((C4)
                  ((Unsafe.Coerce.unsafeCoerce)
                     (((d5) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1))))))
        d_2_5 v0 v1
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Level._\8852_"))
name13 = ("Level.Lift")
d13 a0 a1 a2 = (())
 
newtype T13 a0 = C18 a0
name18 = ("Level.lift")