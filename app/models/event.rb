class Event < ApplicationRecord
  validates_presence_of :address, :email_type, :timestamp, :event_type
  belongs_to :email_type

  def self.all_sent
    self.where(event_type: "send")
  end

  def self.all_clicked
    self.where(event_type: "click")
  end

  def self.all_opened
    self.where(event_type: "open")
  end
end
