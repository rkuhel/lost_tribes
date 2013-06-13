class SessionsController < ApplicationController
  def new

  end

  def create
    puts vendor = Vendor.find_by_email(params[:email]) 
    authenticated_vendor = vendor.authenticate(params[:password])
    if authenticated_vendor
    	session[:Vendor_id] = authenticated_vendor.id
    	p session
    	message = 'You are authenticated!'
    	render text: message, layout: true
    else
    	redirect_to sessions_new_path    #back to login page
    end

    def destroy
			session[:vendor_id] = nil
			p session
			redirect_to sessions_new_path
    end    
  end
end
