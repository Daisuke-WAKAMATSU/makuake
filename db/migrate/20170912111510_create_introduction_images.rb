class CreateIntroductionImages < ActiveRecord::Migration
  def change
    create_table :introduction_images do |t|
      t.references  :project, null: false, foreign_key: true
      t.integer     :intro_index, null: false
      t.string        :image, null: false
      t.timestamps null: false
    end
  end
end
