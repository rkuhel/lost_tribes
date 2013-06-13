class HomeController < ApplicationController
<<<<<<< HEAD
	def index
		puts 'in homecontroller'

		#events 
		@events = Event.all

		#new customers 
		@customers = Customer.all

		#display vendors
		@vendors = Vendor.all

		#form to create new customer 
		@customer = Customer.new 
	end			
=======
  def index
  	# render
  end

>>>>>>> cdb5c927f9b853cd5afa5f29b75b671b233893ac
end
