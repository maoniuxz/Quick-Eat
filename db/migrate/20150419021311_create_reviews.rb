class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :description
      t.integer :checkintime
      t.integer :waittime
      t.references :restaurant, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
