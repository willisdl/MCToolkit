class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_action :default_admin


  $rolelist = Role.all
  $current_ex = CurrentExercise.first
  if $current_ex != nil
    $unitlist = getunits
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :lastname, :firstname, :rank, :role) }
    devise_parameter_sanitizer.for(:update) do |u|
      u.permit(:firstname, :lastname, :rank, :role, :email, :password, :password_confirmation)
    end
  end

  def getunits
    ex = Exercise.where(name: $current_ex)
    units = ex.units
  end

  def default_admin
    if Mct.where(email: 'admin@admin').exists? != true
      p 'Create admin user'
      admin = Mct.new(:email => 'admin@admin', :password => 'password', :password_confirmation => 'password', :role => 'admin', :lastname => 'admin', :firstname => 'admin', :rank => 'NA')
      p 'Save admin user'
      #admin.confirm!
      admin.save(:validate => false)
      # p 'Done with admin'

    end
  end

end
