require 'rails_helper'

feature 'stats' do
  scenario 'should display the title of the page' do
    visit '/stats'
    expect(page).to have_content "Email Stats"
  end
end
