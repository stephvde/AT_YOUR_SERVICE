class Booking < ApplicationRecord
  belongs_to :service
  belongs_to :user
  has_many :qas
  has_many :reviews
  has_many :booking_statuses
end
