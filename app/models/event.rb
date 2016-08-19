class Event < ApplicationRecord

  def self.all_sent
    self.where(event_type: "send").count
  end

  def self.all_clicked
    self.where(event_type: "click").count
  end

  def self.all_opened
    self.where(event_type: "open").count
  end


end
