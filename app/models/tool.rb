class Tool < ApplicationRecord
  has_many :bookings
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true, inclusion: {in: ["Home Improvement", "Automotive", "Gardening", "Cleaning"]}
end
