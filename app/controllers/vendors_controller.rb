class VendorsController < ApplicationController

  before_filter :ensure_admin, only: [ :index, :destroy, :show, :edit]


  def index
    @vendors = Vendor.all
    # render index
  end
  def index
    @vendors = Vendor.order(:name)
    respond_to do |format|
      format.html
      format.csv { send_data @vendors.to_csv }
      format.xls { send_data @vendors.to_csv(col_sep: "\t") }
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
    redirect_to vendors_path
  end
  # render :update
end

def destroy
  Vendor.find(params[:id]).delete  #no instance variable required--we are throwing it away
  redirect_to vendors_path
  # render :destroy
end
end
