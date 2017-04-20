class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

# Added method to add extra fields for user registration
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :role, :position])
  end
end

# http://stackoverflow.com/questions/16297797/add-custom-field-column-to-devise-with-rails-4
# https://github.com/plataformatec/devise#strong-parameters
