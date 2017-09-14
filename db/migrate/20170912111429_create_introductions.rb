class CreateIntroductions < ActiveRecord::Migration
  def change
    create_table :introductions do |t|
      t.references  :project, null: false, foreign_key: true
      t.integer     :intro_index, null: false
      t.text      :title, null: false
      t.timestamps null: false
    end
  end
end
