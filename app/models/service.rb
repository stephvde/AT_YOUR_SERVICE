class Service < ApplicationRecord
  validates :name, :description, :category, presence: true
  belongs_to :user
  belongs_to :category
  has_many :bookings

end
