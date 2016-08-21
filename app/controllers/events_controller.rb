
class EventsController < ApplicationController

  def create
    data = JSON.parse(request.body.read)
    date = timestamp_to_date data["Timestamp"]
    email_type = EmailType.where(name: data["EmailType"]).first_or_create
    Event.create(address: data["Address"],
                 email_type: email_type,
                 event_type: data["Event"],
                 timestamp: date)
    redirect_to stats_path
  end

private

  def timestamp_to_date(timestamp)
    DateTime.strptime(timestamp.to_s, "%s")
  end
end
