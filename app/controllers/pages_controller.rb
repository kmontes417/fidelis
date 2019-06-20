class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    redirect_to dashboard_path
  end

  def dashboard
    @user = current_user
    @promotions = Promotion.all
    @cards = Card.all
    @shops = Shop.all
  end

  def add_stamp
    UpdateCardService.call(params[:id], current_user.shop_id, 1)
    redirect_to dashboard_path
  end
end
