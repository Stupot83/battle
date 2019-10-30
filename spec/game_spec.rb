require 'game.rb'

describe Game do
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  subject(:game) { Game.new(player_1: player_1, player_2: player_2) }

  before(:each) do
    allow(player_1).to receive(:name) { "Negan" }
    allow(player_2).to receive(:name) { "Alpha" }
  end

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

  describe "#player_1" do
    it "returns the first player" do
      expect(game.player_1).to eq player_1
    end
  end

  describe "#player_2" do
    it "returns the second player" do
      expect(game.player_2).to eq player_2
    end
  end

  describe "#messages" do
    it "contains player1 vs player2 message" do
      expect(game.messages).to include( "#{player_1.name} and #{player_2.name} entered the battle arena!")
    end
  end
end