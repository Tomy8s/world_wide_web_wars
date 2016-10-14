require 'spec_helper'

describe Player do
  subject(:dave) { Player.new('Dave') }
  subject(:mittens) { Player.new('Mittens') }

  describe '#initialize' do
    it "returns the player's name" do
      expect(dave.name).to eq "Dave"
    end
    it "should have health of 100" do
      expect(dave.health).to eq described_class::HIT_POINTS
    end
  end

  describe '#reduce_health' do
    it 'should reduce health by 10' do
      expect { dave.reduce_health(10) }.to change { dave.health }.by(-10)
    end
  end

end
