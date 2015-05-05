

class RestaurantsController < ApplicationController
  def index
  #@restaurants = Restaurant.all
if params[:search]

  @long_ar = Array.new
  @lat_ar = Array.new
  @locations = Array.new
  l=1
      @restaurants = Restaurant.near(params[:search]+" Philadelphia", 0.1, order: 'distance')
      @restaurants.each do |i|
        @long_ar << i.longitude
        @lat_ar << i.latitude
        @locations << [i.businessName, i.latitude, i.longitude, l]
        l = l+1
      end

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
