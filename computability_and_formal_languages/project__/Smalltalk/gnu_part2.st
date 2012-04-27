"J R Bolton"
"Smalltalk notes, part 2"

"Declarations:"

| userName |

"Using the Transcript object and stdin:"

Transcript show: 'What is your name? '.
userName := stdin nextLine.
Transcript show: (userName, ' is a silly name!'); cr.

| grak |

Transcript show: 'What is a grak? '.
grak := stdin nextLine.
Transcript show: (grak, ' is definitely not it.'); cr.

"Arrays!"

| anArray |

anArray := Array new: 10.

"The following gives an amazingly ugly error, almost twenty lines long, just
for providing a wrongly typed parameter:
Transcript show: anArray; cr.
"

"The above array will contain nil, which seems to be the universal undefined
object"

anArray at: 1.
"returns nil"


"I really don't like comments being denoted by double quotes, because it really
looks like a comment is part of the expression since double quotes are so
closely associated with Strings"

"Smalltalk has 1-indexed arrays"

"Inserting values:"

anArray at: 1 put: 'Glop'. 

"I'm getting some really odd errors that seem to come and go based on how I
order the expressions. For example, if I now added this:

anArray at: 1.

It threw an error at first, but then on the second compile it did not. Weird."

"the includes: message tests membership"

"Sets:"

| mySet |

mySet := Set new.
mySet add: 'blimp'.
mySet add: 'airplane'.
mySet add: 'cat'.
mySet remove: 'cat'.

"What does the period do exactly?????"

"Dictionaries"

| aDictionary |

aDictionary := Dictionary new.
aDictionary at: 'calooh' put: 'callay'.
aDictionary at: 'oh frubjuous day' put: 'calooh callay'.
aDictionary removeKey: 'calooh'.

"Review Questions for part 2:

5.
Write a program that cubes the user's number

Since we haven't covered conditionals or errors, this will puke on wrong input.
"

| userCube cubed |

Transcript show: 'Me hungry. Me want number to eat. '.
userCube := stdin getLine.
cubed := userCube raisedTo: 3.
cubed printNl.
