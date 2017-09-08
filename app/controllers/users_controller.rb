class UsersController < ApplicationController
  before_action :set_user, only: [:update, :edit]
  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to root_path, notice:"プロフィール情報が編集されました。"
    else
      flash.now[:alert] = "プロフィール編集が失敗しました。"
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :image, :email)
  end

  def set_user
    @user = User.find(params[:id])
    @hold_user = User.find(params[:id])
  end
end

