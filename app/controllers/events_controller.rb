require 'date'

class EventsController < ApplicationController

  def create
    data = JSON.parse(request.body.read)
    date = DateTime.strptime(data["Timestamp"].to_s, "%s")
    Event.create(address: data["Address"],
                 email_type: data["EmailType"],
                 event_type: data["Event"],
                 timestamp: date)
  end


end
