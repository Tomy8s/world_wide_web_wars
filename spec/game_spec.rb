<<<<<<< HEAD
describe Game do

	subject(:game) { described_class.new }
	let(:player_1) { double :player }
	let(:player_2) { double :player }

	describe "#attack" do
			it "damages the player" do
				expect(player_2).to receive(:receive_damage)
				game.attack(player)
			end
	end
end
=======
require 'game'

describe Game do
  describe '#attack' do
    it 'takes an argument' do
      expect(subject).to respond_to(:attack).with(1).argument
    end
  end
end
>>>>>>> 0c48e6fd19f7ab404f8f37caac46917effa27891
