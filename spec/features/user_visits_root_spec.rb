require 'spec_helper'

Capybara.app = Sinatra::Application

feature 'main page' do
   scenario 'user sees hello' do
    visit'/'
    expect(page).to have_content 'Hello'
   end
end