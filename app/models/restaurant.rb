class Restaurant < ActiveRecord::Base
require 'csv'

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|

      restaurant_hash = row.to_hash # exclude the price field
      restaurant = Restaurant.where(id: restaurant_hash["id"])

      if restaurant.count == 1
        restaurant.first.update_attributes(restaurant_hash)
      else
        Restaurant.create!(restaurant_hash)
      end # end if 
    end # end CSV.foreach
  end # end self.import(file)
end
