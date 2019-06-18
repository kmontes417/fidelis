class ShopsController < ApplicationController
<<<<<<< HEAD
  def index
    @shops = Shop.where.not(latitude: nil, longitude: nil)

    @markers = @shops.map do |shop|
      {
        lat: shop.latitude,
        lng: shop.longitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { shop: shop })
      }
    end
=======
  def show
    @shop = Shop.find params[:id]
  end

  def index
    # if params["search"].present?
    # else
      @shop = Shop.All
    # end
>>>>>>> master
  end
end
