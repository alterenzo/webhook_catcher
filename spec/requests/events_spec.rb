require 'rails_helper'

describe 'Events', type: :request do
  describe 'POST /events' do
    it 'logs the events on the db' do
      expect{ post_event }.to change(Event, :count).by(1)
    end

    it 'creates a new EmailType if it\'s new' do
      expect{ post_event }.to change(EmailType, :count).by(1)
    end

    it 'does not create a new EmailType it is not new' do
      post_event
      expect{ post_event }.not_to change(EmailType, :count)
    end

    it 'does create a new EmailType' do
      post_event(email_type: "Type1")
      expect{ post_event(email_type: "Type2") }.to change(EmailType, :count).by(1)
    end
  end
end
