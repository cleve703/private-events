class InvitationsController < ApplicationController
  def create
    @event = Event.find_by(id: invitation_params[:event].to_i)
    @attendee = User.find_by(username: invitation_params[:attendee])
    begin
      @event.attendees << @attendee
    rescue
      redirect_back(fallback_location: root_path) and return
    end
    redirect_back(fallback_location: root_path)
  end

  private

  def invitation_params
    params.require(:invitation).permit(:event, :attendee)
  end

end
