class PastController < ApplicationController
  def index
    @past = current_user.attended_events.past
  end
end
