require_relative 'welpers'
require 'spec_helper'

feature 'Game Over' do
  context 'player 2 dies' do
    before do
      sign_in_and_play
      allow(Game.instance).to receive(:random_number).and_return 10
      18.times {attack_helper}
    end

    scenario 'player 2 dies' do
      click_button 'ATTACK!'
      expect(page).to have_content 'Larry is dead'
    end
  end
end
