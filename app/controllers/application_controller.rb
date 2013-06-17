class ApplicationController < ActionController::Base
  protect_from_forgery



	helper_method :current_vendor

  def current_vendor 	
  	session[:vendor_id]
  	if session[:vendor_id]
		  Vendor.find(session[:vendor_id])
		end
  end

  private

  def ensure_admin
    unless current_vendor && current_vendor.admin?
      render text: 'not authorized'
    end
  end
end

