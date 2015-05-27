"final" by Alex Vincent & Tyler Gatta

[Rooms]
Lab is a room. The printed name of lab is "Professor Oak's Lab". The description of lab is "You are surrounded by rows of musty bookshelves and old lab equipment. [line break] Scolls containing the names of various pokemon hang from the walls. To the east you notice a closed wooden door."
Pallet Town is a room. "The town is quiet today. Route 1 lies to the north." Pallet Town is outside from the lab. 

The wood door is west of the lab and east of Pallet Town. The wood door is a door. The wood door is scenery. The wood door is closed and openable.  The description of the door is "This is a plain old door."
Route 1 is a room. Route 1 is north of pallet town.

PlayerHealth is a number variable. PlayerHealth is 10.

[Items]
A thing is either drinkable or undrinkable.
A rifle is an object. A rifle can be loaded or unloaded. 

A table is in the lab. The description of table is "The oaken table is weathered with age. Hundreds of scratches cover its surface."

A pokball is a container. On the table is a pokeball. 
The description of pokeball is "This pokeball belongs to Professor Oak."

A trash can is an open container in the lab.  "There is a trash can by the side of the table." The description of trash can is "Old and rusty." The trash can contains chewed gum and potion.
The potion is drinkable. The description of potion is "This potion can restore health to Pokemon. There's no reason it wouldn't work on humans too."

[People]
Gary is a person.  The description of Gary is "Nobody likes Gary." 

Gary is in the lab. 

Ash is a person. The player is Ash. The description of Ash is "You are Ash, an aspiring young pokemon master. Nothing will stop you from achieveing your goals." Ash is carrying an rifle.

Pikachu is a person in route 1. The description of Pikachu is "Pikachu, the mouse pokemon. It can generate electric attacks from the electric pouches located in both of its cheeks."

[Scenes]
Preparation is a scene. Preparation begins when play begins. Preparation ends when Gary is in route 1.


	
Hunting is a scene. Hunting begins when preparation ends. Hunting ends when Ash is in route 1 and Gary is in route 1.

Battle is a scene. Battle begins when hunting ends.
When battle begins:
	say "Wild Pikachu appeared! Gary says, 'Quick shoot it Ash!'";
[Actions]

Understand the command "use" as something new.
Understand "use [something]" as using. Using is an action applying to one thing. 

Instead of using the potion:
	try drinking the potion;

Instead of drinking the potion:
	say "You use the potion on yourself. It heals you to full health!";
	now PlayerHealth is 10;
	now the potion is nowhere;

Understand the command "shoot" as something new.

Understand "shoot [something]" as shooting. Shooting is an action applying to one thing. 

Instead of shooting:
	if the player is in the lab:
		say "Oak's words echoed... There's a time and place for everything, but not now.";
		stop;
	if the player has the rifle:
		if the noun is Gary:
			say "You fire your rifle at Gary!";
			end the story saying "Your shot grazes his right cheek. Gary returns fire and hits you right in the heart. [line break] You die a quick and peaceful death knowing that the Pikachu will live to see another day.";			
			rule succeeds;
		else if the noun is Pikachu:
			say "You fire your rifle at Pikachu!";
			end the story saying "Rifle shot to the heart is super effective. The wild Pikachu faints. Ash blacked out.";
			rule succeeds;
	else:
		say "You don't have anything to shoot with.";

			
Before taking the rifle:
	say "Gary says, 'Be careful with that!'";
	

Before taking the pokeball:
	if preparation is happening:
		say "As you reach for the pokeball, Gary grabs your hand. He says,'Don't take that!'";
		say "He continues, 'Well, Ash, ya snooze ya lose, and you're behind right from the start! Let's go hunt us some pokemon. Meet me out at Route 1. ";
		now Gary is in route 1;
		stop;
	else:
		say "Gary doesn't want you to take that.";
		stop;
	
Instead of taking chewed gum:
	say "It has hardened to the side of the trash can. It won't even budge.";
	stop;
	
Test win with "x gary / x trash can / x potion / drink potion / x pokeball / i / shoot gary / take pokeball / go west / go north / shoot gary".
Test lose with "x trash can / x potion / drink potion / x pokeball / i / take pokeball / go west / go north / shoot pikachu".


