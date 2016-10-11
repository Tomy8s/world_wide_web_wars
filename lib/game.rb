require_relative 'player.rb'

class Game
  def attack(defender)
    defender.receive_damage
  end
end