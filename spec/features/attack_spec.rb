require 'spec_helper'

feature 'Player 1 can attack Player 2, and reduce HP by 10' do
  scenario 'on welcome screen' do
    sign_in_and_play
    click_button 'Attack Player 2'
    expect(page).to have_text 'david has been attacked. New HP: 90'
  end
end
