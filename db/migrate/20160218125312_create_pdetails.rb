class CreatePdetails < ActiveRecord::Migration
  def change
    create_table :pdetails do |t|
      t.string :ad_type
      t.string :property_name
      t.string :property_type
      t.string :location
      t.string :city
      t.string :area
      t.string :rent
      t.string :bathroom
      t.string :bedroom
      t.string :size
      t.string :price
      t.string :owner_name
      t.string :property_status
      t.date :add_date

      t.timestamps null: false
    end
  end
end
