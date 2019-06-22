class ShopsController < ApplicationController
  def index
    if params[:category] == nil
      @shops = Shop.all
    else
      @categories = Category.where(name: params[:category])
      @shops = Shop.where(category: @categories)
  end

    @shops = @shops.where.not(latitude: nil, longitude: nil)
    @categories = Category.all
    @markers = @shops.map do |shop|
      {
        lat: shop.latitude,
        lng: shop.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { shop: shop })
      }
    end
  end

  def show
    @shop = Shop.find params[:id]
    @card = Card.where(shop: @shop, user: current_user, status: "pending")
    @promotions = Promotion.all

    @marker = [{
      lat: @shop.latitude,
      lng: @shop.longitude,
      infoWindow: render_to_string(partial: "infowindow", locals: { shop: @shop })
    }]
  end

  def edit
    @shop = Shop.find params[:id]
  end

  def update
    @shop = Shop.find params[:id]
    if @shop.update(shop_params)
      redirect_to dashboard_path
    else
      render :edit
    end
  end

  private

  def shop_params
    params.require(:shop).permit(:name, :description, :address, :photo)
  end
end
