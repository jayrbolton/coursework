{-# LANGUAGE EmptyDataDecls
           , ExistentialQuantification
           , ScopedTypeVariables
           , NoMonomorphismRestriction
  #-}
module MAlonzo.Data.String where
import qualified Unsafe.Coerce
import qualified MAlonzo.Data.Bool
import qualified MAlonzo.Data.Char
import qualified MAlonzo.Data.Colist
import qualified MAlonzo.Data.Function
import qualified MAlonzo.Data.List
import qualified MAlonzo.Data.Vec
import qualified MAlonzo.Relation.Binary
import qualified MAlonzo.Relation.Binary.PropositionalEquality
import qualified
       MAlonzo.Relation.Binary.PropositionalEquality.TrustMe
import qualified MAlonzo.Relation.Nullary
import qualified MAlonzo.Relation.Nullary.Core
name2 = ("Data.String.String")
d2
  = ((error)
       ("MAlonzo Runtime Error: postulate evaluated: Data.String.String"))
name3 = ("Data.String.Costring")
d3
  = ((Unsafe.Coerce.unsafeCoerce)
       ((MAlonzo.Data.Colist.d18)
          ((Unsafe.Coerce.unsafeCoerce) (MAlonzo.Data.Char.d2))))
name4 = ("Data.String.primStringAppend")
d4 = ((((++)) :: String->String->String))
name5 = ("Data.String.primStringToList")
d5 = (mazStringToList)
name6 = ("Data.String.primStringFromList")
d6 = (mazListToString)
name7 = ("Data.String.primStringEquality")
d7
  = ((\ x y -> MAlonzo.Data.Bool.mazHBoolToBool (((==) :: String -> String -> Bool) ( x) ( y))))
name8 = ("Data.String._++_")
d8 = ((Unsafe.Coerce.unsafeCoerce) (d4))
name9 = ("Data.String.toList")
d9 = ((Unsafe.Coerce.unsafeCoerce) (d5))
name10 = ("Data.String.fromList")
d10 = ((Unsafe.Coerce.unsafeCoerce) (d6))
name12 = ("Data.String.toVec")
d12 v0
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((MAlonzo.Data.Vec.d245) ((Unsafe.Coerce.unsafeCoerce) (0)))
           ((Unsafe.Coerce.unsafeCoerce) (MAlonzo.Data.Char.d2)))
          ((Unsafe.Coerce.unsafeCoerce)
             ((d9) ((Unsafe.Coerce.unsafeCoerce) (v0))))))
name14 = ("Data.String.toCostring")
d14
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Data.Function.d20)
                 ((Unsafe.Coerce.unsafeCoerce) (0)))
                ((Unsafe.Coerce.unsafeCoerce) (0)))
               ((Unsafe.Coerce.unsafeCoerce) (0)))
              ((Unsafe.Coerce.unsafeCoerce) (d2)))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v0 ->
                   (((MAlonzo.Data.List.d4) ((Unsafe.Coerce.unsafeCoerce) (0)))
                      ((Unsafe.Coerce.unsafeCoerce) (MAlonzo.Data.Char.d2))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v0 ->
                  (\ v1 ->
                     ((MAlonzo.Data.Colist.d18)
                        ((Unsafe.Coerce.unsafeCoerce) (MAlonzo.Data.Char.d2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v0 ->
                 ((MAlonzo.Data.Colist.d62)
                    ((Unsafe.Coerce.unsafeCoerce) (MAlonzo.Data.Char.d2))))))
          ((Unsafe.Coerce.unsafeCoerce) (d9))))
name15 = ("Data.String._==_")
d15 = ((Unsafe.Coerce.unsafeCoerce) (d7))
name16 = ("Data.String._\8799_")
d16 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((d20) ((Unsafe.Coerce.unsafeCoerce) (v0)))
           ((Unsafe.Coerce.unsafeCoerce) (v1)))
          ((Unsafe.Coerce.unsafeCoerce)
             (((d15) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                ((Unsafe.Coerce.unsafeCoerce) (v1))))))
name20 = ("Data.String.with-19")
d20 v0 v1 (True)
  = ((Unsafe.Coerce.unsafeCoerce)
       ((MAlonzo.Relation.Nullary.Core.C12)
          ((Unsafe.Coerce.unsafeCoerce)
             ((((MAlonzo.Relation.Binary.PropositionalEquality.TrustMe.d11)
                  ((Unsafe.Coerce.unsafeCoerce) (d2)))
                 ((Unsafe.Coerce.unsafeCoerce) (v0)))
                ((Unsafe.Coerce.unsafeCoerce) (v1))))))
d20 v0 v1 v2
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((d_1_20) ((Unsafe.Coerce.unsafeCoerce) (v0)))
           ((Unsafe.Coerce.unsafeCoerce) (v1)))
          ((Unsafe.Coerce.unsafeCoerce) (v2))))
  where d_1_20 v0 v1 (False)
          = ((Unsafe.Coerce.unsafeCoerce)
               ((MAlonzo.Relation.Nullary.Core.C14)
                  ((Unsafe.Coerce.unsafeCoerce)
                     (((d27) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                        ((Unsafe.Coerce.unsafeCoerce) (v1))))))
        d_1_20 v0 v1 v2
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Data.String.with-19"))
name27 = ("Data.String._.whatever")
d27
  = ((error)
       ("MAlonzo Runtime Error: postulate evaluated: Data.String._.whatever"))
name28 = ("Data.String.setoid")
d28
  = ((Unsafe.Coerce.unsafeCoerce)
       (((MAlonzo.Relation.Binary.PropositionalEquality.d46)
           ((Unsafe.Coerce.unsafeCoerce) (0)))
          ((Unsafe.Coerce.unsafeCoerce) (d2))))
name29 = ("Data.String.decSetoid")
d29
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((MAlonzo.Relation.Binary.PropositionalEquality.d50)
            ((Unsafe.Coerce.unsafeCoerce) (0)))
           ((Unsafe.Coerce.unsafeCoerce) (d2)))
          ((Unsafe.Coerce.unsafeCoerce) (d16))))
mazListToString
  = (let { f MAlonzo.Data.List.C7        = [];      f (MAlonzo.Data.List.C10 x xs) = x : f (Unsafe.Coerce.unsafeCoerce xs)} in f)
mazStringToList
  = (let { f []     = MAlonzo.Data.List.C7;      f (c:cs) = MAlonzo.Data.List.C10 c (Unsafe.Coerce.unsafeCoerce (f cs));} in f)