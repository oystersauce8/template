class PagePolicy < ApplicationPolicy
  def verify_pundit?
    nil
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
