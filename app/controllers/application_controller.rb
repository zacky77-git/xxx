class ApplicationController < ActionController::Base
   # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
  
   protect_from_forgery :except => [:sample]
  

  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :authenticate_user!
  


  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
  end
end
