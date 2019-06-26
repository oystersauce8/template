# :nocov:
class PagePolicy < ApplicationPolicy
  def test_pundit?
    nil
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
# :nocov:

