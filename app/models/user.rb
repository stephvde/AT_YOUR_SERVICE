class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :buyer
  has_one :provider
  has_one :profile

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :services

  has_many :qas

  def has_profile?
    profile.present?
  end


end
