{-# LANGUAGE EmptyDataDecls
           , ExistentialQuantification
           , ScopedTypeVariables
           , NoMonomorphismRestriction
  #-}
module MAlonzo.Foreign.Haskell where
import qualified Unsafe.Coerce
import qualified MAlonzo.Coinduction
import qualified MAlonzo.Data.Char
import qualified MAlonzo.Data.Colist
import qualified MAlonzo.Data.Function
import qualified MAlonzo.Data.String
name2 = ("Foreign.Haskell.Unit")
d2 = (())
 
check3 :: ()
check3 = (())
 
cover2 :: () -> ()
cover2 x
  = (case (x) of
         () -> (()))
name3 = ("Foreign.Haskell.unit")
name5 = ("Foreign.Haskell.Colist")
d5 a0 = (())
 
check7 :: ([] xA)
check7 = ([])
 
check10 :: (xA -> (([] xA) -> ([] xA)))
check10 = ((:))
 
cover5 :: [] a1 -> ()
cover5 x
  = (case (x) of
         [] -> (())
         (:) _ _ -> (()))
name7 = ("Foreign.Haskell.[]")
name10 = ("Foreign.Haskell._\8759_")
name12 = ("Foreign.Haskell.fromColist")
d12 v0 (MAlonzo.Data.Colist.C20)
  = ((Unsafe.Coerce.unsafeCoerce)
       ((d43) ((Unsafe.Coerce.unsafeCoerce) (v0))))
d12 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       (((d_1_12) ((Unsafe.Coerce.unsafeCoerce) (v0)))
          ((Unsafe.Coerce.unsafeCoerce) (v1))))
  where d_1_12 v0 (MAlonzo.Data.Colist.C23 v1 v2)
          = ((Unsafe.Coerce.unsafeCoerce)
               ((((d58) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                   ((Unsafe.Coerce.unsafeCoerce) (v1)))
                  ((Unsafe.Coerce.unsafeCoerce) (v2))))
        d_1_12 v0 v1
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Foreign.Haskell.fromColist"))
name16 = ("Foreign.Haskell.toColist")
d16 v0 ([])
  = ((Unsafe.Coerce.unsafeCoerce) (MAlonzo.Data.Colist.C20))
d16 v0 v1
  = ((Unsafe.Coerce.unsafeCoerce)
       (((d_1_16) ((Unsafe.Coerce.unsafeCoerce) (v0)))
          ((Unsafe.Coerce.unsafeCoerce) (v1))))
  where d_1_16 v0 ((:) v1 v2)
          = ((Unsafe.Coerce.unsafeCoerce)
               (((MAlonzo.Data.Colist.C23) ((Unsafe.Coerce.unsafeCoerce) (v1)))
                  ((Unsafe.Coerce.unsafeCoerce)
                     ((((d127) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                         ((Unsafe.Coerce.unsafeCoerce) (v1)))
                        ((Unsafe.Coerce.unsafeCoerce) (v2))))))
        d_1_16 v0 v1
          = ((error)
               ("MAlonzo Runtime Error: incomplete pattern matching: Foreign.Haskell.toColist"))
name19 = ("Foreign.Haskell.fromString")
d19
  = ((Unsafe.Coerce.unsafeCoerce)
       (((((((((MAlonzo.Data.Function.d20)
                 ((Unsafe.Coerce.unsafeCoerce) (0)))
                ((Unsafe.Coerce.unsafeCoerce) (0)))
               ((Unsafe.Coerce.unsafeCoerce) (0)))
              ((Unsafe.Coerce.unsafeCoerce) (MAlonzo.Data.String.d2)))
             ((Unsafe.Coerce.unsafeCoerce)
                (\ v0 ->
                   ((MAlonzo.Data.Colist.d18)
                      ((Unsafe.Coerce.unsafeCoerce) (MAlonzo.Data.Char.d2))))))
            ((Unsafe.Coerce.unsafeCoerce)
               (\ v0 ->
                  (\ v1 ->
                     ((d5) ((Unsafe.Coerce.unsafeCoerce) (MAlonzo.Data.Char.d2)))))))
           ((Unsafe.Coerce.unsafeCoerce)
              (\ v0 ->
                 ((d12) ((Unsafe.Coerce.unsafeCoerce) (MAlonzo.Data.Char.d2))))))
          ((Unsafe.Coerce.unsafeCoerce) (MAlonzo.Data.String.d14))))
name43 = ("Foreign.Haskell.[]-0")
d43 v0 = ((Unsafe.Coerce.unsafeCoerce) ([]))
name58 = ("Foreign.Haskell.\8759-1")
d58 v0 v1 v2
  = ((Unsafe.Coerce.unsafeCoerce)
       ((((:)) ((Unsafe.Coerce.unsafeCoerce) (v1)))
          ((Unsafe.Coerce.unsafeCoerce)
             (((d12) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                ((Unsafe.Coerce.unsafeCoerce)
                   ((((MAlonzo.Coinduction.d10) ((Unsafe.Coerce.unsafeCoerce) (0)))
                       ((Unsafe.Coerce.unsafeCoerce)
                          ((MAlonzo.Data.Colist.d18) ((Unsafe.Coerce.unsafeCoerce) (v0)))))
                      ((Unsafe.Coerce.unsafeCoerce) (v2))))))))
name127 = ("Foreign.Haskell.\9839-2")
d127 v0 v1 v2
  = ((Unsafe.Coerce.unsafeCoerce)
       ((MAlonzo.Coinduction.C7)
          ((Unsafe.Coerce.unsafeCoerce)
             (((d16) ((Unsafe.Coerce.unsafeCoerce) (v0)))
                ((Unsafe.Coerce.unsafeCoerce) (v2))))))