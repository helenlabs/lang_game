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

The internal name of r_0 is "garage".
The printed name of r_0 is "-= Garage =-".
The garage part 0 is some text that varies. The garage part 0 is "You've just sauntered into a garage. You decide to start listing off everything you see in the room, as if you were in a text adventure.

 You can see a stand. You wonder idly who left that here. The stand is usual.[if there is something on the s_1] On the stand you can see [a list of things on the s_1]. It doesn't get more TextWorld than this![end if]".
The garage part 1 is some text that varies. The garage part 1 is "[if there is nothing on the s_1] However, the stand, like an empty stand, has nothing on it.[end if]".
The garage part 2 is some text that varies. The garage part 2 is " You see a gleam over in a corner, where you can see a shelf. The shelf is usual.[if there is something on the s_2] On the shelf you make out [a list of things on the s_2]. Classic TextWorld.[end if]".
The garage part 3 is some text that varies. The garage part 3 is "[if there is nothing on the s_2] But there isn't a thing on it. Oh! Why couldn't there just be stuff on it?[end if]".
The garage part 4 is some text that varies. The garage part 4 is " You see a gleam over in a corner, where you can see a counter. Now why would someone leave that there? The counter is ordinary.[if there is something on the s_3] On the counter you can make out [a list of things on the s_3]. Wow! Just like in the movies![end if]".
The garage part 5 is some text that varies. The garage part 5 is "[if there is nothing on the s_3] The counter appears to be empty.[end if]".
The garage part 6 is some text that varies. The garage part 6 is "

You need an unguarded exit? You should try going north.".
The description of r_0 is "[garage part 0][garage part 1][garage part 2][garage part 3][garage part 4][garage part 5][garage part 6]".

The r_1 is mapped north of r_0.
The internal name of r_1 is "shower".
The printed name of r_1 is "-= Shower =-".
The shower part 0 is some text that varies. The shower part 0 is "Well, here we are in the shower. Let's see what's in here.

 You can make out a type C box.[if c_0 is open and there is something in the c_0] The type C box contains [a list of things in the c_0]. Classic TextWorld.[end if]".
The shower part 1 is some text that varies. The shower part 1 is "[if c_0 is open and the c_0 contains nothing] The type C box is empty! What a waste of a day![end if]".
The shower part 2 is some text that varies. The shower part 2 is " Were you looking for a locker? Because look over there, it's a locker.[if c_1 is open and there is something in the c_1] The locker contains [a list of things in the c_1].[end if]".
The shower part 3 is some text that varies. The shower part 3 is "[if c_1 is open and the c_1 contains nothing] The locker is empty, what a horrible day![end if]".
The shower part 4 is some text that varies. The shower part 4 is " You see a bench. I guess it's true what they say, if you're looking for a bench, go to TextWorld. The bench is usual.[if there is something on the s_0] On the bench you can make out [a list of things on the s_0]. Classic TextWorld.[end if]".
The shower part 5 is some text that varies. The shower part 5 is "[if there is nothing on the s_0] However, the bench, like an empty bench, has nothing on it. Hm. Oh well[end if]".
The shower part 6 is some text that varies. The shower part 6 is " You can make out a table. Make a note of this, you might have to put stuff on or in it later on. The table is ordinary.[if there is something on the s_4] On the table you can see [a list of things on the s_4].[end if]".
The shower part 7 is some text that varies. The shower part 7 is "[if there is nothing on the s_4] But there isn't a thing on it.[end if]".
The shower part 8 is some text that varies. The shower part 8 is "

You need an unblocked exit? You should try going south.".
The description of r_1 is "[shower part 0][shower part 1][shower part 2][shower part 3][shower part 4][shower part 5][shower part 6][shower part 7][shower part 8]".

The r_0 is mapped south of r_1.
The o_0 and the o_1 are object-likes.
The o_0 and the o_1 are privately-named.
The k_0 and the k_1 are keys.
The k_0 and the k_1 are privately-named.
The s_0 and the s_1 and the s_2 and the s_3 and the s_4 are supporters.
The s_0 and the s_1 and the s_2 and the s_3 and the s_4 are privately-named.
The c_0 and the c_1 are containers.
The c_0 and the c_1 are privately-named.
The f_0 and the f_1 are foods.
The f_0 and the f_1 are privately-named.
The r_0 and the r_1 are rooms.
The r_0 and the r_1 are privately-named.

The description of c_0 is "The box looks strong, and impossible to bash open. [if open]You can see inside it.[else if closed]You can't see inside it because the lid's in your way.[otherwise]There is a lock on it.[end if]".
The printed name of c_0 is "type C box".
Understand "type C box" as c_0.
Understand "type" as c_0.
Understand "C" as c_0.
Understand "box" as c_0.
The c_0 is in r_1.
The c_0 is open.
The description of c_1 is "The cabinet looks strong, and impossible to break open. [if open]You can see inside it.[else if closed]You can't see inside it because the lid's in your way.[otherwise]There is a lock on it.[end if]".
The printed name of c_1 is "locker".
Understand "locker" as c_1.
The c_1 is in r_1.
The c_1 is locked.
The description of f_0 is "The candy bar looks tasty.".
The printed name of f_0 is "candy bar".
Understand "candy bar" as f_0.
Understand "candy" as f_0.
Understand "bar" as f_0.
The f_0 is in r_0.
The f_0 is edible.
The description of f_1 is "The stick of butter looks delectable.".
The printed name of f_1 is "stick of butter".
Understand "stick of butter" as f_1.
Understand "stick" as f_1.
Understand "butter" as f_1.
The f_1 is in r_0.
The f_1 is edible.
The description of k_0 is "The keycard is surprisingly heavy.".
The printed name of k_0 is "keycard".
Understand "keycard" as k_0.
The k_0 is in r_1.
The matching key of the c_1 is the k_0.
The description of s_0 is "The bench is undependable.".
The printed name of s_0 is "bench".
Understand "bench" as s_0.
The s_0 is in r_1.
The description of s_1 is "The stand is durable.".
The printed name of s_1 is "stand".
Understand "stand" as s_1.
The s_1 is in r_0.
The description of s_2 is "The shelf is shaky.".
The printed name of s_2 is "shelf".
Understand "shelf" as s_2.
The s_2 is in r_0.
The description of s_3 is "The counter is solidly built.".
The printed name of s_3 is "counter".
Understand "counter" as s_3.
The s_3 is in r_0.
The description of s_4 is "The table is balanced.".
The printed name of s_4 is "table".
Understand "table" as s_4.
The s_4 is in r_1.
The description of k_1 is "The type C latchkey is cold to the touch".
The printed name of k_1 is "type C latchkey".
Understand "type C latchkey" as k_1.
Understand "type" as k_1.
Understand "C" as k_1.
Understand "latchkey" as k_1.
The k_1 is in the c_0.
The matching key of the c_0 is the k_1.
The description of o_0 is "The sponge is brand new.".
The printed name of o_0 is "sponge".
Understand "sponge" as o_0.
The o_0 is in the c_0.
The description of o_1 is "The mop appears to be out of place here".
The printed name of o_1 is "mop".
Understand "mop" as o_1.
The o_1 is on the s_4.


The player is in r_1.


Test me with "take sponge from type C box / put sponge on bench"

Every turn:
	if 1 is 0 [always false]:
		end the story; [Lost]
	else if The player is in r_1 and The s_0 is in r_1 and The o_0 is on the s_0:
		end the story finally; [Win]

Rule for listing nondescript items:
	stop.

Rule for printing the banner text:
	say "I hope your ready to go into rooms and interact with objects, because you've just entered TextWorld! Here is how to play! First of all, you could, like, pick up the sponge from the type C box. Once you have got the sponge, sit the sponge on the bench in the shower. Once that's all handled, you can stop![line break]".

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

An objective is some text that varies. The objective is "I hope your ready to go into rooms and interact with objects, because you've just entered TextWorld! Here is how to play! First of all, you could, like, pick up the sponge from the type C box. Once you have got the sponge, sit the sponge on the bench in the shower. Once that's all handled, you can stop!".
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

