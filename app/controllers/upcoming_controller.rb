class UpcomingController < ApplicationController
  def index
    @upcoming = Event.upcoming
  end
end
