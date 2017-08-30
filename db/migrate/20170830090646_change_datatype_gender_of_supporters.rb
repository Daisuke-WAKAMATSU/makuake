class ChangeDatatypeGenderOfSupporters < ActiveRecord::Migration
  def change
    change_column :supporters, :gender, :string
  end
end
