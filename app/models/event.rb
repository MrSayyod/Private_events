class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :attendances, foreign_key: "attended_event_id"
  has_many :attendees, through: :attendances, source: :attendee
  validates :title, :description, presence: true
  validates :title, uniqueness: true
  validates :description, length: {in: 2..500}
end
