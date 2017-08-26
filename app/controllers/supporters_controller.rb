class SupportersController < ApplicationController
  def new
    @supporter = Supporter.new
  end

  def create
    @supporter  = current_user.supporters.new(supporter_params)
    if @supporter.save
      redirect_to root_path, notice: "ご支援ありがとうございました。"
    else
      redirect_to root_path
    end
  end

  private
  def supporter_params
    params.require(:supporter).permit(:name, :gender, :birthday, :mobile, :postal_code, :region, :city, :block, :building).merge(investment_id: params[:investment_id])
  end
end
