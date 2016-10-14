class Player

  attr_reader :name, :health

  HIT_POINTS = 100

  def initialize(name, health = HIT_POINTS)
    @name = name
    @health = health
  end

  def reduce_health(random_number)
    @health -= random_number
  end

end
