require 'spec_helper'

feature 'accepts name' do
  scenario 'submitting names' do
    visit ('/')
    fill_in :player_1_name, with: 'david'
    fill_in :player_2_name, with: 'tom'
    click_button 'Submit'
    expect(page).to have_text('Welcome David and Tom!')
  end
end
