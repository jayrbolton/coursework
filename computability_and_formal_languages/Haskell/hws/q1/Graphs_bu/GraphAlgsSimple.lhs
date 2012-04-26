J Bolton


> module GraphAlgsSimple where
> import JBGraph
> import Data.List (foldl')

   -- 1. 
   
> degree :: (Ord a) => Graph a -> a -> Int   
> degree g x = length $ adjacent g x

   -- 2. 

> degreeSpectrum :: Ord a => Graph a -> [Int]
> degreeSpectrum g = [freq x ds | x <- [0..(length vs)]]
>   where
>   freq x ds = foldl' (\ys y -> if x==y then ys+1 else ys) 0 ds
>   ds = map (\x -> degree g x) vs
>   vs = vertices g

If a graph g has n vertices then the degree spectrum of g is a list of length n
whose head is the number of vertices of degree 0, whose second element is the
number of vertices of degree 1, and so forth.  The function only needs to be
defined for undirected graphs.

> type Path a = [Edge]

The Path data type is an ordered list of vertices. Since we're not working with
multigraphs, this is a sufficient representation. --NOTE: Modified it to
account for multigraphs.

-- 3. 

> isPath :: Ord a => Graph a -> Path a -> Bool
> isPath g p = foldl' (\xs x -> if x `elem` es then True && xs else False) True p
>   where
>   es = edges g

Hint: Walk through the list of vertices in the path and make sure each
vertex is in the graph and that each vertex and the next one are adjacent.
Is an empty list a path? A list of one vertex? Consider using a pattern like
(x:y:ys) as one of the cases.

-- 4. 
isSimplePath :: Ord a => Graph a -> Path a -> Bool

Hint: Make sure the list is really a path and then make sure there are no
repetitions in the list.

-- 5. 
isCycle :: Ord a => Graph a -> Path a -> Bool

Hint:  Is the length greater than one? Is the head node equal to the last
node? If you drop the first node is the rest a simple path? Is the
first node adjacent to the second node?

-- 6. 
simplify :: Ord a => Path a -> Path a

Turn a path into a simple path by snipping out un-necessary cycles.
Hint: Well, there's gotta be something without a hint... 


------------------- Some test graphs ---------------------------------------

You must add the tests for your functions.

Complete graphs:

> complete, tourn :: Int -> Graph Int
> complete n = makeGraph [1..n] [(x,y) | x <- [1..n], y <- [1..n], x < y]
> tourn n = makeDigraph [1..n] [(x,y) | x <- [1..n], y <- [1..n], x < y]

> k5 :: Graph Int            --has euler circuit
> k5 = complete 5

> wheel5 :: Graph Int           -- has no euler path or circuit
> wheel5 = makeGraph [1..5]
>          [(1,2),(1,3),(1,4),(1,5),(2,3),(3,4),(4,5),(5,2)]

> cycle5 :: Graph Int          -- has euler circuit
> cycle5 = makeGraph [1..5]
>          [(1,2),(1,5),(2,3),(3,4),(4,5)]
                      
> g4 :: Graph Int         -- disconnected
> g4 = makeGraph [1..6]
>          [(1,2),(2,3),(1,3),(4,6)]

> g5 :: Graph Int         -- has euler circuit
> g5 = makeGraph [1..5]
>          [(1,2),(1,3),(2,3),(3,4),(3,5),(4,5)]

> g6 :: Graph Int         -- has euler path
> g6 = makeGraph [1..6]
>          [(1,2),(1,3),(2,6),(2,3),(3,4),(3,5),(4,5),(5,6)]

> g7 :: Graph Int         -- has euler path
> g7 = makeGraph [1..5]
>          [(1,2),(2,3),(3,4),(4,5)]

> gBad :: Graph Int               -- not a graph
> gBad = makeGraph [1..3] [(1,3),(3,4)]

