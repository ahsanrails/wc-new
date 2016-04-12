class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :p_type
      t.string :bathroom
      t.string :bedroom
      t.string :rent

      t.timestamps null: false
    end
  end
end
