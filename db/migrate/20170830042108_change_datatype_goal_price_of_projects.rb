class ChangeDatatypeGoalPriceOfProjects < ActiveRecord::Migration
  def change
    change_column :projects, :goal_price, :string
  end
end
