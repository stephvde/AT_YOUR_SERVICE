class ServicePolicy < ApplicationPolicy
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
    record.user == user
  end
  # def my_services?
  #   true
  #   # record.user == user
  # end

end
