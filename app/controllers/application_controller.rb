class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: devise_controller?
  
  protected
  	  # white-listing parameters. Securely allow people to submit things thru the web
	  def configure_permitted_parameters
	  	devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :stripe_card_token, :email, :password, :password_confirmation)}
	  end
end
