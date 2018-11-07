class ProfilePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def show?
      true
    end

    def create?
      true
    end

    def edit
      true
    end

    def update?
      record.user == user
    end


  end
end
