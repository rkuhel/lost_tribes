class CustomersController < ApplicationController 

before_filter :ensure_admin, only: [:edit, :destroy, :index]

  def index
    @customers = Customer.all
  end

  def index
  @customers = Customer.order(:name)
  respond_to do |format|
    format.html
    format.csv { send_data @customers.to_csv }
    format.xls { send_data @customers.to_csv(col_sep: "\t") }
  end
end

  def create
    customer = Customer.create(params['customer'])
    if customer.save!
      redirect_to "/" 
    else
      redirect_to new_customer_path 
    end
  end

   def new
    @customer = Customer.new
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def show
    @customer = Customer.find(params[:id])
  end

def update 
    customer = Customer.find(params[:id])
    if customer.update_attributes(params[:customer])
      redirect_to customers_path
    else
      redirect_to edit_customers_path 
    end
  end


  def destroy
    Customer.find(params[:id]).delete
    redirect_to customers_path
  end
end 





