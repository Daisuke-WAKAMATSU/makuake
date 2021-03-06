class Investment < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  has_many :users, through: :supporters
  belongs_to :project
  belongs_to :planner
  has_many :supporters

  validates :title, presence: true,           length: { maximum: 40 }
  validates :body, presence: true
  validates :price, presence: true,           length: { maximum: 6 }
  validates :image, presence: true
  validates :stock, presence: true,           length: { maximum: 3 }
  validates :delivery_date, presence: true,   length: { maximum: 10 }
end
