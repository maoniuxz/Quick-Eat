class RestaurantsController < ApplicationController
  def index
  @restaurants = Restaurant.all
  end

  def import
    Restaurant.import(params[:file])
    redirect_to root_url, notice: "Restaurants imported."
  end
end
