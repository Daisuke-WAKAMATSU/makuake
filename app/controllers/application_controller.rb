class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :create_planner

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in, keys: [:username, :name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :name])
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  def create_planner
    @planner = Planner.new
  end
end



