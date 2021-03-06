class Activity < ApplicationRecord
  geocoded_by :activity_address
  after_validation :geocode, if: :will_save_change_to_activity_address?
  has_many :reviews, dependent: :destroy
  has_many :bookings, dependent: :destroy
  belongs_to :user
  belongs_to :category
  has_many_attached :photos
end
