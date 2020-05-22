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
    @event = Event.find(params[:id])
    @invitation = Invitation.new
    if current_user.nil?
      @authorized_inviter = false
    elsif @event.creator_id == current_user.id
      @authorized_inviter = true
    else 
      @authorized_invter = false
    end
  end

  def edit
  end

  def destroy
  end

  private

    def event_params
      params.require(:event).permit(:date, :description, :location)
    end

end
