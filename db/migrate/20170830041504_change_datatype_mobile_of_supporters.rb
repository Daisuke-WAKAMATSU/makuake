class ChangeDatatypeMobileOfSupporters < ActiveRecord::Migration
  def change
    change_column :supporters, :mobile, :string
  end
end
