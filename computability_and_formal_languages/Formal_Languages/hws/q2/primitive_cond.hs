mytrue = \x y -> x
myfalse = \x y -> y

mycond = \x y z -> x y z

myand = \x y -> x y myfalse
myor = \x y -> x mytrue y

zero = \s -> 0
one = \s -> s 0
two = \s -> s (s 0)
three = \s -> s (s (s 0))

-- y (y z)


suc = \w y x -> y (w y x)

add = \x y -> x suc y

mul = \x y z -> x (y z)
