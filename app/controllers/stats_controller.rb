class StatsController < ApplicationController

  def index
    @sent = Event.all_sent
    @clicked = Event.all_clicked
    @opened = Event.all_opened
  end

end
