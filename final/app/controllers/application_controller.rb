class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) << :username
  	devise_parameter_sanitizer.for(:sign_up) << :avatar_url
  	devise_parameter_sanitizer.for(:sign_up) << :user_school
  	devise_parameter_sanitizer.for(:sign_up) << :pri_ind
  	devise_parameter_sanitizer.for(:sign_up) << :pri_reg
  	devise_parameter_sanitizer.for(:sign_up) << :oth_ind
  	devise_parameter_sanitizer.for(:sign_up) << :oth_reg
  	devise_parameter_sanitizer.for(:sign_up) << :prev_ind

  	devise_parameter_sanitizer.for(:account_update) << :avatar_url
  	devise_parameter_sanitizer.for(:account_update) << :user_school
  	devise_parameter_sanitizer.for(:account_update) << :pri_ind
  	devise_parameter_sanitizer.for(:account_update) << :pri_reg
  	devise_parameter_sanitizer.for(:account_update) << :oth_ind
  	devise_parameter_sanitizer.for(:account_update) << :oth_reg
  	devise_parameter_sanitizer.for(:account_update) << :prev_ind


  end

end
