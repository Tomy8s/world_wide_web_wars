class Game


	def initialize
		@message = ""
	end

	def attack(player)
		player.receive_damage
		message
	end

	def message
			@message = "player attacked player 2"
	end

end
