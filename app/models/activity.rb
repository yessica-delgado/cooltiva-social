class Activity < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :bookings
  belongs_to :user
end
