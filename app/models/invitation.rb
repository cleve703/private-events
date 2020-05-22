class Invitation < ApplicationRecord
  belongs_to :attendee, class_name: "User"
  belongs_to :attended_event, class_name: "Event"
  validates :attendee, presence: true, uniqueness: {scope: :attended_event, message: "user is already an attendee for that event"}
  validates :attended_event, presence: true
end
