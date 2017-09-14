class CreateIntroductionBodies < ActiveRecord::Migration
  def change
    create_table :introduction_bodies do |t|
      t.references  :project, null: false, foreign_key: true
      t.integer     :intro_index, null: false
      t.text      :body, null: false
      t.timestamps null: false
    end
  end
end
