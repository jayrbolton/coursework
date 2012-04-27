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
d4 (C3) = ((Unsafe.Coerce.unsafeCoerce) (C2))
d4 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d_1_4) ((Unsafe.Coerce.unsafeCoerce) (v0))))
  where d_1_4 (C2) = ((Unsafe.Coerce.unsafeCoerce) (C3))
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
name12 = ("Tutorial_notes._*_")
d12 (C6) v0 = ((Unsafe.Coerce.unsafeCoerce) (C6))
d12 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       (((d_1_12) ((Unsafe.Coerce.unsafeCoerce) (v0)))
          ((Unsafe.Coerce.unsafeCoerce) (v1))))
  where d_1_12 (C7 v0) v1
          = ((Unsafe.Coerce.unsafeCoerce)
               (((d8) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                  ((Unsafe.Coerce.unsafeCoerce)
                     (((d12) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1))))))
        d_1_12 v0 v1
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Tutorial_notes._*_"))
name16 = ("Tutorial_notes._or_")
d16 (C2) v0 = ((Unsafe.Coerce.unsafeCoerce) (v0))
d16 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       (((d_1_16) ((Unsafe.Coerce.unsafeCoerce) (v0)))
          ((Unsafe.Coerce.unsafeCoerce) (v1))))
  where d_1_16 (C3) v0 = ((Unsafe.Coerce.unsafeCoerce) (C3))
        d_1_16 v0 v1
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Tutorial_notes._or_"))
name19 = ("Tutorial_notes.if_then_else_")
d19 v0 (C2) v1 v2 = ((Unsafe.Coerce.unsafeCoerce) (v1))
d19 v0 v1 v2 v3
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((d_1_19) ((Unsafe.Coerce.unsafeCoerce) (v0)))
            ((Unsafe.Coerce.unsafeCoerce) (v1)))
           ((Unsafe.Coerce.unsafeCoerce) (v2)))
          ((Unsafe.Coerce.unsafeCoerce) (v3))))
  where d_1_19 v0 (C3) v1 v2 = ((Unsafe.Coerce.unsafeCoerce) (v2))
        d_1_19 v0 v1 v2 v3
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Tutorial_notes.if_then_else_"))
name23 = ("Tutorial_notes.List")
d23 a0 = (())
 
data T23 a0 a1 = C25
               | C26 a0 a1
name25 = ("Tutorial_notes.[]")
name26 = ("Tutorial_notes._::_")
name28 = ("Tutorial_notes.identity")
d28 v0 v1 = ((Unsafe.Coerce.unsafeCoerce) (v1))
name32 = ("Tutorial_notes.identity'")
d32 v0 v1 = ((Unsafe.Coerce.unsafeCoerce) (v1))