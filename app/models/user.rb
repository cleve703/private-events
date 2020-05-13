class User < ApplicationRecord
  has_many :invitations
  has_many :events, :foreign_key => "creator", :class_name => "Event"
end
