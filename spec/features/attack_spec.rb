require 'spec_helper'

feature 'attack' do

  scenario 'I want to confirm that I have attacked' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('You have hit Brian')
  end
  scenario 'I want to reduce my opponents score' do
    sign_in_and_play
    click_button('Attack')
    expect(page). to have_content 'Brian has 90HP'
  end
end
