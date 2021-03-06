class EventsController < ApplicationController
  before_action :require_signin, except: [:index]

  def index
    @events = Event.all.order('date asc')
    @upcoming = Event.upcoming
    @past = Event.past
  end

  def show
    @event = Event.find(params[:id])
    @attendees = @event.attendees
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to @event, notice: 'Event details successfully updated!'
    else
      render 'edit'
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      redirect_to @event
      flash[:notice] = 'Congrats! A new event created!'
    else
      flash.now[:alert] = 'Ooops! Something wrong!'
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :date)
  end
end
