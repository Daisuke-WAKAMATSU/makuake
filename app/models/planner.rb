class Planner < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
### Association
  has_many :investments
  has_many :projects
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
