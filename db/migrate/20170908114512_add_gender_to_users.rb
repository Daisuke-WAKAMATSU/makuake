class AddGenderToUsers < ActiveRecord::Migration
  def change
    add_column :users, :location, :text
    add_column :users, :birthday, :date
    add_column :users, :gender, :string
  end
end
