-- Haskell red-black trees
-- J Bolton

-- I used the paper "Constructing Red-Black Trees" by Ralf Hinze, which expands Okasaki's paper.

data Color = R | B
	deriving (Show, Eq)

data RBTree a = E | N Color (RBTree a) a (RBTree a)
	deriving (Show, Eq)

-- Insert element x into tree t, balancing 
insert x t = black (check t)
	where
	check E = N R E x E -- insert into empty tree (make single red node)
	check (N color left y right) -- percolate the element down, balance on the way up.
	 | x < y = bal color (check left) y right
	 | x == y = N color left x right
	 | x > y = bal color left y (check right)
	black (N _ left x right) = N B left x right

-- Balance a black node that has two consecutive red children to the left
bal B (N R (N R t1 x1 t2) x2 t3) x3 t4 = N R (N B t1 x1 t2) x2 (N B t3 x3 t4)
-- Balance a black node that has a red child to the left and then a red child to the right
bal B (N R t1 x1 (N R t2 x2 t3)) x3 t4 = N R (N B t1 x1 t2) x2 (N B t3 x3 t4)
-- Balance a black node that has a red child to the right and then a red child to the left
bal B t1 x1 (N R (N R t2 x2 t3) x3 t4) = N R (N B t1 x1 t2) x2 (N B t3 x3 t4)
-- Balance a black node that has two consecutive red children to the right
bal B t1 x1 (N R t2 x2 (N R t3 x3 t4)) = N R (N B t1 x1 t2) x2 (N B t3 x3 t4)
-- Base case on red nodes:
bal color left x right = N color left x right

-- Construct a rb tree by repeatedly inserting into an empty initial tree
topdown xs = foldr insert E xs
