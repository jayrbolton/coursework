-- memoized coin change problem by jay bolton

--  where
--  change (0,n) = 0
--  change (c,n) 
--   | v!!n <= c = min (mem_change c (n-1)) (1 + mem_change (c-(v!!n)) n)
--   | v!!n > c  = mem_change c (n-1)


--GetChange(0, n) = 0 \\
--GetChange(C, n) = min(GetChange(C, n-1), 1 + GetChange(C-n,n)) \ \ \ \ \ & \text{ if $v(n) \leq C$}\\
--GetChange(C, n) = GetChange(C, n-1) \ \ \ \ \ & \text{ if $v(n) > C$}\\

vs = [1,5,10,25,100,200]

-- Generate our memoization matrix. There's probably a prettier way to do it.
matrix c v = map (\(n,cs) -> (map (\c -> (n,c)) cs)) (zip [1..n] (replicate n [c,c-1..1]))
 where n = length v
change_matrix c v = map (map (\(x,y) -> ch y (take x v))) (matrix c v)
 where
 ch 0 _ = 0
 ch c [1] = c
 ch c v
  | last v <= c = min (mchange c (init v)) (1 + mchange (c-(last v)) v)
  | last v > c  = mchange c (init v)
  where n = length v

mchange c v = (change_matrix c v) !! (length v - 1) !! 0

change 0 _ = 0
change c [1] = c
change c v
 | last v <= c = min (change c (init v)) (1 + change (c-(last v)) v)
 | last v > c  = change c (init v)
 where n = length v
