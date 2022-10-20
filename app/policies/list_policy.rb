class ListPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!

    def resolve
      scope.all
      # scope.where(user: user) # Si el User puede solo ver sus listas
    end
  end
    #  def my_lists?
      #  true
    #  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
