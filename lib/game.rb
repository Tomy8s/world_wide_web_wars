require_relative 'player'

class Game
  attr_reader :message, :player_1, :player_2, :attacker, :defender

	def initialize(player_1, player_2)
		@message = "Let battle commence!"
    @player_1 = Player.new(player_1)
    @attacker = @player_1
    @player_2 = Player.new(player_2)
    @defender = @player_2
	end

  def users
    @users = [@player_1, @player_2]
  end

	def attack
		defender.receive_damage
		update_message(defender)
	end

  def switch_turns
    if @attacker == @player_1
      @attacker = @player_2
      @defender = @player_1
    else
      @attacker = @player_1
      @defender = @player_2
    end
    @message = 'You have switched turns.'
  end

  private

	def update_message(player)
    if @defender.hp <= 0
      @message = "Game over. The winner is #{@attacker.name}."
    else
			@message = "You have hit #{player.name}." 
    end
	end

end
