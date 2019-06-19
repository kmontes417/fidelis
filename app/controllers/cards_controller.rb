class CardsController < ApplicationController
  def show
  end

  def create
    @user = User.find(params[:user_id])
    @shop = Shop.find(current_user.shop_id)
    @card = Card.new(@user, @shop)
    @card.save
    redirect_to root_path
  end

  def update
    @user = User.find(params[:user_id])
    @shop = Shop.find(current_user.shop_id)
    @card = Card.find(@user, @shop)

    @card.update(star_count[params[:star_count] + @card.star_count])
    redirect_to root_path
  end

  def destroy
    @card = Card.find params[:id]
    @card.destroy
    redirect_to root_path
  end

  def complete
    @card = Card.find(params[:id])
    if @card.status == "completed"
      render :new
    end
  end

  private

  def card_params
    params.require(:card).permit(:star_count, :status)
  end
end
