class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string      :title, null: false, unique: true
      t.string      :image
      t.text        :body
      t.references  :planner,  null: false, foreign_key: true
      t.timestamps null: false
    end
  end
end
