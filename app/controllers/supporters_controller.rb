class SupportersController < ApplicationController
  def new
    @Supporter = Supporter.new
  end
end
