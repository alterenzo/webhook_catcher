require 'rails_helper'

feature 'stats' do
  scenario 'should display the title of the page' do
    visit '/stats'
    expect(page).to have_content "Email Stats"
  end

  scenario 'should display the total number of sent email' do
    2.times { create(:event, event_type: "send") }

    visit '/stats'

    expect(page).to have_content "Sent Emails 2"
  end

  scenario 'should display the total number of clicked email' do
    3.times { create(:event, event_type: "click") }

    visit '/stats'

    expect(page).to have_content "Clicked Emails 3"
  end

  scenario 'should display the total number of opened email' do
    4.times { create(:event, event_type: "open") }

    visit '/stats'

    expect(page).to have_content "Opened Emails 4"
  end
end
