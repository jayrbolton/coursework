"J Bolton"
"Selected exercises from 'Computer Programming with GNU Smalltalk'"

"Write a program which controls if a given number is prime or
not and displays the result. The program should continue
asking new numbers until number -1 is encountered."

"First we need to make a primality testing process, and we can do it the
proper OO way by extending Number."
Number extend [
    isPrime [
        self < 1 
            ifFalse: [
                2 to: (self//2) do: [ :x |
                    self\\x=0 ifTrue: [^false]
                ].
                ^true
            ]
            ifTrue: [^false] 
    ]
]

"Now we need to make the IO loop"
| n |
n := 0.
[ n >= 0 ] whileTrue: [
    'Feed me a number and I will tell you how it tastes. It
        better not be negative!!! ' printNl.
    n := stdin nextLine asInteger.
    n isPrime 
        ifTrue: ['Yummmmm' printNl]
        ifFalse: ['Eyuck!' printNl]
].
'No! You betrayed me!! Negative numbers give me indigestion' printNl.

"Extend the Number class so that it can respond the cubed
message by returning the cube of the receiver."

"Easy!"

Number extend [ cubed [ ^(self*self*self) ] ]

3 cubed printNl.
999999 cubed printNl.
