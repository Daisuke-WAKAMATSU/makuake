class InvestmentsController < ApplicationController
  def show
    @investment = Investment.find(params[:id])
  end

end
