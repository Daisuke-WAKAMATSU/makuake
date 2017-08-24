class Investment < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  has_many :users, through: :supporters
  belongs_to :project
  belongs_to :planner
  has_many :supporters
end
