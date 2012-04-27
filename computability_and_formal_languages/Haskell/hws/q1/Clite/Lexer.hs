module Lexer where

import Data.Char

data Token =
             {- Data types -}
             Bool | Int | Float | Char | 

             {- Constants -}
             True | False |

             {- Loops -}
             While |

             {- Conditionals -}
             If | Else |

             {- Functions -}
             Main | 

             {- Punctuation -}
             LeftBrace | RightBrace | LeftBracket | RightBracket |
             LeftParen | RightParen | Semicolon | Comma | 

             {- Operators -}
             Assign | Equals | Less | LessEqual | Greater | GreaterEqual |
             Not | NotEqual | Plus | Minus | Multiply | Divide | And | Or | 

             {- Values -}
             Identifier String | IntLiteral Int | FloatLiteral Float | CharLiteral Char |

             {- Formatting -}
             Eof

             deriving (Eq, Ord, Show, Read)


test1 = "int main() { }"
test2 = "int main() { \nint x;\nbool true;\nfloat 4.44;\n}"

keywords = ["bool", "int", "float", "char", "true", "false", "while", "if", "else", "main"]
symbols = ['{', '}', '[', ']', '(', ')', ';', ',', ':', '=', '<', '>', '!', '+', '-', '*', '/', '&', '|', '\'']

scan :: String -> [Token]
scan [] = [Eof] 
scan  s@(x:xs) 
 | isSpace x    = scan xs
 | isControl x  = scan xs
 | isUpper x    = getIdent w : scan rest
 | isDigit x    = getNum w : scan rest
 | x == '{'     = LeftBrace : scan xs
 | x == '}'     = RightBrace : scan xs
 | x == '['     = LeftBracket : scan xs
 | x == ']'     = RightBracket : scan xs
 | x == '('     = LeftParen : scan xs
 | x == ')'     = RightParen : scan xs
 | x == ';'     = Semicolon : scan xs
 | x == ','     = Comma : scan xs
 | x == ':'     = Assign : scan xs
 | x == '='     = Equals : scan xs
 | x == '<'     = getLess w : scan rest 
 | x == '>'     = getGreater w : scan rest 
 | x == '!'     = getNot w : scan rest
 | x == '+'     = Plus : scan xs
 | x == '-'     = Minus : scan xs
 | x == '*'     = Multiply : scan xs
 | x == '/'     = Divide : scan xs
 | x == '&'     = And : scan xs
 | x == '|'     = Or : scan xs
 | x == '\''    = getCharLit w : scan rest
 | otherwise    = getIdent w : scan rest 
    where
    (w, rest) = span (\x -> x /= ' ' && not (x `elem` symbols)) s

getIdent :: String -> Token
getIdent s
 | s `elem` keywords  = getKey s
 | otherwise          = Identifier s

getKey :: String -> Token
getKey (x:xs) = read ((toUpper x):xs) :: Token

getNum :: String -> Token
getNum s 
 | '.'  `elem` s     = FloatLiteral (read s :: Float)
 | otherwise         = IntLiteral (read s :: Int)

getLess :: String -> Token
getLess s
 | s == "<"     = Less
 | s == "<="    = LessEqual

getGreater :: String -> Token
getGreater s
 | s == ">"     = Greater
 | s == ">="    = GreaterEqual

getNot :: String -> Token
getNot s
 | s == "!"     = Not
 | s == "!="    = NotEqual

getCharLit :: String -> Token
getCharLit (_:x:_) = CharLiteral x
