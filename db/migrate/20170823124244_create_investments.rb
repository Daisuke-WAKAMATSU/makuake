class CreateInvestments < ActiveRecord::Migration
  def change
    create_table :investments do |t|
      t.references  :project, null: false, foreign_key: true
      t.string      :title, null: false
      t.text        :body, null: false
      t.integer     :price, null: false
      t.string      :image, null: false
      t.string      :stock, null: false
      t.timestamps null: false
    end
  end
end


