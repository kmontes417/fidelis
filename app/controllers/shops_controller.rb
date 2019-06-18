class ShopsController < ApplicationController
  def index

    @shop = Shop.All
    @shops = Shop.where.not(latitude: nil, longitude: nil)

    @markers = @shops.map do |shop|
      {
        lat: shop.latitude,
        lng: shop.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { shop: shop })
      }
    end

  def show
    @shop = Shop.find params[:id]
  end

end
