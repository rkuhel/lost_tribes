class ApplicationController < ActionController::Base
  protect_from_forgery

helper_method :current_vendor

  def current_user
  	if session[:vendor_id]
		  Vendor.find(session[:vendor_id])
		end
  end


end
