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

  def star_form
    @card = Card.new
    @scanned_user = User.find params[:id]
    @completed_cards = @scanned_user.cards.where(status: "completed")
  end

  def add_stamp
    UpdateCardService.new(params[:id], current_user.shop.id, params[:card][:star_count]).call
  end

  def close
    @card = Card.find params[:id]
    redirect_to dashboard_path if current_user.shop != @card.shop
    @card.update(status: "closed")
  end

  private

  def star_params
    params.require(:card).permit(:star_count, :id)
  end
end
