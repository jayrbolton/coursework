module Lambda_lex where

import Prelude hiding (lex)

program = "\\sz.z"

data Lexeme = Lambda | Dot | Variable Char | LeftParen | RightParen
    deriving (Show)

{- Concrete syntax in BNF
Expression -> Function | Abstraction | Application
Abstraction -> '\' Variables '.' Expression
Application -> Expression Expression
Functions -> Function Functions
Function -> [char]

Abstract syntax:

Functions -> [Function]
Function -> 'a' | 'b' | ... | 'z'
-}

type Function = char


lex :: String -> [Lexeme]
lex = foldr f []
    where 
    f x xs
     | x == '\\' = Lambda:xs
     | x == '.'  = Dot:xs
     | x == '('  = LeftParen:xs
     | x == ')'  = RightParen:xs
     | otherwise = (Variable x):xs

parse (l:ls)
 | l == Lambda  = function(l:ls)
