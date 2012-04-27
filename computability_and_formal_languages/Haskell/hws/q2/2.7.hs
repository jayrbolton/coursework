-- J Bolton
-- Assignment 7, Quarter 2 - Monadic IO

import Control.Monad.State
import System.IO
import Data.Char

-- 1.

fibby = do
        putStrLn "Hi, I'm Fibby. Feed me a number! Please don't type quit..."
        input <- getLine
        if (input == "quit") then putStrLn "Nooooooooooooo!" 
            else do putStrLn ("Yummmm. " ++ (show (fib (read input))))
                    fibby

            --putStrLn $ show (fib (read input::Int)) ++ "\n"

fib n = fst $ execState (replicateM n $
           get >>= \(x,y) ->
           put (y,x+y)) (0,1)

{-
Update your sorting program so that it can read sorting data from a file and
produce sorting data to a file and also report the number of comparisons to the
standard output.
-}

sorty = do
        putStrLn "Hey there old pal, I'm Sorty. Gimme a file!!!! And you better not type 'quit'!"
        path <- getLine
        if path == "quit" then putStrLn "Grrrrrrrrrrr!"
            else withFile path ReadMode (\handle -> do
                contents <- hGetContents handle
                putStrLn "Crunch crunch crunch..."
                print (qsort_count (map ord contents)))

qsort_count ls = qsort 0 ls
qsort n []     = (n,[])
qsort n (x:xs) = let l0 = filter (<x) xs
                     l1 = filter (>=x) xs
                     c0 = n+(length (xs))*2
                     (c1, l2) = qsort 0 l0
                     (c2, l3) = qsort 0 l1
                  in (c0+c1+c2, l2 ++ [x] ++ l3)
