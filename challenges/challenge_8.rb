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
	def initialise(door_name)
		@door_name = door_name
	end
end

class Character
	def initialise(character_name, nickname, of)
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
	def initialise(challenge)
		@challenge = challenge
		puts challenge
		@decisions = []
	end

	def decision(decision)
		@decisions << decision
	end
end

class Decision
	def initialise(decision)
		@decision = decision
	end

	def outcome

	end
end

class BadInput
	def 

	end
end


fire_door = Room.new("Fire Door")

snow_door = Room.new("Snow Door")

gunter = Character.new("Gunter", "the Evil Penguin", "Tech Support")
gunter.action("He has a casket full of tech support tickets")

princes_bubblegum = Character.new("Princess Bubblegum", "the Beautiful Princess", "Sainsburys Deliveries")
princes_bubblegum.action("She has a bucket full of belvita biscuits")







