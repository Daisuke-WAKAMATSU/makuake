class Supporter < ActiveRecord::Base
  belongs_to :investment
  belongs_to :user
end
