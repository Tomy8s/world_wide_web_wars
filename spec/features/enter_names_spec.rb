require_relative 'welpers'
require 'spec_helper'

feature 'Enter names' do
  scenario 'allows players to enter their names' do
    sign_in_and_play
    expect(page).to have_content ("Bob")
  end

  scenario 'if player 2 field is empty, player 2 is the computer' do
    visit('/')
    fill_in :player_1_name, with: "Bob"
    click_button 'Submit'
    expect(page).to have_content ("Bob vs. Computer")
  end
end
