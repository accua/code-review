require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the find path', {:type => :feature}) do
  it('processes the user entry and returns number of times word appeared in sentence') do
    visit('/')
    fill_in('sentence', :with => 'Catherine walked her catatonic cat beside another cat down by the cathedral.')
    fill_in('word', :with => 'cat')
    click_button('Go!')
    expect(page).to have_content("Your word appeared 2 time(s)!")
  end
end
