class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :create_planner
  after_action  :store_location

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in, keys: [:username, :name, :image, :location, :birthday, :gender])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name, :image, :location, :birthday, :gender])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :name,:image, :location, :birthday, :gender])
  end

  def store_location
    if (request.fullpath != "/users/sign_in" &&
        request.fullpath != "/users/sign_up" &&
        request.fullpath !~ Regexp.new("\\A/users/password.*\\z") &&
        !request.xhr?) # don't store ajax calls
      session[:previous_url] = request.fullpath 
    end
  end

  def after_sign_out_path_for(resource)
    root_path
  end

  def create_planner
    @planner = Planner.new
  end
end



