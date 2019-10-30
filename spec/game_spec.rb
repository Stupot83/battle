require 'game.rb'

describe Game do
  let(:player_1) { double :player }
  let(:player_2) { double :player }
  subject(:game) { Game.new(player_1: player_1, player_2: player_2) }

  before(:each) do
    allow(player_1).to receive(:name) { 'Negan' }
    allow(player_2).to receive(:name) { 'Alpha' }
  end

  describe '#game' do
    it 'instantiates the game class' do
      expect(game).to be_instance_of(Game)
    end
  end

  describe '#player_1' do
    it 'returns the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'returns the second player' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#messages' do
    it 'contains player1 vs player2 message' do
      expect(game.messages).to include( '#{player_1.name} and #{player_2.name} entered the battle arena!')
    end
  end
end