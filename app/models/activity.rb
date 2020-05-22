class Activity < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :bookings
  belongs_to :user
  geocoded_by :activity_address
  after_validation :geocode, if: :will_save_change_to_address?
end
