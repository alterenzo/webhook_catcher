class StatsController < ApplicationController

  def index
    @sent = Event.all_sent.count
    @clicked = Event.all_clicked.count
    @opened = Event.all_opened.count
  end

end
