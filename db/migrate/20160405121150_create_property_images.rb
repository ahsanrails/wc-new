class CreatePropertyImages < ActiveRecord::Migration
  def change
    create_table :property_images do |t|
      t.integer :p_listing_id

      t.timestamps null: false
    end
  end
end
