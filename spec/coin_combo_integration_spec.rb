require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('coin combo path', {:type => :feature}) do
  it('processes the user entry and returns the change in lowest number of coins') do
    visit('/')
    fill_in('amount', :with => 0.99)
    click_button("What's My Change?")
    expect(page).to have_content('Your change is: 3 quarters, 2 dimes, 4 pennies')
  end
end
