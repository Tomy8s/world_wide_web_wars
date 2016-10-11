require 'spec_helper'

feature 'accepts name' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_text('Welcome tom and david!')
  end
end
