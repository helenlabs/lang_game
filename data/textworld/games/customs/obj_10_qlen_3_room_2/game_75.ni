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

The internal name of r_0 is "cookery".
The printed name of r_0 is "-= Cookery =-".
The cookery part 0 is some text that varies. The cookery part 0 is "You've just walked into a cookery.

 You can make out [if c_0 is locked]a locked[else if c_0 is open]an opened[otherwise]a closed[end if]".
The cookery part 1 is some text that varies. The cookery part 1 is " refrigerator.[if c_0 is open and there is something in the c_0] The refrigerator contains [a list of things in the c_0]![end if]".
The cookery part 2 is some text that varies. The cookery part 2 is "[if c_0 is open and the c_0 contains nothing] Empty! What kind of nightmare TextWorld is this?[end if]".
The cookery part 3 is some text that varies. The cookery part 3 is " You smell a pungent smell, and follow it to a locker.[if c_1 is open and there is something in the c_1] The locker contains [a list of things in the c_1].[end if]".
The cookery part 4 is some text that varies. The cookery part 4 is "[if c_1 is open and the c_1 contains nothing] What a letdown! The locker is empty![end if]".
The cookery part 5 is some text that varies. The cookery part 5 is " You can see a pan. The pan is usual.[if there is something on the s_0] On the pan you make out [a list of things on the s_0].[end if]".
The cookery part 6 is some text that varies. The cookery part 6 is "[if there is nothing on the s_0] However, the pan, like an empty pan, has nothing on it.[end if]".
The cookery part 7 is some text that varies. The cookery part 7 is "

 There is [if d_0 is open]an open[otherwise]a closed[end if]".
The cookery part 8 is some text that varies. The cookery part 8 is " hatch leading north.".
The description of r_0 is "[cookery part 0][cookery part 1][cookery part 2][cookery part 3][cookery part 4][cookery part 5][cookery part 6][cookery part 7][cookery part 8]".

north of r_0 and south of r_1 is a door called d_0.
The internal name of r_1 is "canteen".
The printed name of r_1 is "-= Canteen =-".
The canteen part 0 is some text that varies. The canteen part 0 is "Well I'll be, you are in a place we're calling a canteen. You start to take note of what's in the room.

 You make out [if c_2 is locked]a locked[else if c_2 is open]an opened[otherwise]a closed[end if]".
The canteen part 1 is some text that varies. The canteen part 1 is " formless box.[if c_2 is open and there is something in the c_2] The formless box contains [a list of things in the c_2].[end if]".
The canteen part 2 is some text that varies. The canteen part 2 is "[if c_2 is open and the c_2 contains nothing] The formless box is empty! What a waste of a day![end if]".
The canteen part 3 is some text that varies. The canteen part 3 is " You hear a noise behind you and spin around, but you can't see anything other than a spherical safe. You shudder, but continue examining the room.[if c_3 is open and there is something in the c_3] The spherical safe contains [a list of things in the c_3].[end if]".
The canteen part 4 is some text that varies. The canteen part 4 is "[if c_3 is open and the c_3 contains nothing] The spherical safe is empty, what a horrible day![end if]".
The canteen part 5 is some text that varies. The canteen part 5 is " If you haven't noticed it already, there seems to be something there by the wall, it's a Canadian limited edition safe.[if c_4 is open and there is something in the c_4] The Canadian limited edition safe contains [a list of things in the c_4].[end if]".
The canteen part 6 is some text that varies. The canteen part 6 is "[if c_4 is open and the c_4 contains nothing] The Canadian limited edition safe is empty, what a horrible day![end if]".
The canteen part 7 is some text that varies. The canteen part 7 is " You hear a noise behind you and spin around, but you can't see anything other than a shelf. [if there is something on the s_1]You see [a list of things on the s_1] on the shelf.[end if]".
The canteen part 8 is some text that varies. The canteen part 8 is "[if there is nothing on the s_1]But the thing hasn't got anything on it. It would have been so cool if there was stuff on the shelf.[end if]".
The canteen part 9 is some text that varies. The canteen part 9 is "

 There is [if d_0 is open]an open[otherwise]a closed[end if]".
The canteen part 10 is some text that varies. The canteen part 10 is " hatch leading south.".
The description of r_1 is "[canteen part 0][canteen part 1][canteen part 2][canteen part 3][canteen part 4][canteen part 5][canteen part 6][canteen part 7][canteen part 8][canteen part 9][canteen part 10]".

south of r_1 and north of r_0 is a door called d_0.
The c_0 and the c_1 and the c_2 and the c_3 and the c_4 are containers.
The c_0 and the c_1 and the c_2 and the c_3 and the c_4 are privately-named.
The k_1 and the k_0 and the k_2 and the k_3 and the k_4 are keys.
The k_1 and the k_0 and the k_2 and the k_3 and the k_4 are privately-named.
The s_0 and the s_1 are supporters.
The s_0 and the s_1 are privately-named.
The d_0 are doors.
The d_0 are privately-named.
The r_0 and the r_1 are rooms.
The r_0 and the r_1 are privately-named.

The description of d_0 is "it is what it is, a hatch [if open]It is open.[else if closed]It is closed.[otherwise]It is locked.[end if]".
The printed name of d_0 is "hatch".
Understand "hatch" as d_0.
The d_0 is closed.
The description of c_0 is "The refrigerator looks strong, and impossible to break open. [if open]It is open.[else if closed]It is closed.[otherwise]It is locked.[end if]".
The printed name of c_0 is "refrigerator".
Understand "refrigerator" as c_0.
The c_0 is in r_0.
The c_0 is open.
The description of c_1 is "The freezer looks strong, and impossible to bash open. [if open]You can see inside it.[else if closed]You can't see inside it because the lid's in your way.[otherwise]There is a lock on it.[end if]".
The printed name of c_1 is "locker".
Understand "locker" as c_1.
The c_1 is in r_0.
The c_1 is closed.
The description of c_2 is "The case looks strong, and impossible to break open. [if open]It is open.[else if closed]It is closed.[otherwise]It is locked.[end if]".
The printed name of c_2 is "formless box".
Understand "formless box" as c_2.
Understand "formless" as c_2.
Understand "box" as c_2.
The c_2 is in r_1.
The c_2 is open.
The description of c_3 is "The chest looks strong, and impossible to crack open. [if open]It is open.[else if closed]It is closed.[otherwise]It is locked.[end if]".
The printed name of c_3 is "spherical safe".
Understand "spherical safe" as c_3.
Understand "spherical" as c_3.
Understand "safe" as c_3.
The c_3 is in r_1.
The c_3 is locked.
The description of c_4 is "The fridge looks strong, and impossible to bash open. [if open]You can see inside it.[else if closed]You can't see inside it because the lid's in your way.[otherwise]There is a lock on it.[end if]".
The printed name of c_4 is "Canadian limited edition safe".
Understand "Canadian limited edition safe" as c_4.
Understand "Canadian" as c_4.
Understand "limited" as c_4.
Understand "edition" as c_4.
Understand "safe" as c_4.
The c_4 is in r_1.
The c_4 is closed.
The description of k_1 is "The key is light.".
The printed name of k_1 is "key".
Understand "key" as k_1.
The k_1 is in r_0.
The matching key of the c_1 is the k_1.
The description of s_0 is "The pan is undependable.".
The printed name of s_0 is "pan".
Understand "pan" as s_0.
The s_0 is in r_0.
The description of s_1 is "The shelf is shaky.".
The printed name of s_1 is "shelf".
Understand "shelf" as s_1.
The s_1 is in r_1.
The description of k_0 is "The passkey is weighty.".
The printed name of k_0 is "passkey".
Understand "passkey" as k_0.
The k_0 is in the c_0.
The description of k_2 is "The spherical keycard is light.".
The printed name of k_2 is "spherical keycard".
Understand "spherical keycard" as k_2.
Understand "spherical" as k_2.
Understand "keycard" as k_2.
The k_2 is in the c_2.
The matching key of the c_3 is the k_2.
The description of k_3 is "The formless latchkey looks useful".
The printed name of k_3 is "formless latchkey".
Understand "formless latchkey" as k_3.
Understand "formless" as k_3.
Understand "latchkey" as k_3.
The k_3 is in the c_2.
The matching key of the c_2 is the k_3.
The description of k_4 is "The Canadian limited edition key is cold to the touch".
The printed name of k_4 is "Canadian limited edition key".
Understand "Canadian limited edition key" as k_4.
Understand "Canadian" as k_4.
Understand "limited" as k_4.
Understand "edition" as k_4.
Understand "key" as k_4.
The k_4 is in the c_2.
The matching key of the c_4 is the k_4.


The player is in r_1.


Test me with "open hatch / go south / take passkey from refrigerator"

Every turn:
	if 1 is 0 [always false]:
		end the story; [Lost]
	else if The player is in r_0 and The c_0 is in r_0 and The c_0 is open and The player carries the k_0:
		end the story finally; [Win]

Rule for listing nondescript items:
	stop.

Rule for printing the banner text:
	say "Who's got a virtual machine and is about to play through an profound round of TextWorld? You do! Here is how to play! First of all, you could, like, look and see that the hatch is opened. After pulling open the hatch, venture south. Once you succeed at that, take the passkey from the refrigerator. Once that's all handled, you can stop![line break]".

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

An objective is some text that varies. The objective is "Who's got a virtual machine and is about to play through an profound round of TextWorld? You do! Here is how to play! First of all, you could, like, look and see that the hatch is opened. After pulling open the hatch, venture south. Once you succeed at that, take the passkey from the refrigerator. Once that's all handled, you can stop!".
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

