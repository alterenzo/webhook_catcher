require 'rails_helper'

describe 'Events', type: :request do
  describe 'POST /events' do
    it 'logs the events on the db' do
      expect{ post_event }.to change(Event, :count).by(1)
    end
  end
end
