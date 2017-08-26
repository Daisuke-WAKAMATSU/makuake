class Project < ActiveRecord::Base
  mount_uploader :main_image, ImageUploader
  mount_uploader :intro_image, ImageUploader
  mount_uploader :desc_image, ImageUploader
  mount_uploader :content_image, ImageUploader
  mount_uploader :feature_image, ImageUploader

  has_many :users
  belongs_to :planner
  has_many :investments
  accepts_nested_attributes_for :investments
end
