require 'rails_helper'

describe EmailType do

  describe '#click_ratio' do
    it 'returns the ratio of clicked emails' do
      email_type = create(:email_type, name: "ReferAFriend")
      5.times{ create(:event, email_type: email_type, event_type: "click") }
      5.times{ create(:event, email_type: email_type, event_type: "send") }

      result = email_type.click_rate

      expect(result).to eq 0.5
    end
  end

  describe '#opened_ratio' do
    it 'returns the ratio of opened emails' do
      email_type = create(:email_type, name: "ReferAFriend")
      2.times{ create(:event, email_type: email_type, event_type: "open") }
      8.times{ create(:event, email_type: email_type, event_type: "send") }

      result = email_type.opened_rate

      expect(result).to eq 0.2
    end
  end
end
