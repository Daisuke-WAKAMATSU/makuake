class InvestmentsController < ApplicationController
  def show
    @investment = Investment.find(params[:id])
  end

  def create
  end
end
