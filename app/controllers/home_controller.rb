class HomeController < ApplicationController
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
end
