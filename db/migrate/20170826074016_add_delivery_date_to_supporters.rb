class AddDeliveryDateToSupporters < ActiveRecord::Migration
  def change
    add_column :supporters, :name, :string, null: false
    add_column :supporters, :gender, :integer, null: false
    add_column :supporters, :birthday, :date, null: false
    add_column :supporters, :mobile, :integer, null: false
    add_column :supporters, :postal_code, :integer, null: false
    add_column :supporters, :region, :string, null: false
    add_column :supporters, :city, :string, null: false
    add_column :supporters, :block, :integer, null: false
    add_column :supporters, :building, :string
  end
end
