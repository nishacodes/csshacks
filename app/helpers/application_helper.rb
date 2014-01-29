module ApplicationHelper
  # before_filter :configure_permitted_parameters, if: :devise_controller?
  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end
 
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password, :password_confirmation) } # The :firstname and :lastname are my custom fields.
  end

  # protect_from_forgery with: :exception
end
