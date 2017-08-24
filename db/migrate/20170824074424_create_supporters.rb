class CreateSupporters < ActiveRecord::Migration
  def change
    create_table :supporters do |t|
      t.references  :investment, null: false, foreign_key: true
      t.references  :user, null: false, foreign_key: true
      t.timestamps null: false
    end
  end
end
