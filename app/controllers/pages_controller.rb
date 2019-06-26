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
    @scanned_user = User.find_by(token: params[:token])
    @completed_cards = @scanned_user.cards.where(status: "completed")
    @user_card = Card.where(user_id: @scanned_user, shop_id: current_user.shop, status: "pending").first
    # authorize @user_card
    authorize @card
  end

  def add_stamp
    @scanned_user = User.find_by(token: params[:token])
    UpdateCardService.new(@scanned_user, current_user.shop, params[:card][:star_count]).call
    redirect_to dashboard_path
  end

  def close
    @card = Card.find params[:id]
    redirect_to dashboard_path if current_user.shop != @card.shop
    @card.update(status: "closed")
    authorize @card
  end

  private

  def star_params
    params.require(:card).permit(:star_count, :id, :token)
  end
end
