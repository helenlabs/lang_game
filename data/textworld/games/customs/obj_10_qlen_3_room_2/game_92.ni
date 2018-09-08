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

The internal name of r_1 is "workshop".
The printed name of r_1 is "-= Workshop =-".
The workshop part 0 is some text that varies. The workshop part 0 is "You've entered a workshop.

 You scan the room for a locker, and you find a locker.[if c_0 is open and there is something in the c_0] The locker contains [a list of things in the c_0].[end if]".
The workshop part 1 is some text that varies. The workshop part 1 is "[if c_0 is open and the c_0 contains nothing] What a letdown! The locker is empty![end if]".
The workshop part 2 is some text that varies. The workshop part 2 is " If you haven't noticed it already, there seems to be something there by the wall, it's a bureau.[if c_1 is open and there is something in the c_1] The bureau contains [a list of things in the c_1].[end if]".
The workshop part 3 is some text that varies. The workshop part 3 is "[if c_1 is open and the c_1 contains nothing] Empty! What kind of nightmare TextWorld is this?[end if]".
The workshop part 4 is some text that varies. The workshop part 4 is " You make out a chair. Now why would someone leave that there? The chair is ordinary.[if there is something on the s_0] On the chair you can make out [a list of things on the s_0].[end if]".
The workshop part 5 is some text that varies. The workshop part 5 is "[if there is nothing on the s_0] But the thing is empty, unfortunately.[end if]".
The workshop part 6 is some text that varies. The workshop part 6 is " As if things weren't amazing enough already, you can even see a mantle. [if there is something on the s_1]You see [a list of things on the s_1] on the mantle. I mean, just wow! Isn't TextWorld just the best?[end if]".
The workshop part 7 is some text that varies. The workshop part 7 is "[if there is nothing on the s_1]But oh no! there's nothing on this piece of garbage.[end if]".
The workshop part 8 is some text that varies. The workshop part 8 is " You see a desk. [if there is something on the s_2]You see [a list of things on the s_2] on the desk. There's something strange about this being here, but you can't put your finger on it.[end if]".
The workshop part 9 is some text that varies. The workshop part 9 is "[if there is nothing on the s_2]Looks like someone's already been here and taken everything off it, though. What's the point of an empty desk?[end if]".
The workshop part 10 is some text that varies. The workshop part 10 is " You see a stand. The stand is ordinary.[if there is something on the s_3] On the stand you can see [a list of things on the s_3]. It doesn't get more TextWorld than this![end if]".
The workshop part 11 is some text that varies. The workshop part 11 is "[if there is nothing on the s_3] But the thing is empty. Oh! Why couldn't there just be stuff on it?[end if]".
The workshop part 12 is some text that varies. The workshop part 12 is " You lean against the wall, inadvertently pressing a secret button. The wall opens up to reveal an armchair. The armchair is typical.[if there is something on the s_4] On the armchair you can see [a list of things on the s_4].[end if]".
The workshop part 13 is some text that varies. The workshop part 13 is "[if there is nothing on the s_4] But there isn't a thing on it. Oh! Why couldn't there just be stuff on it?[end if]".
The workshop part 14 is some text that varies. The workshop part 14 is " You can see a bookshelf. [if there is something on the s_5]You see [a list of things on the s_5] on the bookshelf.[end if]".
The workshop part 15 is some text that varies. The workshop part 15 is "[if there is nothing on the s_5]Unfortunately, there isn't a thing on it. Aw, here you were, all excited for there to be things on it![end if]".
The workshop part 16 is some text that varies. The workshop part 16 is "

There is an unguarded exit to the west.".
The description of r_1 is "[workshop part 0][workshop part 1][workshop part 2][workshop part 3][workshop part 4][workshop part 5][workshop part 6][workshop part 7][workshop part 8][workshop part 9][workshop part 10][workshop part 11][workshop part 12][workshop part 13][workshop part 14][workshop part 15][workshop part 16]".

The r_0 is mapped west of r_1.
The internal name of r_0 is "pantry".
The printed name of r_0 is "-= Pantry =-".
The pantry part 0 is some text that varies. The pantry part 0 is "You arrive in a pantry. An ordinary one.

 You make out a Henderson's style chest.[if c_2 is open and there is something in the c_2] The Henderson's style chest contains [a list of things in the c_2]. Something scurries by right in the corner of your eye. Probably nothing.[end if]".
The pantry part 1 is some text that varies. The pantry part 1 is "[if c_2 is open and the c_2 contains nothing] The Henderson's style chest is empty, what a horrible day![end if]".
The pantry part 2 is some text that varies. The pantry part 2 is "

You don't like doors? Why not try going east, that entranceway is unblocked.".
The description of r_0 is "[pantry part 0][pantry part 1][pantry part 2]".

The r_1 is mapped east of r_0.
The k_0 and the k_1 are keys.
The k_0 and the k_1 are privately-named.
The s_0 and the s_1 and the s_2 and the s_3 and the s_4 and the s_5 are supporters.
The s_0 and the s_1 and the s_2 and the s_3 and the s_4 and the s_5 are privately-named.
The c_0 and the c_1 and the c_2 are containers.
The c_0 and the c_1 and the c_2 are privately-named.
The r_1 and the r_0 are rooms.
The r_1 and the r_0 are privately-named.
The o_0 are object-likes.
The o_0 are privately-named.
The f_0 are foods.
The f_0 are privately-named.

The description of c_0 is "The portmanteau looks strong, and impossible to open. [if open]You can see inside it.[else if closed]You can't see inside it because the lid's in your way.[otherwise]There is a lock on it.[end if]".
The printed name of c_0 is "locker".
Understand "locker" as c_0.
The c_0 is in r_1.
The c_0 is closed.
The description of c_1 is "The bureau looks strong, and impossible to open. [if open]It is open.[else if closed]It is closed.[otherwise]It is locked.[end if]".
The printed name of c_1 is "bureau".
Understand "bureau" as c_1.
The c_1 is in r_1.
The c_1 is open.
The description of c_2 is "The display looks strong, and impossible to force open. [if open]It is open.[else if closed]It is closed.[otherwise]It is locked.[end if]".
The printed name of c_2 is "Henderson's style chest".
Understand "Henderson's style chest" as c_2.
Understand "Henderson's" as c_2.
Understand "style" as c_2.
Understand "chest" as c_2.
The c_2 is in r_0.
The c_2 is closed.
The description of k_0 is "The latchkey is heavier than it looks.".
The printed name of k_0 is "latchkey".
Understand "latchkey" as k_0.
The k_0 is in r_1.
The matching key of the c_0 is the k_0.
The description of s_0 is "The chair is unstable.".
The printed name of s_0 is "chair".
Understand "chair" as s_0.
The s_0 is in r_1.
The description of s_1 is "The mantle is shaky.".
The printed name of s_1 is "mantle".
Understand "mantle" as s_1.
The s_1 is in r_1.
The description of s_2 is "The desk is solidly built.".
The printed name of s_2 is "desk".
Understand "desk" as s_2.
The s_2 is in r_1.
The description of s_3 is "The stand is stable.".
The printed name of s_3 is "stand".
Understand "stand" as s_3.
The s_3 is in r_1.
The description of s_4 is "The armchair is solidly built.".
The printed name of s_4 is "armchair".
Understand "armchair" as s_4.
The s_4 is in r_1.
The description of s_5 is "The bookshelf is unstable.".
The printed name of s_5 is "bookshelf".
Understand "bookshelf" as s_5.
The s_5 is in r_1.
The description of k_1 is "The Henderson's style key is cold to the touch".
The printed name of k_1 is "Henderson's style key".
Understand "Henderson's style key" as k_1.
Understand "Henderson's" as k_1.
Understand "style" as k_1.
Understand "key" as k_1.
The player carries the k_1.
The matching key of the c_2 is the k_1.
The description of f_0 is "You couldn't pay me to eat that ordinary thing.".
The printed name of f_0 is "cucumber".
Understand "cucumber" as f_0.
The f_0 is on the s_1.
The description of o_0 is "The insect appears to be to fit in here".
The printed name of o_0 is "insect".
Understand "insect" as o_0.
The o_0 is on the s_1.


The player is in r_0.


Test me with "go east / take cucumber from mantle / put cucumber on chair"

Every turn:
	if 1 is 0 [always false]:
		end the story; [Lost]
	else if The player is in r_1 and The s_0 is in r_1 and The f_0 is on the s_0:
		end the story finally; [Win]

Rule for listing nondescript items:
	stop.

Rule for printing the banner text:
	say "I hope your ready to go into rooms and interact with objects, because you've just entered TextWorld! First of all, you could, like, head east. After that, recover the cucumber from the mantle in the workshop. If you can get your hands on the cucumber, put the cucumber on the chair. Got that? Good![line break]".

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

An objective is some text that varies. The objective is "I hope your ready to go into rooms and interact with objects, because you've just entered TextWorld! First of all, you could, like, head east. After that, recover the cucumber from the mantle in the workshop. If you can get your hands on the cucumber, put the cucumber on the chair. Got that? Good!".
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

