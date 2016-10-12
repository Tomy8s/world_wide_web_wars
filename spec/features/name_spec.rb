require 'spec_helper'

feature 'names' do
  scenario 'Players can input names' do
    visit '/'
    fill_in 'player1', with: 'Tom'
    fill_in 'player2', with: 'Brian'
    click_button 'Start Battle'
    expect(page).to have_content 'Tom vs Brian'
  end
end
