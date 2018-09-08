Use scoring. The maximum score is 1.
When play begins, seed the random-number generator with 1234.

supporter is a kind of thing.
supporters are fixed in place.
container is a kind of thing.
containers are openable, lockable and fixed in place. containers are usually closed.
object-like is a kind of thing.
object-like is portable.
door is a kind of thing.
door is openable and lockable.
food is a kind of object-like.
food is edible.
key is a kind of object-like.
A room has a text called internal name.


The r_1 and the r_0 are rooms.

The internal name of r_1 is "bar".
The printed name of r_1 is "-= Bar =-".
The bar part 0 is some text that varies. The bar part 0 is "This might come as a shock to you, but you've just moved into a bar.

 You make out [if c_0 is locked]a locked[else if c_0 is open]an open[otherwise]a closed[end if]".
The bar part 1 is some text that varies. The bar part 1 is " box.[if c_0 is open and there is something in the c_0] The box contains [a list of things in the c_0].[end if]".
The bar part 2 is some text that varies. The bar part 2 is "[if c_0 is open and the c_0 contains nothing] The box is empty, what a horrible day![end if]".
The bar part 3 is some text that varies. The bar part 3 is " You can make out a Canadian style box.[if c_1 is open and there is something in the c_1] The Canadian style box contains [a list of things in the c_1].[end if]".
The bar part 4 is some text that varies. The bar part 4 is "[if c_1 is open and the c_1 contains nothing] The Canadian style box is empty! What a waste of a day![end if]".
The bar part 5 is some text that varies. The bar part 5 is " You can make out a mantle! [if there is something on the s_0]You see [a list of things on the s_0] on the mantle.[end if]".
The bar part 6 is some text that varies. The bar part 6 is "[if there is nothing on the s_0]But oh no! there's nothing on this piece of garbage.[end if]".
The bar part 7 is some text that varies. The bar part 7 is " You see a stand. Make a note of this, you might have to put stuff on or in it later on. The stand is ordinary.[if there is something on the s_1] On the stand you can make out [a list of things on the s_1].[end if]".
The bar part 8 is some text that varies. The bar part 8 is "[if there is nothing on the s_1] But there isn't a thing on it. Aw, here you were, all excited for there to be things on it![end if]".
The bar part 9 is some text that varies. The bar part 9 is " You see a desk. [if there is something on the s_2]On the desk you can see [a list of things on the s_2].[end if]".
The bar part 10 is some text that varies. The bar part 10 is "[if there is nothing on the s_2]However, the desk, like an empty desk, has nothing on it.[end if]".
The bar part 11 is some text that varies. The bar part 11 is "

You need an unblocked exit? You should try going west.".
The description of r_1 is "[bar part 0][bar part 1][bar part 2][bar part 3][bar part 4][bar part 5][bar part 6][bar part 7][bar part 8][bar part 9][bar part 10][bar part 11]".

The r_0 is mapped west of r_1.
The internal name of r_0 is "pantry".
The printed name of r_0 is "-= Pantry =-".
The pantry part 0 is some text that varies. The pantry part 0 is "You find yourself in a pantry. An usual kind of place.

 You see [if c_2 is locked]a locked[else if c_2 is open]an opened[otherwise]a closed[end if]".
The pantry part 1 is some text that varies. The pantry part 1 is " type V locker in the corner.[if c_2 is open and there is something in the c_2] The type V locker contains [a list of things in the c_2].[end if]".
The pantry part 2 is some text that varies. The pantry part 2 is "[if c_2 is open and the c_2 contains nothing] The type V locker is empty! This is the worst thing that could possibly happen, ever![end if]".
The pantry part 3 is some text that varies. The pantry part 3 is " You can make out [if c_3 is locked]a locked[else if c_3 is open]an open[otherwise]a closed[end if]".
The pantry part 4 is some text that varies. The pantry part 4 is " typical looking Henderson's style locker here.[if c_3 is open and there is something in the c_3] The Henderson's style locker contains [a list of things in the c_3].[end if]".
The pantry part 5 is some text that varies. The pantry part 5 is "[if c_3 is open and the c_3 contains nothing] The Henderson's style locker is empty! What a waste of a day![end if]".
The pantry part 6 is some text that varies. The pantry part 6 is "

There is an exit to the east. Don't worry, it is unguarded.".
The description of r_0 is "[pantry part 0][pantry part 1][pantry part 2][pantry part 3][pantry part 4][pantry part 5][pantry part 6]".

The r_1 is mapped east of r_0.
The c_0 and the c_1 and the c_2 and the c_3 are containers.
The c_0 and the c_1 and the c_2 and the c_3 are privately-named.
The f_0 are foods.
The f_0 are privately-named.
The k_0 and the k_1 and the k_3 are keys.
The k_0 and the k_1 and the k_3 are privately-named.
The o_0 and the o_1 are object-likes.
The o_0 and the o_1 are privately-named.
The s_0 and the s_1 and the s_2 are supporters.
The s_0 and the s_1 and the s_2 are privately-named.
The r_1 and the r_0 are rooms.
The r_1 and the r_0 are privately-named.

The description of c_0 is "The box looks strong, and impossible to open. [if open]You can see inside it.[else if closed]You can't see inside it because the lid's in your way.[otherwise]There is a lock on it.[end if]".
The printed name of c_0 is "box".
Understand "box" as c_0.
The c_0 is in r_1.
The c_0 is open.
The description of c_1 is "The locker looks strong, and impossible to force open. [if open]It is open.[else if closed]It is closed.[otherwise]It is locked.[end if]".
The printed name of c_1 is "Canadian style box".
Understand "Canadian style box" as c_1.
Understand "Canadian" as c_1.
Understand "style" as c_1.
Understand "box" as c_1.
The c_1 is in r_1.
The c_1 is locked.
The description of c_2 is "The coffer looks strong, and impossible to open. [if open]It is open.[else if closed]It is closed.[otherwise]It is locked.[end if]".
The printed name of c_2 is "type V locker".
Understand "type V locker" as c_2.
Understand "type" as c_2.
Understand "V" as c_2.
Understand "locker" as c_2.
The c_2 is in r_0.
The c_2 is locked.
The description of c_3 is "The crate looks strong, and impossible to break open. [if open]You can see inside it.[else if closed]You can't see inside it because the lid's in your way.[otherwise]There is a lock on it.[end if]".
The printed name of c_3 is "Henderson's style locker".
Understand "Henderson's style locker" as c_3.
Understand "Henderson's" as c_3.
Understand "style" as c_3.
Understand "locker" as c_3.
The c_3 is in r_0.
The c_3 is locked.
The description of k_0 is "The Canadian style latchkey looks useful".
The printed name of k_0 is "Canadian style latchkey".
Understand "Canadian style latchkey" as k_0.
Understand "Canadian" as k_0.
Understand "style" as k_0.
Understand "latchkey" as k_0.
The k_0 is in r_1.
The matching key of the c_1 is the k_0.
The description of s_0 is "The mantle is undependable.".
The printed name of s_0 is "mantle".
Understand "mantle" as s_0.
The s_0 is in r_1.
The description of s_1 is "The stand is solid.".
The printed name of s_1 is "stand".
Understand "stand" as s_1.
The s_1 is in r_1.
The description of s_2 is "The desk is reliable.".
The printed name of s_2 is "desk".
Understand "desk" as s_2.
The s_2 is in r_1.
The description of f_0 is "The honeydew looks tempting.".
The printed name of f_0 is "honeydew".
Understand "honeydew" as f_0.
The f_0 is edible.
The f_0 is on the s_1.
The description of k_1 is "The type V latchkey looks useful".
The printed name of k_1 is "type V latchkey".
Understand "type V latchkey" as k_1.
Understand "type" as k_1.
Understand "V" as k_1.
Understand "latchkey" as k_1.
The player carries the k_1.
The matching key of the c_2 is the k_1.
The description of k_3 is "The Henderson's style keycard looks useful".
The printed name of k_3 is "Henderson's style keycard".
Understand "Henderson's style keycard" as k_3.
Understand "Henderson's" as k_3.
Understand "style" as k_3.
Understand "keycard" as k_3.
The player carries the k_3.
The matching key of the c_3 is the k_3.
The description of o_0 is "The cushion seems well matched to everything else here".
The printed name of o_0 is "cushion".
Understand "cushion" as o_0.
The o_0 is in the c_0.
The description of o_1 is "The monitor appears out of place here".
The printed name of o_1 is "monitor".
Understand "monitor" as o_1.
The o_1 is on the s_0.


The player is in r_0.


Test me with "go east / take cushion from box / put cushion on mantle"

Every turn:
	if 1 is 0 [always false]:
		end the story; [Lost]
	else if The player is in r_1 and The s_0 is in r_1 and The o_0 is on the s_0:
		end the story finally; [Win]

Rule for listing nondescript items:
	stop.

Rule for printing the banner text:
	say "Welcome to another exciting round of TextWorld! Here is how to play! First off, if it's not too much trouble, I need you to head east. Then, recover the cushion from the box. And then, put the cushion on the mantle. And once you've done that, you win![line break]".

Include Basic Screen Effects by Emily Short.

Rule for printing the player's obituary:
	if story has ended finally:
		increase score by 1;
		center "*** The End ***";
	else:
		center "*** You lost! ***";
	say paragraph break;
	let X be the turn count;
	if restrict commands option is true:
		let X be the turn count minus one;
	say "You scored [score] out of a possible [maximum score], in [X] turn(s).";
	[wait for any key;
	stop game abruptly;]
	rule succeeds.

Rule for implicitly taking something (called target):
	if target is fixed in place:
		say "The [target] is fixed in place.";
	otherwise:
		say "You need to take the [target] first.";
	stop.

Does the player mean doing something with something (called target):
	if the player's command matches the text printed name of the target:
		it is very likely.

Printing the content of the room is an activity.
Rule for printing the content of the room:
	let R be the location of the player;
	say "Room contents:[line break]";
	list the contents of R, with newlines, indented, including all contents, with extra indentation.

Printing the content of the world is an activity.
Rule for printing the content of the world:
	let L be the list of the rooms;
	say "World: [line break]";
	repeat with R running through L:
		say "  [the internal name of R][line break]";
	repeat with R running through L:
		say "[the internal name of R]:[line break]";
		if the list of things in R is empty:
			say "  nothing[line break]";
		otherwise:
			list the contents of R, with newlines, indented, including all contents, with extra indentation.

Printing the content of the inventory is an activity.
Rule for printing the content of the inventory:
	say "Inventory:[line break]";
	list the contents of the player, with newlines, indented, giving inventory information, including all contents, with extra indentation.

Printing the content of nowhere is an activity.
Rule for printing the content of nowhere:
	say "Nowhere:[line break]";
	let L be the list of the off-stage things;
	repeat with thing running through L:
		say "  [thing][line break]";

Printing the things on the floor is an activity.
Rule for printing the things on the floor:
	let R be the location of the player;
	let L be the list of things in R;
	remove yourself from L;
	remove the list of containers from L;
	remove the list of supporters from L;
	remove the list of doors from L;
	if the number of entries in L is 1:
		say "There is [L with indefinite articles] on the floor.";
	else if the number of entries in L is greater than 1:
		say "There's [L with indefinite articles] on the floor.";

After printing the name of something (called target) while
printing the content of the room
or printing the content of the world
or printing the content of the inventory
or printing the content of nowhere:
	follow the property-aggregation rules for the target.

The property-aggregation rules are an object-based rulebook.
The property-aggregation rulebook has a list of text called the tagline.

[At the moment, we only support "open/unlocked", "closed/unlocked" and "closed/locked" for doors and containers.]
[A first property-aggregation rule for an openable open thing (this is the mention open openables rule):
	add "open" to the tagline.

A property-aggregation rule for an openable closed thing (this is the mention closed openables rule):
	add "closed" to the tagline.

A property-aggregation rule for an lockable unlocked thing (this is the mention unlocked lockable rule):
	add "unlocked" to the tagline.

A property-aggregation rule for an lockable locked thing (this is the mention locked lockable rule):
	add "locked" to the tagline.]

A first property-aggregation rule for an openable lockable open unlocked thing (this is the mention open openables rule):
	add "open" to the tagline.

A property-aggregation rule for an openable lockable closed unlocked thing (this is the mention closed openables rule):
	add "closed" to the tagline.

A property-aggregation rule for an openable lockable closed locked thing (this is the mention locked openables rule):
	add "locked" to the tagline.

A property-aggregation rule for a lockable thing (called the lockable thing) (this is the mention matching key of lockable rule):
	let X be the matching key of the lockable thing;
	if X is not nothing:
		add "match [X]" to the tagline.

A property-aggregation rule for an edible off-stage thing (this is the mention eaten edible rule):
	add "eaten" to the tagline.

The last property-aggregation rule (this is the print aggregated properties rule):
	if the number of entries in the tagline is greater than 0:
		say " ([tagline])";
		rule succeeds;
	rule fails;

An objective is some text that varies. The objective is "Welcome to another exciting round of TextWorld! Here is how to play! First off, if it's not too much trouble, I need you to head east. Then, recover the cushion from the box. And then, put the cushion on the mantle. And once you've done that, you win!".
Printing the objective is an action applying to nothing.
Carry out printing the objective:
	say "[objective]".

Understand "goal" as printing the objective.

The print state option is a truth state that varies.
The print state option is usually false.

Turning on the print state option is an action applying to nothing.
Carry out turning on the print state option:
	Now the print state option is true.

Turning off the print state option is an action applying to nothing.
Carry out turning off the print state option:
	Now the print state option is false.

Printing the state is an activity.
Rule for printing the state:
	let R be the location of the player;
	say "Room: [line break] [the internal name of R][line break]";
	[say "[line break]";
	carry out the printing the content of the room activity;]
	say "[line break]";
	carry out the printing the content of the world activity;
	say "[line break]";
	carry out the printing the content of the inventory activity;
	say "[line break]";
	carry out the printing the content of nowhere activity;
	say "[line break]".

Printing the entire state is an action applying to nothing.
Carry out printing the entire state:
	say "-=STATE START=-[line break]";
	carry out the printing the state activity;
	say "[line break]Score:[line break] [score]/[maximum score][line break]";
	say "[line break]Objective:[line break] [objective][line break]";
	say "[line break]Inventory description:[line break]";
	say "  You are carrying: [a list of things carried by the player].[line break]";
	say "[line break]Room description:[line break]";
	try looking;
	say "[line break]-=STATE STOP=-";

When play begins:
	if print state option is true:
		try printing the entire state;

Every turn:
	if print state option is true:
		try printing the entire state;

When play ends:
	if print state option is true:
		try printing the entire state;

After looking:
	carry out the printing the things on the floor activity.

Understand "print_state" as printing the entire state.
Understand "enable print state option" as turning on the print state option.
Understand "disable print state option" as turning off the print state option.

Before going through a closed door (called the blocking door):
	say "You have to open the [blocking door] first.";
	stop.

Before opening a locked door (called the locked door):
	let X be the matching key of the locked door;
	if X is nothing:
		say "The [locked door] is welded shut.";
	otherwise:
		say "You have to unlock the [locked door] with the [X] first.";
	stop.

Before opening a locked container (called the locked container):
	let X be the matching key of the locked container;
	if X is nothing:
		say "The [locked container] is welded shut.";
	otherwise:
		say "You have to unlock the [locked container] with the [X] first.";
	stop.

Displaying help message is an action applying to nothing.
Carry out displaying help message:
	say "[fixed letter spacing]Available commands:[line break]";
	say "  look:                                describe the current room[line break]";
	say "  goal:                                print the goal of this game[line break]";
	say "  inventory:                           print player's inventory[line break]";
	say "  go <dir>:                            move the player north, east, south or west[line break]";
	say "  examine <something>:                 examine something more closely[line break]";
	say "  eat <something>:                     eat something edible[line break]";
	say "  open <something>:                    open a door or a container[line break]";
	say "  close <something>:                   close a door or a container[line break]";
	say "  drop <something>:                    drop an object on the floor[line break]";
	say "  take <something>:                    take an object that is on the floor[line break]";
	say "  put <something> on <something>:      place an object on a supporter[line break]";
	say "  take <something> from <something>:   take an object from a container or a supporter[line break]";
	say "  insert <something> into <something>: place an object into a container[line break]";
	say "  lock <something> with <something>:   lock a door or a container with a key[line break]";
	say "  unlock <something> with <something>: unlock a door or a container with a key[line break]";

Understand "help" as displaying help message.

Taking all is an action applying to nothing.
Carry out taking all:
	say "You have to be more specific!".

Understand "take all" as taking all.
Understand "get all" as taking all.
Understand "pick up all" as taking all.

Understand "take each" as taking all.
Understand "get each" as taking all.
Understand "pick up each" as taking all.

Understand "take everything" as taking all.
Understand "get everything" as taking all.
Understand "pick up everything" as taking all.

The restrict commands option is a truth state that varies.
The restrict commands option is usually false.

Turning on the restrict commands option is an action applying to nothing.
Carry out turning on the restrict commands option:
	Now the restrict commands option is true.

Understand "restrict commands" as turning on the restrict commands option.

The taking allowed flag is a truth state that varies.
The taking allowed flag is usually false.

Before removing something from something:
	now the taking allowed flag is true.

After removing something from something:
	now the taking allowed flag is false.

Before taking a thing (called the object) when the object is on a supporter (called the supporter):
	if the restrict commands option is true and taking allowed flag is false:
		say "Can't see any [object] on the floor! Try taking the [object] from the [supporter] instead.";
		rule fails.

Before of taking a thing (called the object) when the object is in a container (called the container):
	if the restrict commands option is true and taking allowed flag is false:
		say "Can't see any [object] on the floor! Try taking the [object] from the [container] instead.";
		rule fails.

There is a EndOfObject.

