class VendorsController < ApplicationController

    before_filter :ensure_admin, only: [ :index, :destroy, :show, :edit]


  def index
    @vendors = Vendor.all
    # render index

    maps = Geocoder.search("Brooklyn, New York")
    lat_lng = maps.first.data["geometry"]['location']
    @map_lat = lat_lng["lat"]
    @map_lng = lat_lng["lng"]

    @locations = []

    @vendors.each do |vendor|
        address_tmp = "#{vendor.address}, #{vendor.city}"
        @marker = Geocoder.search(address_tmp)
        mark_lat = @marker.first.data["geometry"]['location']['lat']
        mark_lng = @marker.first.data["geometry"]['location']['lng']
        @locations << [vendor.title, vendor.address, mark_lat, mark_lng]
    end
  end

  def create
    vendor = Vendor.new(params[:vendor])
       #params vendor because we are dealing with the forms fields people enter
    vendor.save!
    # # Vendor.create(:title => 'Cooking with fish', :cuisine => 'fishy', :descripion => 'A book about...')
    redirect_to "/"
    #  # render :create
  end

  def login

  end

  def new
    @vendor = Vendor.new
    # render :new
  end
  def edit
    @vendor = Vendor.find(params[:id])
  end

  def show
    @vendor = Vendor.find(params[:id])   
  end
  
  def update
    vendor = Vendor.find(params['id'])  # this is params id because it's the id in the url--which book are we talking about?
    if vendor.update_attributes(params["vendor"])  #yes, an action is happening in the condition
      redirect_to vendors_path
    else
      # We need to give feedback if unsuccessful
      redirect_to edit_vendors_path
    end
    # render :update
  end

  def destroy
    Vendor.find(params[:id]).delete  #no instance variable required--we are throwing it away
    redirect_to vendors_path
    # render :destroy
  end
end
