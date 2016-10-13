require 'spec_helper'

feature 'game' do
  scenario 'showing player_1\'s turn by default' do
    sign_in_and_play
    expect(page).to have_content 'It\'s Tom\'s turn to attack.'
  end

  scenario 'switching turns' do
    sign_in_and_play
    click_button 'Switch Turns!'
    expect(page).to have_content 'It\'s Brian\'s turn to attack.'
  end
end