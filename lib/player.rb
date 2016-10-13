class Player

  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 100
  end

  def hp
    if @hp < 1
      0
    else
      @hp
    end
  end


  def receive_damage
    @hp -= random_number
  end

  def random_number
    rand(15)
  end

end
