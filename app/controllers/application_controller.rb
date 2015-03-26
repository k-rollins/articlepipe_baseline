class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter do
    resource = controller_name.singularize.to_sym
    method = "#{resource}_params"
    params[resource] &&= send(method) if respond_to?(method, true)
  end

  #,ActiveModel::ForbiddenAttributesError

  rescue_from CanCan::AccessDenied  do |exception|
     if current_user
       redirect_to root_path, :alert => "You don't have access to this resource"
     else
       flash[:alert] = "Please log in"
       redirect_to(:controller => 'devise/sessions', :action => 'new')
     end 
   end
end
