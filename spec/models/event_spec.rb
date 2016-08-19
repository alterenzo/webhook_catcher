require 'rails_helper'

describe Event do


  describe '.all_sent' do
    it 'returns the number of sent email' do
      20.times { create(:event, event_type: "send") }

      expect(Event.all_sent).to eq 20
    end
  end
  describe '.all_clicked' do
    it 'returns the number of clicked email' do
      20.times { create(:event, event_type: "click") }

      expect(Event.all_clicked).to eq 20
    end
  end
  describe '.all_opened' do
    it 'returns the number of sent email' do
      20.times { create(:event, event_type: "open") }

      expect(Event.all_opened).to eq 20
    end
  end


end
