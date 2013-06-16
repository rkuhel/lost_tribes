class HomeController < ApplicationController
	before_filter :ensure_admin, only: [:destroy, :show, :edit, :create]
	def index
		@events = Event.all
		@vendors = Vendor.all 
		@customer = Customer.new 

		maps = Geocoder.search("New York, NY")
    lat_lng = maps.first.data["geometry"]['location']
    @map_lat = lat_lng["lat"]
    @map_lng = lat_lng["lng"]

    @locations = []

    @vendors.each do |vendor| 
        address_tmp = "#{vendor.address}, New York, NY"
        @marker = Geocoder.search(address_tmp, :timeout => 7)
        mark_lat = @marker.first.data["geometry"]['location']['lat']
        mark_lng = @marker.first.data["geometry"]['location']['lng']
        @locations << [vendor.name, vendor.address, mark_lat, mark_lng]
      end
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
