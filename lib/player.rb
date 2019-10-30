# The player class
class Player
  attr_reader :name, :hp

  START_HP = 100

  def initialize(name:, hp: START_HP)
    @name = name
    @hp = hp
  end

  def receive_damage
    @hp -= 10
  end

  def attack(player)
    player.receive_damage
  end
end