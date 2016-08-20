class EmailType < ApplicationRecord
  has_many :events

  def click_ratio
    self.events.where(event_type: "click").count / self.events.count
  end

  def open_ratio
    self.events.where(event_type: "open").count / self.events.count
  end
end
