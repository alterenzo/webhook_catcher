require 'rails_helper'

feature 'stats' do
  scenario 'should display the title of the page' do
    visit stats_path

    expect(page).to have_content "Email Stats"
  end

  scenario 'should display the total number of sent email' do
    2.times { create(:event, event_type: "send") }

    visit stats_path

    expect(page).to have_content "Sent Emails 2"
  end

  scenario 'should display the total number of clicked email' do
    3.times { create(:event, event_type: "click") }

    visit stats_path

    expect(page).to have_content "Clicked Emails 3"
  end

  scenario 'should display the total number of opened email' do
    4.times { create(:event, event_type: "open") }

    visit stats_path

    expect(page).to have_content "Opened Emails 4"
  end

  scenario 'should display the clicked and opened ratio for every email type' do
    shipment = create(:email_type, name: "Shipment")
    confirmation = create(:email_type, name: "OrderConfirmation")
    5.times { create(:event, email_type: shipment, event_type: "send") }
    5.times { create(:event, email_type: shipment, event_type: "click") }
    5.times { create(:event, email_type: shipment, event_type: "open") }
    5.times { create(:event, email_type: confirmation, event_type: "send") }
    3.times { create(:event, email_type: confirmation, event_type: "click") }
    2.times { create(:event, email_type: confirmation, event_type: "open") }

    visit stats_path

    expect(page).to have_content "Shipment open rate: 33.3%"
    expect(page).to have_content "Shipment click rate: 33.3%"
    expect(page).to have_content "OrderConfirmation open rate: 20%"
    expect(page).to have_content "OrderConfirmation click rate: 30%"
  end
end
