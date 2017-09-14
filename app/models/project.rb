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
  has_many :introductions
  accepts_nested_attributes_for :introductions
  has_many :introduction_bodies
  accepts_nested_attributes_for :introduction_bodies
  has_many :introduction_images
  accepts_nested_attributes_for :introduction_images


  validates :main_title, presence: true,      length: { maximum: 50 }
  validates :goal_price, presence: true,      length: { maximum: 7 }
  validates :end_date, presence: true
  validates :main_image, presence: true

  acts_as_ordered_taggable_on :genre

  def clear_rate
    self.investments.map{|investment|(investment.supporters.count)*(investment.price)}.sum/(self.goal_price.to_i).to_f*100
  end

  def sum_price
    self.investments.map{|investment|(investment.supporters.count)*investment.price}.sum
  end
end
