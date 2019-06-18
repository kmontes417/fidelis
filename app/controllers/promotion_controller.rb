class PromotionController < ApplicationController

  def new
    @shop = Shop.find(params[:shop_id])
    @promotion = Promotion.new
  end

  def create
    @shop = Shop.find(params[:shop_id])
    @promotion = Promotion.new(promotion_params)
    @promotion.shop = @shop
    if @promotion.save
      redirect_to shop_path(@shop)
    else
      render :new
    end
  end

  def edit
    @promotion = Promotion.find(params[:id])
  end

  def update
    if @promotion.update(promotion_params)
      redirect_to shop_path
    else
      render :edit
    end
  end

  def destroy
    @promotion = Promotion.find params[:id]
    @promotion.destroy
    redirect_to shop_path
  end

  private

  def promotion_params
    params.require(:promotion).permit(:description, :name)
  end
end
