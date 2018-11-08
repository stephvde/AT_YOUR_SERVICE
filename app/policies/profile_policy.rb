class ProfilePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def show?
      record.user == user
    end

    def create?
      true
    end

    def edit
      record.user == user
    end

    def update?
      record.user == user
    end


  end
end
