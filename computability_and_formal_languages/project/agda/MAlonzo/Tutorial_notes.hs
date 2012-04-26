{-# LANGUAGE EmptyDataDecls
           , ExistentialQuantification
           , ScopedTypeVariables
           , NoMonomorphismRestriction
  #-}
module MAlonzo.Tutorial_notes where
import qualified Unsafe.Coerce
name1 = ("Tutorial_notes.Bool")
d1 = (())
 
data T1 = C2
        | C3
name2 = ("Tutorial_notes.true")
name3 = ("Tutorial_notes.false")
name4 = ("Tutorial_notes.not")
d4 (C2) = ((Unsafe.Coerce.unsafeCoerce) (C3))
d4 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d_1_4) ((Unsafe.Coerce.unsafeCoerce) (v0))))
  where d_1_4 (C3) = ((Unsafe.Coerce.unsafeCoerce) (C2))
        d_1_4 v0
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Tutorial_notes.not"))
name5 = ("Tutorial_notes.Nat")
d5 = (())
 
data T5 a0 = C6
           | C7 a0
name6 = ("Tutorial_notes.zero")
name7 = ("Tutorial_notes.suc")
name8 = ("Tutorial_notes._+_")
d8 (C6) v0 = ((Unsafe.Coerce.unsafeCoerce) (v0))
d8 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       (((d_1_8) ((Unsafe.Coerce.unsafeCoerce) (v0)))
          ((Unsafe.Coerce.unsafeCoerce) (v1))))
  where d_1_8 (C7 v0) v1
          = ((Unsafe.Coerce.unsafeCoerce)
               ((C7)
                  ((Unsafe.Coerce.unsafeCoerce)
                     (((d8) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1))))))
        d_1_8 v0 v1
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Tutorial_notes._+_"))