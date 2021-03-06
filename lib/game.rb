# The Game class
class Game
  attr_reader :player_1, :player_2

  def initialize(player_1:, player_2:)
    @player_1 = player_1
    @player_2 = player_2
    @turn = @player_1
    @messages = ["#{player_1.name} and #{player_2.name} entered the battle arena!"]
  end

  def messages
    @messages
  end

  def active_player
    @turn
  end

  def add_message(message)
    @messages << message
  end

  def switch_turn
    active_player == player_1 ? @turn = player_2 : @turn = player_1
  end

  def inactive_player
    @turn == player_1 ? player_2 : player_1
  end
 end