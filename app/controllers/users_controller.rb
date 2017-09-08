class UsersController < ApplicationController
  def show
  end

  def edit
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to root_path, notice:"プロフィール情報が編集されました。"
    else
      flash.now[:alert] = "プロフィール編集が失敗しました。"
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:username)
  end
end

