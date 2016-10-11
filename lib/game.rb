require_relative 'player.rb'

class Game

  attr_reader :player_1, :player_2, :defender, :attacker

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @defender = player_2
    @attacker = player_1
  end

  def attack
    @defender.receive_damage
  end

  def switch_turn
    if @defender == @player_1
      @defender = @player_2
      @attacker = @player_1
    else
      @defender = @player_1
      @attacker = @player_2
    end
  end


end
