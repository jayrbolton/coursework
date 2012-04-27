--J Bolton
--Homework 8

--10.36
{-
uncurry . curry
((a, b) -> c) -> (a -> b -> c) -> ((a, b) -> c)
curry . uncurry
(a -> b -> c) -> ((a, b) -> c) -> (a -> b -> c)
map (\x -> [x]) and concat
-}

--10.37
{-prove:
if id is extensional
then iter n id = id

iter n id means compose id with itself n number of times
id . id . id . id ... id = id
because id, by definition, has the same value at every argument
(i'm not really sure how to prove this properly)
-}

--10.39
{-prove:
map f (ys++xs) = map f ys ++ map f xs

ys ++ xs = [ys, xs]			def. of concat
map f (ys++xs) = map f [ys, xs]		substitution
= [mys, mxs]				def. of map

map f ys = [f ys]				def. of map
map f xs = [f xs]				"
map f ys ++ map f xs = [f ys] ++ [f xs]		substitution
= [f ys, f xs]					def. of concat
-}

--10.42
{-prove:
concat (map (map f) xs) = map f (concat xs)

map (map f) [[xs]] = [[f xs]]	def. of map
concat [[f xs]] = [f xs]	def. of concat

concat [[xs]] = [xs]	def. of concat
map f [xs] = [f xs]	substitution and def. of map


