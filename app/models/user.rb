class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 2 }
  has_many :events, foreign_key: "creator_id", class_name: "Event", dependent: :destroy
end
