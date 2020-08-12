class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  validates :title, :description, presence: true
  validates :title, uniqueness: true
  validates :description, length: {in: 2..500}
end
