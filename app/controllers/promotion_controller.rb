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
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    @promotion = Promotion.find(params[:id])
    @shop = current_user.shop
  end

  def update
    @promotion = Promotion.find(params[:id])
    if @promotion.update(promotion_params)
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  def destroy
    @promotion = Promotion.find params[:id]
    @promotion.destroy
    redirect_to dashboard_path
  end

  private

  def promotion_params
    params.require(:promotion).permit(:description, :name)
  end
end
