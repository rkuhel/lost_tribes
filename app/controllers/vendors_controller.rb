class VendorsController < ApplicationController
  def index

    before_filter :ensure_admin, only: [:index, :destroy]
    
    @vendors = Vendor.all
    # render index
  end
  def create
    vendor = Vendor.new(params[:vendor])
       #params vendor because we are dealing with the forms fields people enter
    vendor.save!
    render nothing: true
    # # Vendor.create(:title => 'Cooking with fish', :cuisine => 'fishy', :descripion => 'A book about...')
    # redirect_to vendors_path
    #  # render :create
  end

  def login

  end

  def new
    @vendor = Vendor.new
    @events = Event.all
    # render :new
  end
  def edit
    @vendor = Vendor.find(params[:id])
    @events = Event.all

    # render :edit
  end
  def show
    @vendor = Vendor.find(params[:id])   #@vendor instance variable here just needs to be consistent when referneced. Can be anything.
    # render :show           capitalized Vendor. is not arbitrary. Must be exact class name.
  end
  def update
    vendor = Vendor.find(params['id'])  # this is params id because it's the id in the url--which book are we talking about?
    if vendor.update_attributes(params["vendor"])  #yes, an action is happening in the condition
      redirect_to vendors_path
    else
      # We need to give feedback if unsuccessful
      redirect_to edit_vendor_path
    end
    # render :update
  end
  def destroy
    Vendor.find(params[:id]).delete  #no instance variable required--we are throwing it away
    redirect_to vendors_path
    # render :destroy
  end
end
