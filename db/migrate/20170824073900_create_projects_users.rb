class CreateProjectsUsers < ActiveRecord::Migration
  def change
    create_table :projects_users do |t|
      t.references  :project, null: false, foreign_key: true
      t.references  :user, null: false, foreign_key: true
      t.timestamps null: false
    end
  end
end
