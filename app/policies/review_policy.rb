class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
      true
    end

    def index?
      true
    end

    def update?
      user_is_owner?
    end

    private

    def user_is_owner?
      record.user == user
    end
end
