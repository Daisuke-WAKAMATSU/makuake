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

  validates :main_title, presence: true,      length: { maximum: 18 }
  validates :goal_price, presence: true,      length: { maximum: 7 }
  validates :end_date, presence: true
  validates :main_image, presence: true
  validates :introduction, presence: true,    length: { maximum: 18 }
  validates :intro_body, presence: true
  validates :intro_image, presence: true
  validates :desc_title, presence: true,      length: { maximum: 18 }
  validates :desc_body, presence: true
  validates :desc_image, presence: true
  validates :content_title, presence: true,   length: { maximum: 18 }
  validates :content_body, presence: true
  validates :content_image, presence: true
  validates :feature_title, presence: true,   length: { maximum: 18 }
  validates :feature_body, presence: true
  validates :feature_image, presence: true


  def clear_rate
    self.investments.map{|investment|(investment.supporters.count)*(investment.price)}.sum/(self.goal_price.to_i).to_f*100
  end

  def sum_price
    self.investments.map{|investment|(investment.supporters.count)*investment.price}.sum
  end
end
