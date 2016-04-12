class CreatePListings < ActiveRecord::Migration
  def change
    create_table :p_listings do |t|
      t.string :display_type
      t.string :use_type
      t.string :property_type
      t.string :title
      t.string :street
      t.string :house_no
      t.string :city_place
      t.string :zip_code
      t.string :flat_size
      t.string :room
      t.string :bathroom
      t.string :total_rent
      t.string :date
      t.string :description
      t.string :longitude
      t.string :latitude

      t.timestamps null: false
    end
  end
end
