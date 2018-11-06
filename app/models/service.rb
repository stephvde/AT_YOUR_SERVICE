class Service < ApplicationRecord
  validates :name, :description, :category, presence: true
  belongs_to :user
  belongs_to :category
  has_many :bookings

  pg_search_scope :search_by_name_and_description,
    against: [ :name, :description ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
