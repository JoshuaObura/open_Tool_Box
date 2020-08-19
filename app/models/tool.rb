class Tool < ApplicationRecord
  has_many :bookings
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true, inclusion: {in: ["Home Improvement", "Automotive", "Gardening", "Cleaning"]}
  validates :address, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
