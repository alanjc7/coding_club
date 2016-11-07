class Game
	def start
		#run function initiating game
	end

	def restart
		#run function initiating game
	end

	def quit
		exit
	end 
end

class Room
	def initialize(door_name)
		@door_name = door_name
	end
end

class Character
	def initialize(character_name, nickname, of)
		@character_name = character_name
		@nickname = nickname
		@of = of
	end

	def action(action)
		@action = action
	end

	def greet
		puts "#{character_name}, #{nickname} of #{of}"
		puts "#{action}"
	end

end

class Challenge
	def initialize(challenge)
		@challenge = challenge
		puts challenge
		@decisions = []
	end

	def decision(decision)
		@decisions << decision
	end
end

class Decision
	def initialize(decision, outcome)
		@decision = decision
		@outcome = outcome
	end
end

class BadInput
	def 

	end
end


fire_door = Room.new("Fire Door")

snow_door = Room.new("Snow Door")

#create character Gunter
gunter = Character.new("Gunter", "the Evil Penguin", "Tech Support")
gunter.action("He has a casket full of tech support tickets")

#create challenge
gunter_challenge = Challenge.new("Now you must choose what to do!")
#add decisions to Challenge
gunter_challenge.decision(gunter_decision_one)
gunter_challenge.decision(gunter_decision_two)

#create Gunter's two decisions 
gunter_decision_one = Decision.new("Take the casket and destroy the tickets", "Well done! You are now the king of Tech Support")
gunter_decision_two = Decision.new("Slap that creepy Penguin", "You fool. The curse of tech support is on you. You will have to fix ecery ticket for eternity")




#create character Princess Bubblegum
princes_bubblegum = Character.new("Princess Bubblegum", "the Beautiful Princess", "Sainsburys Deliveries")
princes_bubblegum.action("She has a bucket full of belvita biscuits")

#create Princess Bubblegums's two decisions
princes_bubblegum_one = Decision.new("Eat the biscuits", "You fool! Neusha will tell and Eamon and he will fire you!")
princes_bubblegum_two = Decision.new("Save them for Shakes", "The force runs strong with this one. You have saved Shakes from starvation!")



