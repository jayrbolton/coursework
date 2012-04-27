Graph module

J Bolton

Note to Neal: All of Part 2, Part 3, and Part 4 of assignment 7 is included in
this file

Types of graphs based on the Rosen book:
Graph
    Undirected
        Simple (no multiple edges, no loops)
        Multi (multiple edges)
        Pseudo (loops)
    Directed
        Simple
        Multi
        Pseudo

Definition from Rosen of undirected graph:
A graph G = (V, E) consists of V, a nonempty set of vertices (or nodes) and E,
a set of edges. Each edge has either one or two vertices associated
with it, called its endpoints. An edge is said to connect endpoints.

Definition of directed graph:
A directed graph (or digraph) (V, E) consists of a nonempty set of
vertices V and a set of directed edges (or arcs) E. Each directed edge
is associated with an ordered pair of vertices. The directed edge
associated with the ordered pair (u, v) is said to start at u and end
at v.

When  I have the time, I would like to change this module so that graphs are
represented using adjacency matrices

> module JBGraph
>   (Graph, makeGraph, makeDigraph, isSimple, isPseudo, isMulti,
>    vertices, edges, adjacent, isAdjacent) where

> import JBSet as Set
>   (Set,null,member,empty,fromList,toList,insert,delete,sort,subset)

> import Data.List (nub, foldl')

The Edges are in a list rather than a set because I want to allow for
multigraphs. Mathematically, I think that edges would instead be represented as
triples with each edge having a 'multiplicity' value, but I think that is more
trouble than it's worth.

> data Graph a = Graph (Set (Vertex a), [Edge a])
>                | Digraph (Set (Vertex a), [Edge a])
>                   deriving (Show, Eq)
> type Vertex a = a
> type Edge a = (Vertex a, Vertex a)
> type Path a = [Edge a]

Neal: 'The Path data type is an ordered list of vertices. Since we're not
working with multigraphs, this is a sufficient representation.' --NOTE:
Modified it to account for multigraphs. User's input path contains order and
directional information so it works for both graphs and digraphs.

 makeGraph   :: Ord a => [a] -> [(a,a)] -> Graph a
 makeDigraph :: Ord a => [a] -> [(a,a)] -> Digraph a
 isSimple    :: Graph a -> Bool
 isPseudo    :: Graph a -> Bool
 isMulti     :: Graph a -> Bool
 vertices    :: Ord a => Graph a -> [a]            -- return vertices of graph
 edges       :: Ord a => Graph a -> [(a,a)]        -- return edges of graph
 adjacent    :: Ord a => Graph a -> a -> [a]       -- return the adjacency list
 isAdjacent  :: Ord a => Graph a -> a -> a -> Bool -- is (x,y) an edge?
 reachable   :: Ord a => a -> Graph a -> [Vertex a]

checkGraph/lsubset are local and provide an error checking system for makeGraph

> checkGraph :: (Eq a) => [a] -> [(a,a)] -> Bool
> checkGraph vs es
>   | not (lsubset endpoints vs) =
>       error "makeGraph - Some endpoints are not in vertex list"
>   | otherwise    = True
>   where
>     (xs,ys) = unzip es
>     endpoints = nub $ xs ++ ys

> lsubset :: Eq a => [a] -> [a] -> Bool
> lsubset xs ys = foldl' f True xs
>   where
>   f xs x
>    | x `elem` ys  = True && xs
>    | otherwise    = False

If I were to use an adjacency list/matrix, I would only need one makeGraph
function and one Graph data structure. However, the makeGraph function would be
much, much more complicated.

> makeGraph   :: Ord a => [a] -> [(a,a)] -> Graph a
> makeGraph vs es
>  | checkGraph vs es   = Graph (fromList vs, es)
>  | otherwise          = error "Should not reach here."

> makeDigraph vs es
>  | checkGraph vs es   = Digraph (fromList vs, es)
>  | otherwise          = error "Should not reach here."

> isSimple g = not (isPseudo g || isMulti g)

> isPseudo (Graph (_, es)) = foldl' isLoop False es
> isPseudo (Digraph (_, es)) = foldl' isLoop False es
> isLoop zs ((x, y))
>  | x == y = True
>  | otherwise = zs

> isMulti (Graph (_, (e:es))) = isDupEdge e es
> isMulti (Digraph (_, (e:es))) = isDupEdge e es
> isDupEdge x y@(e:es)
>  | x `elem` y = True
>  | otherwise   = isDupEdge e es
> isDupEdge _ [] = False

> vertices :: Ord a => Graph a -> [a]
> vertices (Graph (vs, _)) = toList vs
> vertices (Digraph (vs, _)) = toList vs

> edges :: Ord a => Graph a -> [(a,a)]
> edges (Graph (_, es)) = es
> edges (Digraph (_, es)) = es

> adjacent :: Ord a => Graph a -> a -> [a]
> adjacent (Graph (_, es)) v = foldr match [] es
>   where
>   match (x,y) ys
>    | v == x    = y:ys
>    | v == y    = x:ys
>    | otherwise = ys

> isAdjacent :: Ord a => Graph a -> a -> a -> Bool
> isAdjacent g x y = y `elem` (adjacent g x)

> degree :: (Ord a) => Graph a -> a -> Int
> degree g x = length $ adjacent g x

> degreeSpectrum :: Ord a => Graph a -> [Int]
> degreeSpectrum g = [freq x ds | x <- [0..((length vs)-1)]]
>   where
>   freq x ds = foldl' (\ys y -> if x==y then ys+1 else ys) 0 ds
>   ds = map (\x -> degree g x) vs
>   vs = vertices g

If a graph g has n vertices then the degree spectrum of g is a list of length n
whose head is the number of vertices of degree 0, whose second element is the
number of vertices of degree 1, and so forth. Only works with undirected graphs

> isPath :: Ord a => Graph a -> Path a -> Bool
> isPath g p = foldl' find True p
>   where
>   find ys (x,y)
>    | (x,y) `elem` es || (y,x) `elem` es = True && ys
>    | otherwise                          = False
>   es = edges g

isPath is made simpler by using a list of Edges as the path data type because
we do not need to check order, only membership. It encompasses disconnected
paths as well

> isSimplePath :: Ord a => Path a -> Bool
> isSimplePath p = isConnectedPath p && not (hasDupVerts p)

> hasDupVerts p = hasDup vs
>   where
>   (starts, ends) = unzip p
>   vs = starts ++ [last ends]
>   hasDup [] = False
>   hasDup (v:vs)
>    | v `elem` vs = True
>    | otherwise   = hasDup vs

> isConnectedPath p = init ends == tail starts
>       where
>       (starts, ends) = unzip p

> isCycle :: Ord a => Path a -> Bool
> isCycle p = (length p > 1) && isConnectedPath p && (beginning==end)
>       where
>       (xs,ys) = unzip p
>       (beginning, end) = (head xs, last ys)

> isSimpleCycle p = isCycle p && not (hasDupVerts (tail p))

I assume that a single loop is not considered  a cycle

> simplify :: (Ord a) => Path a -> Path a
> simplify p
>  | isSimplePath p    = p
>  | isConnectedPath p = removeCycles $ removeLoops p
>  | otherwise         = simplify (getFirstPath p)

If simplify is applied to a disconnected path, it simply pulls out the initial
path for however long it goes.

> removeLoops p = filter (\(x,y) -> not (x==y)) p

> removeCycles p = vsToEs $ rem vs
>   where
>   (starts, ends) = unzip p
>   vs = starts ++ [last ends]
>   rem [] = []
>   rem (x:xs) = x : rem (remCyc x xs xs)
>   remCyc _ [] xs = xs
>   remCyc x (y:ys) xs
>    | x == y   = ys
>    | otherwise = remCyc x ys xs

Convert a list of ordered vertices to a list of edges:

> vsToEs (y:[]) = []
> vsToEs (x:y:ys) = (x,y) : vsToEs (y:ys)

Get the initial connected path in a disconnected path:

> getFirstPath ((x,y):[]) = [(x,y)]
> getFirstPath ((x,y):(p,q):zs)
>  | y == p  = (x,y): getFirstPath ((p,q):zs)
>  | otherwise = [(x,y)]

simplify is big and requires a bazillion support functions, but at least it
works. I'd like to work on it more when I have more time.

> dfs :: (Ord a) => [Vertex a] -> Graph a -> [Vertex a] -> [Vertex a]
> dfs [] _ visited = visited
> dfs (v:vs) g visited
>  | v `elem` visited = dfs vs g visited
>  | otherwise        = dfs (vs++as) g (visited++[v])
>    where as = [x | x <- adjacent g v, not $ x `elem` visited]

> reachable :: (Ord a) => a -> Graph a -> [Vertex a]
> reachable a g = dfs [a] g []

------------------- Some test graphs ---------------------------------------

> g1 = makeGraph [1..4] [(1,1),(2,2),(3,3),(4,4)]
> g2 = makeGraph [1..23408923409823048902] [(99,99)]
> g3 = makeGraph [1.0, 2.3, 5.5] [(1.0, 2.3), (5.5, 5.5)]
> g4 = makeGraph ["acta", "non", "verba"] [("acta", "verba"), ("non", "non"), ("verba", "acta")]
> g5 = makeGraph [[1..23], [3..567], [212..23422332]] [([1..23],[1..23]), ([1..23],[1..23])]
> complete, tourn :: Int -> Graph Int
> complete n = makeGraph [1..n] [(x,y) | x <- [1..n], y <- [1..n], x < y]
> tourn n = makeDigraph [1..n] [(x,y) | x <- [1..n], y <- [1..n], x < y]
> k5 :: Graph Int            --has euler circuit
> k5 = complete 5
> wheel5 = makeGraph [1..5]
>          [(1,2),(1,3),(1,4),(1,5),(2,3),(3,4),(4,5),(5,2)]
> cycle5 :: Graph Int          -- has euler circuit
> cycle5 = makeGraph [1..5]
>          [(1,2),(1,5),(2,3),(3,4),(4,5)]
> g6 :: Graph Int         -- disconnected
> g6 = makeGraph [1..6]
>          [(1,2),(2,3),(1,3),(4,6)]
> g7 :: Graph Int         -- has euler circuit
> g7 = makeGraph [1..5]
>          [(1,2),(1,3),(2,3),(3,4),(3,5),(4,5)]
> g8 :: Graph Int         -- has euler path
> g8 = makeGraph [1..6]
>          [(1,2),(1,3),(2,6),(2,3),(3,4),(3,5),(4,5),(5,6)]
> g9 :: Graph Int         -- has euler path
> g9 = makeGraph [1..5]
>          [(1,2),(2,3),(3,4),(4,5)]
> gBad :: Graph Int               -- not a graph
> gBad = makeGraph [1..3] [(1,3),(3,4)]
> p1 = [(1,1),(2,2),(3,3),(4,4)]
> p2 = [(1,2),(2,3),(3,4)]
> p3 = [(2,1),(4,3),(6,5),(6,2)]
> p4 = [(1,4),(4,9),(9,2),(2,7)]

> t1 = checkGraph [1..4] [(1,1),(2,2),(3,3),(4,4)]
> t2 = checkGraph [1..23408923409823048902] [(99,99)]
> t3 = checkGraph [1.0, 2.3, 5.5] [(1.0, 2.3), (5.5, 5.5)]
> t4 = checkGraph ["acta", "non", "verba"] [("acta", "verba"), ("non", "non"), ("verba", "acta")]
> t5 = checkGraph [[1..23], [3..567], [212..23422332]] [([1..23],[1..23]), ([1..23],[1..23])]
> t6 = isPseudo g1 && isPseudo g2 && isPseudo g3 && isPseudo g4
> t7 = isMulti g5 && isPseudo g5
> t8 = isSimple (makeGraph [1..99] [(1,2), (2,3)])
> t9 = vertices g8 == [1..6]
> t10 = edges g5 == [([1..23],[1..23]), ([1..23],[1..23])]
> t11 = adjacent g1 1 == [1]
> t12 = isAdjacent g1 1 1
> t13 = isAdjacent g2 99 99
> t14 = isAdjacent g3 1.0 2.3
> t15 = not $ isAdjacent g4 "verba" "verba"
> t16 = degree g9 3 == 2 && degree wheel5 4 == 3 && degree cycle5 2 == 2
> t17 = degreeSpectrum g9 == [0, 2, 3, 0, 0]
> t18 = isPath g1 p1 && not (isPath g1 p2) && isPath g8 p3
> t19 = not (isConnectedPath p3) && isConnectedPath p2
> t20 = isConnectedPath [(1,4),(4,9),(9,2),(2,7)]
> t21 = not (isConnectedPath [(1,4),(4,9),(2,7),(9,2)])
> t22 = hasDupVerts p1 && not (hasDupVerts p2) && hasDupVerts p3
> t23 = hasDupVerts (p4 ++ [(7,1)])
> t24 = isSimplePath p2 && not (isSimplePath p1)
> t25 = isConnectedPath [(1,2),(2,3),(3,3),(3,4),(4,1)]
> t26 =  isCycle [(1,2),(2,3),(3,4),(4,1)]
> t27 = isCycle [(1,2),(2,2),(2,3),(3,3),(3,4),(4,4),(4,1)]
> t28 = isCycle [(1,2),(2,3),(3,4),(4,2),(2,5),(5,1)]
> t29 = isSimpleCycle [(1,2),(2,3),(3,4),(4,1)]
> t30 = not (isSimpleCycle [(1,2),(2,3),(3,3),(3,4),(4,1)])
> t31 = simplify [(1,2),(2,3),(3,4),(4,2),(2,5),(5,5),(5,5)] == [(1,2),(2,5)]
> t32 = simplify p1 == [] && simplify p2 == p2 && simplify p3 == [(2,1)]
> t33 = dfs [1..5] g7 [] == [1..5]
> t34 = dfs [1..6] g8 [] == [1,2,3,6,5,4]
> t35 = reachable 1 g6 == [1,2,3]
> t36 = reachable 1 g7 == [1,2,3,4,5]
> t37 = reachable 1 g8 == [1,2,3,6,4,5]


> test = and [t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14,
>             t15, t16, t17, t18, t19, t20, t21, t22, t23, t24, t25, t26,
>              t27, t28, t29, t30, t31, t32, t33, t34, t35, t36, t37]
