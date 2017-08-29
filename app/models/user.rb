class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :supporters
  has_many :projects
  has_many :investments, through: :supporters
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
