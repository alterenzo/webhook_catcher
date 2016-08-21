
class EventsController < ApplicationController

  def create
    data = JSON.parse(request.body.read)

    date = timestamp_to_date data["Timestamp"]
    email_type = EmailType.where(name: data["EmailType"]).first_or_create
    event = Event.new(address: data["Address"],
                      email_type: email_type,
                      event_type: data["Event"],
                      timestamp: date)
    if event.save
      render plain: "OK", status: :ok
    else
      render plain: "ERROR", status: :internal_server_error
    end
  end

private

  def timestamp_to_date(timestamp)
    DateTime.strptime(timestamp.to_s, "%s")
  end
end
