class ShopsController < ApplicationController
  def show
    @shop = Shop.find params[:id]
  end

  def index
    # if params["search"].present?
    # else
      @shop = Shop.All
    # end
  end
end
