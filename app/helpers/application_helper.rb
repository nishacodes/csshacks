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


end
