{-# LANGUAGE EmptyDataDecls
           , ExistentialQuantification
           , ScopedTypeVariables
           , NoMonomorphismRestriction
  #-}
module MAlonzo.Category.Monad.Identity where
import qualified Unsafe.Coerce
import qualified MAlonzo.Category.Monad
import qualified MAlonzo.Category.Monad.Indexed
name3 = ("Category.Monad.Identity.Identity")
d3 v0 = ((Unsafe.Coerce.unsafeCoerce) (v0))
name5 = ("Category.Monad.Identity.IdentityMonad")
d5
  = ((Unsafe.Coerce.unsafeCoerce)
       (((MAlonzo.Category.Monad.Indexed.C5)
           ((Unsafe.Coerce.unsafeCoerce) (\ v0 -> (\ v1 -> (\ v2 -> (v2))))))
          ((Unsafe.Coerce.unsafeCoerce)
             (\ v0 ->
                (\ v1 ->
                   (\ v2 ->
                      (\ v3 ->
                         (\ v4 ->
                            (\ v5 ->
                               (\ v6 -> ((v6) ((Unsafe.Coerce.unsafeCoerce) (v5)))))))))))))