import Data.List

data Tableau a = Tableau [[Maybe a]]
	deriving Show

t0 = Tableau [[(Just 2),(Just 3),(Just 4),(Just 5)],
              [(Just 8),(Just 9),(Just 12), Nothing],
              [(Just 14), Nothing, Nothing, Nothing],
              [(Just 16), Nothing, Nothing, Nothing]]

extract_min t@(Tableau [[]]) = (Nothing, t)
extract_min t@(Tableau m) = (m!!0!!0, percolate t (1,1))
  where
  percolate (Tableau [[]]) _ = [[]]
  percolate (Tableau m) (i,j)
	 | !col_right && row_below = percolate (Tableau (swap (i,j) (i+1,j) m))
	 | !row_below && col_right = percolate (Tableau (swap (i,j) (i,j+1) m))
	 | !col_right && !row_below = Tableau m
   | least_right = percolate (Tableau (swap (i,j) (i,j+1) m))
   | least_below = percolate (Tableau (swap (i,j) (i+1,j) m))
	 | otherwise = Tableau m
	 where
   least_right = 
   least_below = 
