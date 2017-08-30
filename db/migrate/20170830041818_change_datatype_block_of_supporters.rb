class ChangeDatatypeBlockOfSupporters < ActiveRecord::Migration
  def change
    change_column :supporters, :block, :string
  end
end
