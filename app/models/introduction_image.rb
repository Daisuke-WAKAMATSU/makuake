class IntroductionImage < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :project
end
