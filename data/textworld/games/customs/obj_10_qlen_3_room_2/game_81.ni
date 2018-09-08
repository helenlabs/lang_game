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

The internal name of r_0 is "bar".
The printed name of r_0 is "-= Bar =-".
The bar part 0 is some text that varies. The bar part 0 is "You've entered a bar. You try to gain information on your surroundings by using a technique you call 'looking.'

 You make out a chest. You can't wait to tell the folks at home about this![if c_0 is open and there is something in the c_0] The chest contains [a list of things in the c_0]. You look around you, at all the containers and supporters, doors and objects, and you think to yourself. Why? Why Textworld?[end if]".
The bar part 1 is some text that varies. The bar part 1 is "[if c_0 is open and the c_0 contains nothing] Empty! What kind of nightmare TextWorld is this?[end if]".
The bar part 2 is some text that varies. The bar part 2 is " You can make out a Microsoft style safe.[if c_1 is open and there is something in the c_1] The Microsoft style safe contains [a list of things in the c_1]. Hmmm... what else, what else?[end if]".
The bar part 3 is some text that varies. The bar part 3 is "[if c_1 is open and the c_1 contains nothing] Empty! What kind of nightmare TextWorld is this?[end if]".
The bar part 4 is some text that varies. The bar part 4 is " [if c_2 is locked]A locked[else if c_2 is open]An open[otherwise]A closed[end if]".
The bar part 5 is some text that varies. The bar part 5 is " basket is here.[if c_2 is open and there is something in the c_2] The basket contains [a list of things in the c_2].[end if]".
The bar part 6 is some text that varies. The bar part 6 is "[if c_2 is open and the c_2 contains nothing] The basket is empty! This is the worst thing that could possibly happen, ever![end if]".
The bar part 7 is some text that varies. The bar part 7 is " What's that over there? It looks like it's a desk. The desk is typical.[if there is something on the s_0] On the desk you can make out [a list of things on the s_0].[end if]".
The bar part 8 is some text that varies. The bar part 8 is "[if there is nothing on the s_0] But there isn't a thing on it. You think about smashing the desk to bits, throwing the bits into the garbage, etc, until you get bored.[end if]".
The bar part 9 is some text that varies. The bar part 9 is "

There is an unblocked exit to the north.".
The description of r_0 is "[bar part 0][bar part 1][bar part 2][bar part 3][bar part 4][bar part 5][bar part 6][bar part 7][bar part 8][bar part 9]".

The r_1 is mapped north of r_0.
The internal name of r_1 is "sauna".
The printed name of r_1 is "-= Sauna =-".
The sauna part 0 is some text that varies. The sauna part 0 is "You have stumbled into a sauna. Not the sauna you'd expect. No, this is a sauna. You can barely contain your excitement.

 You can see a Henderson's limited edition locker, so there's that.[if c_3 is open and there is something in the c_3] The Henderson's limited edition locker contains [a list of things in the c_3].[end if]".
The sauna part 1 is some text that varies. The sauna part 1 is "[if c_3 is open and the c_3 contains nothing] The Henderson's limited edition locker is empty! This is the worst thing that could possibly happen, ever![end if]".
The sauna part 2 is some text that varies. The sauna part 2 is " You scan the room, seeing a bench. Wow, isn't TextWorld just the best? [if there is something on the s_1]You see [a list of things on the s_1] on the bench.[end if]".
The sauna part 3 is some text that varies. The sauna part 3 is "[if there is nothing on the s_1]Looks like someone's already been here and taken everything off it, though. What, you think everything in TextWorld should have stuff on it?[end if]".
The sauna part 4 is some text that varies. The sauna part 4 is " Look over there! a counter. The counter is ordinary.[if there is something on the s_2] On the counter you can see [a list of things on the s_2].[end if]".
The sauna part 5 is some text that varies. The sauna part 5 is "[if there is nothing on the s_2] The counter appears to be empty.[end if]".
The sauna part 6 is some text that varies. The sauna part 6 is "

There is an exit to the south. Don't worry, it is unguarded.".
The description of r_1 is "[sauna part 0][sauna part 1][sauna part 2][sauna part 3][sauna part 4][sauna part 5][sauna part 6]".

The r_0 is mapped south of r_1.
The f_1 and the f_2 and the f_0 are foods.
The f_1 and the f_2 and the f_0 are privately-named.
The r_0 and the r_1 are rooms.
The r_0 and the r_1 are privately-named.
The k_0 and the k_2 and the k_3 are keys.
The k_0 and the k_2 and the k_3 are privately-named.
The c_0 and the c_1 and the c_2 and the c_3 are containers.
The c_0 and the c_1 and the c_2 and the c_3 are privately-named.
The s_0 and the s_1 and the s_2 are supporters.
The s_0 and the s_1 and the s_2 are privately-named.

The description of c_0 is "The locker looks strong, and impossible to force open. [if open]You can see inside it.[else if closed]You can't see inside it because the lid's in your way.[otherwise]There is a lock on it.[end if]".
The printed name of c_0 is "chest".
Understand "chest" as c_0.
The c_0 is in r_0.
The c_0 is locked.
The description of c_1 is "The trunk looks strong, and impossible to open. [if open]You can see inside it.[else if closed]You can't see inside it because the lid's in your way.[otherwise]There is a lock on it.[end if]".
The printed name of c_1 is "Microsoft style safe".
Understand "Microsoft style safe" as c_1.
Understand "Microsoft" as c_1.
Understand "style" as c_1.
Understand "safe" as c_1.
The c_1 is in r_0.
The c_1 is open.
The description of c_2 is "The basket looks strong, and impossible to crack open. [if open]You can see inside it.[else if closed]You can't see inside it because the lid's in your way.[otherwise]There is a lock on it.[end if]".
The printed name of c_2 is "basket".
Understand "basket" as c_2.
The c_2 is in r_0.
The c_2 is locked.
The description of c_3 is "The dresser looks strong, and impossible to force open. [if open]You can see inside it.[else if closed]You can't see inside it because the lid's in your way.[otherwise]There is a lock on it.[end if]".
The printed name of c_3 is "Henderson's limited edition locker".
Understand "Henderson's limited edition locker" as c_3.
Understand "Henderson's" as c_3.
Understand "limited" as c_3.
Understand "edition" as c_3.
Understand "locker" as c_3.
The c_3 is in r_1.
The c_3 is locked.
The description of f_1 is "The sandwich looks inviting.".
The printed name of f_1 is "sandwich".
Understand "sandwich" as f_1.
The f_1 is in r_0.
The f_1 is edible.
The description of s_0 is "The desk is balanced.".
The printed name of s_0 is "desk".
Understand "desk" as s_0.
The s_0 is in r_0.
The description of s_1 is "The bench is balanced.".
The printed name of s_1 is "bench".
Understand "bench" as s_1.
The s_1 is in r_1.
The description of s_2 is "The counter is balanced.".
The printed name of s_2 is "counter".
Understand "counter" as s_2.
The s_2 is in r_1.
The description of f_2 is "You couldn't pay me to eat that typical thing.".
The printed name of f_2 is "candy bar".
Understand "candy bar" as f_2.
Understand "candy" as f_2.
Understand "bar" as f_2.
The f_2 is edible.
The player carries the f_2.
The description of f_0 is "You couldn't pay me to eat that normal thing.".
The printed name of f_0 is "peanut".
Understand "peanut" as f_0.
The f_0 is in the c_0.
The description of k_0 is "The passkey is heavy.".
The printed name of k_0 is "passkey".
Understand "passkey" as k_0.
The player carries the k_0.
The matching key of the c_0 is the k_0.
The description of k_2 is "The Microsoft style latchkey looks useful".
The printed name of k_2 is "Microsoft style latchkey".
Understand "Microsoft style latchkey" as k_2.
Understand "Microsoft" as k_2.
Understand "style" as k_2.
Understand "latchkey" as k_2.
The k_2 is in the c_1.
The matching key of the c_1 is the k_2.
The description of k_3 is "The metal of the Henderson's limited edition key is antiqued.".
The printed name of k_3 is "Henderson's limited edition key".
Understand "Henderson's limited edition key" as k_3.
Understand "Henderson's" as k_3.
Understand "limited" as k_3.
Understand "edition" as k_3.
Understand "key" as k_3.
The player carries the k_3.
The matching key of the c_3 is the k_3.


The player is in r_0.


Test me with "unlock chest with passkey / open chest / take peanut from chest"

Every turn:
	if 1 is 0 [always false]:
		end the story; [Lost]
	else if The player is in r_0 and The c_0 is in r_0 and The c_0 is open and The player carries the f_0:
		end the story finally; [Win]

Rule for listing nondescript items:
	stop.

Rule for printing the banner text:
	say "Who's got a virtual machine and is about to play through an profound round of TextWorld? You do! First stop, unlock the chest. Then, make it so that the chest inside the bar is opened. After that, recover the peanut from the chest inside the bar. Alright, thanks![line break]".

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

An objective is some text that varies. The objective is "Who's got a virtual machine and is about to play through an profound round of TextWorld? You do! First stop, unlock the chest. Then, make it so that the chest inside the bar is opened. After that, recover the peanut from the chest inside the bar. Alright, thanks!".
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

