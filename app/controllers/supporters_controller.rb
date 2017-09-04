class SupportersController < ApplicationController
  before_action :set_investment, only: [:new, :create]

  def new
    @supporter = @investment.supporters.new
  end

  def create
    @supporter  = current_user.supporters.new(supporter_params)
    if @supporter.save
      redirect_to root_path, notice: "ご支援ありがとうございました。"
    else
      flash.now[:alert] = "未入力項目があります。"
      render :new
    end
  end

  private
  def supporter_params
    params.require(:supporter).permit(:name, :gender, :birthday, :mobile, :postal_code, :region, :city, :block, :building).merge(investment_id: params[:investment_id])
  end

  def set_investment
    @investment = Investment.find(params[:investment_id])
  end
end
