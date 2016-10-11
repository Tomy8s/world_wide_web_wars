require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#initialize' do
    it 'is expected to store player variable' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#defender' do
    it 'returns player_2 by default' do
      expect(game.defender).to eq player_2
    end
  end

  describe '#switch_turn' do
    it 'registers attacks on player 1' do
      game.switch_turn
      expect(game.defender).to eq player_1
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damage)
      game.attack
    end
  end
end
