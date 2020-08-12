class PastController < ApplicationController
  def index
    @past = Event.past
  end
end
