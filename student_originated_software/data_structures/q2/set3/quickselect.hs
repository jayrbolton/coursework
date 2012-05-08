-- quickselect algorithm implemented from the guidelines in: Data Structures
-- and Algorithm Analysis in C

-- J Bolton

-- find the kth smallest element in xs
-- won't check for out of bounds
quickselect [x] _ = x
quickselect (x:xs) k
 | k <= length s1 = quickselect s1 k
 | k == 1 + (length s1) = x
 | otherwise = quickselect s2 (k - (length s1) - 1)
	 where
	 ys op = [y | y <- xs, y `op` x]
	 s1 = ys (<=)
	 s2 = ys (>)


-- i'll use the quick/inefficient one-liner version of quicksort
-- i threw in a nested higher order function for bonus. i don't think people
-- usually write it that way. I think it looks kind of cool.
quicksort [] = []
quicksort (x:xs) = (ys (<=)) ++ [x] ++ (ys (>))
	 where ys op = quicksort [y | y <- xs, y `op` x]

-- tests
-- this should select each element from 1st to 8th in proper order
xs = [8, 3, 6, 3, 1, 0, 4, 6]
test = quicksort xs == map (quickselect xs) [1..8]
