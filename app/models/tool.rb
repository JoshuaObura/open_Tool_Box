class Tool < ApplicationRecord
  has_many :bookings
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true, inclusion: {in: ["home improvement", "automotive", "gardening", "cleaning"]}
end
