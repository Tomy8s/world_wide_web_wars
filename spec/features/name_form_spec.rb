require 'capybara/dsl'

feature 'accepts name' do
  scenario 'submitting names' do
    visit ('/')
    fill_in 'Player 1', with: 'david'
    fill_in 'Player 2', with: 'tom'
    click_button 'Submit'
    expect('localhost:4567/name').to have_text('Welcome David and Tom!')
  end
end
