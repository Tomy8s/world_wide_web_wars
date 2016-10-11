require 'spec_helper'

feature 'Player 1 can attack Player 2' do
  scenario 'on welcome screen' do
    sign_in_and_play
    click_button 'Attack Player 2'
    expect(page).to have_text 'Player 2 has been attacked'
  end
end
