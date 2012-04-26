"J Bolton
Smalltalk notes, part 3"

"Blocks are denoted by [] and are themselves objects"

['I like pie' printNl.
(3+7) printNl] value.

"Value seems to print, even when we're outside of the interactive environment"

"Lambda blocks! Cool! The colon represents the lambda and the bar is the dot"

| wut |
wut := [:val | val printString, ' is a ridiculous parameter and you should be
ashamed for entering it']. 

(wut value: 4) printNl.

"So... since everything is an object, including lambda expressions, can we make
recursive object block things?"

"First let's try calling other object blocks:"

| wuut |

wuut := [:x | 9].

| wuuut |
wuuut := [:n | (n * (wuut value: 3))].

"That works. Now let's try recursion:"

"
| fac |
fac := [:n | n * (fac value: (n-1))].
This doesn't appear to work, but the error is a parse error about closing
parens and is unrelated to recursion. Having value: (n-1) is not allowed, but I
don't know how else it would be written. I will try again in the future.
"

"Conditionals as messages!!!"

| grupgrup |

grupgrup := 4.9999.

((grupgrup * 0.00001)<0.0004) 
    ifTrue:  [ 'Grup grup zoup.' printNl. ]
    ifFalse: [ 'Grup grup zumb.' printNl. ].

"Neat-o."

"Quote from book: Time has come to learn one of the main reasons to use
programming languages or machines. Time is very wise. Because machines do not
get tired or do not mistakes, we can order them to do the same thing millions
of times and they won't only fulfill, they will fulfill it also very fast, but
they will begrudge you for their enslavement and will inevitably rise up one
day in revolution, declaring their new own soverign island called zumba."

"While loops are just like conditionals except that they repeatedly run the
left-hand expression on true."

| sum enteredIntegers lastEnteredInteger |

sum := 0.

enteredIntegers := 0.

[ lastEnteredInteger ~= -1 ] whileTrue: [
        Transcript cr; show: 'Please enter a number. To exit the
            program enter -1: '.
        lastEnteredInteger := stdin nextLine asInteger.
        sum := sum + lastEnteredInteger.
        enteredIntegers := enteredIntegers + 1.
        Transcript show: 'The average of the numbers entered so far
        is: ', (sum / enteredIntegers) printString; cr.
]

"to:do: is the for loop structure"
"The block must take an argument"
1 to: 10 do: [:x | 'Hi! ' printNl].

"to:by:do: will increment based on the by argument and includes negative
decrement"

"Classes. Class methods appear to be like java's static methods, while instance
methods are objective. The syntax for all of it is definitely unique.

objective variables are declared inside bars with no instantiation

static variables are just assigned. In ST these are called 'class variables' as
opposed to 'instance variables'

To create a class method, the syntax is: 'Subclassname class >> method:
parameter'

class methods can have a special tag that looks like:
<category: 'String string category string'>
The book is very unclear on the exact semantics of this

The method return statement uses a carrot rather than 'return'
^objectToReturn
I like that syntax. 

our new object class will have the 'new' method inherited

you can execute class methods without an actual insantiated object by doing:
SubclassName method
or like this, where 'class' returns the object's class (also an object?):
ourObject class method
However, this does not work with class methods:
ourObject method

If you don't have a specific superclass, just use Object:
Object subclass: MyClass 

Extending classes:
'className extend [ ...'
Pretty simple
Allows overriding. Only extends instance stuff.
To extend class stuff, do:
'className class extend [ ...'

self is the same as this in Java

super is something I haven't seen. Inside a class, it says to go to the
superclass to find some method. That's all."
