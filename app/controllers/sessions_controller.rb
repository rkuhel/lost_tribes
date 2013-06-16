class SessionsController < ApplicationController
  def new

  end



  def create
    vendor = Vendor.find_by_email(params[:email])
    authenticated_vendor = vendor.authenticate(params[:password])
    if authenticated_vendor
      session[:vendor_id] = authenticated_vendor.id
      message = 'You are authenticated!'
       # render text: message, layout: true
      redirect_to "/sessions"
    else
      redirect_to sessions_new_path    #back to login page
    end
  end

  def destroy
    session[:vendor_id] = nil
    redirect_to "/"
  end

  def index
    #events
    @events = Event.all

    #new customers
    @customers = Customer.all

    #display vendors
    @vendors = Vendor.all

    #form to create new customer
    @customer = Customer.new
  end
end
