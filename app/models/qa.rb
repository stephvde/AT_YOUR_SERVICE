class Qa < ApplicationRecord
  belongs_to :booking
  belongs_to :user

  def creator
    if user.present?
      user.email
    else
      "not given"
    end
  end
end
