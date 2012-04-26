{-# LANGUAGE EmptyDataDecls
           , ExistentialQuantification
           , ScopedTypeVariables
           , NoMonomorphismRestriction
  #-}
module MAlonzo.Qtest where
import qualified Unsafe.Coerce
name1 = ("test.N")
d1
  = ((error) ("MAlonzo Runtime Error: postulate evaluated: test.N"))
name2 = ("test.z")
d2
  = ((error) ("MAlonzo Runtime Error: postulate evaluated: test.z"))
name3 = ("test.s")
d3
  = ((error) ("MAlonzo Runtime Error: postulate evaluated: test.s"))
name4 = ("test.Bool")
d4 = (())
 
data T4 = C5
        | C6
name5 = ("test.false")
name6 = ("test.true")
name7 = ("test.Nat")
d7 = (())
 
data T7 a0 = C8
           | C9 a0
name8 = ("test.zero")
name9 = ("test.suc")
name10 = ("test.plus")
d10 (C8) v0 = ((Unsafe.Coerce.unsafeCoerce) (v0))
d10 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       (((d_1_10) ((Unsafe.Coerce.unsafeCoerce) (v0)))
          ((Unsafe.Coerce.unsafeCoerce) (v1))))
  where d_1_10 (C9 v0) v1
          = ((Unsafe.Coerce.unsafeCoerce)
               ((C9)
                  ((Unsafe.Coerce.unsafeCoerce)
                     (((d10) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1))))))
        d_1_10 v0 v1
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: test.plus"))
name14 = ("test.test1")
d14
  = ((Unsafe.Coerce.unsafeCoerce)
       (((d10)
           ((Unsafe.Coerce.unsafeCoerce)
              ((C9) ((Unsafe.Coerce.unsafeCoerce) (C8)))))
          ((Unsafe.Coerce.unsafeCoerce)
             ((C9) ((Unsafe.Coerce.unsafeCoerce) (C8))))))
name15 = ("test.even")
d15 (C8) = ((Unsafe.Coerce.unsafeCoerce) (C6))
d15 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d_1_15) ((Unsafe.Coerce.unsafeCoerce) (v0))))
  where d_1_15 (C9 v0)
          = ((Unsafe.Coerce.unsafeCoerce)
               ((d16) ((Unsafe.Coerce.unsafeCoerce) (v0))))
        d_1_15 v0
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: test.even"))
name16 = ("test.odd")
d16 (C8) = ((Unsafe.Coerce.unsafeCoerce) (C5))
d16 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d_1_16) ((Unsafe.Coerce.unsafeCoerce) (v0))))
  where d_1_16 (C9 v0)
          = ((Unsafe.Coerce.unsafeCoerce)
               ((d15) ((Unsafe.Coerce.unsafeCoerce) (v0))))
        d_1_16 v0
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: test.odd"))
name20 = ("test.id")
d20 v0 v1 = ((Unsafe.Coerce.unsafeCoerce) (v1))
name23 = ("test.one")
d23
  = ((Unsafe.Coerce.unsafeCoerce)
       (((d20) ((Unsafe.Coerce.unsafeCoerce) (d7)))
          ((Unsafe.Coerce.unsafeCoerce)
             ((C9) ((Unsafe.Coerce.unsafeCoerce) (C8))))))
name24 = ("test.True")
d24 = (())
 
data T24 = C25
name25 = ("test.tt")
name26 = ("test.False")
d26 = (())
 
data T26
name27 = ("test._==_")
d27 (C8) (C8) = ((Unsafe.Coerce.unsafeCoerce) (d24))
d27 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       (((d_1_27) ((Unsafe.Coerce.unsafeCoerce) (v0)))
          ((Unsafe.Coerce.unsafeCoerce) (v1))))
  where d_1_27 (C8) (C9 v0) = ((Unsafe.Coerce.unsafeCoerce) (d26))
        d_1_27 v0 v1
          = ((Unsafe.Coerce.unsafeCoerce)
               (((d_2_27) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                  ((Unsafe.Coerce.unsafeCoerce) (v1))))
        d_2_27 (C9 v0) (C8) = ((Unsafe.Coerce.unsafeCoerce) (d26))
        d_2_27 v0 v1
          = ((Unsafe.Coerce.unsafeCoerce)
               (((d_3_27) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                  ((Unsafe.Coerce.unsafeCoerce) (v1))))
        d_3_27 (C9 v0) (C9 v1)
          = ((Unsafe.Coerce.unsafeCoerce)
               (((d27) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                  ((Unsafe.Coerce.unsafeCoerce) (v1))))
        d_3_27 v0 v1
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: test._==_"))
name33 = ("test.thmPlusZero")
d33 (C8) = ((Unsafe.Coerce.unsafeCoerce) (C25))
d33 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d_1_33) ((Unsafe.Coerce.unsafeCoerce) (v0))))
  where d_1_33 (C9 v0)
          = ((Unsafe.Coerce.unsafeCoerce)
               ((d33) ((Unsafe.Coerce.unsafeCoerce) (v0))))
        d_1_33 v0
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: test.thmPlusZero"))