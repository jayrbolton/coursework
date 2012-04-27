"
J Bolton
Simple interactive fiction interpreter
"

"
TODO:
 * How about more flexible command parsing with regexes?
      Remove extra whitespace in commands
 * Overwrite new for the classes that have init methdos?
 * Create the source file syntax
 * Create a very simple parser
"

Object subclass: World [
  | CurrArea Player Map |
  command: c [
    c = ''  ifTrue: [^nil].
    c = 'q' ifTrue: [Transcript show: 'Bye.';cr.^nil].
    c = 'l' ifTrue: [CurrArea look.^nil].
    c = 'n' ifTrue: [self go: c.^nil].
    c = 's' ifTrue: [self go: c.^nil].
    c = 'e' ifTrue: [self go: c.^nil].
    c = 'w' ifTrue: [self go: c.^nil].
    c = 'i' ifTrue: [Player printInv.^nil].
    c = 'h' ifTrue: [self class help.^nil].
    (c size) > 2 ifTrue: [
      (c at: 1) = $x ifTrue: [
        Player examine: (c allButFirst: 2).
        CurrArea examine: (c allButFirst: 2).
        ^nil.
      ].
      (c at: 1) = $t ifTrue: [
        (CurrArea take: (c allButFirst: 2)) 
          ifNotNil: [:i | Player give: i].
        ^nil.
      ].
      (c at: 1) = $d ifTrue: [
        (Player drop: (c allButFirst: 2)) 
          ifNotNil: [:i | CurrArea insertItem: i].
        ^nil.
      ].
    ].
    Transcript show: 'Invalid command';cr.
  ]
  setCurrArea: env [CurrArea := env]
  setPlayer: p [Player := p]
  go: d [
    (CurrArea getDirection: d)
      ifNil:    [Transcript show: 'You cannot go that way.'; cr.]
      ifNotNil: [:dir | CurrArea := dir. CurrArea look.]
  ]

  World class >> help [
    Transcript show:
      'Supported commands:'; cr;
      show: '"l" : get a description of the environment'; cr;
      show: '"n", "s", "e", "w" : move in one of the cardinal directions'; cr;
      show: '"x" : examine an object in the environment'; cr;
      show: '"t" : pick up an item in the environment'; cr;
      show: '"d" : drop a carried item into the area'; cr;
      show: '"i" : get a listing of the character"s inventory'; cr;
      show: '"q" : quit the game'; cr;
      show: '"h" : show a list of commands'; cr.
  ]
]

World subclass: Player [
  | Description Inventory |
  setDesc: d [Description := d]
  initInv [Inventory := OrderedCollection new]
  give: i [Inventory add: i]

  printInv [
    1 to: (Inventory size) do: [:n |
      Transcript show: ((Inventory at: n) getName); cr.
    ].
  ]
  
  drop: i [
    (Inventory size) = 0 
      ifTrue: [Transcript show: 'You are carrying nothing.';cr.^nil.]
      ifFalse: [
        1 to: (Inventory size) do: [:n |
          ((Inventory at: n) getName) = i 
            ifTrue: [
              Transcript show: i; show: ' dropped.'; cr.
              ^(Inventory removeAtIndex: n).
            ].
        ].
      ].
    Transcript show: 'Item is not carried.'; cr.
  ]

  examine: i [
    i = 'self' ifTrue: [Transcript show: Description; cr.^nil].
    1 to: (Inventory size) do: [:n |
      (Inventory at: n) getName = i 
        ifTrue: [Transcript show: (Inventory at: n) getDesc; cr.].
    ].
  ]

]

World subclass: Area [
  | Name Description Items North South East West |

  setName: n [Name := n]
  setDesc: d [Description := d]
  look [
    Transcript show: Name; cr; show: Description ; cr;
      show: 'Items: '.
    1 to: (Items size) do: [:n |
      Transcript show: ((Items at: n) getName); show: ', '.
    ]. Transcript cr.
  ]
  getDesc  [^Desc]

  getDirection: d [
    d = 'n' ifTrue: [^North].
    d = 's' ifTrue: [^South].
    d = 'w' ifTrue: [^West].
    d = 'e' ifTrue: [^East].
  ]

  setNorth: n [North := n] setSouth: n [South := n]
  setEast:  n [East  := n] setWest:  n [West  := n]
  southOf:  e [self setNorth: e. e setSouth: self]
  northOf:  e [self setSouth: e. e setNorth: self]
  westOf:   e [self setEast:  e. e setWest:  self]
  eastOf:   e [self setWest:  e. e setEast:  self]

  insertItem: i [Items add: i]
  initItems [Items := OrderedCollection new]
  take: i [
    1 to: (Items size) do: [:n |
      ((Items at: n) getName) = i
        ifTrue: [
          (Items at: n) isTakeable ifTrue: [
            Transcript show: i ; show: ' taken.'; cr.
            ^(Items removeAtIndex: n).
          ].
        ].
    ].
    Transcript show: 'You cannot take that.';cr.^nil.
  ]

  examine: i [
    1 to: (Items size) do: [:n |
      (Items at: n) getName = i 
        ifTrue: [Transcript show: (Items at: n) getDesc; cr.].
    ].
  ]

]

World subclass: Item [
  | Name Desc Takeable |
  isTakeable [^Takeable]
  setName: n [Name := n]
  setDesc: d [Desc := d] setTakeable: b [Takeable := b]
  getDesc [^Desc] getName[^Name]
]

"World information" 
"Initialize world and player" 
| world player i1 i2 |
world := World new.
player := Player new. player initInv.
player setDesc: 'You are wearing your favorite gold and silver jumpsuit.'.
player initInv.
world setPlayer: player.
i1 := (Item new) setName: 'cell phone'.
i1 setDesc: 'It is an early model -- a big grey box with a long antenna.'.
i1 setTakeable: true.
i2 := (Item new) setName: 'hamster'.
i2 setDesc: 'The little hamster chirps happily.'.
i2 setTakeable: true.
player give: i1; give: i2.

"Initialize the areas"
| a1 a2 a3 i3 i4 i5 |
a1 := (Area new) initItems.
world setCurrArea: a1.
a1 setName: 'Inner Courtyard'.
a1 setDesc: 
'The bright inner courtyard is filled with ancient marble statues and
surrounded by peeling frescos. The walkways are overgrown with ivy. An exit
leads to the south and an open window leads to the west. You can hear a frog
croaking.'.
i3 := Item new.
i3 setName: 'statues'.
i3 setDesc: 'Most of them are chipped and have missing limbs.'.
i3 setTakeable: false.
i4 := Item new.
i4 setName: 'frog'.
i4 setDesc: 'A fat green frog is looking at you and croaking.'.
i4 setTakeable: true.
a1 insertItem: i3; insertItem: i4.
a2 := (Area new) initItems.
a2 setName: 'South Hallway'.
a2 setDesc: 
'This is a passage leading west to east. A large oak door to the north leads to
the Inner Courtyard. The purple carpet is worn and faded, scattered with
debris.'.
i5 := Item new.
i5 setName: 'large cat'.
i5 setDesc: 
'A friendly yet mangy tortoise shell cat. It looks hungry.'.
i5 setTakeable: true.
a2 insertItem: i5.
a3 := (Area new) initItems.
a3 setName: 'The Mater Suite.'.
a3 setDesc: 'blah blah blah.'.
a2 southOf: a1. a3 westOf: a1.

"Main command loop"
[ Input ~= 'q' ] whileTrue: [
  Transcript show: '> '.
  Input := stdin nextLine.
  world command: Input.
]
