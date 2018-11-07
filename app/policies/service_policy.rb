class ServicePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    return true
  end

  def new?
    true
  end

  def destroy?
    record.user == user
  end

  def update?
    record.user == user
  end

  def my_services?
    true
  end

end
