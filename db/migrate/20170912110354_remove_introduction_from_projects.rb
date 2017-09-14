class RemoveIntroductionFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :introduction, :text
    remove_column :projects, :intro_body, :text
    remove_column :projects, :intro_image, :string
    remove_column :projects, :desc_title, :text
    remove_column :projects, :desc_body, :text
    remove_column :projects, :desc_image, :string
    remove_column :projects, :content_title, :text
    remove_column :projects, :content_body, :text
    remove_column :projects, :content_image, :string
    remove_column :projects, :feature_title, :text
    remove_column :projects, :feature_body, :text
    remove_column :projects, :feature_image, :string
  end
end
