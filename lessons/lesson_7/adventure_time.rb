#Intro to game
puts "This is the castle of the Ice King. At the end of the corridor there are two doors"
puts "Thou shalt choose to go through one door, the Fire Door or the Snow Door"
puts "Press 1 for Fire Door. Press 2 for Snow Door"

#data
fire_door = {
	name: "Fire Door",
	character: "Gunter, the Evil Penguin of Tech Support",
	character_action: "He has a casket full of tech support tickets",
	decision_one: "Take the casket and destroy the tickets",
	outcome_one: "Well done! You are now the king of Tech Support",
	decision_two: "Slap that creepy Penguin",
	outcome_two: "You fool. The curse of tech support is on you. You will have to fix ecery ticket for eternity"
}

snow_door = {
	name: "Snow Door",
	character: "Princess Bubblegum, the Beautiful Princess of Sainsburys deliveries",
	character_action: "She has a bucket full of belvita biscuits",
	decision_one: "Eat the biscuits",
	outcome_one: "You fool! Neusha will tell and Eamon and he will fire you!",
	decision_two: "Save them for Shakes",
	outcome_two: "The force runs strong with this one. You have saved Shakes from starvation!"	
}

doors = {
	"1" => fire_door,
	"2" => snow_door
}

#game control flow
#lets use a method here to handle typos

def handle_typos_1(doors)
	puts "Man you should make a proper decision or learn how to type!".upcase
	puts "Try again"
	puts "> "
	door_choose(doors)
end

def handle_typos_2(decision)
	puts "That wasn't an option. Start again!".upcase
	puts "Press 1 for Fire Door. Press 2 for Snow Door"
	puts "> "
	door_choose(doors)
end

def door_choose(doors)
	
	print "> "
	door_num = $stdin.gets.chomp
	chosen_door = doors[door_num]

	if chosen_door
		puts "You have entered the #{chosen_door[:name]}"
		puts "Now you have to face #{chosen_door[:character]}"
		puts "#{chosen_door[:character_action]}"
		puts "What are you going to do?"
		puts "1. #{chosen_door[:decision_one].upcase}"
		puts "2. #{chosen_door[:decision_two].upcase}"
		else handle_typos_1(doors)
	end
		print "> "
		decision = $stdin.gets.chomp

		if decision == "1"
		puts chosen_door[:outcome_one].upcase
		elsif decision == "2"
		puts chosen_door[:outcome_two].upcase 
		else handle_typos_2(decision)
		end
end

door_choose(doors)
