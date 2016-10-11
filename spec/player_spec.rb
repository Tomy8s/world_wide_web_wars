require 'player'

describe Player do
  subject(:player) {Player.new("david")}
  it "returns its name" do
    expect(player.name).to eq "david"
  end

  describe '#hp' do
    it 'starts with 100HP' do
      expect(player.hp).to eq described_class::STARTING_HP
    end
  end

  describe '#receive_damage' do
    it 'reduces HP by 10 when receiving damage' do
      expect{ player.receive_damage }.to change{player.hp}.by -10
    end
  end
end
