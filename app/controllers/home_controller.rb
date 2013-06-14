class HomeController < ApplicationController
	before_filter :ensure_admin, only: [:destroy, :show, :edit, :create]
	def index
		puts 'in homecontroller'

		#events 
		@events = Event.all
		
		#new customers 


		#display vendors
		@vendors = Vendor.all

		#form to create new customer 
		@customer = Customer.new 
	end			

	def create 
		customer = Customer.new(params[:customer])
		if vendor.save!
			puts 'success!' 
			redirect_to '/'
		else 
			puts "error"
		end
	end
end
