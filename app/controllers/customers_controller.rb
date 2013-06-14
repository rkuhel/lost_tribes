class CustomersController < ApplicationController 

before_filter :ensure_admin, only: [:index, :destroy, :show, :edit]

  def index
    @customers = Customer.all
  end


  def create
    customer = Customer.create(params['customer'])
    if customer.save!
      redirect_to '/', :notice => "You have successfully joined our mailing list!"
    else
      redirect_to new_customer_path, :error => "Error! Please try again."
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
    if customer.update_attributes(params["customer"])
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







