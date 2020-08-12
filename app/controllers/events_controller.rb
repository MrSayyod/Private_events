class EventsController < ApplicationController
  def index
    @events = Event.all.order('date desc')
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
  end



  private

  def event_params
    params.require(:event).permit(:title, :description, :date)
  end
end
