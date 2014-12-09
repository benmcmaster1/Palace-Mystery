def start
	puts "Welcome to Palace Mystery. You have heard about a valuable treasure that is hidden in this palace."
	puts "You only know that it is in the 'throne' room."
	puts "You can look at your inventory at any time by typing 'inventory'"
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
			puts "It's quite dark in here, even with the candle. The only place you can see is the area around you, but you do notice a freshly torn out page at your feet. You can: "
			puts "1. Look at paper"
			puts "2. Take paper"
		elsif action.include? "go back"
				foyer_room
			elsif action.include? "look at paper"
				puts "This paper reads of a 'Hidden area' but no other information, only that the hidden area is in the bedroom and something to do with the vase on the shelf? I guess I'll check that out."
			elsif action.include? "take paper"
				puts "You add the paper to your inventory"
					@inventoryA << "Torn Paper"
				elsif action.include? "inventory"
					inventory("painting")
						
					
		end
	end #end of while
end #end of painting room

def bedroom
	puts "You're in the bedroom"
end

def inventory(origin)
	puts "~~~~~~~~~~~~"
	puts "Welcome to your inventory"

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
	 	end
	 else
	 	inventory(origin)
	 end

	 #check the origin and sends you back
	 
	
end

@inventoryA = []
@weaponsA = []

start
outside