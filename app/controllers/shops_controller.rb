class ShopsController < ApplicationController
  def index
    # raise
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
  end
end
