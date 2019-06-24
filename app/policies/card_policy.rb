class CardPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def star_form?
    # @user.shop == @record.shop
    @user.shop != nil
  end

  def destroy?
    @record.user == @user
  end

  def close?
    @record.shop == @user
  end
end
