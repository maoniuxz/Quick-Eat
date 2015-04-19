class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :address
      t.string :businessName
      t.string :photoURL
      t.string :city
      t.string :state
      t.string :url
      t.integer :reviewCount
      t.float :stars
      t.float :longitude
      t.float :latitude

      t.timestamps null: false
    end
  end
end
