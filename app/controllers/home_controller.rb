class HomeController < ApplicationController
	before_filter :ensure_admin, only: [:destroy, :show, :edit, :create]
	def index
		puts 'in homecontroller'
		@events = Event.all
		@vendors = Vendor.all 
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
