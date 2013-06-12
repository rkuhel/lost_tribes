class SessionsController < ApplicationController
  def new

  end

  def create
    puts Vendor = Vendor.find_by_email(params[:email]) 
    authenticated_Vendor = Vendor.authenticate(params[:password])
    if authenticated_Vendor
    	session[:Vendor_id] = authenticated_Vendor.id
    	p session
    	message = 'You are authenticated!'
    	render text: message, layout: true
    else
    	redirect_to sessions_new_path    #back to login page
    end

    def destroy
			session[:Vendor_id] = nil
			p session
			redirect_to sessions_new_path
    end    
  end
end
