class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    return true
  end

  def destroy?
    record.user == user
  end

  def update?
    true # record.user == user
  end

  def show?
    record.user == user || record.service.user == user
  end

  def my_bookings?
    true
  end

  def my_service_bookings?
    true
  end

  def cancel_booking?
    record.user == user || record.service.user == user
  end

  def close_booking?
    record.user == user || record.service.user == user
  end

  def confirm_booking?
    record.user == user || record.service.user == user
  end
end
