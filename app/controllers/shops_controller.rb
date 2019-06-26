class ShopsController < ApplicationController
  def index
    @shops = policy_scope(Shop)
    if params[:category] == nil
    else
      @categories = Category.where(name: params[:category])
      @shops = @shops.where(category: @categories)
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
    @cards = Card.all
    @user = current_user
  end

  def show
    @shop = Shop.find params[:id]
    @card = Card.where(shop: @shop, user: current_user, status: "pending")
    # @cards = Card.where(shop: @shop, user: current_user)
    @cards = Card.where(shop: @shop, user: current_user, status: "completed")
    @promotions = Promotion.all

    @marker = [{
      lat: @shop.latitude,
      lng: @shop.longitude,
      infoWindow: render_to_string(partial: "infowindow", locals: { shop: @shop })
    }]
    authorize @shop
  end

  private

  def shop_params
    params.require(:shop).permit(:name, :description, :address, :photo)
  end
end
