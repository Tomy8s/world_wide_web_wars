require 'spec_helper'

feature 'Players can switch turns' do
  scenario 'after switching turns' do
    sign_in_and_play
    click_button 'Switch Turns'
    expect(page).to have_text "david's turn to attack"
  end
end
