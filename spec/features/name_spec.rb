require 'spec_helper'

feature 'names' do
  scenario 'Players can input names' do
    sign_in_and_play
    expect(page).to have_content 'Tom vs Brian'
  end

  scenario 'Players can see each other\'s HP' do
    sign_in_and_play
    expect(page). to have_content 'Brian has 100HP'
  end
end
