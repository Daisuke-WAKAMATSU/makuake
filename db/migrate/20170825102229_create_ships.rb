class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.references  :supporters, null: false
      t.string      :name, null: false
      t.integer     :gender, null: false
      t.date        :birthday, null: false
      t.integer     :mobile, null: false
      t.integer     :postal_code, null: false
      t.string      :region, null: false
      t.string      :city, null: false
      t.integer     :block, null: false
      t.string      :building
      t.timestamps   null: false
    end
  end
end
