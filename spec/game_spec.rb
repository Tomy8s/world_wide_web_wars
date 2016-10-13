require 'game'


describe Game do
  let(:subject) { Game.new('Tom', 'Brian') }


  describe '#attack' do
    it 'takes an argument' do
      expect(subject).to respond_to(:attack)
    end
  end
end
