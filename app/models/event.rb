class Event < ApplicationRecord
  has_many :invitations
  has_many :users, through: :invitations
  belongs_to :creator, :class_name => "User"
end
