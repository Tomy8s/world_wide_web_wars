require 'spec_helper'

feature 'Can view player HP' do
  scenario 'on welcome screen' do
    sign_in_and_play
    expect(page).to have_text("Tom has 100 HP.")#David has 100 HP.")
  end
end
