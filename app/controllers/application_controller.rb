class ApplicationController < ActionController::Base
  before_action :authenticate_user!

    # def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    # For additional in app/views/devise/registrations/edit.html.erb
    # devise_parameter_sanitizer.permit(:account_update, keys: [:username])
    # end

    # before_action :configure_permitted_parameters, if: :devise_controller?

    # protected

    # def configure_permitted_parameters
    # keys = [:shipping_address, :first_name, :last_name, :email, :phone_number]
    # devise_parameter_sanitizer.permit(:sign_up, keys: keys)
    # end
end
