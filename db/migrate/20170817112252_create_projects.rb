class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.references  :planner,  null: false, foreign_key: true
      t.string      :main_title, null: false
      t.integer     :goal_price, null: false
      t.date        :end_date, null: false
      t.string      :main_image, null: false
      t.text        :main_body, null: false
      t.text        :introduction, null: false
      t.text        :intro_body, null: false
      t.string      :intro_image, null: false
      t.text        :desc_title, null: false
      t.text        :desc_body, null: false
      t.string      :desc_image, null: false
      t.text        :content_title, null: false
      t.text        :content_body, null: false
      t.string      :content_image, null: false
      t.text        :feature_title, null: false
      t.text        :feature_body, null: false
      t.string      :feature_image, null: false
      t.timestamps null: false
    end
  end
end
