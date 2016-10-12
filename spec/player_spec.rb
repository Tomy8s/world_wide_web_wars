require 'player'

describe Player do
  subject {Player.new('Brian')}
  describe '#name' do
    it 'returns the player\'s name' do
      expect(subject.name).to eq 'Brian'
    end
  end
end
