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

The internal name of r_0 is "office".
The printed name of r_0 is "-= Office =-".
The office part 0 is some text that varies. The office part 0 is "You are in an office. A normal one. You can barely contain your excitement.

 If you haven't noticed it already, there seems to be something there by the wall, it's a rectangular box. Now why would someone leave that there?[if c_0 is open and there is something in the c_0] The rectangular box contains [a list of things in the c_0].[end if]".
The office part 1 is some text that varies. The office part 1 is "[if c_0 is open and the c_0 contains nothing] The rectangular box is empty, what a horrible day![end if]".
The office part 2 is some text that varies. The office part 2 is "

There is an unblocked exit to the north.".
The description of r_0 is "[office part 0][office part 1][office part 2]".

The r_1 is mapped north of r_0.
The internal name of r_1 is "cubicle".
The printed name of r_1 is "-= Cubicle =-".
The cubicle part 0 is some text that varies. The cubicle part 0 is "You've entered a cubicle. Okay, just remember what you're here to do, and everything will go great.

 Hey, want to see a safe? Look over there, a safe.[if c_1 is open and there is something in the c_1] The safe contains [a list of things in the c_1].[end if]".
The cubicle part 1 is some text that varies. The cubicle part 1 is "[if c_1 is open and the c_1 contains nothing] What a letdown! The safe is empty![end if]".
The cubicle part 2 is some text that varies. The cubicle part 2 is " You see a American limited edition box.[if c_2 is open and there is something in the c_2] The American limited edition box contains [a list of things in the c_2]. Huh, weird.[end if]".
The cubicle part 3 is some text that varies. The cubicle part 3 is "[if c_2 is open and the c_2 contains nothing] The American limited edition box is empty, what a horrible day![end if]".
The cubicle part 4 is some text that varies. The cubicle part 4 is " You make out [if c_3 is locked]a locked[else if c_3 is open]an opened[otherwise]a closed[end if]".
The cubicle part 5 is some text that varies. The cubicle part 5 is " case.[if c_3 is open and there is something in the c_3] The case contains [a list of things in the c_3]. You look around you, at all the containers and supporters, doors and objects, and you think to yourself. Why? Why Textworld?[end if]".
The cubicle part 6 is some text that varies. The cubicle part 6 is "[if c_3 is open and the c_3 contains nothing] What a letdown! The case is empty![end if]".
The cubicle part 7 is some text that varies. The cubicle part 7 is " You can make out a mantelpiece. The mantelpiece is typical.[if there is something on the s_0] On the mantelpiece you see [a list of things on the s_0].[end if]".
The cubicle part 8 is some text that varies. The cubicle part 8 is "[if there is nothing on the s_0] Looks like someone's already been here and taken everything off it, though. What, you think everything in TextWorld should have stuff on it?[end if]".
The cubicle part 9 is some text that varies. The cubicle part 9 is "

You don't like doors? Why not try going south, that entranceway is unguarded.".
The description of r_1 is "[cubicle part 0][cubicle part 1][cubicle part 2][cubicle part 3][cubicle part 4][cubicle part 5][cubicle part 6][cubicle part 7][cubicle part 8][cubicle part 9]".

The r_0 is mapped south of r_1.
The s_0 are supporters.
The s_0 are privately-named.
The c_0 and the c_1 and the c_2 and the c_3 are containers.
The c_0 and the c_1 and the c_2 and the c_3 are privately-named.
The o_0 and the o_1 and the o_2 are object-likes.
The o_0 and the o_1 and the o_2 are privately-named.
The f_0 are foods.
The f_0 are privately-named.
The r_0 and the r_1 are rooms.
The r_0 and the r_1 are privately-named.
The k_1 and the k_3 and the k_0 are keys.
The k_1 and the k_3 and the k_0 are privately-named.

The description of c_0 is "The toolbox looks strong, and impossible to open. [if open]It is open.[else if closed]It is closed.[otherwise]It is locked.[end if]".
The printed name of c_0 is "rectangular box".
Understand "rectangular box" as c_0.
Understand "rectangular" as c_0.
Understand "box" as c_0.
The c_0 is in r_0.
The c_0 is closed.
The description of c_1 is "The bureau looks strong, and impossible to force open. [if open]You can see inside it.[else if closed]You can't see inside it because the lid's in your way.[otherwise]There is a lock on it.[end if]".
The printed name of c_1 is "safe".
Understand "safe" as c_1.
The c_1 is in r_1.
The c_1 is open.
The description of c_2 is "The portmanteau looks strong, and impossible to open. [if open]It is open.[else if closed]It is closed.[otherwise]It is locked.[end if]".
The printed name of c_2 is "American limited edition box".
Understand "American limited edition box" as c_2.
Understand "American" as c_2.
Understand "limited" as c_2.
Understand "edition" as c_2.
Understand "box" as c_2.
The c_2 is in r_1.
The c_2 is locked.
The description of c_3 is "The case looks strong, and impossible to force open. [if open]You can see inside it.[else if closed]You can't see inside it because the lid's in your way.[otherwise]There is a lock on it.[end if]".
The printed name of c_3 is "case".
Understand "case" as c_3.
The c_3 is in r_1.
The c_3 is open.
The description of f_0 is "that's a normal fondue!".
The printed name of f_0 is "fondue".
Understand "fondue" as f_0.
The f_0 is in r_0.
The f_0 is edible.
The description of k_1 is "The metal of the key is antiqued.".
The printed name of k_1 is "key".
Understand "key" as k_1.
The k_1 is in r_1.
The matching key of the c_1 is the k_1.
The description of k_3 is "The American limited edition latchkey is heavier than it looks.".
The printed name of k_3 is "American limited edition latchkey".
Understand "American limited edition latchkey" as k_3.
Understand "American" as k_3.
Understand "limited" as k_3.
Understand "edition" as k_3.
Understand "latchkey" as k_3.
The k_3 is in r_1.
The matching key of the c_2 is the k_3.
The description of s_0 is "The mantelpiece is durable.".
The printed name of s_0 is "mantelpiece".
Understand "mantelpiece" as s_0.
The s_0 is in r_1.
The description of k_0 is "The rectangular passkey is weighty.".
The printed name of k_0 is "rectangular passkey".
Understand "rectangular passkey" as k_0.
Understand "rectangular" as k_0.
Understand "passkey" as k_0.
The player carries the k_0.
The matching key of the c_0 is the k_0.
The description of o_0 is "The book would seem to be to fit in here".
The printed name of o_0 is "book".
Understand "book" as o_0.
The o_0 is in the c_0.
The description of o_1 is "The desktop computer is unremarkable.".
The printed name of o_1 is "desktop computer".
Understand "desktop computer" as o_1.
Understand "desktop" as o_1.
Understand "computer" as o_1.
The o_1 is in the c_0.
The description of o_2 is "The spoon is expensive looking.".
The printed name of o_2 is "spoon".
Understand "spoon" as o_2.
The player carries the o_2.


The player is in r_1.


Test me with "go south / open rectangular box / take book from rectangular box"

Every turn:
	if 1 is 0 [always false]:
		end the story; [Lost]
	else if The player is in r_0 and The c_0 is in r_0 and The c_0 is open and The player carries the o_0:
		end the story finally; [Win]

Rule for listing nondescript items:
	stop.

Rule for printing the banner text:
	say "Get ready to pick stuff up and put it in places, because you've just entered TextWorld! First of all, make an attempt to move south. And then, make absolutely sure that the rectangular box within the office is ajar. And then, pick up the book from the rectangular box. That's it![line break]".

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

An objective is some text that varies. The objective is "Get ready to pick stuff up and put it in places, because you've just entered TextWorld! First of all, make an attempt to move south. And then, make absolutely sure that the rectangular box within the office is ajar. And then, pick up the book from the rectangular box. That's it!".
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

