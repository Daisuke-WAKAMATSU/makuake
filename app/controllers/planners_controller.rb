class PlannersController < ApplicationController
  before_action :set_planner, only: [:update, :edit, :password]

  def show
  end

  def edit
  end

  def update
    if @planner.update(planner_params)
      sign_in(@planner, bypass: true)
      redirect_to root_path, notice:"企画者プロフィールが編集されました。"
    else
      flash.now[:alert] = "プロフィール編集が失敗しました。"
      render :edit
    end
  end

  def password
  end

  private
  def planner_params
    params.require(:planner).permit(:name, :image, :email, :location, :birthday, :password, :password_confirmation)
  end

  def set_planner
    @planner = Planner.find(params[:id])
    @hold_planner = Planner.find(params[:id])
  end
end

