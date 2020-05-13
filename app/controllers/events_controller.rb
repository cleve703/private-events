class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      @events = Event.all
      render 'index'
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def destroy
  end

  private

    def event_params
      params.require(:event).permit(:description, :location)
    end

end
