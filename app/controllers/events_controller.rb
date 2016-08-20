
class EventsController < ApplicationController

  def create

    data = JSON.parse(request.body.read)
    date = date_from_timestamp data["Timestamp"]
    email_type = EmailType.first_or_create(name: data["EmailType"])
    Event.create(address: data["Address"],
                 email_type: email_type,
                 event_type: data["Event"],
                 timestamp: date)
  end

private

  def date_from_timestamp(timestamp)
    DateTime.strptime(timestamp.to_s, "%s")
  end
end
