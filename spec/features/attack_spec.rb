require 'spec_helper'

feature 'attack' do
  scenario 'I want to confirm that I have attacked' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content('You have hit Brian')
  end

  scenario 'I want to reduce my opponents score' do
    sign_in_and_play
    allow(Game.instance.defender).to receive(:random_number).and_return(10)
    click_button 'Attack!'
    expect(page).to have_content 'Brian has 90HP'
  end

  scenario 'attack after switching deducts hp from player_2' do
    sign_in_and_play
    click_button 'Switch Turns!'
    allow(Game.instance.defender).to receive(:random_number).and_return(10)
    click_button 'Attack!'
    expect(page).to have_content 'Tom has 90HP'
  end
end
