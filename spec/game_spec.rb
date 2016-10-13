require 'game'


describe Game do
  let(:player1) { double :player, name: 'Michal', hp: 100 }
  let(:player2) { double :player, name: 'Tom', hp: 100 }
  let(:subject) { Game.new(player1, player2) }


  describe '#attack' do
    it 'takes an argument' do
      expect(subject).to respond_to(:attack).with(1).argument
    end

    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      subject.attack(player2)
    end
  end
end
