require 'player'

describe Player do
  let(:name) { "Negan" }
  subject(:player) { Player.new(name: name) }

  it { is_expected.to respond_to(:name) }

  it "instantiates the player class" do
    expect(player).to be_instance_of(Player)
  end

  it "returns the name of the player" do
    expect(player.name).to eq "Negan"
  end
end
