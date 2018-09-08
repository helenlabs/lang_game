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


The r_0 and the r_1 are rooms.

The internal name of r_0 is "study".
The printed name of r_0 is "-= Study =-".
The study part 0 is some text that varies. The study part 0 is "You've come into an ordinary room. Your mind races to think of what kind of room would be ordinary. And then it hits you. Of course. You're in the study. Okay, just remember what you're here to do, and everything will go great.

 You see a gleam over in a corner, where you can see a stand. The stand is standard.[if there is something on the s_0] On the stand you make out [a list of things on the s_0].[end if]".
The study part 1 is some text that varies. The study part 1 is "[if there is nothing on the s_0] But oh no! there's nothing on this piece of garbage.[end if]".
The study part 2 is some text that varies. The study part 2 is " You make out a mantelpiece. I guess it's true what they say, if you're looking for a mantelpiece, go to TextWorld. [if there is something on the s_1]You see [a list of things on the s_1] on the mantelpiece. There's something strange about this being here, but you can't put your finger on it.[end if]".
The study part 3 is some text that varies. The study part 3 is "[if there is nothing on the s_1]But the thing hasn't got anything on it.[end if]".
The study part 4 is some text that varies. The study part 4 is " You can make out a chair. The chair is usual.[if there is something on the s_2] On the chair you make out [a list of things on the s_2].[end if]".
The study part 5 is some text that varies. The study part 5 is "[if there is nothing on the s_2] The chair appears to be empty. You swear loudly.[end if]".
The study part 6 is some text that varies. The study part 6 is "

 There is [if d_0 is open]an open[otherwise]a closed[end if]".
The study part 7 is some text that varies. The study part 7 is " portal leading north.".
The description of r_0 is "[study part 0][study part 1][study part 2][study part 3][study part 4][study part 5][study part 6][study part 7]".

north of r_0 and south of r_1 is a door called d_0.
The internal name of r_1 is "laundromat".
The printed name of r_1 is "-= Laundromat =-".
The laundromat part 0 is some text that varies. The laundromat part 0 is "You find yourself in a laundromat. A typical one. You decide to start listing off everything you see in the room, as if you were in a text adventure.

 You see [if c_0 is locked]a locked[else if c_0 is open]an open[otherwise]a closed[end if]".
The laundromat part 1 is some text that varies. The laundromat part 1 is " box.[if c_0 is open and there is something in the c_0] The box contains [a list of things in the c_0].[end if]".
The laundromat part 2 is some text that varies. The laundromat part 2 is "[if c_0 is open and the c_0 contains nothing] What a letdown! The box is empty![end if]".
The laundromat part 3 is some text that varies. The laundromat part 3 is " Oh wow! Is that what I think it is? It is! It's a rack. What a coincidence, weren't you just thinking about a rack? The rack is normal.[if there is something on the s_3] On the rack you can see [a list of things on the s_3]. Wow! Just like in the movies![end if]".
The laundromat part 4 is some text that varies. The laundromat part 4 is "[if there is nothing on the s_3] However, the rack, like an empty rack, has nothing on it. Hopefully, this discovery doesn't ruin your TextWorld experience![end if]".
The laundromat part 5 is some text that varies. The laundromat part 5 is "

 There is [if d_0 is open]an open[otherwise]a closed[end if]".
The laundromat part 6 is some text that varies. The laundromat part 6 is " portal leading south.".
The description of r_1 is "[laundromat part 0][laundromat part 1][laundromat part 2][laundromat part 3][laundromat part 4][laundromat part 5][laundromat part 6]".

south of r_1 and north of r_0 is a door called d_0.
The s_0 and the s_1 and the s_2 and the s_3 are supporters.
The s_0 and the s_1 and the s_2 and the s_3 are privately-named.
The k_0 and the k_2 are keys.
The k_0 and the k_2 are privately-named.
The c_0 are containers.
The c_0 are privately-named.
The o_0 are object-likes.
The o_0 are privately-named.
The d_0 are doors.
The d_0 are privately-named.
The r_0 and the r_1 are rooms.
The r_0 and the r_1 are privately-named.
The f_0 and the f_2 and the f_1 are foods.
The f_0 and the f_2 and the f_1 are privately-named.

The description of d_0 is "The portal looks well-built. [if open]It is open.[else if closed]It is closed.[otherwise]It is locked.[end if]".
The printed name of d_0 is "portal".
Understand "portal" as d_0.
The d_0 is closed.
The description of c_0 is "The cabinet looks strong, and impossible to break open. [if open]You can see inside it.[else if closed]You can't see inside it because the lid's in your way.[otherwise]There is a lock on it.[end if]".
The printed name of c_0 is "box".
Understand "box" as c_0.
The c_0 is in r_1.
The c_0 is closed.
The description of f_0 is "You couldn't pay me to eat that normal thing.".
The printed name of f_0 is "cashew".
Understand "cashew" as f_0.
The f_0 is in r_0.
The f_0 is edible.
The description of f_2 is "The potato looks savory.".
The printed name of f_2 is "potato".
Understand "potato" as f_2.
The f_2 is in r_1.
The f_2 is edible.
The description of k_0 is "The metal of the keycard is hammered.".
The printed name of k_0 is "keycard".
Understand "keycard" as k_0.
The k_0 is in r_0.
The description of k_2 is "The key looks useful".
The printed name of k_2 is "key".
Understand "key" as k_2.
The k_2 is in r_1.
The matching key of the c_0 is the k_2.
The description of s_0 is "The stand is undependable.".
The printed name of s_0 is "stand".
Understand "stand" as s_0.
The s_0 is in r_0.
The description of s_1 is "The mantelpiece is solid.".
The printed name of s_1 is "mantelpiece".
Understand "mantelpiece" as s_1.
The s_1 is in r_0.
The description of s_2 is "The chair is undependable.".
The printed name of s_2 is "chair".
Understand "chair" as s_2.
The s_2 is in r_0.
The description of s_3 is "The rack is shaky.".
The printed name of s_3 is "rack".
Understand "rack" as s_3.
The s_3 is in r_1.
The description of f_1 is "You couldn't pay me to eat that usual thing.".
The printed name of f_1 is "legume".
Understand "legume" as f_1.
The f_1 is edible.
The player carries the f_1.
The description of o_0 is "The sock would seem to be to fit in here".
The printed name of o_0 is "sock".
Understand "sock" as o_0.
The o_0 is on the s_3.


The player is in r_1.


Test me with "open portal / go south / take keycard"

Every turn:
	if 1 is 0 [always false]:
		end the story; [Lost]
	else if The player is in r_0 and The player carries the k_0:
		end the story finally; [Win]

Rule for listing nondescript items:
	stop.

Rule for printing the banner text:
	say "It's time to explore the amazing world of TextWorld! Here is how to play! First thing I need you to do is to open the portal. Then, go to the south. Then, pick up the keycard in the study. Got that? Good![line break]".

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

An objective is some text that varies. The objective is "It's time to explore the amazing world of TextWorld! Here is how to play! First thing I need you to do is to open the portal. Then, go to the south. Then, pick up the keycard in the study. Got that? Good!".
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

