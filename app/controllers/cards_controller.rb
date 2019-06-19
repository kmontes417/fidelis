class CardsController < ApplicationController
  def create
  end

  def update
  end

  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    redirect_to root_path
  end

  private

  def card_params
    params.require(:card).permit(:star_count, :status)
  end
end
