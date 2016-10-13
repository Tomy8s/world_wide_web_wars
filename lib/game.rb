require_relative 'player'

class Game
  attr_reader :message, :player_1, :player_2, :attacker, :defender

  def self.create(player_1, player_2, is_computer)
    @instance = Game.new(player_1, player_2, is_computer)

  end

  def self.instance
    @instance
  end


	def initialize(player_1, player_2, is_computer = false)
		@message = "Let battle commence!"
    @player_1 =  Player.new(player_1)
    @attacker = @player_1
    @player_2 =  Player.new(player_2, !!is_computer)
    @defender = @player_2
	end

  def users
    @users = [@player_1, @player_2]
  end

	def attack
		defender.receive_damage
    if defender.is_computer
      attacker.receive_damage unless defender.hp == 0
		  update_message(defender)
    else
		  update_message(defender)
      switch_turns
    end
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
    if @defender.hp == 0
      @message = "Game over. The winner is #{@attacker.name}."
    elsif @attacker.hp == 0
      @message = "Game over. The winner is #{@defender.name}."
    else
			@message = "You have hit #{player.name}."
    end
	end

end