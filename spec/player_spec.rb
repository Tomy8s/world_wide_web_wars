require 'player'

describe Player do
  it "returns its name" do
    player = Player.new("david")
    expect(player.name).to eq "david"
  end
end
