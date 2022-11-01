class UserPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def follow?
    true
  end

  def unfollow?
    true
  end

  def followers?
    true
  end

  def followees?
    true
  end

end
