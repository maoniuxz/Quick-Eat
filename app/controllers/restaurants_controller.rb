class RestaurantsController < ApplicationController
  def index
  #@restaurants = Restaurant.all
if params[:search]
      @restaurants = Restaurant.near(params[:search]+" Philadelphia", 0.1, order: 'distance')
      #@restaurants = Restaurant.search(params[:search]).order("created_at DESC")
    else
      @restaurants = Restaurant.order("created_at DESC")

  end
  end

  def import
    Restaurant.import(params[:file])
    redirect_to root_url, notice: "Restaurants imported."
  end

def new
  @restaurants = Restaurant.all
end
end
