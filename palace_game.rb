def start
	puts "Welcome to Palace Mystery. You have heard about a valuable treasure that is hidden in this palace."
	puts "You only know that it is in the 'throne' room."
	puts "You can look at your inventory at any time by typing 'inventory'"
	puts "Sometimes you can look at things that are not options, but have been mentioned when you look around. Best to check those things."
	puts "Enjoy!"
	puts "~~~~~~~~~~~~~"
end
def outside

	puts "You stand outside, you can: "
	puts "1. look around"
	

	while true #loops forever, but thats OK because different options take you out into differnt methods
		
		print "> "
		action = $stdin.gets.chomp

		if action.include? "look around"
			puts "It's a sunny day. You look around and see the big palace. There is overgrown grass around you. You can:"
			puts "1. look at palace"
		elsif action.include? "palace"
			puts "The palace is massive. Very tall and white. The front door is big and red. You can:"
			puts "1. look at the door"
		elsif action.include? "look at the door"
			puts "You should try and open the door. See if it is locked or not. You can: "
			puts "1. open the door"
		elsif action.include? "open the door"
			puts "You open the door and go inside."
			foyer_room
		elsif action.include? "inventory"
				inventory("outside")
		elsif action.include? "look at the grass"

			#checks for duplicate key
			if @inventoryA.include? "small key"
				puts "This is where you found the small key. There doesn't seem to be anything else here..."
			else
				puts "You sweep your foot through the grass. This place does look pretty run down, there must be something in here. You keep sweeping your foot until it hits something solid. You almost kicked it away. What is it? You pick the small item up. Oh! It's a small key!"
					@inventoryA << "small key"
					puts "The key was added to your inventory"
			end#ends duplicate item if check

					
		else
			puts "I don't understand that. Try again."
		end #if end

	end # while end
	

end# method end

def foyer_room
	puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	puts "You have entered the Foyer. There isn't much around other than a few doors. You can: "
	puts "1. look around"
	puts "2. look at the doors"
	puts "3. go outside"

	while true
		print "> "
		action = $stdin.gets.chomp

		if action.include? "look at the doors"
			puts "There are two doors. One on each side, one leads to the painting room and one to the bedroom. You can: "
			puts "1. open painting room door"
			puts "2. open bedroom door"
		elsif action.include? "look around"
			puts "This is a really big foyer. I didn't think it looked this big from the outside. Cobwebs in the corners, dusty. Smells of ... 'old'"
		elsif action.include? "open painting room door"
			painting_room
		elsif action.include? "open bedroom door"
			bedroom
		elsif action.include? "inventory"
			inventory("foyer")
		elsif action.include? "go outside"
				outside
		else
			puts "I don't know what that means."
		end #end if




	end #end while

end #end foyer room

def painting_room
	puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	puts "You have entered the Painting Room. There must be hundreds of paintings on the walls, varying sizes, nearly overlapping. There is only one light source from a candle in the corner. You can: "
	puts "1. look around"
	puts "2. go back"

	while true
		print "> "
		action = $stdin.gets.chomp

		if action.include? "look around"

			if @inventoryA.include? "Torn Paper"
				puts "There isn't much else around..."
			else
				puts "It is still quite dark, even with the candle that is lit. You see some paper on the ground, though. One peice looks freshly torn..."
				puts "Would you like to take this peice?"
				print "> "
				paperaction = $stdin.gets.chomp

				if paperaction.include? "yes"
					puts "The peice of paper says '.. you should look into the vase in the bedroom, that holds a key...' the rest is torn."
					@inventoryA << "Torn Paper"
					puts "Torn Paper was added to your inventory"
				else
					puts "You leave it on the ground."
				end #ends child if

			end#ends torn paper check if
				
	
		elsif action.include? "go back"
			foyer_room
		
		elsif action.include? "inventory"
			inventory("painting")
		else
			puts "I don't know what that is..."
		end


			
						
					
		
	end #end of while
end #end of painting room

def bedroom
	puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	puts "You've entered the bedroom. What a nice looking room! You can: "
	puts "1. look around"
	puts "2. go back"

	while true
		print "> "
		action = $stdin.gets.chomp

		if action.include? "look around"
			puts "It is a very fancy bedroom with high ceilings. They have spared no expence on this, with good reason! It smells dusty in this room, just like the others. There are some nice vases on the shelves and what seems to be a smaller door leading out on the other side of the room. You can: "
			puts "1. Look at the door"
			puts "2. Look at anything else in the room"
		elsif action.include? "look at the door"
			puts "It looks like a smaller door is leading out of here. I wonder where it goes. I hope it isn't locked."
		elsif action.include? "look at the vase"
			puts "Wow, what a nice vase. I remember that paper told me to check this out. You walk over to the vase and notice that the dust on the shelf around this vase is clear. Has this vase been moved recently?"
		elsif action.include? "look inside the vase"

			#checks to see if you already have the item, if you do, prints error, if you dont, adds it
			if @inventoryA.include? "Carved Golden Block"
				puts "This used to have the Carved Golden Block, but you already took it out."
				else
					puts "You look inside... oh! There is something inside! Looks like it is a Carved Golden Block! That might be useful!"
					@inventoryA << "Carved Golden Block"
					puts "You add the Carved Golden Block to your inventory"
			end#ends if
			
		elsif action.include? "go back"
				foyer_room
		elsif action.include? "open the door"
				long_balcony
		elsif action.include? "inventory"
					inventory("bedroom")
		end#ends if
	end#ends while
end#ends bedroom

def long_balcony
	puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	puts "You enter the long balcony. It is a balcony that spans the length of the side of the building, so I can imagine it will run past a few rooms. Better take a closer look. You can: "
	puts "1. look around"
	puts "2. go back"

	while true
		print "> "
		action = $stdin.gets.chomp

		if action.include? "look around"
			puts "This balcony is made or marble, very nice. It has a small railing running the length of the balcony. Walking down the balcony you don't notice any doors, only windows of other rooms, rooms that you can't even see into. There is another door at the end of the balcony. There is also a box near that door. What is that? You can: " 
			puts "1. look at the door"
			puts "2. look at the box"
		elsif action.include? "go back"
			bedroom
		elsif action.include? "look at the door"
			puts "You peer through the window pane in the door. It looks like a large room. A big carpet runner stretches through the middle of the room with a large 'over-the-top' looking chair. Like a throne. Hmm, this must be the throne room I was told about before I came here. The treasure must be around here somewhere. You can: "
			puts "1. Open the door"
		elsif action.include? "open the door"

			if @inventoryA.include?("small key")
				throne_room
			else
				puts "It looks like it's locked. I don't have a key yet. I could have swarn I saw something like this outside..."
			end #ends if

		elsif action.include? "look at box"
			puts "There is a small wooden box at the end of the balcony near the throne room door. I almost missed it. I wonder what is in it. It looks locked, but not with a key lock."
				elsif action.include? "open the box"
					puts "You try to open the box by forcing it open. It doesn't budge. There is a 'lock' on the fron of it. As well as a keypad with numbers 1 through to 9 and 0. There is a tiny incription on the front."
					puts "\"Solve this equation and enter in the correct answer to open the box.\""
					puts ""


		end #ends parent if
	end #ends while
end #ends method

def throne_room
	puts "throne room works"
end #ends throne room

def inventory(origin)
	puts "~~~~~~~~~~~~"
	puts "Welcome to your inventory"

	#removes any duplicates if there are any
	#more of a fail safe after the error check that is performed before you receive an item 
	@inventoryA = @inventoryA.uniq

	while true
		
		puts "Items or Weapons or Exit?"
		print "> "
		action = $stdin.gets.chomp

		if action.include? "items"

			if @inventoryA.any?
		 		puts "Here is a list of items you currently have: "
				puts "#{@inventoryA}\n\n"
			elsif !@inventoryA.any?
				puts "You have no items in your inventory.\n\n"
		 	end 

		elsif action.include? "weapons"
			if @weaponsA.any?
				puts "Here is a list of weapons you currently have: "
				puts "#{@weaponsA}"
			elsif !@weaponsA.any?
					puts "You have no weapons in your inventory.\n\n"
			end
		elsif action.include? "exit"
			break
				
		else
			puts "Not sure I know what that means, try again."
		end #ends item action

	end #ends the while

	

	 puts "Would you like to go back to where you were?"

	 print "> "
	 action = $stdin.gets.chomp


	 if action.include? "yes"

	 	
	 	if origin.include? "painting"
	 		painting_room
	 	elsif origin.include? "outside"
	 			outside
	 		elsif origin.include? "foyer"
	 				foyer_room
	 			elsif origin.include? "bedroom"
	 					bedroom
	 	end #end child if
	 else
	 	inventory(origin)
	 end

	 #check the origin and sends you back
	 
	
end

@inventoryA = []
@weaponsA = []

start
outside