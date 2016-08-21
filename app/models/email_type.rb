class EmailType < ApplicationRecord
  validates_presence_of :name
  has_many :events

  def click_rate
    clicked_count / events.count
  end

  def opened_rate
    opened_count / events.count
  end

  private

  def clicked_count
    self.events.where(event_type: "click").count.to_f
  end

  def opened_count
    self.events.where(event_type: "open").count.to_f
  end
end
