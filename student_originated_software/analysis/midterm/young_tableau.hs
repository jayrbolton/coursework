import Data.List

data Tableau a = Tableau [a] Int Int
	deriving Show

-- 1. extract x = 1,1 and swap with m,n
-- 2. percolate x down to where it belongs
-- 3. if x greater than cell below, then swap down
-- 4. else if x greater than cell right, then swap right
-- 5. else we're done.
-- 6. go to 2
--
-- extract_min t m n:
--   extract_min t m-1 n

create_tableau l = Tableau (sort l) 1 (length l) 

extract_min (Tableau l m n) = (head l, Tableau (tail l) 1 (n-1))
