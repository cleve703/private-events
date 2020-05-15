class Invitation < ApplicationRecord
  belongs_to :attendee, class_name: "User"
  belongs_to :attended_event, class_name: "Event"
  validates :attendee, presence: true
  validates :attended_event, presence: true
end
