class Attack
  attr_reader :game

  def initialize(game:)
    @game = game
  end

  def run_attack
    game.inactive_player.receive_damage
    game.add_message("#{game.active_player.name} attacked #{game.inactive_player.name}")
    game.switch_turn
  end
end