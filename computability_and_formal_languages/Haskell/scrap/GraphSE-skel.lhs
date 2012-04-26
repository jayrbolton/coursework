GraphSE-skel.lhs - Graph module using set-of-edges representation of Graphs.

2010.11.14 Neal Nelson
This is a pretty rough guide at the moment.
Probably we should move to the Data.Graph interface.


> module GraphSL (Graph, makeGraph, makeDiGraph, showGraph, vertices, edges, 
>        adjacent, isAdjacent) where
>        
> import SetUL    -- change this name as needed to work with your set module

Graph ADT signature

> makeGraph   :: Ord a => [a] -> [(a,a)] -> Graph a
> makeDiGraph :: Ord a => [a] -> [(a,a)] -> Graph a
> showGraph   :: Ord a => Graph a -> ([a],[(a,a)])
> vertices    :: Ord a => Graph a -> [a]	    -- return vertices of graph
> edges       :: Ord a => Graph a -> [(a,a)]	    -- return edges of graph
> adjacent    :: Ord a => Graph a -> a -> [a]	    -- return the adjacency list
> isAdjacent  :: Ord a => Graph a -> a -> a -> Bool -- is (x,y) an edge?


-------------------------------------------------------------------------------
---PRIVATE
-------------------------------------------------------------------------------
       
Set ADT Signature included here for reference. These functions
are implemented and exported by the Set module, and used here, but not
exported

null :: Set a -> Bool
member  :: Ord a => a -> Set a -> Bool
empty :: Set a
fromList :: Ord a => [a] -> Set a
toList :: Ord a => Set a -> [a]   -- Data.Set doesn't have (Ord a) context
insert  :: Ord a => a -> Set a -> Set a
delete  :: Ord a => a -> Set a -> Set a

------------------------------------------------------------------------------

Definition: (From Dossey p152, 3rd Ed) A directed graph is a pair (V,E)
where V is a finite non-empty set of "vertices", and E is a set
of "directed edges", which are ordered pairs of distinct elements of V.
Directed graphs allow an edge from a node to itself.

In the definition for undirected graphs that we are using there
are no edges from a node to itself and there is at most one
edge between any two nodes.

A graph in this module is represented as set of nodes and a set of directed
edges. Thus, a digraph is directly represented, however, if the graph
is undirected, then makeGraph must generate all of the symetric pairs of
directed edges as needed. It will also need to dis-allow loop edges.

The fact that graphs are represented as di-graphs is NOT hidden from the
user of the Graph module. This is manifest in "showGraph" and "edges" which
produce symetric pairs of directed edges. All other implementation details
are hidden.

------------------------------------------------------------------------------

> newtype Graph a = Graph (Set a, Set (a,a))

Undirected graphs do not allow loop edges

> checkGraph :: -- Fill in --
> checkGraph vs es 
>   | not (subset endpoints vs)
>                   = error "makeGraph - Some endpoints are not in vertex list"
>   | isLoopEdge es = error "makeGraph - Loop edges not allowed in edge list"
>   | otherwise    = True
>   where
>     isLoopEdge = or . map (\(x,y) -> x == y) 
>     (xs,ys) = unzip es
>     endpoints = xs ++ ys


DiGraphs allow loop edges

> checkDiGraph ::  -- Fill in --
> checkDiGraph vs es 
>   | not (subset endpoints vs)
>                  = error "makeGraph - Some endpoints are not in vertex list"
>   | otherwise    = True
>   where
>     (xs,ys) = unzip es
>     endpoints = xs ++ ys

makeGraph, makeDiGraph :: Ord a => [a] -> [(a,a)] -> Graph a

> makeGraph vs es  -- Fill in --

> makeDiGraph vs es -- Fill in --


showGraph :: Ord a => Graph a -> ([a],[(a,a)])
-- Fill in --

vertices :: Ord a => Graph a -> [a]
-- Fill in --

edges :: Ord a => Graph a -> [(a,a)]
-- Fill in --

adjacent :: Ord a => Graph a -> a -> [a]

isAdjacent :: Ord a => Graph a -> a -> a -> Bool
-- Fill in --

------------- Support functions -------------------------

> subset :: Eq a => [a] -> [a] -> Bool


------------------------------------------------------------------------------
-- Testing. You should create your own set of test cases to supplement these.
------------------------------------------------------------------------------

> g4 :: Graph Int			-- disconnected
> g4 = makeGraph [1..6]
>          [(1,2),(2,3),(1,3),(4,6)]

> g5 :: Graph Int			-- has euler circuit
> g5 = makeGraph [1..5]
>          [(1,2),(1,3),(2,3),(3,4),(3,5),(4,5)]

> g6 :: Graph Int			-- has euler path
> g6 = makeGraph [1..6]
>          [(1,2),(1,3),(2,6),(2,3),(3,4),(3,5),(4,5),(5,6)]

> g7 :: Graph Int			-- has euler path
> g7 = makeGraph [1..5]
>          [(1,2),(2,3),(3,4),(4,5)]

> gBad :: Graph Int    		-- not a graph
> gBad = makeGraph [1..3] [(1,3),(3,4)]

> gRef :: Graph Int    		-- has a reflexive edge
> gRef = makeGraph [1..3] [(3,3),(3,2)]


-- Test cases are just a selection and not complete

> t1 = showGraph g4
> t2 = showGraph g5
> t3 = showGraph g6
> t4 = showGraph g7
> t5 = showGraph gBad
> t6 = showGraph gRef

> t7 = adjacent g4 2
> t8 = adjacent g4 5
> t9 = edges g4
> t10 = vertices g4
> t11 = isAdjacent g4 3 5

> t12 = adjacent g5 3
