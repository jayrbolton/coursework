"J Bolton"
"Part 1 of exercises and examples from 'Computer Programming Using GNU
Smalltalk'"

"This is a comment."

'Hello World!' printNl

'Hello World!' size 

"Keyword messages have labeled parameters. Neat."

3 bitAt: 3 put: 1

"Precedence goes unary, binary, keyword, then left to right"
"The unary printNl is done first:"

3 + 5 bitAt: 3 put: 1 printNl

"Message chaining is like application (eg f(g x))"

'Somnambulist' asUppercase reverse printNl
"The above does not give the expected output. It seems to only print the first
four chars."

"Message cascading, where we want to apply a series of messages to the original
object rather than the return value of the previous message"
"Cascades are separated by semicolons"

"'Somnambulist' printNl; asUppercase;"
"My conception of this must be wrong, because the above doesn't work. The
interpreter expects a binary op or keyword... The book doesn't go into much
detail, so I'll just leave it for now"

"Arithmetic operations are just like all other languages except:"
"// is modulus"
"between:and: tests if the object is within a range, returns bool"

(4 between: 3 and: 932489) printNl
"I wonder about type coercion..."
(4 between: 3.999 and: 4.0001) printNl
"Works fine. Probably coerces 4 to a float"

"Some built-in math stuff:"
180 degreesToRadians printNl
180 degreesToRadians cos printNl 
"Neat"

"Note to self: I should write the Monte Carlo pi simulation in Smalltalk later"

"exponent is raisedTo:"

3 raisedTo: -2 

"Returns 1/9. Neat. I've always wanted a language with built-in fractions"

"It seems to support narrowing conversions. I wonder if this is type safe?"

17.8 truncated
17.9 rounded

"Characters are denoted by the dollar sign:"

$a isAlphaNumeric

"There are all the normal string methods. includes, indexOf, reverse, and
countSubCollectionOccurencesOf:, which is the horribly named message that will
return the number of substring occurences of our argument."

"Concatenation is with a comma"

('Acta' , ' non ' , 'verba') printNl
