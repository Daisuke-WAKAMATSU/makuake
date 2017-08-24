class Investment < ActiveRecord::Base
  has_many :users, through: :supporters
  belongs_to :project
  belongs_to :planner
  has_many :supporters
end
