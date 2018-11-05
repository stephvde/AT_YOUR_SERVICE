class Service < ApplicationRecord
  validates :description, presence: true
  belongs_to: user
  has_many: bookings
end
