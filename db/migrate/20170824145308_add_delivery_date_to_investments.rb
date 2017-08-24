class AddDeliveryDateToInvestments < ActiveRecord::Migration
  def change
    add_column :investments, :delivery_date, :date, null: false
  end
end
