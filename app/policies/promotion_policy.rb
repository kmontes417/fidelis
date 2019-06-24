class PromotionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    @record.shop == @user.shop
  end

  def new?
    create? ###
  end

  def update?
    @record.shop == @user.shop
    # @record.shop.user == @user
  end

  def edit?
    true
  end

  def destroy?
    @record.shop == @user.shop
  end
end
