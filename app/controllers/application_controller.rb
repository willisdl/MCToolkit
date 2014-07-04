class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :set_roles, :configure_permitted_parameters, if: :devise_controller?


  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :lastname, :firstname, :rank, :role) }
    devise_parameter_sanitizer.for(:update) do |u|
      u.permit(:firstname, :lastname, :rank, :role, :email, :password, :password_confirmation)
    end
  end

  def set_roles
    @roles = Role.all
  end

end
