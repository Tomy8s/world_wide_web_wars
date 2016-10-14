class Player

  attr_reader :name, :health, :is_computer

  HIT_POINTS = 100

  def initialize(name, is_computer = false, health = HIT_POINTS)
    @name = name
    @is_computer = is_computer
    @health = health
  end

  def reduce_health(random_number)
    @health -= random_number
  end

end
