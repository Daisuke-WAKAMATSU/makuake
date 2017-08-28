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

  def clear_rate
    self.investments.map{|investment|(investment.supporters.count)*(investment.price)}.sum/self.goal_price.to_f*100
  end

  def sum_price
    self.investments.map{|investment|(investment.supporters.count)*investment.price}.sum
  end
end
