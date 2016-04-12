class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :full_name
      t.string :company
      t.string :contact

      t.timestamps null: false
    end
  end
end
