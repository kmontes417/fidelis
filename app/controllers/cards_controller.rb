class CardsController < ApplicationController
  def show
  end

  def new
    @shop = Shop.find(params[:shop_id])
    @card = Card.new
  end

  def create
    @card = Card.new
    @card.shop_id = params[:shop_id]
    @card.user = current_user
    if @card.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    @card = Card.find(params[:id])
  end

  def update
    if @card.update(card_params)
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  def destroy
    @card = Card.find params[:id]
    @card.destroy
    redirect_to dashboard_path
  end

  def confirm
    @card = Card.find params[:id]
    @card.status = "confirmed"
    @card.save
    redirect_to dashboard_path
  end

  private

  def card_params
    params.require(:card).permit(:checkin)
  end
end
