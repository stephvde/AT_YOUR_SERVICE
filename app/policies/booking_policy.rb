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




end
