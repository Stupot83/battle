require 'attack'

describe Attack do

  let(:player_1) { double :player }
  let(:player_2) { double :player }
  let(:game) { double :game }
  subject(:attack) { Attack.new(game: game) }

  describe '#run_attack' do
    it 'reduces damage on the targeted player' do
      allow(player_1).to receive(:name) { 'Negan' }
      allow(player_2).to receive(:name) { 'Alpha' }
      allow(game).to receive(:inactive_player) { player_2 }
      allow(game).to receive(:active_player) { player_1 }
      allow(game).to receive(:add_message)
      allow(game).to receive(:switch_turn)
      allow(player_2).to receive(:receive_damage)
      expect{attack.run_attack}.not_to raise_error
    end
  end
end
