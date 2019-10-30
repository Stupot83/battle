require 'game.rb'

describe Game do
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  subject(:game) { Game.new(player_1: player_1, player_2: player_2) }

  describe "#attack" do

    it { is_expected.to respond_to(:attack) }

    it "instantiates the player class" do
      expect(game).to be_instance_of(Game)
    end

    it "calls reduce_damage on target player" do
      allow(player_2).to receive(:receive_damage)
      expect{game.attack(player_2)}.not_to raise_error
    end
  end
end