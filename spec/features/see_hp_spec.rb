require 'spec_helper'

feature 'Can view player HP' do
  scenario 'on welcome screen' do
    visit ('/')
    fill_in :player_1_name, with: 'tom'
    fill_in :player_2_name, with: 'david'
    click_button 'Submit'
    expect(page).to have_text("Tom has 100 HP.\nDavid has 100 HP.")
  end
end
