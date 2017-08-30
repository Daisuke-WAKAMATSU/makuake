class ChangeDatatypePostalCodeOfSupporters < ActiveRecord::Migration
  def change
    change_column :supporters, :postal_code, :string
  end
end
