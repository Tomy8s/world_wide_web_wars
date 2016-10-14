require_relative 'welpers'
require 'spec_helper'

feature 'attack player 2' do
  scenario "player 1 attacks the other player" do
    sign_in_and_play
    click_button 'ATTACK!'
    expect(page).to have_content ("Larry's turn")
  end

  scenario "attacks player 2 and reduces hit points by 'random' amount" do
    sign_in_and_play
    allow(Game.instance).to receive(:random_number).and_return 10
    click_button 'ATTACK!'
    expect(page).to have_content ("Larry HP: 90")
  end
end

feature 'attack player 1' do
  scenario 'player 2 attacks player 1' do
    sign_in_and_play
    attack_helper
    click_button 'ATTACK!'
    expect(page).to have_content ("Larry has attacked Bob")
  end
end

feature 'Switching turns' do
  scenario "switches back to Bob's when both players have attacked" do
    sign_in_and_play
    attack_helper
    click_button 'ATTACK!'
    expect(page).to have_content ("Bob's turn")
  end
end

feature 'Computer attacking' do
  scenario 'computer automatically attacks after being attacked' do
    sign_in_and_play_computer
    allow(Game.instance).to receive(:random_number).and_return 10
    attack_helper
    expect(page).to have_content ("Bob HP: 90 Computer HP: 90")
  end
end