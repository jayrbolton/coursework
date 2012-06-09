-- huffman trees by jay bolton

data HTree = HTree Int [Char] HTree HTree | HLeaf Int Char
  deriving(Show, Eq)

encode str = enc str

decode
