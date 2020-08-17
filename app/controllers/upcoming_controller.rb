class UpcomingController < ApplicationController
  def index
    @upcoming = current_user.attended_events.upcoming
  end
end
