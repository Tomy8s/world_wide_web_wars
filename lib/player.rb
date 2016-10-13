class Player

  attr_reader :name, :hp, :is_computer

  def initialize(name, is_computer = false)
    @name = name
    @hp = 100
    @is_computer = is_computer
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
