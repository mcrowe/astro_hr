class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter do
    if current_manager != nil
     :authenticate_manager!  
    else
     :authenticate_vendor!
    end
  end

  def after_sign_in_path_for(resource)
  stored_location_for(resource) ||
    if resource.is_a?(Vendor)
      vendor_path(@vendor)
    elsif resource.is_a?(Manager)
      return company_path(current_manager.company)
    else
      super
    end
end

end
