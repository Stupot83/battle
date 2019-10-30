require 'player'

describe Player do
  let(:name) { "Negan" }
  subject(:player) { Player.new(name: name) }

  it { is_expected.to respond_to(:name) }
end
