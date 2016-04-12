class AddPlanIdToRegistrations < ActiveRecord::Migration
  def change
    add_column :registrations, :plan_id, :integer
  end
end
