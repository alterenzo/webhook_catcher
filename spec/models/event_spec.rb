require 'rails_helper'

describe Event do
  describe '.all_sent' do
    it 'returns only the sent emails' do
      2.times { create(:event, event_type: "send") }
      2.times { create(:event, event_type: "click") }

      result = described_class.all_sent.all? { |e| e.event_type == "send" }

      expect(result).to be true
    end

    it 'returns all the opened emails' do
      2.times { create(:event, event_type: "send") }

      result = described_class.all_sent.count

      expect(result).to eq 2
    end
  end

  describe '.all_clicked' do
    it 'returns only the clicked emails' do
      2.times { create(:event, event_type: "click") }
      2.times { create(:event, event_type: "send") }

      result = described_class.all_clicked.all? { |e| e.event_type == "click" }

      expect(result).to be true
    end

    it 'returns all the clicked emails' do
      2.times { create(:event, event_type: "click") }

      result = described_class.all_clicked.count

      expect(result).to eq 2
    end
  end

  describe '.all_opened' do
    it 'returns only the opened emails' do
      2.times { create(:event, event_type: "open") }
      2.times { create(:event, event_type: "send") }

      result = described_class.all_clicked.all? { |e| e.event_type == "open" }

      expect(result).to be true
    end

    it 'returns all the opened emails' do
      2.times { create(:event, event_type: "open") }

      result = described_class.all_opened.count

      expect(result).to eq 2
    end
  end
end
