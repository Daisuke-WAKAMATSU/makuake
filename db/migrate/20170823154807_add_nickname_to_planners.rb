class AddNicknameToPlanners < ActiveRecord::Migration
  def change
    add_column :planners, :name, :string, null: false
    add_column :planners, :image, :string
    add_column :planners, :location, :text
    add_column :planners, :birthday, :date
  end
end
