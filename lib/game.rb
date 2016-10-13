class Game
  attr_reader :message, :player_1, :player_2

	def initialize(player_1, player_2)
		@message = ""
    @player_1 = player_1
    @player_2 = player_2
	end

  def users
    @users = [@player_1, @player_2]
  end

	def attack(player = @player_2)
		player.receive_damage
		update_message(player)
	end

	def update_message(player)
			@message = "You have hit #{player.name}." 
	end

end
