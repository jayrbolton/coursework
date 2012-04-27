module Lambda where

import Prelude hiding (lex)

-- Arithmetic
zero = "\\sz.z"
one = "\\sz.sz"
two = "\\sz.s(sz)"
three = "\\sz.s(s(sz))"

-- Logic
true = "\\xy.x"
false = "\\xy.y"

data Lexeme = Lambda | Dot | Function Char | LeftParen | RightParen
    deriving (Show)

{- 
Concrete syntax in BNF (with clean parens and combining of multiple lambdas)
(ie: (\x.(\y.z)) = \xy.z):
    S -> ExpNoParens '$'
    ExpNoParens -> Function | Abstraction | Application 
    ExpParens -> Function | '(' Abstraction ')' | '(' Application ')'
    Abstraction -> '\' Functions '.' ExpNoParens
    Application -> ExpParens ExpParens
    Variables -> Variable Variables
    Variable -> 'a,b...z'

Abstract syntax:
    Program -> Expressions
    Expressions -> { Expression }
    Function -> Variables Body
    Variables -> { Variable } 
    Variable -> 'a,b...z'
    Body -> Variable | Application | Function
    Application -> Expression Expression 
    Term -> Application | Lambda | Variable
-}

lex :: String -> [Lexeme]
lex = foldr f []
    where 
    f x xs
     | x == '\\' = Lambda:xs
     | x == '.'  = Dot:xs
     | x == '('  = LeftParen:xs
     | x == ')'  = RightParen:xs
     | otherwise = (Variable x):xs

-- get returns a syntax item

newtype Parser a = Parser (String -> [(a,String)])



parse  = get <*> 
