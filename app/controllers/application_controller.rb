class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  helper_method :current_admin
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :name, :admin, :state])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password, :name, :admin, :state])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :current_password, :name, :admin, :state])
  end
end
