class Game
  attr_reader :message, :player_1, :player_2, :attacker, :defender

	def initialize(player_1, player_2)
		@message = ""
    @player_1 = player_1
    @attacker = player_1
    @player_2 = player_2
    @defender = player_2
	end

  def users
    @users = [@player_1, @player_2]
  end

	def attack(player = @player_2)
		player.receive_damage
		update_message(player)
	end

  def switch_turns
    if @attacker == @player_1
      @attacker = @player_2
      @defender = @player_1
    else
      @attacker = @player_1
      @defender = @player_2
    end
  end

  private

	def update_message(player)
			@message = "You have hit #{player.name}." 
	end

end
