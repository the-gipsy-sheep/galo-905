class GiftPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
      # scope.where(user: user) # If users can only see their gift
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    record.list.user == user
    # record: the gift passed to the `authorize` method in controller
    # user: the `current_user` signed in with Devise
  end

  def destroy?
    record.list.user == user
  end
end
