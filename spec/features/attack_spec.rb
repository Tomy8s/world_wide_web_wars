require 'spec_helper'

feature 'Player 1 can attack Player 2, and reduce HP by 10' do
  scenario 'at start of game' do
    sign_in_and_play
    click_button 'Attack david'
    expect(page).to have_text 'david has been attacked. New HP: 90'
  end

  scenario 'after switching turns' do
    sign_in_and_play
    click_button 'Switch Turns'
    click_button 'Attack tom'
    expect(page).to have_text 'tom has been attacked. New HP: 90'
  end

end
