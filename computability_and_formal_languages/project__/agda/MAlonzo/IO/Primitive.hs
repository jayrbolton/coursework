{-# LANGUAGE EmptyDataDecls
           , ExistentialQuantification
           , ScopedTypeVariables
           , NoMonomorphismRestriction
  #-}
module MAlonzo.IO.Primitive where
import qualified Unsafe.Coerce
import qualified MAlonzo.Data.Char
import qualified MAlonzo.Data.String
import qualified MAlonzo.Foreign.Haskell
name2 = ("IO.Primitive.IO")
d2
  = ((error)
       ("MAlonzo Runtime Error: postulate evaluated: IO.Primitive.IO"))
name4 = ("IO.Primitive.return")
 
d4 :: (forall xA. (() -> (xA -> (IO xA))))
d4 = ((\_ -> return :: a -> IO a))
name7 = ("IO.Primitive._>>=_")
 
d7 ::
     (forall xA. (() -> (forall xB. (() -> ((IO xA) -> ((xA -> (IO xB)) -> (IO xB)))))))
d7 = ((\_ _ -> (>>=) :: IO a -> (a -> IO b) -> IO b))
name8 = ("IO.Primitive.Costring")
d8
  = ((Unsafe.Coerce.unsafeCoerce)
       ((MAlonzo.Foreign.Haskell.d5)
          ((Unsafe.Coerce.unsafeCoerce) (MAlonzo.Data.Char.d2))))
name9 = ("IO.Primitive.getContents")
 
d9 :: (IO ([] Char))
d9 = (getContents)
name10 = ("IO.Primitive.readFile")
 
d10 :: (String -> (IO ([] Char)))
d10 = (readFile)
name11 = ("IO.Primitive.writeFile")
 
d11 :: (String -> (([] Char) -> (IO ())))
d11 = (writeFile)
name12 = ("IO.Primitive.putStr")
 
d12 :: (([] Char) -> (IO ()))
d12 = (putStr)
name13 = ("IO.Primitive.putStrLn")
 
d13 :: (([] Char) -> (IO ()))
d13 = (putStrLn)