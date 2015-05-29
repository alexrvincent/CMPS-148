"NictionalTreasure3" by Alex Vincent & Tyler Gatta

[Test for the pushed file Tyler I did it]

[**RULES**]
A thing is either encrypted or decrypted.
Instead of examining an encrypted thing: say "This object might contain hidden markings."

[**REGIONS/ROOMS**]

[Las Vegas Region]
Las Vegas is a region. Bedroom, Lobby, and The Strip are in Las Vegas.
Bedroom is a room. The printed name of Bedroom is "Las Vegas Home Bedroom".
Lobby is a room. The printed name of Lobby is "Las Vegas Home Lobby". Lobby is north of Bedroom.
The Strip is a room. The Strip is east of Las Vegas Home Lobby.

[Hollywood Region]
Hollywood is a region. Hollywood Sign, Hollywood Boulevard, Chinese Theater and Wax Museum Lobby are in Hollywood.
Hollywood Sign is a room.
Hollywood Boulevard is a room. Hollywood Boulevard is south of Hollywood Sign.
Chinese Theater is a room. Chinese Theater is south of Hollywood Boulevard.
Wax Museum Lobby is a room. Wax Museum Lobby is east of Hollywood Boulevard.

[Indian Reservation]
Indian Reservation is a region. Grassy Field and Old House Porch are in Indian Reservation.
Grassy Field is a room.
Old House Porch is a room. Old House Porch is north of Grassy Field.

[Somewhere in Texas]
Somewhere in Texas is a region. Abandoned Saloon Porch is in Somewhere in Texas.
Abandoned Saloon Porch is a room.

[Gettysburg]
Gettysburg is a region. Gettysburg Museum and Gettysburg Battlefield are  in Gettysburg.


[Times Square]
Times Square is a region. Times Square Center, North Times Square , South Times Square, East Times Square, West Times Square  are in Times Square.
Times Square Center is a Room.
North Times Square is a room. North Times Square is north of Times Square Center.
South Times Square is a room. South Times Square is south of Times Square Center.
East Times Square is a room. East Times Square is east of Times Square Center.
West Times Square is a room. West Times Square is west of Times Square Center.

[Smithsonian]
The Smithsonian is a region. Smithsonian Lobby, Smithsonian Main Hall, Smithsonian West Wing, Smithsonian East Wing are in The Smithsonian.
Smithsonian Lobby is a room.
Smithsonian Main Hall is a room. Smithsonian Main Hall is north of Smithsonian Lobby.
Smithsonian Security Room is a room. Smithsonian Security Room is above Smithsonian Main Hall. 
Smithsonian West Wing is a room. Smithsonian West Wing is west of Smithsonian Main Hall. 
Smithsonian East Wing is a room. Smithsonian East Wing is east of Smithsonian Main Hall.

[NullRoom - this is for storing secret objects . The player shouldn't have access to this room]
NullRoom is a room.

[**OBJECTS**]

[Objects in Bedroom]
A bed is in the bedroom. "A king sized bed with silk sheets takes up most of the room." The description of the bed is "The bed is still unmade from last night's escapades."
A spray bottle is an object. The description of the spray bottle is "The bottle is full of lemon juice. Handy for finding clues."
A declaration is an encrypted object. The printed name of declaration is "Declaration of Independence (declaration)". The description of declaration is,"You went back and stole this a second time after the filming of National Treasure 2."
A nightstand is a closed container in the bedroom. "There is a nightstand by the side of the bed." The nightstand is openable and fixed in place. The description of the nightstand is "An ancient Greek nightstand where you keep your most valuable treasures." The declaration and the spray bottle are in the nightstand. 


[**PEOPLE**]
Nick is a person. The printed name of Nick is "Nicolas Cage". The player is Nick. The description of Nick is "You are Acadamy Award winner and national-treasure-fnder, Nicolas Cage."
Nick is in bedroom.

[**VARIABLES**]
SprayCapacity is a number variable. SprayCapacity is 100.

[**ACTIONS**]
Traveling is an action applying to nothing.

Understand "spray [something]" as spraying. Spraying is an action applying to one thing. 
Check spraying: 
	if the player does not have the spray bottle, instead say "You need a spray bottle to do this.";
	if the noun is decrypted, instead say "Don't waste your juice.";
Carry out spraying: 
	now the noun is decrypted;
	now SprayCapacity is SprayCapacity minus 10;
Report spraying: 
	say "You spray the [noun] with lemon juice to reveal a secret message: ";
	if noun is declaration:
		say "[line break]'There is a secret message here, but Tyler doesn't know what it is yet'";
		say "[line break]The spray bottle is now ([SprayCapacity]%) full.";
	else:
		say "Default message, replace with clue";


