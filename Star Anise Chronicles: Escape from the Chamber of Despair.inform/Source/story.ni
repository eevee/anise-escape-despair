"Star Anise Chronicles: Escape from the Chamber of Despair" by "Evelyn Woods"

The release number is 2.
The story description is "Trapped in an eternal prison, our hero must use every resource at his disposal to escape, or face...  despair."
The story genre is "Fantasy".
The story creation year is 2019.

Use scoring.
Use the serial comma.
Use American dialect.
Use no deprecated features.
Release along with cover art and an interpreter.
The maximum score is 100.

Include Extended Grammar by Aaron Reed.
Include Small Kindnesses by Aaron Reed.
Include Smarter Parser by Aaron Reed.
Include Epistemology by Eric Eve.
[Include Remembering by Aaron Reed. -- this seems to disable examining entirely, for some reason, which is a shame]
Include Numbered Disambiguation Choices by Aaron Reed.
Include Basic Screen Effects by Emily Short.
Include Rideable Vehicles by Graham Nelson.

[TODO:
- LOTS of default responses need fixing
-- climbing/entering stuff
-- getting on/off purrl
-- various conversation with purrl
-- attack, kiss, other oddball stuff
-- KICK LAUNDRY
- illustrations??
- fix default behavior for SEARCH + LOOK UNDER
- get some shop hints from purrl?
- five senses
- react to WEAR something when appropriate
- PUSH BOX TO BEDROOM should work -- may need bedroom to be in scope?
- ask purrl for help (currently eaten by smarter parser)
- CLIMB ON WORKBENCH doesn't report that you did anything OR show a desc of the workbench
- "as the parser" has no styling?  tbh i'm not even sure if i like smarter parser
- opa did STACK CUBES
- opa did EAT CACTUS (also, GET YE FLASK)
- opa did PURR, HISS, WHINE
- really should implement FIGHT
- opa did NAP ON PURRL
- opa did SHOW STAR TO PURRL
- opa did ASK EEVEE FOR HINTS
- ASK PURRL FOR BOOST?
- LOOK IN CLOSET > "you find nothing of interest" lol whoops; also EXAMINE CLOSET should work, but rooms aren't in scope
- LEAVE CLOSET
- CLIMB DOWN didn't work
- can't CLIMB IN BOX even though the desc says it's good
- EXIT is a bit wonky, takes you between bedroom/closet
- make sure examining a platform from the floor comments on how you can't see what's on it
- looking on the workbench doesn't mention the scissors
- no need to look after getting off purrl
- going UP should do something
- HELLO and SAY HELLO and etc
- amuse a victorious player
- searching a supporter defaults to listing its contents, rgh
- climbing a thing doesn't seem to do the local look any more?
- morsel!  talk about
- tying the string/twine
- intercept SELL?
- PARTY art??
- ATTACK (big thing) doesn't make any sense
- LOOK IN CLOSET
- LEAVE CLOSET (thinks trying to leave the door)
- PUSH BOX INTO CLEARING
- LOOK UNDER DOOR?  both of them
- replace THINK
- TELL PURRL ABOUT SHOP?
]

[Things]
Figure Star Anise is the file "star-anise.png".
Figure Purrl is the file "purrl.png".
Figure Award is the file "award.png".
Figure Bedroom Door is the file "bedroom-door.png".
Figure Black Star is the file "black-star.png".
Figure Blue Star is the file "blue-star.png".
Figure Cardboard Box is the file "cardboard-box.png".
Figure Cardboard Box Unsealed is the file "cardboard-box.png".
Figure Clearing is the file "clearing.png".
Figure Coin is the file "coin.png".
Figure Confetti is the file "confetti.png".
Figure Construction Paper is the file "construction-paper.png".
Figure Glitter is the file "glitter.png".
Figure Glowing Panel is the file "glowing-panel.png".
Figure Glue Stick is the file "glue-stick.png".
Figure Gray Cube is the file "gray-cube.png".
Figure Gray Star is the file "gray-star.png".
Figure Jar Of Paint is the file "jar-of-paint.png".
Figure Keypad is the file "keypad.png".
Figure Laser Engraver is the file "laser-engraver.png".
Figure Laundry is the file "laundry.png".
Figure Laundry Plus Star is the file "laundry-plus-star.png".
Figure Lily Figurine is the file "lily-figurine.png".
Figure Lily Figurine Painted is the file "lily-figurine-painted.png".
Figure Lump is the file "lump.png".
Figure Morsel is the file "morsel.png".
Figure Mug is the file "mug.png".
Figure Mug Chipped is the file "mug-chipped.png".
Figure Mug Cracked is the file "mug-cracked.png".
Figure Mug Broken is the file "mug-broken.png".
Figure Pamphlet is the file "pamphlet.png".
Figure Pillow is the file "pillow.png".
Figure Pillow Plus Engraver is the file "pillow-with-engraver.png".
Figure Puffball is the file "puffball.png".
Figure Red Button is the file "red-button.png".
Figure Red Star is the file "red-star.png".
Figure Scissors is the file "scissors.png".
Figure Scraps is the file "scraps.png".
Figure Slot is the file "slot.png".
Figure Slot Empty is the file "slot-empty.png".
Figure Slot Plus Cube is the file "slot-cube.png".
Figure Slot Plus Lily is the file "slot-lily.png".
Figure String is the file "string.png".
Figure Tall Machine is the file "tall-machine.png".
Figure Tape is the file "tape.png".
Figure Tape Unsealed is the file "tape-unsealed.png".
Figure Terminal is the file "terminal.png".
Figure Terminal Ruined is the file "terminal-ruined.png".
Figure Twine is the file "twine.png".
Figure Twine Unraveled is the file "twine-unraveled.png".
Figure Yellow Star is the file "yellow-star.png".
[Places]
Figure Shelves is the file "shelves.png".
[Events]
Figure Intro is the file "intro.png".
Figure Reveal Purrl is the file "reveal-purrl.png".
Figure Convince Purrl is the file "convince-purrl.png".
Figure Mount Purrl is the file "mount-purrl.png".
Figure Empty Box is the file "empty-box.png".
Figure Setup Stall is the file "setup-stall.png".
Figure Acquire Black Star is the file "acquire-black-star.png".
Figure Acquire Blue Star is the file "acquire-blue-star.png".
Figure Acquire Gray Star is the file "acquire-gray-star.png".
Figure Acquire Red Star is the file "acquire-red-star.png".
Figure Ending is the file "ending.png".
Figure Pewpew is the file "pewpew.png".
Figure Nuke Terminal is the file "nuke-terminal.png".

To decide what (K) is a random entry of (L - a list of values of kind K):
   let N be the number of entries in L;
   let M be a random number between 1 and N;
   decide on entry M of L.

Section - Player and setup

To hop is a verb.
To sail is a verb.
To land is a verb.

[Dynamic text substitutions don't seem to work?]
To update the prompt:
	now the command prompt is "[bracket][if the player is carried by Purrl]on Purrl[otherwise if the player is enclosed by Neon's closet]in the closet[otherwise if a platform (called the shelf) encloses the player]on [the shelf][otherwise]on the floor[end if][if the player has anything], holding [a list of things held by the player][end if][close bracket] >".
When play begins, update the prompt.
Every turn, update the prompt.

When play begins, now the right hand status line is "Score: [score]/[maximum score]".

The print empty inventory rule response (A) is "[Our] paws are empty."

The standard report mounting rule response (A) is "[The noun] reluctantly leans down for [us], and [we] clamber awkwardly on top of [regarding the noun][their] helmet."

The standard report dismounting rule response (A) is "[We] hop down off of [the noun]."

The standard report getting off rule response (A) is "[The actor] [hop] down off of [the noun]."

The can't take what's fixed in place rule response (A) is "[We] make an impressive effort, but [regarding the noun][they're] far too heavy for [us] to carry."

The standard report taking rule response (A) is "[We] [pick] up [the noun]."

The block sleeping rule response (A) is "You take a quick nap, right where you are.  You wake up a few minutes later, refreshed and raring to go!"

The standard looking under rule response (A) is "[We] [find]...  [one of]a speck of dust[or]some lint[or]a stray hair[or]a crumb[or]an eyelash[or]a shed claw[or]a bit of fuzz[at random]!  [one of]Wow[or]Cool[or]Neato[or]Score[or]AOWRR[at random]!!  But as soon as [we] try to pick it up, [we] lose track of it."

[This describes the room after exiting a container/supporter, which for our purposes is ridiculous]
The describe room emerged into rule does nothing.
The describe room stood up into rule does nothing.

Understand "go on/to [something]" as entering.

Understand "up" as a mistake ("[if the player is in a room]You'll have to be more specific about where you're trying to go[otherwise]You can't get much higher[end if].").

Understand "knock over [something]" as pushing.
Understand "tip over [something]" as pushing.
Understand "push [something] down" as pushing.
Understand "knock [something] down" as pushing.
Understand "hit [something] down" as pushing.
Understand "bat [something] down" as pushing.
Understand "swipe [something] down" as pushing.

Understand "pull on/at [something]" as pulling.

Understand "pet [something]" as touching.
[TODO opa tried PET PEARL, NUZZLE PEARL, also KISS PEARL]

Understand "add [something] to [something]" as inserting it into.

Understand "rub [something] on [something]" as putting it on.
Understand the command "smear" as "rub".

Understand "flip [something]" as turning.
Understand "turn [something] over/upside-down" as turning.
Understand "turn [something] upside down" as turning.

Understand "type [text] on/with [something]" as setting it to (with nouns reversed).
Understand "enter [text] on [something]" as setting it to (with nouns reversed).

Understand "bite [something]" as tasting.

Understand "cut up [something]" as cutting.
Understand the command "shred" as "cut".

Understand the command "pap" and "bap" and "poke" and "tap" as "touch".

Understand "take a/-- nap" as sleeping.

Understand "purr" as a mistake ("You're overcome by sheer delight for life and all its adventures, and you purr about it for a while.").

Understand "help" as a mistake ("You AOOOWRRRR as loudly as you can, but no one answers your cry.  If only there were some kind of informational pamphlet around.").

Understand "party" as a mistake ("Yeah!  Let's get this party started!  You do a little dance.").

Understand "use [thing] on [thing]" as a mistake ("You'll have to be more specific about what you're trying to do.").

Understand "anise" and "star anise" as a mistake ("That's you!").

Understand "stack [text]" and "arrange [text]" as a mistake ("You're more in the business of knocking things down.").  

[Consolidate the various talk commands into "answering it that"...]
Instead of asking something about:
	try answering the noun that the topic understood.
Instead of telling something about:
	try answering the noun that the topic understood.
[...but also create an action for talking about a thing]
Informing it about is an action applying to two visible things.
Understand "tell [someone] about [any known thing]" as informing it about.
Understand "ask [someone] about [any known thing]" as informing it about.
Understand "talk to [someone] about [any known thing]" as informing it about.
Understand "answer [any known thing] to [someone]" as informing it about (with nouns reversed).
Report informing it about:
	say "There's no reply."
[Also, TALK TO PURRL should do...  something, surely]
Understand "talk to [someone] about [text]" as answering it that.
Understand "talk to [someone]" as answering it that.

Instead of attacking something:
	try pushing the noun.

Before cutting:
	if the player does not have the scissors:
		say "[We] don't have anything to cut with." instead.
Instead of cutting:
	say "Your relatively dull scissors don't do much, but you have a blast trying."

Before burning:
	if the player does not have the laser engraver:
		say "[We] don't have anything to burn with." instead.
Instead of burning:
	say "[The laser engraver] beeps, and a soothing voice says: 'Please be careful.  Organic material detected.'"

Instead of going down when the player is on a supporter:
	try exiting.
Instead of going down when the player is in a room:
	say "You crouch down real low, to make it harder for enemies to spot you, which is foiled somewhat by the giant sparkling helmet you're wearing."

Instead of jumping when the player is on a supporter or the player is carried by Purrl:
	try exiting.

[For ease of matching multiple actions later, the nouns here are ordered like inserting it into, etc.]
Decorating it on is an action applying to one carried thing and one thing.
Understand "decorate on/-- [something] with [something]" as decorating it on (with nouns reversed).
Understand "decorate [something] on/onto [something]" as decorating it on (with nouns reversed).
Understand the commands "write" and "draw" and "scribble" and "print" and "paint" as "decorate".
Check decorating it on:
	say "You summon all your artistic skill, but can't figure out how to do that." instead. 

Meowing is an action applying to nothing.  Understand "meow" and "yell" and "cry" and "aowr" as meowing.
Carry out meowing:
	say "AOOOWWWRRRR!!"

After reading a command:
	if the player's command exactly matches the regular expression "\s*a+o+w+r+\s*":
		change the text of the player's command to "aowr".


[Most parts of the room are "platforms", a kind of supporter that Star Anise has to manually move between.  If he's on a platform (or the floor), he can't reach objects on another platform (or the floor).  He also can't see what's on platforms when he's on the floor.]
[Exception: "dangling" things hang down and can be reached from the floor, but only as long as they're unhandled.]
A platform is a kind of supporter.
A platform is always enterable and fixed in place.
A thing can be dangling.  A thing is usually not dangling.

Platform-adjacency relates platforms to each other.
The verb to be platform-adjacent to means the platform-adjacency relation.

Definition: a person is off the ground if it is on a platform or it is carried by Purrl.
Definition: a person is on the ground if it is not off the ground.

Instead of entering a platform when the player is on the ground and the player carries something:
	say "You can't very well climb furniture with your hands full.  'AOOWWRR!' you wail in despair."

Check putting something on a platform (called the shelf):
	if the player is not carried by Purrl and the player is not enclosed by the shelf and the player is not enclosed by a platform that is platform-adjacent to the shelf:
		say "You can't reach [the shelf] from here." instead.

Instead of throwing something at:
	say "You give [the noun] a mighty hurl, and [they] [land] a few inches away."

Before climbing:
	if the noun is a supporter or the noun is a rideable animal:
		try entering the noun instead.

Rule for deciding the concealed possessions of a platform:
	if the person reaching is not off the ground and the particular possession is not dangling:
		yes;
	otherwise:
		no.

Tangibility rules are an object based rulebook.
Accessibility rule:
	if the action requires a touchable noun:
		follow the tangibility rules for the noun;
		if rule failed:
			stop the action;
	if the action requires a touchable second noun:
		follow the tangibility rules for the second noun;
		if rule failed:
			stop the action.

[TODO "get on workbench" from the bed doesn't work, but seems like it should, as a special case]
Tangibility rule for something (called the target) enclosed by a platform (called the shelf):
	if the target is dangling and the person reaching is not enclosed by a platform:
		rule succeeds;
	otherwise if the person reaching is enclosed by the shelf:
		rule succeeds;
	otherwise:
		say "[The target] [are] too far away!  You'll have to get closer.";
		rule fails.
Tangibility rule for something (called the target) not enclosed by a platform:
	if the person reaching is enclosed by a platform (called the shelf) and the shelf is not the target and the shelf is not platform-adjacent to the target:
		[TODO too generic when the thing is on the floor]
		[TODO shouldn't be able to get floor things when on purrl either]
		say "[The target] [are] too far away!  You'll have to get closer.";
		rule fails.

First check pushing:
	if the player encloses the noun:
		say "That's hard to do when you're holding [regarding the noun][them]." instead.
First check pushing something:
	if the noun is fixed in place or the noun is scenery or the noun is part of something:
		say "You bat at [the noun] a few times, but [they] [don't] move." instead.
Check pushing something:
	if the holder of the noun is a room:
		say "You bat [the noun] around the floor a little." instead.
Carry out pushing something:
	if the noun is on a platform:
		now the noun is in the location of the noun.

Report pushing something:
	say "You bat at [the noun] a few times, and [they] finally [drop] to the floor."

The report pushing rule is not listed in the report pushing rulebook.

[Allow moving directly between adjacent platforms]
The implicitly pass through other barriers rule does nothing when the player is on a platform that is platform-adjacent to the noun.
[Instead of entering a platform (called A) when the player is on a platform (called B) and A is platform-adjacent to B:
	now the player is on A;
	say "You hop across to [the A]."
]

[Disable the default locale paragraph for a platform, since from the floor, you can't see what's on it, and either way you end up with a ton of separate "On the X are Y." paragraphs]
Rule for printing a locale paragraph about a platform (called the shelf):
	now the shelf is not marked for listing.

[Adjust the output when examining platforms]
The examine supporters rule does nothing if the noun is a platform and the player is on the ground.
The examine platforms from the ground rule is listed after the examine supporters rule in the carry out examining rulebook.
Carry out examining (this is the examine platforms from the ground rule):
	if the noun is a platform and the player is on the ground:
		say "You can't see what's on [the noun] from here";
		if something dangling described which is not scenery is on the noun:
			say ", though hanging over the edge ";
			list the contents of the noun, as a sentence, tersely, not listing
				concealed items, prefacing with is/are, including contents,
				giving brief inventory information;
		say ".";
		now examine text printed is true.

[High-up individual objects]
A thing can be elevated.
Definition: something is out of reach if (it is elevated or it is enclosed by something elevated) and (the player is not carried by Purrl).
A tangibility rule for something (called the trinket):
	if the trinket is out of reach:
		say "You stand on your tippy toes, but you just can't reach [the trinket].  You AOOWWR in frustration.";
		rule fails.

When play begins:
	display Figure Intro;
	say "You struggle and cry for help, but your captor ignores your feeble pleas.  They toss you, like garbage, into the darkness.  The heavy gate closes and locks behind you, sealing your fate.  Their maniacal laughter echoes into the distance, leaving you alone with your thoughts.

You are trapped.  Trapped...  in the Chamber of Despair."

The player is male.  The description of the player is "You are Star Anise, a luneko and a cool guy who love to party.  The stars inside your helmet twinkle extra-hard as you think about how much you love to party[if the player is carrying something].

Clutched in your paws [is-are a list of things carried by the player][end if]."
The carrying capacity of the player is 1.

The drop whatever you're already holding rule is listed before the can't exceed carrying capacity rule in the check taking rulebook. 
Check an actor taking (this is the drop whatever you're already holding rule):
	if the number of things carried by the actor is at least the carrying capacity of the actor:
		let T be a random thing carried by the actor;
		say "In [our] excitement, [we] forget all about [the T] [we] were holding and drop [regarding T][them].";
		if Purrl carries the actor:
			now T is in the holder of Purrl;
		otherwise:
			now T is in the holder of the actor.

Instead of saying yes:
	say "Yeah!!  You're ready for action!"
Instead of saying no:
	say "Yeah!!  You're ready for inaction!"

[Room descriptions]
[TODO some vertical spacing when on a thing]
[TODO "new shop is taking shape..." is before "floor is strewn", should be after, also there's an extra blank line] 
Before listing nondescript items of Neon's bedroom:
	now the laundry is marked for listing.
Rule for listing nondescript items of Neon's bedroom:
	say  "The floor is strewn with innumerable strata of dirty [laundry], all of which is soft and comfortable under your paws";
	now the laundry is not marked for listing;
	if Purrl is in Neon's bedroom:
		say ".  [Purrl] has found a nice shirt to wrap around herself";
		now Purrl is not marked for listing;
	if the number of marked for listing things is not 0:
		say ".  Also on the floor ";
		list the contents of Neon's bedroom, as a sentence,
			tersely, listing marked items only, prefacing with is/are,
			including contents and giving brief inventory information;
	say ".[paragraph break]"

Last rule for printing the locale description of a room (called the place) when a platform is in the place:
	if the player is off the ground:
		let S be Purrl;
		if a platform (called the shelf) encloses the player:
			now S is the shelf;
		say "(From your vantage point atop [the S], you can get a better look at the various[if S is not Purrl] other[end if] raised surfaces around the room.)[paragraph break]";
	otherwise:
		say "(From down here, you can't see what's on the various raised surfaces around the room.)[paragraph break]";
	continue the activity.

Rule for printing the locale description of a platform (called the shelf):
	say initial appearance of the shelf;
	say paragraph break;
	continue the activity.

A thing has a figure name called the illustration.
Illustrating something is an activity on objects.
For illustrating something (called the subject):
	if the subject provides the property illustration and the illustration of the subject is not the default value of figure name:
		display the illustration of the noun.
First carry out examining:
	carry out the illustrating activity with the noun.

The illustration of the player is Figure Star Anise. 

Section - Scenes

Alone And Afraid is a scene.  Alone And Afraid begins when play begins.
Alone No Longer is a scene.  Alone No Longer begins when Purrl is somewhere.  Alone And Afraid ends when Alone No Longer begins.
Shop Time is a scene.  Shop Time begins when the clearing is somewhere.  Alone No Longer ends when Shop Time begins.

Section - Purrl

Purrl is a familiar female rideable animal.  The illustration is Figure Purrl.  The description is "It's your best friend, Purrl!  The two of you sure have had a lot of exciting adventures together!  You fondly reminisce about some of them, like the time you were trapped in the Chamber of Despair.

She catches you staring at her and scowls.  M.O.R.S.E.L., the fish swimming around inside her helmet who likes you just as much as Purrl does, also seems to scowl."
Purrl can be willing to be used as a footstool.
Purrl can be mount-figure-displayed.

After examining Purrl when Purrl carries something that is not the player:
	say "[Purrl] is holding [a list of things carried by Purrl that are not the player].";
	continue the action.
The you-can-also-see rule does nothing when the parameter-object is Purrl.

Instead of mounting Purrl when Purrl is not willing to be used as a footstool:
	say "'Don't step on me Star Anise!!'  Purrl grumbles and pushes you away.  You try to explain that you need to be taller, but she isn't swayed.  If only you had a more concrete excuse..."
Before mounting Purrl when Purrl is willing to be used as a footstool and Purrl is not mount-figure-displayed:
	display Figure Mount Purrl;
	now Purrl is mount-figure-displayed.

Instead of pushing or touching Purrl:
	say "You lightly pap Purrl's helmet.  She scowls and smacks yours several times, sending sparks flying around.  Cool!!"
Instead of pulling Purrl:
	say "You tug on Purrl's arm.  'Purrl let's go we gotta go!!!'

'Mewo!!  Stop that Star Anise!!!  Go where??'

You freeze in place.  'I don't know!!'"

Entering is moving.
Exiting is moving.
Going is moving.
Persuasion rule for asking Purrl to try doing something:
	say "Purrl furrows her brow.  'Don't tell me what to do, Star Anise!!'";
	persuasion fails.
Persuasion rule for asking Purrl to try sleeping:
	say "Purrl hops from foot to foot in annoyance.  'That's what I was doing before you woke me up!!!!!'";
	persuasion fails.

[Advance the plot by explaining to Purrl that you need a boost to reach the panel.]
[This uses a before rule because otherwise the "showing it to" check rules would try to take the panel before instead rules get a chance to happen.]
[TODO should also have responses for other out of reach things: closet doorknob, parts of machine]
[Showing the glowing panel to Purrl is explaining the escape plan.
Telling Purrl about "[the glowing panel]" is explaining the escape plan.]
To explain needing height for (T - a thing):
	reset Purrl's cooldown;
	if Purrl is willing to be used as a footstool:
		say "You start to explain all about [the T], but Purrl cuts you off.  'I already said I'll give you a boots Star Anise!!  Stop wasting my precious nap time!!'

'OK but it's real cool but OK but you're missing out!!' you tell her.";
	otherwise if T is the glowing panel:
		display Figure Convince Purrl;
		say "You point up at the panel.  'I think that opens the door!!  Also it glows a lot and I wanna touch it.  But it's too tall up!  Gimme a boost!'

Purrl puts her paws squarely on her hips.  'I'm not giving you any boots!  Find something else to stand on!!'

'Like what??  Everything in here is real big or real shirt!'  You stand on one of the dirty shirts on the floor.  'Look it doesn't make me any taller at all!  Not even one taller!!  I can't escape like this!'

'Mmmmnnmnnmmnnnn.  I dunno.'  Purrl licks her paw in a lovely manner.  'But okay.  But only if you don't bother M.O.R.S.E.L.'";
		now Purrl is willing to be used as a footstool;
		increase the score by 5;
	otherwise:
		say "You point frantically at [the T].  'Look look at this look!!  I think I can reach it if you gimme a boost!!'

Purrl stomps her foot defiantly and definitively.  'What are you talking about Star Anise!!  How does that help you go away!'

You freeze like a deer in headlights.  'Because of I wanna touch it?'

'No!!'".
Before showing an elevated thing to Purrl:
	explain needing height for the noun;
	stop the action.
Instead of informing Purrl about an elevated thing:
	explain needing height for the second noun.

[TODO more of this, maybe some kinda interesting topics, talk about neon??]
Instead of answering Purrl that:
	say "[Purrl] [one of]folds her arms and looks off in a different direction[or]scowls and covers her ears, or at least puts her paws on either side of her helmet[or]starts having a loud conversation with M.O.R.S.E.L. instead[at random]."
Instead of answering Purrl that "hello/hey/heya/hi":
	say "'Hello Purrl!!' you say, so excited you can barely contain yourself.

Purrl, the picture of serenity, does a lovely little curtsy.  'Hello.'"
Understand "big cat" and "neon" and "doctor/kid neon" as "[neon]".
Instead of answering Purrl that "[neon]":
	say "Purrl nods thoughtfully.  'I like the big cat.  She plays string with me.'"
Understand "other big cat" and "lily" as "[lily]".
Instead of answering Purrl that "[lily]":
	say "Purrl nods thoughtfully.  'I like when the other big cat reads to me.  I gave her a mouse once.'"

Instead of giving something to Purrl:
	say "Purrl shakes her head vigorously.  'I don't care about your garbage, Star Anise!!'"

MORSEL is a part of Purrl.  The printed name is "M.O.R.S.E.L."  The illustration is Figure Morsel.  The description is "[MORSEL] is Purrl's...  pet?  Fish?  You're not really sure, but it hangs out in Purrl's helmet."
Tangibility rule for MORSEL:
	say "[MORSEL] is inside Purrl's helmet, safely out of your reach.";
	rule fails.

[Purrl AI]
Purrl has a number called cooldown.
Purrl has a number called carry patience.
Purrl can be carry-delayed.  [This happens if Purrl already did something this turn, so she won't knock you off or otherwise react.]
To reset Purrl's cooldown:
	now the cooldown of Purrl is a random number between 1 and 5.
Every turn when Purrl is seen:
	if Purrl carries the player:
		decrement the carry patience of Purrl;
		if Purrl is carry-delayed:
			now Purrl is not carry-delayed;
		otherwise if the carry patience of Purrl is at most zero:
			say "'Mewo!!  That's enough, Star Anise!  Get off of me!!'  Purrl shakes her head back and forth, sending you tumbling to [if the holder of Purrl is a room]the floor[otherwise][the holder of Purrl][end if].";
			reset Purrl's cooldown;
			surreptitiously move the player to the holder of Purrl;
		otherwise:
			say "[one of]Purrl snorts[or]Purrl grumbles[or]Purrl folds her arms[or]Purrl and M.O.R.S.E.L. exchange annoyed looks[or]Purrl bats at her antenna[or]Purrl clears her throat loudly[or]Purrl sighs dramatically[at random].";
	otherwise if the cooldown of Purrl is greater than zero:
		decrement the cooldown of Purrl;
	otherwise if Purrl is visible:
		reset Purrl's cooldown;
		let N be a random number between 1 and 100;
		if N is less than 10:
			[Hints from Purrl!]
			say "Purrl peers under [one of]the bed[or]the workbench[or]the desk[at random]."; 
		otherwise if N is less than 50:
			let L be the list of not scenery not fixed in place things that are not people in the holder of Purrl;
			if L is not empty:
				let T be a random entry of L;
				say "Purrl [one of]gently pokes[or]purrs at[or]thinks about[or]sniffs[or]tilts her head at[or]suspiciously eyes[or]looks at M.O.R.S.E.L., then at[or]ignores[or]sits next to[or]taps[or]walks around[at random] [the T].";
		otherwise:
			say "Purrl [one of]yawns[or]sticks her tongue out at you when you're not looking[or]blows some bubbles in her helmet[or]wanders around[or]whispers to M.O.R.S.E.L.[or]licks her paw[or]bats at her antenna[or]purrs for no particular reason[or]jumps up suddenly, then sits back down[or]dusts off her tail[or]thinks really hard[or]wraps herself in a different shirt[at random]."

Last carry out dropping when the player is carried by Purrl:
	now the noun is in the holder of Purrl.

Carry out mounting Purrl:
	now Purrl is carry-delayed;
	now the carry patience of Purrl is 5.

Instead of going or entering when the player is carried by Purrl:
	now Purrl is carry-delayed;
	say "Purrl frowns and shakes her head.  'I'm just giving you boots, Star Anise!!  I'm not carrying you around like a horse!  Don't horse me!!'"
Instead of entering a platform when the player is carried by Purrl:
	say "You hop from Purrl's helmet onto [the noun].";
	surreptitiously move the player to the noun;
	rule succeeds.

Instead of going down when the player is carried by Purrl:
	try dismounting.

Does the player mean taking something that is in Neon's bedroom when Purrl carries the player: it is unlikely.
Instead of taking something that is in Neon's bedroom when Purrl carries the player:
	say "AOOWWRR!!  It's too far down to reach!"

[Conversation!]
[TODO more, also these should all reset the timer (maybe with a before rule)]
Instead of answering Purrl that "favorite/favourite thing/things/--":
	say "Purrl taps her chin thoughtfully.  'Mmmnn, I'd hafta say that my favorite thing ever is string, and my second favorite thing ever is more string.'"
Instead of answering Purrl that "treasure/treasures/merch/merchandise":
	say "Purrl stomps her foot.  'I don't care what kind of garbage you sell, Star Anise!!  Last time you sold me an AOOWWRR!!'

'That AOOWWRR was really good though!!' you protest." 

Section - Various things

[This is the bulk of the portable objects in the game, collected here since the places they start aren't very important]
Merch is a kind of thing.

There is a coin.  The illustration is Figure Coin.  The description is "You've never heard of the kingdom of 'Charl E. Cheez', but this coin is clearly gold, so it must be very valuable."
Understand "money" and "token" as the coin.
Instead of burning the coin:
	say "The coin is clearly quite perfect as it is."

Instead of informing Purrl about the coin:
	try giving the coin to Purrl.
Instead of giving the coin to Purrl when Shop Time is happening:
	say "'Purrl!!  Look!  I found a money!'  You wave it around, hopping from one foot to the other.  'Now you can be a customer!'

Purrl examines it suspiciously.  'Mmmnn.  Okay, but I'll only buy things that are my favorite.  No garbage!!'  She plucks it out of your hands.";
	now Purrl has the coin;
	rule succeeds.	

There is a glue stick.  The illustration is Figure Glue Stick.  The description is "This tube is sticky on one end."
Instead of opening or closing the glue stick:
	say "The cap is missing."
Instead of tasting the glue stick:
	say "You give it a good lick and immediately spit out a sticky glob of saliva.  Blech!"

There is a bag of glitter.  The illustration is Figure Glitter.  The description is "This is like having a bag full of tiny stars.  It's your favorite thing you've ever seen, ever."
Instead of opening the bag of glitter:
	say "You open the bag and count how many glitters there are.  One, two, a lot, plus the ones you just spilled on the floor, makes for a many lot!"
Instead of closing the bag of glitter:
	say "Good idea."
Instead of tasting the bag of glitter:
	say "You stick a pawful of glitter in your mouth and then blow it out.  Tastes sparkly!"
Instead of throwing the bag of glitter at Purrl:
	say "You shower Purrl with a pawful of glitter!  She bats at it wildly as it flutters down around her."
Instead of putting or inserting the glue stick into the bag of glitter:
	say "This seemed like such a good idea, but it mostly makes a sticky sparkly mess."
Instead of putting the bag of glitter on the glue stick:
	say "You carefully put a single glitter on the glue stick.  Phew!  Hard work!"  

A mug is merch.  The illustration is Figure Mug.  The description is "[if the mug is broken]These pieces used to be a single mug.  Now they're a lot of small toys, which is much better.[otherwise if the mug is intact]This completely pristine mug was left carelessly on the edge of a high surface.  Why, anything could happen to it![otherwise]You happened to it, and now the mug is [damage level of the mug].[end if][line break]".
Damage level is a kind of value.  The damage levels are intact, chipped, cracked, and broken.
The mug has a damage level.
Understand the damage level property as describing the mug.
Understand "pieces" as the mug when the mug is broken.
Rule for illustrating the chipped mug:
	display Figure Mug Chipped.
Rule for illustrating the cracked mug:
	display Figure Mug Cracked.
Rule for illustrating the broken mug:
	display Figure Mug Broken.
[It gets cracked during pushing before the reporting, which is no good]
Rule for printing the name of the mug:
	if (the mug was not broken and pushing) or the mug is intact:
		[It's already been damaged before the report step, and "You push the chipped mug off" is kinda nonsense]
		say the printed name of the mug;
	otherwise if the mug is broken:
		say "broken pieces of a mug";
	otherwise:
 		say "[damage level of the mug] [printed name of the mug]".
Carry out pushing the mug:
	if the mug is not broken:
		now the mug is the damage level after the damage level of the mug;
		if the mug is broken:
			now the indefinite article of the mug is "some";
			now the mug is plural-named;
			increase the score by 4.
Last report pushing the mug:
	if the mug was broken:
		say "The pieces of the mug are no worse for wear than they were before.";
	otherwise if the mug is broken:
		say "It put on a brave face, but the mug finally shatters.";
	otherwise:
		say "The laundry cushioned its fall, but the mug didn't survive unscathed.  It's now [damage level of the mug]."

There is some construction paper.  It is singular-named.  The indefinite article is "some".  The illustration is Figure Construction Paper.  The description is "This paper is a deep alluring blue, perfect for arts and crafts.  It's only too bad someone already drew a bunch of white lines all over it."
Understand "blueprints" as the construction paper.
There are some paper scraps.  The illustration is Figure Scraps.  The description is "These bits of paper are left over from the star you cut out."
Instead of cutting the paper scraps:
	say "There's not enough left to cut out another star."

There are some scissors.  The illustration is Figure Scissors.  The description is "These seem to be safety scissors, which is bad because they're much less destructive, but good because they're easier for your little paws to wield."
Instead of cutting the construction paper:
	display Figure Acquire Blue Star;
	say "You do your very best to cut a star shape out of the paper.  It comes out absolutely perfect, of course.";
	now the blue star is in the holder of the construction paper;
	now the paper scraps are in the holder of the construction paper;
	now the construction paper is nowhere;
	increase the score by 3;
	rule succeeds.
	[TODO purrl?  other things you can cut?  wires maybe?  wanton destruction]

There is a laser engraver.  The illustration is Figure Laser Engraver.  The description is "For a more delicate hand, this would be perfect for burning fine patterns into things.  For you...  well."
Instead of squeezing the laser engraver:
	say "You clutch the laser engraver like a flashlight and squeeze it with both paws.  A red beam shoots out and burns a small hole in the wall."
Instead of switching on the laser engraver:
	say "No need!  It stays on while you're writing with it.  Or, doing whatever else with it."
Instead of decorating the laser engraver on something:
	if the player does not have the laser engraver:
		try taking the laser engraver;
	try burning the second noun.

There is an award.  The illustration is Figure Award.  The description is "This clear acrylic star is engraved:[line break]DOCTOR KID NEON[line break]CYBERNET SUPERSTAR[paragraph break]Too bad it's clear.  Who would ruin a perfectly good star by coloring it invisible?"

There is a tiny jar of paint.  The illustration is Figure Jar Of Paint.  The description is "This is a very small jar of red paint, only big enough for painting figurines or something of similar size."
[TODO only if held?  certainly not when on the shelves]
Instead of opening the tiny jar of paint:
	say "You'd better not waste any more of it."
Instead of doing it for the first time:
	say "You open the jar and drip some paint onto the floor."
[TODO ton of potential here for painting things, but probably should be something that makes sense so i don't have to track random paint splatter]
[TODO don't paint the figurine]

Instead of putting the paint on something:
	try decorating the paint on the second noun.
Instead of decorating the tiny jar of paint on something:
	say "As much as you'd love to, there's very little paint here, and you want to save it for something special."
Instead of decorating the tiny jar of paint on the award:
	display the Figure Acquire Red Star;
	say "You pour the paint all over the acrylic star and smear it around with your paws.  Soon enough, you have a moderately sticky red star, which you look at proudly.  You also have red paint all over yourself and everything nearby.  Art is easy!";
	now the red star is in the holder of the award;
	now the award is nowhere;
	increase the score by 3;
	rule succeeds.

There is a spool of twine.  The illustration is Figure Twine.  The description is "This twine has been [if unraveled]converted into a big tangled mess[otherwise]spooled around a, um, spool[end if]."
The spool of twine can be unraveled.
Rule for illustrating the unraveled spool of twine:
	display Figure Twine Unraveled.
Understand "ball" as the spool of twine when the spool of twine is unraveled.
For printing the name of the unraveled spool of twine: say "ball of twine".  
Instead of giving or informing Purrl about the spool of twine:
	say "'Purrl look I found your favorite!!'  You show her [the spool of twine].

She folds her arms.  'That's not my favorite!  My favorite is string!'

You reflect on this for a moment.  'But it's is string.'

'No, mewo!!  String is long and wiggly!  That's a lump!!  Don't you know [italic type]anything[roman type], Star Anise!!'".

Instead of pulling the spool of twine:
	if the spool of twine is unraveled:
		say "It doesn't really roll any more.";
	otherwise:
		say "You tug on the free end and the rest of the spool rolls a short distance away.  You keep pulling, and soon enough you've converted the neat spool into a tangled ball.";
		now the spool of twine is unraveled;
		increase the score by 1;
		rule succeeds.

A length of string is merch.  The illustration is Figure String.  The description is "This is the perfect length of string to play with."
Instead of pushing or pulling or attacking the length of string:
	say "You roll around with the string, having the time of your life[if Purrl is visible].[paragraph break]Purrl glares daggers at you[end if]."

Instead of cutting the spool of twine:
	if the length of string is nowhere:
		say "You snip off a length of string.";
		if the player is carried by Purrl:
			now the length of string is in the holder of Purrl;
		otherwise: 
			now the length of string is in the holder of the player;
	otherwise:
		say "You probably have enough already."

Instead of giving the length of string to Purrl:
	say "That's no way to run a shop!  It's much better if she buys it."
Instead of informing Purrl about the length of string:
	say "'Purrl look Purrl!!  Look what I made!'

Her tail flicks behind her.  'Hmmmmm give it to me.'

'No that's not how it works!  I gotta put it in my shop and then you gotta buy it!!'

[if Purrl has the coin]She looks like she might cry.  'I can't buy it I don't have any money[otherwise]'Hurry up and open your shop then[end if]!!'"

Persuasion rule for asking Purrl to try buying the length of string:
	say "Purrl sighs very loudly.  'I can't buy it until your shop is open Star Anise!!'";
	persuasion fails.


Section - Bedroom

Neon's bedroom is a room.  "[if the lamp is switched on]The nightstand lamp casts eerie shadows on the walls, ameliorated somewhat[otherwise]The lights are off and there are no windows, but the room is lit well enough[end if] by[if the terminal is not ruined] the cyan glow coming from Neon's [desk] and[end if] the blinking LEDs on [the tall machine] in the corner.

[The desk], with [a drawer] underneath, and an adjacent [workbench] run along the entire length of one wall.  Some [shelves] take up the opposite wall, stopping short of the corner to make room for [a tall machine].  In the center of the room is [a bed][if the blanket is on the bed], unmade, [a blanket] hanging half off one side[end if]; it's framed by [a nightstand] and [a closet door] in the western wall.  [The bedroom door] to the east is closed, of course[if Shop Time is not happening], but the [panel] next to it might be useful[end if]."
Understand "Chamber of Despair" and "chamber" as Neon's bedroom.
The player is in Neon's bedroom.

Some laundry is singular-named scenery in Neon's bedroom.  The illustration is Figure Laundry.  The description is "These are kind of like small, inferior blankets that the big cat wraps around herself sometimes.  Skirts for her head, underwear for her knees, things like that.  You can't really keep it straight."
Understand "shirt" and "jacket" and "underwear" and "belt" and "scarf" as the laundry.
Rule for illustrating the laundry when the yellow star is nowhere:
	display Figure Laundry Plus Star.
Instead of taking the laundry:
	say "You pick up a shirt.  But then you get bored, so you put it back down."
Instead of wearing the laundry:
	say "You pull a shirt over your head, but the neck is way too small for your helmet, and now you can't see.  'AOOWWRR!' you yell, running around until you trip and fall and finally wriggle your way out of it."
[TODO sit or stand on?]
Instead of searching or looking under the laundry:
	say "You toss some clothes in the air and generally have a great time.";
	if the yellow star is nowhere:
		say "[line break]Oh!  You spot something shiny under a jacket and dig it out.  It's a yellow star!";
		increase the score by 3;
		[TODO should go in inventory if possible]
		now the yellow star is in Neon's bedroom.
Instead of pushing or attacking or dropping the laundry:
	say "You kick [one of]a shirt[or]a jacket[or]some underwear[or]a belt[or]a scarf[at random]!  Yeah!!  This is great!";
	if the yellow star is nowhere:
		say "[line break]Oh!  Your aimless kicking uncovered something shiny.  It's a yellow star!";
		increase the score by 3;
		[TODO should go in inventory if possible]
		now the yellow star is in Neon's bedroom.

The bedroom door is a closed door, east of Neon's bedroom.  The illustration is Figure Bedroom Door.  The description is "The door is an impenetrable metal monolith.  It has no doorknob, not that one would be especially helpful to you anyway.  Next to it is a glowing panel, much like the one Neon touched to open the door when she tossed you in here."

Instead of opening the bedroom door:
	say "There's no obvious way to open the door."
Instead of burning the bedroom door:
	say "It's a nice thought, but whatever this door is made of, it's tough stuff.  The engraver doesn't even scorch it."

A glowing panel is elevated and part of the bedroom door.  The illustration is Figure Glowing Panel.  The description is "This glowing rectangle is clearly the secret to your escape.  Also, it glows, and that makes you want to touch it very badly."

Instead of burning the panel:
	if Shop Time is happening:
		say "You go absolutely wild carving scorch marks into the panel.";
	otherwise:
		say "It occurs to you, just in time, that destroying the panel might leave you double-trapped."
Instead of pushing the panel:
	try touching the panel.
After touching the panel:
	say "You pap your paws against the panel.  It makes some delightful noises and flashes red for a moment.";
	if Shop Time is not happening:
		say "[line break]You try this a couple times, but to no avail.  'It didn't work!!  Let me out you dumb lights thing!!'

Purrl frowns up at your butt.  'Can I go do more nap now?'

'No!!!  I have a new idea!!'  You hop down off Purrl's helmet and kick some laundry around, making a clearing on the floor.  'It's time to open Star Anise shop!!  It's the only way!!!!'

'I don't care about Star Anise shop!!!!'  Purrl takes out her frustrations by helping you kick laundry.";
		reset Purrl's cooldown;
		surreptitiously move the player to Neon's bedroom;
		now the clearing is in Neon's bedroom;
		increase the score by 10.

A little white pamphlet is in Neon's bedroom.  "A little white pamphlet lies on the floor near the door."  The illustration is Figure Pamphlet.  The description is "[italic type]Welcome to interactive fiction!  You've already got the basics down!

The game understands basic English actions like LOOK or READ THE LITTLE WHITE PAMPHLET, as well as slightly fancier constructs like TAKE THE COOKIE FROM THE JAR, but that's as complex as it gets.  (In particular, as with most IF games, you can't use three items together at once!)

 If you're not familiar with the genre, it's all about interaction: LOOK around, EXAMINE objects that stand out.  You can interact with other characters with phrasing like ASK ANDRE FOR PAINTBRUSH, or directly ask them to do something with ANDRE, READ THE PAMPHLET. 

Tip: there are lots of typing shortcuts!  You can refer to this pamphlet as just LITTLE, or WHITE, or PAMPHLET.  Also, X is short for EXAMINE![roman type]

You flip through the rest of the pamphlet, which contains detailed instructions and a complete walkthrough, but there aren't any pictures!  Not one!  Worthless." 
[TODO better starting hints?  mentioning SEARCH and LOOK UNDER seem good, as well as interacting with purrl]
After examining the pamphlet:
	now the pamphlet is handled;
	continue the action.

There is some confetti.  The indefinite article is "some".  The illustration is Figure Confetti.  The description is "This used to be an informative pamphlet, until you got your hands on it."
Instead of cutting the pamphlet:
	now the confetti is in the holder of the pamphlet;
	if the player has the confetti:
		now the confetti is in the holder of the player;
		if Purrl has the confetti:
			now the confetti is in the holder of Purrl;
	now the pamphlet is nowhere;
	increase the score by 1;
	say "You do your best to cut the pamphlet into a Star Anise shape, but something goes wrong and all you're left with is confetti."
Instead of taking or throwing the confetti at:
	say "You throw some confetti around, making it into even more of a mess."

Section - Bed

The bed is a platform in Neon's bedroom.  "[bed desc]."  The description is "This big cat bed is for the big cat.  Sometimes she shares it with you, but only if she's asleep already."
[The period isn't part of this say phrase, to avoid fucking up line breaks from the "separate rules get more line breaks" thing]
To say bed desc:
	if the blanket is on the bed:
		say "[The blanket] laying haphazardly across the bed bears a circuit pattern";
		if the pillow is on the bed:
			say " that matches [the pillow]";
		if Purrl is nowhere:
			say ", as well as a conspicuous lump in the middle";
	otherwise if the pillow is on the bed:
		say "[The blanket] has been stripped from the bed, but [the pillow] is still here";
	otherwise:
		say "The bed has been stripped bare"

A pillow is on the bed.  The illustration is Figure Pillow.  The description is "This small cat bed is the perfect size for you, but the big cat is real selfish and takes all of it up with just her head."
Rule for illustrating the pillow when the laser engraver is nowhere:
	display Figure Pillow Plus Engraver.
Instead of taking or pushing or pulling or attacking or searching or looking under the pillow when the laser engraver is nowhere:
	say "As soon as the pillow moves, something much more interesting rolls out from under it!";
	now the laser engraver is in the holder of the pillow;
	increase the score by 2.
Instead of entering the pillow:
	say "You settle down on the pillow and have a quick nap."
Instead of touching the pillow:
	say "You do some cat paws on the pillow."
Instead of wearing the pillow:
	say "You put the pillow on your head, but it falls right off your helmet."

A blanket is a dangling thing on the bed.  "The blanket strewn haphazardly across the bed bears a circuit pattern, as well as a conspicuous lump in the middle."  The description is "The blanket is soft, fuzzy, warm, and much bigger than you.  Everything you ever wanted.  Not just in a blanket, but in general.[if the lump is part of the blanket and the player is off the ground][paragraph break]A conspicuous lump rises out of the middle of it.[end if]".    
Instead of wearing the blanket:
	say "You wrap yourself in the blanket.  It's so warm and cozy!  But you can't move or do anything else to make your escape like this, so you reluctantly free yourself."
Instead of touching the blanket:
	say "You knead at the wonderfully soft fabric.  It reminds you of all the good times, kneading on blankets.";
	rule succeeds.
Instead of entering the blanket:
	try touching the blanket.
Instead of climbing the blanket when the blanket is on the bed:
	try entering the bed.

A lump is part of the blanket.  The illustration is Figure Lump.  The description is "Something about the large sphericalness of this lump is oddly familiar."
Rule for deciding the concealed possessions of the blanket:
	if the lump is part of the blanket and the player is not off the ground:
		yes;
	otherwise:
		no.
Report smelling the lump: say "It smells like blanket."

[You can reveal Purrl by generally messing with the blanket]
Instead of pushing or pulling or taking or looking under the blanket when the blanket is not handled:
	if the player is on the bed:
		say "You reel the blanket towards you with your little pest paws, and it slides away from the lump to reveal Purrl.  She hops to her feet, bewildered, but her expression darkens when she notices you.[paragraph break]";
	otherwise:
		say "You tug on the blanket.  It slides off the bed and on top of you, bringing its contents with it.  A little flailing manages to kick it off of you, and you're greeted by a scowling face.[paragraph break]"; 
		[TODO well hang on this one is no good, when does purrl become revealed]
		now the blanket is in Neon's bedroom;
	reveal Purrl.
Instead of touching or attacking the lump:
	say "The lump grumbles."
Instead of taking or pulling the lump:
	say "You tug on the lump, hoping it'll be some kind of treasure.  It yells, flails, and tosses both you and the blanket aside, revealing an annoyed luneko.[paragraph break]";
	reveal Purrl.
Instead of entering the lump:
	say "You sit down on the lump, which is even less comfortable than you thought it would be.  It immediately makes an annoyed meow and tosses both you and the blanket aside, revealing an annoyed luneko.[paragraph break]";
	reveal Purrl.

To reveal Purrl:
	now Purrl is seen;
	now the lump is nowhere;
	now the blanket is handled;
	now Purrl is in the holder of the blanket;
	reset Purrl's cooldown;
	increase the score by 5;
	display Figure Reveal Purrl;
	say "Purrl crosses her arms.  'Star Anise!!  What are you doing here!  I was taking a lovely nap, and then I had a nightmare that Star Anise woke me up, and then it wasn't a nightmare it was real!!  This is my sleep place that I found, go away!!'

You adopt an action pose, to convey how much action you're currently ready for.  'Oh!!!!!  Purrl!  I'm so glad to see you!!  Listen we're trapped in the Chamber of Despair and I've been trying to go away but I can't because of the trapped!  We gotta make a daringly cool escape!!  Do you have any explosives or maybe a cool gun.'

'No!  Let me nap!!!'

'Yeah!!  A nap after we escape sounds great!!  Team Star Purrl Anise Fish Squad let's go!!'";
	if Purrl is on the bed:
		try Purrl getting off the bed.

The nightstand is a platform in Neon's bedroom.  "This little platform is the perfect size for you!"  The description is "It's like a table, but very small.  Doesn't make a lot of sense, if you think about it."
The nightstand is platform-adjacent to the bed.
The scissors are on the nightstand.
Instead of opening the nightstand:
	say "It doesn't even have any drawers!"

A lamp is a fixed in place device on the nightstand.

Instead of pushing the lamp:
	if the lamp is on the nightstand:
		say "You bat at the lamp, but nothing happens.  Undeterred, you brace your helmet against it and give it a good hard shove.  It topples off the nightstand and onto the floor with a heavy [italic type]thud[roman type].";
		now the lamp is in Neon's bedroom;
	otherwise:
		say "You push the lamp around a bit, accomplishing nothing."

[TODO dunno what this...  is, yet]
Instead of looking under the bed:
	if the player is not in Neon's bedroom:
		say "That's a little difficult when you're not on the floor.";
	otherwise if the lamp is switched on:
		if the lamp is in Neon's bedroom:
			if the coin is nowhere:
				say "You peer under the bed.  Thanks to the lamplight, you can see a coin!  Score!  You love those![paragraph break]";
				if the player is carrying anything:
					say "Unfortunately, you've got your hands full already.";
				otherwise:
					say "You just barely reach it and pull it out.";
					now the player has the coin;
					increase the score by 3;
			otherwise:
				say "You peer under the bed, but don't see anything else of interest.";
		otherwise:
			say "You peer under the bed.  It's too dark to see anything, and none of the lamplight reaches down here.";
	otherwise:
		say "You peer under the bed.  It's too dark to see anything."			


Section - Closet

The closet door is a closed door, west of Neon's bedroom.  The description is "Unlike the main entrance, this closet door sports a much lower-tech doorknob and hinges." 
A doorknob is an elevated part of the closet door.  The description is "As a super smart brain genius, you already know exactly what to do with one of these."

[Override for the usual elevated rule, to distinguish the bed/workbench/floor (which are nearby) from everywhere else]
Tangibility rule for the doorknob:
	if the player is carried by Purrl and (Purrl is in Neon's bedroom or Purrl is on the bed or Purrl is on the workbench):
		rule succeeds;
	otherwise if the player is in Neon's bedroom or the player is on the bed or the player is on the workbench:
		say "You strain, but you just can't reach the doorknob from here.";
		rule fails;
	otherwise:
		say "You'll have to get closer.";
		rule fails.

Instead of opening the closet door:
	try turning the doorknob.
Instead of turning the doorknob:
	if the closet door is open:
		say "You jiggle the doorknob.  It doesn't do anything, but it's highly entertaining.";
	otherwise if the player is holding anything:
		say "Your hands are full.";
	otherwise:
		say "You grasp the doorknob in both paws and wrestle with it a bit.  It unlatches, and the door swings open!  You did it!!";
		increase the score by 5;
		now the closet door is open.
Instead of closing or pushing or pulling the open closet door:
	say "'No stop!!' cries Purrl.  'Then you'll want to climb on my head again to open it again!'

That's 100% correct.  With a melodramatic sigh, you leave the door alone."

Neon's closet is a room, west of the closet door.  "The closet is spacious, which is exciting, but mostly contains [clothes], which is not.  Back through [the closet door] is the bedroom."
Some clothes are fixed in place in Neon's closet.  The description is "It all looks the same to you, really.  You don't at all understand why the big cat wraps herself in these thin fabric pieces, when she could be wrapped in a big fluffy blanket instead[if the puffball is part of the clothes].[paragraph break]A [italic type]very[roman type] alluring puffball dangles from some outfit, which you find makes a compelling argument[end if]."
[TODO destruction?]
Instead of taking or pulling the clothes:
	say "You tug on the bottom of a dangling coat, but it's been hung pretty securely."

A puffball is merch and part of the clothes.  The illustration is Figure Puffball.  The description is "This puffball is soft and fluffy and you're so glad someone made it just for you[if the puffball is part of the clothes].  It's attached to some of Neon's clothes by a bit of yarn[end if]." 
Understand "yarn" as the puffball.
Instead of cutting the puffball:
	if the puffball is part of the clothes:
		say "You snip through the yarn, and the puffball drops to the floor.  Wow!  That was easy!";
		now the puffball is in Neon's closet;
		increase the score by 3;
	otherwise:
		say "No!!  That'll ruin it!"
Instead of pushing or pulling or touching or attacking the puffball:
	if the puffball is part of the clothes:
		say "You smack the puffball and it swings on its little pendulum, only enticing you further!";
	otherwise:
		say "You go absolutely wild batting the puffball all over the place!  It's the most fun you've had in at least five minutes";
		if the player is enclosed by a platform (called the shelf):
			say "![paragraph break]Oops; at least until it rolls right off [the shelf]";
		say "!"

[The cardboard box is your stall, but you need to be able to open it to get the electronics out or else it's too heavy]
[TODO doesn't list contents when examined]
A cardboard box is a closed openable enterable container in Neon's closet.  "What really catches your eye is the cardboard box tucked in the corner.  [if the cardboard box is sealed]It's been taped shut[otherwise]It's been haphazardly broken into[end if], and one side reads FRAGILE."  The illustration is Figure Cardboard Box.  The description is "You extra love cardboard boxes.  Sometimes they're good to climb in."  [TODO different desc depending on scene: early, making shop, already in shop]
The cardboard box is pushable between rooms.
The cardboard box can be sealed or unsealed.  The cardboard box is sealed.
Rule for illustrating the unsealed cardboard box:
	display Figure Cardboard Box Unsealed.
Instead of taking the cardboard box:
	say "The box is far too big and unwieldy for you to pick up."

Some tape is part of the cardboard box.  The illustration is Figure Tape.  The description is "[if the cardboard box is sealed]The tape holds the box securely shut[otherwise]The tape has been reduced to clumsy ribbons[end if]."
Rule for illustrating the tape when the cardboard box is unsealed:
	display Figure Tape Unsealed.
Instead of pulling the tape:
	if the cardboard box is sealed:
		say "You struggle with the tape for a while, but this seems to be the good stuff.  You can't even find a corner where it's started to come loose.";
	otherwise:
		say "Not much point in that now."
Instead of opening the sealed cardboard box:
	say "The box is taped shut.  You can't open it."
After opening the cardboard box for the first time:
	increase the score by 5;
	continue the action.

Instead of cutting the cardboard box:
	say "You succeed in punching a couple shallow dents into the thick cardboard, but not much else."
Instead of cutting the tape:
	if the cardboard box is sealed:
		say "You painstakingly cut at the tape, which is much more difficult than it seems with these scissors, but manage to free the box flaps!";
		now the cardboard box is unsealed;
		rule succeeds;
	otherwise:
		say "It's already been about as cut as it can be."

[TODO easter egg for get in cardboard box, maybe close it too.  does purrl follow you in?]
[TODO can't get in when it's full]

[TODO desc is nonsense now]
Some electronic junk is singular-named in the cardboard box.  "A bunch of electronic junk is piled around the floor."  The indefinite article is "some".  The description is "You don't know what any of this junk is, only that it's heavy and [if the junk is in the box]in your way[otherwise]incredibly uninteresting[end if]."
Instead of taking the electronic junk:
	if the electronic junk is in the cardboard box:
		display Figure Empty Box;
		say "You grab bits and pieces at random and toss them over your shoulder, emptying the box one circuit board at a time.  The delicate components clatter as they hit the wall and floor behind you.";
		now the electronic junk is in the holder of the cardboard box;
		rule succeeds;
	otherwise:
		say "You pick up a dark green rectangle.  It doesn't react in any way, and it's covered in sharp bits besides.  You toss it away in disgust."
Instead of entering the cardboard box when the electronic junk is in the cardboard box:
	say "There isn't really any room for you with all that junk in there."
Instead of inserting something into the cardboard box when the electronic junk is in the cardboard box:
	say "There isn't really any room for anything else with all that junk in there."

Check pushing the cardboard box to:
	if the electronic junk is in the cardboard box:
		say "You really dig your feet in and scrabble against the floor, but the box is much too heavy to move." instead.

Instead of pushing something to the outside when the player is in Neon's closet:
	try pushing the noun to the east.  

After going with the cardboard box:
	now the cardboard box is handled;
	say "You shove the box ahead of you and manage to finagle it through the door."

Instead of pushing or pulling the cardboard box:
	if the electronic junk is in the cardboard box:
		say "You really dig your feet in and scrabble against the floor, but the box is much too heavy to move.";
	otherwise if the cardboard box is in Neon's closet:
		try pushing the cardboard box to the east;
	otherwise:
		say "You move the box around a bit.";
		rule succeeds. 

[Last thing to do is turn the box over, converting it into a stall]
Instead of turning or attacking the cardboard box:
	if the cardboard box is in Neon's closet:
		say "There's not much room to move it around in here.";
	otherwise if the clearing is nowhere:
		say "You wrestle the box a little, and it does feel productive, but you don't know what you're trying to accomplish.";
	otherwise:
		display Figure Setup Stall;
		say "You flip the box over, converting it elegantly into a stall for your shop!  You nudge it into position and gaze upon it with pride";
		if the cardboard box contains anything:
			now everything in the cardboard box is in the holder of the cardboard box;
			say ".  Its contents, meanwhile, have spilled all over the floor";
		say ".";
		now the cardboard box is nowhere;
		now the clearing is nowhere;
		now the stall is in Neon's bedroom;
		increase the score by 5.
[TODO explicitly prevent decorating the box directly, putting things on it, etc]

Section - Desk

The desk is a platform in Neon's bedroom.  "The metal desk is surprisingly sparse, occupied mainly by [if the terminal is ruined]the smoking remains of [a terminal][otherwise]a glowing [terminal][end if].  You miss when it was covered in documents that you could freely scatter everywhere, but for some reason, the big cat started putting them away somewhere."  The description is "This desk is where the big cat likes to sit and stare at a glowy thing.  She doesn't ever try to smack it, though.  Sometimes you just don't understand big cats."
The desk can be engraved.
The award is on the desk.

Instead of looking under the desk when the glue stick is nowhere:
	if the player is not in Neon's bedroom:
		say "That would be much easier to do from the floor.";
	otherwise:
		say "You crouch on all fours and peer under the desk.  Right there in front of you is [a glue stick]!  This is the high point of your day so far.[paragraph break]";
		if the player is holding anything:
			say "You want it real bad, but you've got your paws full with [the list of things held by the player].";
		otherwise:
			now the player has the glue stick;
			increase the score by 2;
			say "You roll it towards you and pick it up."

Instead of burning the desk:
	if the desk is engraved:
		say "Hmm.  Not much space left to write anything.";
	otherwise:
		now the desk is engraved;
		increase the score by 3;
		say "You very carefully sear 'HI --STAR ANISE  --THATS ME' into the desk with the engraver.  It's probably your best handwriting ever."

The terminal is fixed in place on the desk.  The illustration is Figure Terminal.  The description is "[if ruined]The terminal is a smoldering wreck with a huge star cut out of the center[otherwise]The terminal currently says a lot of words and squiggles in a lot of pretty colors.  You definitely understand why the big cat likes staring at this[end if]."
The terminal can be ruined.
Rule for illustrating the ruined terminal:
	display Figure Terminal Ruined.

Instead of pulling or entering the terminal:
	say "You climb on the terminal and AOOWWR a couple times, but it doesn't rattle nearly as much as it used to." 

Instead of touching or pushing the terminal:
	if the terminal is ruined:
		say "It emits a few sparks, which you find delightful.";
	otherwise:
		say "The words and squiggles change to different words and squiggles."

Instead of setting the terminal to:
	say "You press a lot of buttons on the terminal.  It flickers and says different words and squiggles now."

Instead of setting the terminal to "delete/del/erase/format/reboot/destroy/forget/rm/baleet/baleeted" for the first time:
	increase the score by 3;
	display Figure Nuke Terminal;
	say "You press a lot of buttons on the terminal.  It flashes red for a moment and shows some papers flying into a little gray box, which you find delightful!  You try to smack the little papers, but after a minute they disappear again."
Instead of doing it:
	say "The response this time is much less interesting."

Instead of burning the terminal:
	if the black star is nowhere:
		display Figure Acquire Black Star;
		say "You use the engraver to draw a beautiful star pattern in the terminal, which becomes increasingly erratic and glitchy as you progress.  A lot of smoke comes out of it and collects near the ceiling.  You figure that's what made it work, because once it all escapes, the terminal stops working entirely.

Eventually a star-shaped hunk of smoldering metal comes loose and drops onto the desk.";
		now the black star is on the desk;
		now the terminal is ruined;
		increase the score by 3;
	otherwise:
		say "There's not much more damage to be done, here."

The workbench is a platform in Neon's bedroom.  "The workbench is a warm painted wood, in stark contrast to the cold metal desk right next to it.  This is where the magic happens, if 'magic' is the appearance of a lot of things that roll around."  The description is "It's really just a big table, effectively extending the surface of the desk to fill the entire wall.  Sometimes the big cat lets you sit on it and bat pens around when she's at her desk."
The workbench is platform-adjacent to the desk.
The mug and the construction paper are on the workbench.

Instead of looking under the workbench when the jar of paint is nowhere:
	if the player is not in Neon's bedroom:
		say "That would be much easier to do from the floor.";
	otherwise:
		say "You peek around under the workbench, and way in the back by the wall, you spot [a jar of paint]!  It must've fallen off sometime.  Probably because you were batting it around.[paragraph break]";
		if the player is holding anything:
			say "You want it real bad, but you've got your paws full with [the list of things held by the player].";
		otherwise:
			now the player has the jar of paint;
			increase the score by 2;
			say "You fish it out and clutch it excitedly in your paws." 

Instead of searching the desk:
	say "There's not much to search.  It's a flat surface."
Instead of searching the workbench:
	say "There's not much to search.  It's a flat surface."

A drawer is a locked closed openable fixed in place container in Neon's bedroom.  The description is "This is probably where the good stuff is.  Places you can't get to are always where the good stuff is."
Instead of burning the drawer:
	if the drawer is locked:
		say "You incinerate the entire lock mechanism.";
		now the drawer is unlocked;
	otherwise:
		say "You can't do much more damage than you already have."

Some boring documents are in the drawer.  The description is "Wow!!  What a waste of time!  These just say words!"
[TODO do something with them]

Section - Shelves

Some shelves are a platform in Neon's bedroom.  "The shelves stretch all the way up to the ceiling, but you can climb around on them pretty easily."  The illustration is Figure Shelves.  The description is "The shelves run all the way to the ceiling [if the bunch of stuff is on the shelves]and are absolutely jam-packed with a whole [bunch of stuff][otherwise]but have been laid pretty much bare[end if]."
The report entering the shelves rule substitutes for the standard report entering rule when the noun is the shelves.
This is the report entering the shelves rule:
	say "You make your way up the shelves.  They're too short for your helmet to fit in, so the best you can do is hold onto them like a ladder."
Instead of taking something when the player is on the shelves:
	say "You can't hold onto the shelves and [the noun] at the same time."

A bunch of stuff is on the shelves.  The description is "Wow!  This is so much stuff!  You don't know what most of any of it is, [if the number of entries in hidden contents is zero]but none of it holds your interest[otherwise]and you can't tell at a quick glance if any of it is interesting[end if]."
The bunch of stuff has a list of things called the hidden contents.  The hidden contents are {the bag of glitter, the spool of twine}.
Instead of searching the bunch of stuff:
	if the number of entries in hidden contents is not zero:
		let T be a random entry of the hidden contents;
		remove T from the hidden contents;
		say "Oh!  You spot [a T]!";
		now T is in the holder of the bunch of stuff;
		increase the score by 1;
	otherwise:
		say "The rest of this stuff looks fun to knock around, but otherwise not very useful."

Instead of pushing or pulling or attacking the bunch of stuff:
	if the bunch of stuff is on the shelves:
		say "You methodically knock every single object off of the shelves[if the hidden contents of the stuff is not empty].  While you're doing so, you take particular notice of [the hidden contents of the stuff with indefinite articles][end if].";
		repeat with item running through the hidden contents of the stuff:
			now the item is in Neon's bedroom;
			increase the score by 1;
		truncate the hidden contents of the stuff to 0 entries;
		now the bunch of stuff is in Neon's bedroom;
	otherwise:
		say "You have a grand time batting various items around the floor."

Instead of taking the bunch of stuff:
	say "This is way, way more stuff than you could possibly carry at once."

[TODO this sucks actually and should be a replacement carry out rule or something, i don't know, this is a horrible way to do this]
Instead of dropping something held by the player when the player is on the shelves:
	say "You let go of [the noun], and it drops to the floor.";
	now the noun is in Neon's bedroom.


Section - Machine

[It's a 3D printer.]
The tall machine is a fixed in place thing in Neon's bedroom.  The illustration is Figure Tall Machine.  The description is "This metal cylinder stretches from floor to ceiling and is covered in blinking lights.  It hums cheerfully.  You love everything about it.

It has a keypad, a red button, and a large square slot, [if the player is not off the ground]all of which is too high for you to see or touch[otherwise if something is in the slot]containing [a list of things in the slot][otherwise]which is empty[end if]."
Some lights are part of the tall machine.  The description is "The lights glow all different colors and blink sometimes, letting you know that the machine is working, or perhaps not working."
The tall machine can be starprepped.
A keypad is an elevated part of the tall machine.  The illustration is Figure Keypad.  The description is "This is the most buttons you've ever seen in at least the last five minutes.  You want to press all of them.  They're printed with letters, so you could probably type something in."
A red button is an elevated part of the tall machine.  The illustration is Figure Red Button.  The description is "This definitely does something good."
A large square slot is an elevated transparent open unopenable container and part of the tall machine.  The illustration is Figure Slot.  The description is "Looks like little things come out of here.  You have a keen sense for places where little things come out of, and this is one of them."
Rule for illustrating the large square slot when the player is off the ground:
	[The default view is from the ground, obscuring the contents]
	if the Lily figurine is in the large square slot:
		display Figure Slot Plus Lily;
	otherwise if a gray cube is in the large square slot:
		display Figure Slot Plus Cube;
	otherwise:
		display Figure Slot Empty.
Understand "LEDs" as the lights.
A gray cube is a kind of thing.  A gray cube can be extant.  A gray cube is usually not extant.  The illustration is always Figure Gray Cube.  The description is always "This cube is completely featureless, but expertly crafted, with slightly beveled edges and perfectly smooth sides."
Understand "grey" as a gray cube.
There are 8 gray cubes.
Instead of using the machine:
	try pushing the button.
Instead of pushing the button:
	if the slot contains anything:
		say "The machine beeps aggressively, and a red light next to the slot flashes on.";
	otherwise if the tall machine is starprepped and the gray star is nowhere:
		display Figure Acquire Gray Star;
		say "The machine whirrs for a moment.  A green light flashes on, and a gray star drops into the slot.";
		now the tall machine is not starprepped;
		now the gray star is in the slot;
		increase the score by 3;
		[Fake running out of ink]
		now every gray cube is extant;
	otherwise:
		let the printee be a random not extant gray cube;
		if the printee is nothing:
			say "The machine whirrs for a few moments, then spins down.  A yellow light blinks, but nothing else happens.";						
		otherwise:
			say "The machine whirrs for a moment.  A green light flashes on, and a gray cube drops into the slot.";
			now the printee is extant;
			now the printee is in the slot;
			if every gray cube is extant:
				increase the score by 3.

A Lily figurine is in the slot.  The illustration is Figure Lily Figurine.  The description is "This tiny figure looks like the other big cat that the big cat likes, except it's small and [if painted]red with bits of gray showing through[otherwise]gray[end if]."
The Lily figurine can be painted.
Rule for illustrating the painted Lily figurine:
	display Figure Lily Figurine Painted.
Instead of decorating the tiny jar of paint on the Lily figurine:
	if the Lily figurine is painted:
		say "You already decorated it very good!";
	otherwise:
		now the Lily figurine is painted;
		increase the score by 1;
		say "You set about doing fingerpaints on the small other big cat.  You're pretty sure the big cat will like this.  The other big cat is red, right?  Well, closer to red than gray."
   

[The only thing you can set the machine to is STAR.]
Instead of setting the keypad to:
	try setting the tall machine to the topic understood.
Instead of setting the tall machine to:
	now the tall machine is not starprepped;
	say "You carefully type on the keypad.  Unfortunately, you're not the best at spelling.  The machine buzzes and flashes a red light."
Instead of setting the tall machine to "star/stars":
	now the tall machine is starprepped;
	say "You carefully type in the one word you're absolutely sure how to spell: STAR.  The machine chirps."
Instead of setting the tall machine to "star/-- anise":
	now the tall machine is not starprepped;
	say "You type your name in.  The machine buzzes and flashes a red light."
Instead of touching or attacking or pushing the keypad:
	now the tall machine is not starprepped;
	say "You punch keys at random.  The machine buzzes and flashes a red light."

Instead of pushing something that is in the slot:
	say "You bat at [the noun] until it drops to the floor.";
	now the noun is in Neon's bedroom;
	rule succeeds.

Section - Shop

["Shop" is initially the clearing, which is a representation of nothing, but is replaced by the stall once you get it.]
The clearing is a fixed in place thing.  "Your new shop is taking shape!  So far, that shape is a clearing on the floor."  The illustration is Figure Clearing.  The description is "It's the latest location for Star Anise Shop, the best shop for buying things from Star Anise![paragraph break]It needs something, though.  Like, literally anything.  Something big and flat to act as a stall would be a good start."
Understand "shop" as the clearing.

[The stall, a converted cardboard box]
The stall is a fixed in place supporter.  "Your new shop is taking shape!  It has a stall[if entitled], and a name[end if][if stellated], and stars[end if][if any merch is on the stall], and even some treasure[end if]!"  The description is "[full shop progress]".
The stall can be sticky.  The stall can be entitled.  The stall has a number called the stellar count.
Definition: the stall is stellated if the stellar count of it is greater than zero.
Understand "cardboard box" and "box" as the stall.
Understand "shop" as the stall.

To say full shop progress:
	say "This was once a cardboard box, but now it's an upside-down cardboard box";
	let M be the number of merch on the stall;
	if the stall is entitled:
		say ".  Your name is written across it in sparkly glitter";
	if the stall is stellated:
		say ".  Affixed to the front [is-are a list of stars that are part of the stall]";
	if the stall is sticky and the stall is not entitled and the stall is not stellated:
		say ".  The front has been coated in glue";
	if M is not zero:
		say ".  Neatly arranged on top [is-are a list of merch on the stall]";
	if Purrl has the coin:
		say ".  Purrl is eagerly waiting for it to open";
	say ".[paragraph break]";
	if the stall is not entitled or the stellar count of the stall is less than 3 or M is less than 2 or Purrl does not have the coin:
		say "It still needs some work:";
		if the stall is not entitled:
			say "[line break]- a name painted on it";
		if the stall is not stellated:
			say "[line break]- stars to decorate it";
		otherwise if the stellar count of the stall is less than 3:
			say "[line break]- more stars to decorate it";
		if M is zero:
			say "[line break]- some treasure to sell";
		otherwise if M is less than 2:
			say "[line break]- a bit more treasure to sell";
		if Purrl does not have the coin:
			say "[line break]- a customer";
		say "[line break]But you'll get there!";
	otherwise if the stellar count of the stall is less than 5:
		say "You'd prefer another star or two, but it's ready for business!";
	otherwise:
		say "It's absolutely perfect!  You love it!";
	say run paragraph on.

[We already list the contents above, so skip this default rule]
The examine supporters rule does nothing when the noun is the stall.
	
[TODO intercept putting things in?  certainly not unlimited things]
Instead of turning or taking or pushing or pulling or attacking the stall:
	say "No!  That would undo all your hard work!"
Instead of decorating the tiny jar of paint on the stall:
	say "Painting a name on the stall is a good idea, but the tiny jar doesn't have nearly enough paint in it.  You're not sure you could even get as far as 'a'."

Instead of putting or inserting the cardboard box into the clearing:
	say "Hmm.  It's close, but a box with a loose top doesn't make for a good stall.  Where would you stand?"
Instead of putting the glue stick on the cardboard box:
	say "You swiftly discover the tragic limitations of children's glue."

[Glue stick and glitter are crucial for the decoration]
Instead of decorating or inserting or putting the glue stick on the stall:
	if the stall is sticky:
		say "It probably has enough glue on it already.";
	otherwise:
		say "You painstakingly write out your name in glue, real big.  You also put big scribbles of glue in places where stars could go.";
		now the stall is sticky;
		rule succeeds.

Instead of throwing or decorating or inserting or putting the glitter on the stall:
	if the stall is entitled:
		say "You throw some more glitter around for good measure.";
	otherwise if the stall is sticky:
		say "You throw glitter haphazardly at the sticky parts.  Most of it gets on the floor, but eventually your name is spelled out across the front in big sparkly letters!";
		now the stall is entitled;
		increase the score by 2;
	otherwise:
		say "You throw glitter haphazardly at the stall.  It slides right off."

[The five stars]
Star is a kind of thing.
Instead of burning or cutting or attacking a star:
	say "You would never.  Don't even joke about that."

[Cut out of the blueprints]
A blue star is a star.  The illustration is Figure Blue Star.  The description is "You cut this star out of construction paper yourself.  It's a beautiful blue, marred only slightly by the white lines scrawled on it and the text 'W REACTOR SCH'."
[Found in the laundry]
A yellow star is a star.  The illustration is Figure Yellow Star.  The description is "This star has too many points, but it's still a pretty good star.  It's metal and shiny and says 'FFIREHS' in embossed letters.  All very good qualities, even if that's not a word and they got some of the letters upside-down."
Instead of wearing the yellow star:
	display Figure Pewpew;
	say "It's really designed to be pinned to clothing, but you improvise: you hold it to your chest and run around doing finger gun for a little while."
[3D printed]
A gray star is a star.  The illustration is Figure Gray Star.  The description is "This star isn't very flat, and its edges are far too identical for your tastes, but it's still serviceable."
Understand "grey" as the gray star.
[Help get the right one from the slot]
Does the player mean doing something with the gray star when Purrl carries the player and the gray star is in the slot: it is likely.
[Paint the acrylic star]
A red star is a star.  The illustration is Figure Red Star.  The description is "This star used to say something and be invisible, but you've solved both of those problems."
[Cut up the terminal]
A black star is a star.  The illustration is Figure Black Star.  The description is "This star still sparkles and crackles every so often, making it the best star of all."

Instead of decorating or inserting or throwing or putting a star (called the decor) on the stall:
	if the stall is sticky:
		say "You affix [the decor] proudly to the front of your stall.";
		now the decor is part of the stall;
		increment the stellar count of the stall;
		if the stellar count of the stall is 5:
			say "[line break]Oh!  Wow!  That's five stars, the perfect number of stars!  'Good job, Star Anise!' you say aloud.";
			increase the score by 5;
	otherwise:
		say "You press [the decor] against the front of the stall, and it falls right off.";
		now the decor is in the location of the stall.

Instead of decorating or inserting or throwing or putting the award on the stall:
	say "The award does have a pleasing star shape, but it's colored invisible, so no one will be able to see it.  It's no good like this."

Instead of inserting or putting something on the stall:
	if the noun is not merch:
		say "Hmm, but how could you possibly sell [a noun]?";
	otherwise if the noun is the mug and the mug is not broken:
		say "It's a good start, but [the noun] is too big and too not enough many of it.  Who would ever buy it like this?";
	otherwise:
		say "You proudly set [the noun] atop your stall.";
		now the noun is on the stall;
		if number of merch on the stall is at least three:
			say "[line break]Wow!  Three treasures!  That's enough to make it an official shop!  'You did it, Star Anise!!' you say to no one.";
			increase the score by 3.

Instead of taking merch when the noun is on the stall:
	say "Better not get high off your own supply.  Unless you want to.  But right now you don't."

[And the grand finale]
Instead of entering or opening the stall:
	if the stall is not entitled or the stellar count of the stall is less than 3 or the number of merch on the stall is less than 2:
		say "Hmmm.  It's not ready yet.";
	otherwise if Purrl does not have the coin:
		say "You sit on your stall for a while and wait for some customers.  But nobody came.";
	otherwise if the length of string is not on the stall:
		say "You sit on your stall and wave excitedly at Purrl.  'Purrl hey Purrl hey hey Purrl!!  Check out my shop!!!!!'

Purrl comes over and scrutinizes your wares, tapping her chin (well, helmet) thoughtfully with one paw and clutching her coin in the other.  'Mmmmnn, no thankyou.  All of this is bad.'

'What!!  This is prime treasure!  The best treasure anywhere in the room!!'

She shakes her head.  'This money is prettier AND clinkier.'  And with that, she walks away.";
	otherwise:
		[And the ACTUAL grand finale]
		say "You jump on your stall and wave your arms around.  'Hey hey hey Purrl hey Purrl!!  Look at my shop I made!!  Come check it out!!!!!!!!!'

Purrl strolls over and peruses your many wares.  'Mmmnn, I think I would like one string, please, mewo.'  She hands you the coin, and you hand her the string.  She nods politely.  'Thank you.'  She walks a short distance away and tumbles to the floor, rolling around playing with her string.

(cont'd)[run paragraph on]";
		wait for any key;
		say paragraph break;
		display Figure Ending;
		[TODO mention other optional messes]
		say "Quite suddenly, the door slides open, revealing the big cat standing in the hallway.

Neon's eyes dart around the room.  The glitter everywhere, the mess in the closet[if the terminal is ruined], the state of her terminal[end if]...  'WHAT did you DO to my ROOM??' she bellows.

'Wow!!' you say.  'I knew it would work!  Star Anise Shop to the rescue again!!'  And you dart out the open door, leaving Neon to clean up the disaster you left in your wake.";
		increase the score by 10;
		end the story finally saying "You've escaped the Chamber of Despair!"


[Starting from scratch, get to the shop idea]
Test shop with "pull blanket / show panel to purrl / climb purrl / touch panel".
[From there, get the box]
Test box with "get on purrl / open closet / get on nightstand / take scissors / down / go in closet / cut tape / open box / take junk / push box out / flip box / drop scissors".  
[Collect all the misc objects on the floor]
Test items with "climb shelves / knock stuff down / down / look under workbench / drop / look under desk / drop / get on workbench / push mug / push paper / down / get on desk / push award / down / get on bed / look under pillow / push laser / down".
[Get all the stars, also on the floor]
Test stars with "take laser / get on purrl / climb desk / burn terminal / push black star / down / drop laser / get on purrl / push lily / type star on keypad / push button / push gray star / down / decorate award with paint / search laundry / take scissors / cut paper / put glue on shop / put glitter on shop / put blue star on shop / put red star on shop / put black star on shop / put gray star on shop / put yellow star on shop".
[Put all the merch in]
Test merch with "take mug / get on purrl / get on desk / drop mug / push mug / down / take mug / get on purrl / get on desk / drop mug / push mug / down / take mug / get on purrl / get on desk / drop mug / push mug / down / put mug in shop / take scissors / enter closet / cut yarn / e / drop scissors / w / take puffball / go through door / put puffball in shop / take scissors / cut twine / put string in shop".
[And finally...]
Test finale with "drop / get on nightstand / turn on lamp / push lamp / down / look under bed / give coin to purrl / open shop".   